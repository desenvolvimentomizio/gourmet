unit GourmetServer.Controller.ORC;

interface

Uses


  FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.Intf,

  FireDAC.Phys,
  FireDAC.UI.Intf,
  FireDAC.ConsoleUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,


  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Service.Funcoes,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.ORC;

Function v1BuscaPedidoNumeroOrigem(vNumeroPedido: String; vOriCodigo: integer): String;
Function ManutencaoORC(vOrcamento: TJsonObject): integer;
Function LiberaImpressaoOrc(vOrcChave: integer): integer;
Function RemoveOrcPedidoNumeroOrigem(vNumeroPedido: String; vOriCodigo: integer): integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

uses
  GourmetServer.Service.Conexoes;




// Apaga os registros presos aos itens do orcamento que NAO saem pela cascata do FK
// ito_orc: ISI (adicionais) so cascateia via SBI, entao os gravados direto no item
// (sbichave=0) ficariam orfaos; IMW nao tem FK nenhuma.
Procedure RemoveDependentesItensOrc(vOrcChave: integer);
var
  conexao:TFDconnection;
  qry:TFDQuery;
begin
  conexao:=TFDconnection.Create(nil);

  if AtivaConexao(conexao)<>nil then
  begin
      qry:=TFDQuery.Create(nil);
      qry.Connection:=Conexao;

      qry.sql.Text:='delete from isi where itochave in '+
                    '(select itochave from ito where orcchave=' + vOrcChave.ToString + ')';
      qry.ExecSQL;

      qry.sql.Text:='delete from imw where itochave in '+
                    '(select itochave from ito where orcchave=' + vOrcChave.ToString + ')';
      qry.ExecSQL;

      if qry<>nil then
      qry.DisposeOf;
  end;

  if conexao<>nil then
  conexao.DisposeOf;
end;

Function RemoveOrcPedidoNumeroOrigem(vNumeroPedido: String; vOriCodigo: integer): integer;
var
  FDAO: iDAOGeneric<TORC>;
  vlorcnumeropedido: string;
  vlorcchave: integer;
begin

  if (vNumeroPedido = '') or (vNumeroPedido = '0') then
  begin
    result := 0;
    exit;
  end;

  result := 0;
  vlorcchave := 0;
  vlorcnumeropedido := vNumeroPedido;

  // O numero que chega aqui eh o do pedido na integracao (orcpedidointegracao),
  // NAO o numero diario do pedido (orcnumeropedido, ex.: '31'). Filtrar pela coluna
  // errada fazia busca e delete nunca casarem: o endpoint respondia mas nao apagava.
  FDAO := TDAOGeneric<TORC>.New;
  FDAO.DAO.SQL.where('orcpedidointegracao=' + QuotedStr(vNumeroPedido) + ' and oricodigo=' + vOriCodigo.ToString).&End.Find;
  vlorcchave := FDAO.dataset.fieldbyname('orcchave').asInteger;

  if vlorcchave = 0 then
  begin
    result := 0;
    exit;
  end;

  RemoveDependentesItensOrc(vlorcchave);

  // ITO/IMM/SBI/BRI saem por cascata do FK ito_orc ao apagar o orcamento.
  // Apaga pela chave encontrada, para nao atingir outro orcamento por engano.
  FDAO.Delete('orcchave', vlorcchave.ToString);

  result := vlorcchave;

end;

Function v1BuscaPedidoNumeroOrigem(vNumeroPedido: String; vOriCodigo: integer): String;
var
  conexao:TFDconnection;
  orc:TFDQuery;

  vlorcnumeropedido:String;

begin
  vlorcnumeropedido := '0';

  conexao:=TFDconnection.Create(nil);

  if AtivaConexao(conexao)<>nil then
  begin

      orc:=TFDQuery.Create(nil);
      orc.Connection:=Conexao;
      orc.sql.Text:='select orcpedidointegracao as orcnumeropedido from orc '+
      ' where orcpedidointegracao=' + vNumeroPedido + ' and orc.oricodigo=' + vOriCodigo.ToString;
      orc.Open;

      if not orc.IsEmpty then
       vlorcnumeropedido := orc.FieldByName('orcnumeropedido').asstring;

      orc.close;

      if orc<>nil then
      orc.DisposeOf;

  end;

  result := vlorcnumeropedido;

  if conexao<>nil then
  conexao.DisposeOf;


end;

