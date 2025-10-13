unit GourmetServer.Controller.ImportaCardapioMizio;

interface

Uses
  math,
  Horse,
  System.Json,
  Horse.GBSwagger,
  System.Generics.Collections,
  idHashMessageDigest,
  GourmetServer.Service.Funcoes,
  GourmetServer.Controller.CFGMGOU,
  GourmetServer.Controller.SBR,
  GourmetServer.Controller.BRG,
  GourmetServer.Controller.PRO,
  GourmetServer.Controller.GRI,
  GourmetServer.Controller.PUN,
  GourmetServer.Controller.GRP,
  GourmetServer.Controller.UNI,
  GourmetServer.Controller.BRD,
  GourmetServer.Controller.SFN,
  GourmetServer.Controller.ISA,
  GourmetServer.Controller.V_IGA,
  GourmetServer.Model.DAOGeneric;

procedure Registry(App: THorse);
procedure V1Insert(Req: THorseRequest; Res: THorseResponse; Next: TProc);

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

const
  vOrigem: Integer = 0;

implementation

uses
  System.SysUtils, GourmetServer.Controller.BPR;

procedure Registry(App: THorse);
begin
  App.Post('/v1/cardapioMizio', V1Insert);
end;

procedure ImportaCardapioMizio(vCardapio: TJsonObject);
var
  vlProCodigo: Integer;
  vlPronome: String;
  vlSabor: String;
  vlSbrCodigo: Integer;
  vlIngredientes: String;
  vlIsaIdentificacao: String;

  vlGrpIdentificacao: string;
  vlGrpCodigo: Integer;

  vlListaGrupos: TJsonarray;
  vlListaProdutos: TJsonarray;

  ig: Integer;
  vlQtdGrupos: Integer;

  ip: Integer;
  vlQtdProdutos: Integer;

  vlUnidade1: string;
  vlunicodigo1: Integer;

  vlUnidade2: string;
  vlunicodigo2: Integer;

  vlUnidade3: string;
  vlunicodigo3: Integer;

  vlUnidade4: string;
  vlunicodigo4: Integer;

  vlUnidade5: string;
  vlunicodigo5: Integer;

  vlPreco1: string;
  vlPreco2: string;
  vlPreco3: string;
  vlPreco4: string;
  vlPreco5: string;
