unit GourmetServer.Controller.PRO;

interface

Uses
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.V_PRO,
  GourmetServer.Model.Entity.PRO;

function ManutencaoPROAplicativo(vProNome: String; vGrpCodigo: Integer; vUniCodigo: Integer; vTpoCodigo: Integer; vIngredientes: String): Integer;

function ManutencaoPRO(vProduto: tJsonObject): Integer;

function BuscaCodigoGRPProCodigo(vProCodigo: Integer): Integer;
function BuscaCodigoPROTaxaValor(vValor: String): Integer;
function BuscaCodigoPROProNome(vProNome: String): Integer;
function BuscaCodigoPROIsaIdentificacao(vProNome: String): Integer;
function BuscaCodigoPROHeuristico(vProNome: String): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

uses
  System.Classes,
  Data.DB,
  FireDAC.Comp.Client,
  GourmetServer.Service.Conexoes;

// ---------------------------------------------------------------------------
// Busca heuristica de produto pelo nome, para quando o item do aplicativo chega
// SEM SKU. Antes disso o sistema cadastrava direto um produto '<nome> SEM SKU',
// o que sujava o cadastro com duplicatas do que ja existia: 'DINHOS BURGER SMASH
// SEM SKU' convivendo com 'DINHOS BURGER SMASH', quatro variacoes de coca-cola,
// e assim por diante.
//
// A comparacao ignora acento, pontuacao, apostrofo, caixa e o proprio sufixo
// ' SEM SKU', e separa a unidade colada ao numero ('269ML' -> '269 ML'), que era
// exatamente a diferenca entre dois cadastros do mesmo produto.
//
// Devolve 0 quando nao houver certeza suficiente - ai o chamador cadastra, que
// eh o desfecho seguro: casar errado joga a venda num produto de outro grupo,
// com outro preco e outra impressora.
// ---------------------------------------------------------------------------

const
  // pontuacao minima para aceitar um candidato que nao seja de nome identico
  PONTUACAO_MINIMA = 0.75;
  // margem minima entre o melhor candidato e o segundo, para nao decidir no empate
  MARGEM_MINIMA = 0.10;
  // dentro desta distancia do melhor, um produto sem o sufixo ' SEM SKU' tem
  // preferencia: eh o cadastro de verdade, nao a duplicata que se quer extinguir
  MARGEM_PREFERE_LIMPO = 0.15;

function NormalizaNomeProduto(const vNome: String): String;
const
  ACENTOS   = 'áàâãäÁÀÂÃÄéèêëÉÈÊËíìîïÍÌÎÏóòôõöÓÒÔÕÖúùûüÚÙÛÜçÇñÑ';
  SEMACENTO = 'AAAAAAAAAAEEEEEEEEIIIIIIIIOOOOOOOOOOUUUUUUUUCCNN';
var
  i: Integer;
  c: Char;
  vlTexto: String;
  vlSaida: String;
  vlPos: Integer;