Function LiberaImpressaoOrc(vOrcChave: integer): integer;
var
  conexao:TFDconnection;
  orc:TFDQuery;
  ito:TFDQuery;

  vlorcnumeropedido:String;

begin
  vlorcnumeropedido := '0';

  conexao:=TFDconnection.Create(nil);

  if AtivaConexao(conexao)<>nil then
  begin

      orc:=TFDQuery.Create(nil);
      orc.Connection:=Conexao;

      orc.sql.Text:='select '+
                    'orcchave,stocodigo, pdscodigo, orcdataencerr from orc '+
                    ' where orc.orcchave=' + vOrcChave.ToString;
      orc.Open;




      if not orc.IsEmpty then
      begin
        orc.Edit;
        orc.FieldByName('stocodigo').AsInteger := 3;
        orc.FieldByName('pdscodigo').AsInteger := 2;
        orc.FieldByName('orcdataencerr').AsDatetime := now();
        orc.post;
      end;

      orc.close;

      if orc<>nil then
      orc.DisposeOf;

      ito:=TFDQuery.Create(nil);
      ito.Connection:=Conexao;

      ito.sql.Text:='update ito set stocodigo=3 '+
                    ' where stocodigo<>88 and orcchave=' + vOrcChave.ToString;
      ito.ExecSQL;

      if ito<>nil then
      ito.DisposeOf;



  end;

  if conexao<>nil then
  conexao.DisposeOf;

  result := 3;

end;

Function ManutencaoORC(vOrcamento: TJsonObject): integer;
var
  conexao:TFDconnection;
  orc:TFDQuery;

  vlorcchave: integer;
  vlchave: String;
  a:string;