begin
  vlSbrCodigo:=0;
  vlunicodigo1:=0;
  vlunicodigo2:=0;
  vlunicodigo3:=0;
  vlunicodigo4:=0;
  vlunicodigo5:=0;


  vlListaGrupos := vCardapio.getvalue<TJsonarray>('Grupos');

  vlQtdGrupos := vlListaGrupos.Count;

  for ig := 0 to vlQtdGrupos - 1 do
  begin
    vlGrpIdentificacao := '';
    vlGrpCodigo := 0;


    vlGrpIdentificacao := trim(uppercase(vlListaGrupos[ig].getvalue('NomeGrupo', '')));
    vlGrpCodigo := manutencaoGRPIdentificacao(vlGrpIdentificacao, vOrigem);

    vlListaProdutos := vlListaGrupos[ig].getvalue<TJsonarray>('Produtos');
    vlQtdProdutos := vlListaProdutos.Count;

    for ip := 0 to vlQtdProdutos - 1 do
    begin

      vlUnidade1 := '';
      vlUnidade2 := '';
      vlUnidade3 := '';
      vlUnidade4 := '';
      vlUnidade5 := '';

      vlPreco1 := '';
      vlPreco2 := '';
      vlPreco3 := '';
      vlPreco4 := '';
      vlPreco5 := '';

      vlPronome := '';
      vlIngredientes := '';

      vlPronome := uppercase(vlListaProdutos[ip].getvalue('Produto', ''));

      if vlPronome <> '' then
      begin

        vlProCodigo := BuscaCodigoPROProNome(vlPronome);

        vlUnidade1 := trim(uppercase(vlListaProdutos[ip].getvalue('Unidade1', '')));
        if vlUnidade1 <> '' then
        begin
          vlunicodigo1 := BuscaUNINome(vlUnidade1, vOrigem);
          if vlunicodigo1 = 0 then
          begin
            vlunicodigo1 := ManutencaoUNINome(vlUnidade1, vOrigem);
          end;
        end;

        vlUnidade2 := trim(uppercase(vlListaProdutos[ip].getvalue('Unidade2', '')));
        if vlUnidade2 <> '' then
        begin
          vlunicodigo2 := BuscaUNINome(vlUnidade2, vOrigem);
          if vlunicodigo2 = 0 then
          begin
            vlunicodigo2 := ManutencaoUNINome(vlUnidade2, vOrigem);
          end;

        end;

        vlUnidade3 := trim(uppercase(vlListaProdutos[ip].getvalue('Unidade3', '')));
        if vlUnidade3 <> '' then
        begin
          vlunicodigo3 := BuscaUNINome(vlUnidade3, vOrigem);
          if vlunicodigo3 = 0 then
          begin
            vlunicodigo3 := ManutencaoUNINome(vlUnidade3, vOrigem);
          end;

        end;

        vlUnidade4 := trim(uppercase(vlListaProdutos[ip].getvalue('Unidade4', '')));
        if vlUnidade4 <> '' then
        begin
          vlunicodigo4 := BuscaUNINome(vlUnidade4, vOrigem);
          if vlunicodigo4 = 0 then
          begin
            vlunicodigo4 := ManutencaoUNINome(vlUnidade4, vOrigem);
          end;

        end;

        vlUnidade5 := trim(uppercase(vlListaProdutos[ip].getvalue('Unidade5', '')));
        if vlUnidade5 <> '' then
        begin
          vlunicodigo5 := BuscaUNINome(vlUnidade5, vOrigem);
          if vlunicodigo5 = 0 then
          begin
            vlunicodigo5 := ManutencaoUNINome(vlUnidade5, vOrigem);
          end;

        end;

        if vlProCodigo = 0 then
        begin
          vlProCodigo := ManutencaoPROAplicativo(vlPronome, vlGrpCodigo, vlunicodigo1, 0, vlIngredientes);
        end;

        vlSabor := trim(uppercase(vlListaProdutos[ip].getvalue('Sabor', '')));

        if vlSabor <> '' then
        begin
          vlSbrCodigo := 0;
          vlSbrCodigo := ManutencaoSBRIdentificacao(vlSabor, vlProCodigo.ToString, '');
        end;

        vlIngredientes := uppercase(vlListaProdutos[ip].getvalue('Ingredientes', ''));

        if vlIngredientes <> '' then
        begin
          if vlSbrCodigo = 0 then
          begin
            vlSbrCodigo := ManutencaoSBRIdentificacao(vlPronome, vlProCodigo.ToString, '');
          end;

          if vlSbrCodigo <> 0 then
          begin

            while vlIngredientes <> '' do
            begin
              if pos(',', vlIngredientes) > 0 then
              begin
                vlIsaIdentificacao := trim(copy(vlIngredientes, 1, pos(',', vlIngredientes) - 1));
                vlIngredientes := trim(copy(vlIngredientes, pos(',', vlIngredientes) + 1, length(vlIngredientes)));

              end
              else if pos(' e ', vlIngredientes) > 0 then
              begin
                vlIsaIdentificacao := trim(copy(vlIngredientes, 1, pos(' e ', vlIngredientes) - 1));
                vlIngredientes := trim(copy(vlIngredientes, pos(' e ', vlIngredientes) + 1, length(vlIngredientes)));

              end
              else
              begin
                if vlIngredientes <> '' then
                begin
                  vlIsaIdentificacao := trim(vlIngredientes);
                  vlIngredientes := '';
                end;
              end;

              if vlIsaIdentificacao <> '' then
              begin
                ManutencaoISAAplicativo(vlGrpCodigo, vlSbrCodigo, vlIsaIdentificacao, '0', 0);
              end;

            end;

          end;

        end;

        vlPreco1 := trim(uppercase(vlListaProdutos[ip].getvalue('Preco1', '')));
        if vlPreco1 <> '' then
        begin
          ManutencaoPUNAplicativo(vlProCodigo, vlunicodigo1, vlPreco1);
        end;

        vlPreco2 := trim(uppercase(vlListaProdutos[ip].getvalue('Preco2', '')));
        if vlPreco2 <> '' then
        begin
          ManutencaoPUNAplicativo(vlProCodigo, vlunicodigo2, vlPreco2);
        end;

        vlPreco3 := trim(uppercase(vlListaProdutos[ip].getvalue('Preco3', '')));
        if vlPreco3 <> '' then
        begin
          ManutencaoPUNAplicativo(vlProCodigo, vlunicodigo3, vlPreco3);
        end;

        vlPreco4 := trim(uppercase(vlListaProdutos[ip].getvalue('Preco4', '')));
        if vlPreco4 <> '' then
        begin
          ManutencaoPUNAplicativo(vlProCodigo, vlunicodigo4, vlPreco4);
        end;

        vlPreco5 := trim(uppercase(vlListaProdutos[ip].getvalue('Preco5', '')));
        if vlPreco5 <> '' then
        begin
          ManutencaoPUNAplicativo(vlProCodigo, vlunicodigo5, vlPreco5);
        end;

      end;
    end;
  end;
end;

procedure V1Insert(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  vJSonCardapio: TJsonObject;
  vJSONObject: TJsonObject;

  vJSONGrupos: TJsonarray;
  vlJsonCardapio: string;

begin

  vJSONObject := TJsonObject.ParseJSONValue(TEncoding.ASCII.GetBytes(Req.Body), 0) as TJsonObject;
  if vJSONObject <> nil then
  begin
    vJSonCardapio := vJSONObject.getvalue<TJsonObject>('data');
    if vJSonCardapio <> nil then
    begin

      vJSONGrupos := vJSonCardapio.getvalue<TJsonarray>('Grupos');
      if vJSONGrupos <> nil then
      begin

        vlJsonCardapio := vJSONGrupos.ToString;

        if vlJsonCardapio <> '' then
        begin
          ImportaCardapioMizio(vJSonCardapio);
        end;
      end;
    end;
  end;

end;

end.