begin
  vlTexto := UpperCase(Trim(vNome));

  // o apostrofo some em vez de virar espaco, senao DINHO'S vira dois pedacos
  vlTexto := StringReplace(vlTexto, '''', '', [rfReplaceAll]);

  vlPos := Pos(' SEM SKU', vlTexto);
  while vlPos > 0 do
  begin
    Delete(vlTexto, vlPos, Length(' SEM SKU'));
    vlPos := Pos(' SEM SKU', vlTexto);
  end;

  vlSaida := '';
  for i := 1 to Length(vlTexto) do
  begin
    c := vlTexto[i];

    vlPos := Pos(c, ACENTOS);
    if vlPos > 0 then
      c := SEMACENTO[vlPos];

    if CharInSet(c, ['A' .. 'Z', '0' .. '9']) then
    begin
      // separa a unidade colada ao numero: 269ML -> 269 ML
      if CharInSet(c, ['A' .. 'Z']) and (vlSaida <> '') and
        CharInSet(vlSaida[Length(vlSaida)], ['0' .. '9']) then
        vlSaida := vlSaida + ' ';

      vlSaida := vlSaida + c;
    end
    else if (vlSaida <> '') and (vlSaida[Length(vlSaida)] <> ' ') then
      vlSaida := vlSaida + ' ';
  end;

  result := Trim(vlSaida);
end;

// Descarta palavra sem valor para identificar o produto e pedaco de uma letra so.
function EhTokenUtil(const vToken: String): Boolean;
const
  VAZIAS = ' DE DA DO DOS DAS COM E A O EM NO NA ';
begin
  result := (vToken <> '') and (Pos(' ' + vToken + ' ', VAZIAS) = 0) and
    ((Length(vToken) > 1) or CharInSet(vToken[1], ['0' .. '9']));
end;

procedure SeparaTokens(const vNome: String; vLista: TStringList);
var
  vlTodos: TStringList;
  i: Integer;
begin
  vLista.Clear;
  vLista.Sorted := True;
  vLista.Duplicates := dupIgnore;

  vlTodos := TStringList.Create;
  try
    vlTodos.Delimiter := ' ';
    vlTodos.StrictDelimiter := True;
    vlTodos.DelimitedText := NormalizaNomeProduto(vNome);

    for i := 0 to vlTodos.Count - 1 do
      if EhTokenUtil(vlTodos[i]) then
        vLista.Add(vlTodos[i]);
  finally
    vlTodos.Free;
  end;
end;

// Coeficiente de Dice: 2 * comuns / (total de um + total do outro). Vale 1 quando
// os conjuntos sao iguais e cai rapido conforme sobram palavras de um lado so.
function PontuaTokens(vA, vB: TStringList): Double;
var
  i: Integer;
  vlComuns: Integer;
  vlIndice: Integer;
begin
  if (vA.Count = 0) or (vB.Count = 0) then
  begin
    result := 0;
    exit;
  end;

  vlComuns := 0;
  for i := 0 to vA.Count - 1 do
    if vB.Find(vA[i], vlIndice) then
      Inc(vlComuns);

  result := (2 * vlComuns) / (vA.Count + vB.Count);
end;

// Um dos conjuntos cabe inteiro dentro do outro. Sem exigir isso, dois nomes que
// dividem parte das palavras ('COCA COLA 2LT' e 'COCA COLA 3LT') pontuariam alto.
function UmContemOOutro(vA, vB: TStringList): Boolean;
var
  i: Integer;
  vlIndice: Integer;
  vlCabeA: Boolean;
  vlCabeB: Boolean;
begin
  vlCabeA := True;
  for i := 0 to vA.Count - 1 do
    if not vB.Find(vA[i], vlIndice) then
    begin
      vlCabeA := False;
      Break;
    end;

  vlCabeB := True;
  for i := 0 to vB.Count - 1 do
    if not vA.Find(vB[i], vlIndice) then
    begin
      vlCabeB := False;
      Break;
    end;

  result := vlCabeA or vlCabeB;
end;

function BuscaCodigoPROHeuristico(vProNome: String): Integer;
var
  conexao: TFDConnection;
  pro: TFDQuery;
  vlAlvo: TStringList;
  vlCand: TStringList;
  vlAlvoNorm: String;
  vlCandNorm: String;
  vlNomeCand: String;
  vlCodCand: Integer;
  vlGrpCand: Integer;
  vlPontos: Double;
  vlContido: Boolean;
  vlSemSku: Boolean;
  vlMelhor: Double;
  vlMelhorCod: Integer;
  vlMelhorSemSku: Boolean;
  vlSegundo: Double;
  vlGrpIgual: Integer;
  vlCodIgual: Integer;
  vlIguaisEmOutroGrupo: Boolean;
  vlLimpoCod: Integer;
  vlLimpoPontos: Double;
begin
  result := 0;

  vlAlvo := TStringList.Create;
  vlCand := TStringList.Create;
  try
    SeparaTokens(vProNome, vlAlvo);

    // Nome de uma palavra so ('BACON', 'AGUA', 'COCA') casa com coisa demais e o
    // erro sai caro. Deixa cadastrar.
    if vlAlvo.Count < 2 then
      exit;

    vlAlvoNorm := NormalizaNomeProduto(vProNome);

    vlMelhor := 0;
    vlMelhorCod := 0;
    vlMelhorSemSku := False;
    vlSegundo := 0;
    vlGrpIgual := -1;
    vlCodIgual := 0;
    vlIguaisEmOutroGrupo := False;
    vlLimpoCod := 0;
    vlLimpoPontos := 0;

    conexao := TFDConnection.Create(nil);
    try
      if AtivaConexao(conexao) = nil then
        exit;

      pro := TFDQuery.Create(nil);
      try
        pro.Connection := conexao;
        pro.SQL.Text := 'select procodigo, grpcodigo, pronome from pro order by procodigo';
        pro.Open;

        while not pro.Eof do
        begin
          vlNomeCand := pro.FieldByName('pronome').AsString;
          vlCodCand := pro.FieldByName('procodigo').AsInteger;
          vlGrpCand := pro.FieldByName('grpcodigo').AsInteger;

          SeparaTokens(vlNomeCand, vlCand);

          if vlCand.Count > 0 then
          begin
            vlCandNorm := NormalizaNomeProduto(vlNomeCand);
            vlSemSku := Pos(' SEM SKU', UpperCase(vlNomeCand)) > 0;

            if vlCandNorm = vlAlvoNorm then
            begin
              vlPontos := 1;
              vlContido := True;

              // Duplicata ' SEM SKU' nao conta como produto concorrente: ela eh
              // justamente o lixo que se quer parar de criar.
              if not vlSemSku then
              begin
                if vlGrpIgual < 0 then
                begin
                  vlGrpIgual := vlGrpCand;
                  vlCodIgual := vlCodCand;
                end
                else if vlGrpIgual <> vlGrpCand then
                  vlIguaisEmOutroGrupo := True;
              end;
            end
            else
            begin
              vlPontos := PontuaTokens(vlAlvo, vlCand);
              vlContido := UmContemOOutro(vlAlvo, vlCand);
            end;

            if vlPontos > vlMelhor then
            begin
              vlSegundo := vlMelhor;
              vlMelhor := vlPontos;
              vlMelhorCod := vlCodCand;
              vlMelhorSemSku := vlSemSku;
            end
            else if vlPontos > vlSegundo then
              vlSegundo := vlPontos;

            // melhor candidato que nao eh duplicata, guardado para a preferencia
            if (not vlSemSku) and vlContido and (vlPontos > vlLimpoPontos) then
            begin
              vlLimpoPontos := vlPontos;
              vlLimpoCod := vlCodCand;
            end;
          end;

          pro.Next;
        end;

        pro.Close;
      finally
        pro.DisposeOf;
      end;
    finally
      conexao.DisposeOf;
    end;

    if vlMelhor = 1 then
    begin
      // nome identico em produtos limpos de grupos diferentes: nao da para escolher
      if vlIguaisEmOutroGrupo then
        exit;

      // nome identico com um unico produto limpo: eh ele
      if vlCodIgual <> 0 then
      begin
        result := vlCodIgual;
        exit;
      end;
    end;

    if vlMelhor < PONTUACAO_MINIMA then
      exit;

    if (vlMelhor < 1) and ((vlMelhor - vlSegundo) < MARGEM_MINIMA) then
      exit;

    // entre equivalentes, o cadastro de verdade vence a duplicata ' SEM SKU'
    if vlMelhorSemSku and (vlLimpoCod <> 0) and (vlLimpoPontos >= PONTUACAO_MINIMA)
      and ((vlMelhor - vlLimpoPontos) < MARGEM_PREFERE_LIMPO) then
    begin
      result := vlLimpoCod;
      exit;
    end;

    result := vlMelhorCod;
  finally
    vlAlvo.Free;
    vlCand.Free;
  end;
end;

function BuscaCodigoPROIsaIdentificacao(vProNome: String): Integer;
var
  FDAO: iDAOGeneric<TPRO>;
  vlprocodigo: Integer;
begin
  vlprocodigo := 0;

  FDAO := TDAOGeneric<TPRO>.New;

  FDAO.DAO.SQL.where('pronome=' + QuotedStr(vProNome) + ' and tpocodigo=1').&End.Find;

  vlprocodigo := FDAO.DataSet.FieldByName('procodigo').asinteger;
  result := vlprocodigo;
end;

function ManutencaoPROAplicativo(vProNome: String; vGrpCodigo: Integer; vUniCodigo: Integer; vTpoCodigo: Integer; vIngredientes: String): Integer;
var
  vlprocodigo: Integer;
  vlPro: tJsonObject;

begin
  vlprocodigo := BuscaCodigoPROProNome(vProNome);

  if (pos('não',lowercase(vProNome))>0) or  (pos('valeu',lowercase(vProNome))>0) then
  begin
  vlprocodigo:=0;
  exit;
  end;



  if vlprocodigo = 0 then
  begin
    vlPro := tJsonObject.create;

    vlPro.AddPair('procodigo', '0');

    vlPro.AddPair('pronome', vProNome);
    vlPro.AddPair('pronomereduzido', vProNome);

    if vIngredientes <> '' then
    begin
      vlPro.AddPair('proproducao', '1');
      vlPro.AddPair('cfocfop', '5.101');
      vlPro.AddPair('cfocfopfora', '6.101');
    end
    else
    begin
      vlPro.AddPair('proproducao', '0');
      vlPro.AddPair('cfocfop', '5.102');
      vlPro.AddPair('cfocfopfora', '6.102');

    end;

    vlPro.AddPair('icmcodigo', '00');
    vlPro.AddPair('icmcodigofora', '00');

    vlPro.AddPair('tpocodigo', vTpoCodigo.tostring);

    vlPro.AddPair('cstcodigo', '102');
    vlPro.AddPair('csicodigo', '99');
    vlPro.AddPair('cspcodigo', '49');
    vlPro.AddPair('csfcodigo', '49');
    vlPro.AddPair('propisaliquota', '0');
    vlPro.AddPair('procofinsaliquota', '0');
    vlPro.AddPair('proipialiquota', '0');

    vlPro.AddPair('procest', '');

    vlPro.AddPair('promva', '0');

    vlPro.AddPair('propercfcp', '0');
    vlPro.AddPair('promargemcontrib', '0');
    vlPro.AddPair('imuid', '0');
    vlPro.AddPair('pronatrecisenta', '0');

    vlPro.AddPair('marcodigo', '1');
    vlPro.AddPair('grpcodigo', vGrpCodigo.tostring);
    vlPro.AddPair('trbcodigo', '1');
    vlPro.AddPair('unicodigo', vUniCodigo.tostring);

    vlPro.AddPair('prounitrib', vUniCodigo.tostring);
    vlPro.AddPair('proqtdtrib', '1');

    vlPro.AddPair('sipcodigo', '1');
    vlPro.AddPair('prominimo', '0');
    vlPro.AddPair('proproprio', '0');
    vlPro.AddPair('pronumserie ', '0');

    if vIngredientes <> '' then
    begin
      vlPro.AddPair('proncm', '');
    end
    else
    begin
      vlPro.AddPair('proncm', '21069029');
    end;

    vlPro.AddPair('procomposto', '0');
    vlPro.AddPair('prosaldo', '0');
    vlPro.AddPair('probalanca', '0');
    vlPro.AddPair('protecla', '');
    vlPro.AddPair('provalidade', '0');
    vlPro.AddPair('procarga', '0');
    vlPro.AddPair('proreferencia', '0');
    vlPro.AddPair('proestoque', '0');
    vlPro.AddPair('prosped', '0');
    vlPro.AddPair('proobs', '');
    vlPro.AddPair('prosaldodisp', '0');
    vlPro.AddPair('proanpcodigo', '0');
    vlPro.AddPair('enpcodigo', '0');
    vlPro.AddPair('propedecomple', '0');
    vlPro.AddPair('propededescrserv', '0');
    vlPro.AddPair('propedetecnicoserv', '0');
    // vlPro.AddPair('gracodigo', '0');
    vlPro.AddPair('dprcodigo', '1');

    vlPro.AddPair('proconsolidado', '0');

    vlPro.AddPair('procontabiliza', '0');
    vlPro.AddPair('prousagrade', '0');
    vlPro.AddPair('propercreducaobaseicm', '0');
    vlPro.AddPair('imgcodigo', '1');
    vlPro.AddPair('proalterarqtd', '1');
    // vlpro.AddPair('proimagem','');
    vlPro.AddPair('proremoto', '1');
    vlPro.AddPair('stgcodigo', '1');
    vlPro.AddPair('rcspontuacao', '0');
    vlPro.AddPair('padcodigo', '1');
    vlPro.AddPair('proabc', 'A');
    vlPro.AddPair('proncm','21069029');

    vlprocodigo := ManutencaoPRO(vlPro);

  end;

  result := vlprocodigo;
end;

function ManutencaoPRO(vProduto: tJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TPRO>;
  FPRO: TPRO;
  vlprocodigo: Integer;

begin
  FDAO := TDAOGeneric<TPRO>.New;

  vlprocodigo := vProduto.getvalue('procodigo', '').ToInteger;

  FPRO := TPRO.create;
  FPRO.procodigo := vlprocodigo;
  FPRO.pronome := vProduto.getvalue('pronome', '');
  FPRO.pronomereduzido := vProduto.getvalue('pronomereduzido', '');
  FPRO.marcodigo := vProduto.getvalue('marcodigo', '').ToInteger;
  FPRO.grpcodigo := vProduto.getvalue('grpcodigo', '').ToInteger;
  FPRO.trbcodigo := vProduto.getvalue('trbcodigo', '').ToInteger;
  FPRO.icmcodigo := vProduto.getvalue('icmcodigo', '');
  FPRO.tpocodigo := vProduto.getvalue('tpocodigo', '').ToInteger;
  FPRO.unicodigo := vProduto.getvalue('unicodigo', '').ToInteger;
  FPRO.sipcodigo := vProduto.getvalue('sipcodigo', '').ToInteger;
  FPRO.prominimo := strtocurr(vProduto.getvalue('prominimo', ''));
  FPRO.proproprio := vProduto.getvalue('proproprio', '');
  FPRO.pronumserie := vProduto.getvalue('pronumserie', '');
  FPRO.proncm := vProduto.getvalue('proncm', '');
  FPRO.procomposto := vProduto.getvalue('procomposto', '');
  FPRO.prosaldo := strtocurr(vProduto.getvalue('prosaldo', ''));
  FPRO.probalanca := strtocurr(vProduto.getvalue('probalanca', ''));
  FPRO.protecla := vProduto.getvalue('protecla', '');
  FPRO.provalidade := vProduto.getvalue('provalidade', '').ToInteger;
  FPRO.procarga := vProduto.getvalue('procarga', '').ToInteger;
  FPRO.proreferencia := vProduto.getvalue('proreferencia', '');
  FPRO.proestoque := vProduto.getvalue('proestoque', '');
  FPRO.prosped := vProduto.getvalue('prosped', '');
  FPRO.proobs := vProduto.getvalue('proobs', '');
  FPRO.prounitrib := vProduto.getvalue('prounitrib', '').ToInteger;
  FPRO.proqtdtrib := strtocurr(vProduto.getvalue('proqtdtrib', ''));
  FPRO.prosaldodisp := strtocurr(vProduto.getvalue('prosaldodisp', ''));
  FPRO.proanpcodigo := vProduto.getvalue('proanpcodigo', '').ToInteger;
  FPRO.enpcodigo := vProduto.getvalue('enpcodigo', '').ToInteger;
  FPRO.propedecomple := vProduto.getvalue('propedecomple', '').ToInteger;
  FPRO.propededescrserv := vProduto.getvalue('propededescrserv', '').ToInteger;
  FPRO.propedetecnicoserv := vProduto.getvalue('propedetecnicoserv', '').ToInteger;
  // FPRO.gracodigo := vProduto.getvalue('gracodigo', '').ToInteger;
  FPRO.dprcodigo := vProduto.getvalue('dprcodigo', '').ToInteger;
  FPRO.cstcodigo := vProduto.getvalue('cstcodigo', '');
  FPRO.proconsolidado := vProduto.getvalue('proconsolidado', '').ToInteger;
  FPRO.csicodigo := vProduto.getvalue('csicodigo', '');
  FPRO.cspcodigo := vProduto.getvalue('cspcodigo', '');
  FPRO.csfcodigo := vProduto.getvalue('csfcodigo', '');
  FPRO.procontabiliza := vProduto.getvalue('procontabiliza', '').ToInteger;
  FPRO.prousagrade := vProduto.getvalue('prousagrade', '').ToInteger;
  FPRO.propercreducaobaseicm := strtocurr(vProduto.getvalue('propercreducaobaseicm', ''));
  FPRO.propisaliquota := strtocurr(vProduto.getvalue('propisaliquota', ''));
  FPRO.procofinsaliquota := strtocurr(vProduto.getvalue('procofinsaliquota', ''));
  FPRO.imgcodigo := vProduto.getvalue('imgcodigo', '').ToInteger;
  FPRO.proalterarqtd := vProduto.getvalue('proalterarqtd', '').ToInteger;
  // FPRO.proimagem := vProduto.getvalue('proimagem', '').ToInteger;
  FPRO.proremoto := vProduto.getvalue('proremoto', '').ToInteger;
  FPRO.stgcodigo := vProduto.getvalue('stgcodigo', '').ToInteger;
  FPRO.procest := vProduto.getvalue('procest', '');
  FPRO.proproducao := vProduto.getvalue('proproducao', '').ToInteger;
  FPRO.rcspontuacao := vProduto.getvalue('rcspontuacao', '').ToInteger;
  FPRO.padcodigo := vProduto.getvalue('padcodigo', '').ToInteger;
  FPRO.cfocfop := vProduto.getvalue('cfocfop', '');
  FPRO.promva := vProduto.getvalue('promva', '');
  FPRO.propercfcp := vProduto.getvalue('propercfcp', '');
  FPRO.proabc := vProduto.getvalue('proabc', '');
  FPRO.promargemcontrib := strtocurr(vProduto.getvalue('promargemcontrib', ''));
  // FPRO.imuid := vProduto.getvalue('imuid', '').ToInteger;
  FPRO.pronatrecisenta := vProduto.getvalue('pronatrecisenta', '').ToInteger;
  FPRO.icmcodigofora := vProduto.getvalue('icmcodigofora', '');
  FPRO.proipialiquota := strtocurr(vProduto.getvalue('proipialiquota', ''));
  FPRO.cfocfopfora := vProduto.getvalue('cfocfopfora', '');

  if vlprocodigo = 0 then
  // incluir novo
  begin
    FPRO.procodigo := 0;
    FDAO.DAO.Insert(FPRO);
    FDAO.DAO.LastID;
    vlprocodigo := FDAO.DataSet.FieldByName('procodigo').asinteger;
  end
  else
  // alterar se ja existe
  begin
    FPRO.procodigo := vlprocodigo;
    FDAO.DAO.Update(FPRO);
  end;
  result := vlprocodigo;

end;

function BuscaCodigoPROTaxaValor(vValor: String): Integer;
var
  FDAO: iDAOGeneric<TV_PRO>;
  vlprocodigo: Integer;

begin
  vlprocodigo := 0;

  FDAO := TDAOGeneric<TV_PRO>.New;

  FDAO.DAO.SQL.where('punprecoav=' + stringreplace(vValor, ',', '.', []) + ' and tpoidentificacao=' + QuotedStr('Serviços')).&End.Find;

  vlprocodigo := FDAO.DataSet.FieldByName('procodigo').asinteger;
  result := vlprocodigo;
end;

function BuscaCodigoPROProNome(vProNome: String): Integer;
var
  FDAO: iDAOGeneric<Tprocod>;
  vlprocodigo: Integer;
begin
  vlprocodigo := 0;

  FDAO := TDAOGeneric<Tprocod>.New;

  FDAO.DAO.SQL.where('pronome=' + QuotedStr(vProNome)).&End.Find;

  vlprocodigo := FDAO.DataSet.FieldByName('procodigo').asinteger;
  result := vlprocodigo;
end;

function BuscaCodigoGRPProCodigo(vProCodigo: Integer): Integer;
var
  FDAO: iDAOGeneric<Tprocod>;
  vlgrpcodigo: Integer;
begin
  vlgrpcodigo := 0;

  FDAO := TDAOGeneric<Tprocod>.New;

  FDAO.DAO.SQL.where('procodigo=' + vProCodigo.tostring).&End.Find;

  vlgrpcodigo := FDAO.DataSet.FieldByName('grpcodigo').asinteger;
  result := vlgrpcodigo;
end;

end.