begin



   vlchave:=vOrcamento.getvalue('orcchave', '');

  if vlchave<>'' then
    vlorcchave := vlchave.ToInteger
  else
    vlorcchave :=0;

    if conexao<>nil then
     conexao.DisposeOf;


  conexao:=TFDconnection.Create(nil);



  if AtivaConexao(conexao)<>nil then
  begin

    
    orc:=TFDQuery.Create(nil);
    orc.Connection:=Conexao;




    orc.sql.Text:='select '+
                  'orcchave, flacodigo, etdcodigo, clbcodigo, fopcodigo, tdecodigo, '+
                  'stocodigo, moccodigo, puocodigo, orcdataabert, orchoraabert, orcgeralav, '+
                  'orcgeralap, orcdescontoav, orcdescontoap, orctotalav, orctaxaservico, '+
                  'orctotalap, orcdestimpre, trmcodigo, foacodigo, orcnumeropedido, edrcodigo, '+
                  'orctelefone, ccxchave, cznchave, oricodigo, tfpcodigo, orcobs, '+
                  'mdacodigo,orcpedidointegracao '+
                  'from orc '+
                  'where orc.orcchave=' + vlorcchave.ToString;
    orc.Open;




    if orc.IsEmpty then
    begin
      orc.Append;
    end
    else
    begin
      orc.Edit;
      orc.FieldByName('orcchave').AsInteger := vlorcchave;
    end;

    try

      orc.FieldByName('flacodigo').AsInteger := vOrcamento.getvalue('flacodigo', '').ToInteger;
      orc.FieldByName('etdcodigo').AsInteger := vOrcamento.getvalue('etdcodigo', '').ToInteger;
      orc.FieldByName('clbcodigo').AsInteger := vOrcamento.getvalue('clbcodigo', '').ToInteger;
      orc.FieldByName('fopcodigo').AsInteger := vOrcamento.getvalue('fopcodigo', '').ToInteger;
      orc.FieldByName('tdecodigo').AsInteger := vOrcamento.getvalue('tdecodigo', '').ToInteger;
      orc.FieldByName('stocodigo').AsInteger := vOrcamento.getvalue('stocodigo', '').ToInteger;
      orc.FieldByName('moccodigo').AsInteger := vOrcamento.getvalue('moccodigo', '').ToInteger;
      orc.FieldByName('puocodigo').AsInteger := vOrcamento.getvalue('puocodigo', '').ToInteger;


      orc.FieldByName('orcgeralav').AsCurrency := StrToCurr(vOrcamento.getvalue('orcgeralav', ''));
      orc.FieldByName('orcgeralap').AsCurrency := StrToCurr(vOrcamento.getvalue('orcgeralap', ''));
      orc.FieldByName('orcdescontoav').AsCurrency := StrToCurr(vOrcamento.getvalue('orcdescontoav', ''));
      orc.FieldByName('orcdescontoap').AsCurrency := StrToCurr(vOrcamento.getvalue('orcdescontoap', ''));
      orc.FieldByName('orctotalav').AsCurrency := StrToCurr(vOrcamento.getvalue('orctotalav', ''));
      orc.FieldByName('orctaxaservico').AsCurrency:=StrToCurr(vOrcamento.getvalue('orctaxaservico', '0,00'));
      orc.FieldByName('orctotalap').AsCurrency := StrToCurr(vOrcamento.getvalue('orctotalap', ''));
      orc.FieldByName('orcdestimpre').AsInteger := vOrcamento.getvalue('orcdestimpre', '').ToInteger;
      orc.FieldByName('trmcodigo').AsInteger := vOrcamento.getvalue('trmcodigo', '').ToInteger;
      orc.FieldByName('foacodigo').AsInteger := vOrcamento.getvalue('foacodigo', '').ToInteger;
      orc.FieldByName('orcnumeropedido').AsString := vOrcamento.getvalue('orcnumeropedido', '');
      orc.FieldByName('edrcodigo').AsInteger := vOrcamento.getvalue('edrcodigo', '').ToInteger;
      orc.FieldByName('orctelefone').AsString := vOrcamento.getvalue('orctelefone', '');
      orc.FieldByName('ccxchave').AsInteger := vOrcamento.getvalue('ccxchave', '').ToInteger;
      orc.FieldByName('cznchave').AsInteger := vOrcamento.getvalue('cznchave', '').ToInteger;
      orc.FieldByName('oricodigo').AsInteger := vOrcamento.getvalue('oricodigo', '').ToInteger;
      orc.FieldByName('tfpcodigo').AsInteger := vOrcamento.getvalue('tfpcodigo', '').ToInteger;
      orc.FieldByName('orcobs').AsString := vOrcamento.getvalue('orcobs', '');
      orc.FieldByName('mdacodigo').AsInteger :=StrToint(vOrcamento.getvalue('mdacodigo', '0'));
      orc.FieldByName('orcpedidointegracao').AsString:=vOrcamento.getvalue('orcpedidointegracao', '');
      orc.FieldByName('orcdataabert').AsString := datahorasqltotext(vOrcamento.getvalue('orcdataabert', ''));
      orc.FieldByName('orchoraabert').AsString := vOrcamento.getvalue('orchoraabert', '');

      if pos('dinheiro', lowercase(vOrcamento.getvalue('orcmodalidadepagamento', ''))) > 0 then
      begin
        orc.FieldByName('orcobs').AsString := orc.FieldByName('orcobs').AsString + #13 + #10 + 'Em Dinheiro';
      end
      else if pos('cartão', lowercase(vOrcamento.getvalue('orcmodalidadepagamento', ''))) > 0 then
      begin
        orc.FieldByName('orcobs').AsString := orc.FieldByName('orcobs').AsString + #13 + #10 + 'Levar máquina de cartão';
      end
      else if pos('débito', lowercase(vOrcamento.getvalue('orcmodalidadepagamento', ''))) > 0 then
      begin
        orc.FieldByName('orcobs').AsString := orc.FieldByName('orcobs').AsString + #13 + #10 + 'Levar máquina de cartão - DÉDITO';
      end
      else if pos('crédito', lowercase(vOrcamento.getvalue('orcmodalidadepagamento', ''))) > 0 then
      begin
        orc.FieldByName('orcobs').AsString := orc.FieldByName('orcobs').AsString+ #13 + #10 + 'Levar máquina de cartão - CRÉDITO';
      end
      else
      begin
        orc.FieldByName('orcobs').AsString := orc.FieldByName('orcobs').AsString+ #13 + #10 + 'Forma de Pagamento: ' + #13 + vOrcamento.getvalue('orcmodalidadepagamento', '');
      end;

      orc.post;

      vlorcchave:=orc.FieldByName('orcchave').AsInteger;

    except
    on E: Exception do
    begin
       if IsConsole then
       writeln('Erro: ' + E.Message );
    end;

    end;
    orc.close;

    (orc as TFDQuery).Connection.connected:=false;

    if orc<>nil then
    orc.DisposeOf;

  end
  else
  begin
  if IsConsole then
   WRITELN('291 não conesegui conectar no banco ');
  end;



  if conexao<>nil then
  conexao.DisposeOf;

  result := vlorcchave;

end;

end.
