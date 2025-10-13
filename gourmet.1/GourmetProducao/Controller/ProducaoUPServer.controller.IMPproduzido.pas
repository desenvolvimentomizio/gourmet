unit ProducaoUPServer.controller.IMPproduzido;

interface

Uses
  System.AnsiStrings,
  Horse,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  System.Json,
  Uni,
  UniProvider,
  MySQLUniProvider,
  ProducaoUP.Services.Connection ;



procedure Registry(App: THorse);
procedure V1GetEstatisticasID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure V1GetProdutividaID(Req: THorseRequest; Res: THorseResponse; Next: TProc);


type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

procedure Registry(App: THorse);
begin
  App.Get('/v1/impestatistica/:id', V1GetEstatisticasID);
  App.Get('/v1/impprodutores/:id', V1GetProdutividaID);
end;


procedure V1GetProdutividaID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  conexao:TUniConnection;
  CZN:TUniQuery;
  IMP:TUniQuery;

  vlCznChave: string;
  vlSepCodigo: String;

begin

  try

    vlSepCodigo := Req.Params.Items['id'];

    conexao:=TUniConnection.Create(nil);

    if AtivaConexao(conexao) then
    begin

      CZN:=TUniQuery.Create(nil);
      CZN.Connection:=conexao;
      CZN.sql.Text:='select cznchave '+
                    'from czn '+
                    'Where cznfechamento is null order by cznchave desc limit 1';
      CZN.Open;


      if not CZN.IsEmpty then
      begin
        vlcznchave := CZN.FieldByName('cznchave').AsString;
        CZN.close;
      end
      else
      begin
        vlcznchave:='1';
        CZN.close;
      end;

      IMP:=TUniQuery.Create(NIL);
      IMP.Connection:=conexao;


      IMP.sql.Text:='SELECT imp.sepcodigo codigo, clb.clbidentificacao produtor, '+
                    'sum(impquantidade) quantidade,  SUM(immpontos) pontos '+
                    'FROM imp '+
                    'INNER JOIN clb ON imp.clbcodigo = clb.clbcodigo '+
                    'Where (if(' + vlSepCodigo + '=0, imp.sepcodigo<>0, imp.sepcodigo=' + vlSepCodigo + ' ) '+
                    'and imp.cznchave=' + vlCznChave+') '+
                    'group by clb.clbidentificacao '+
                    'order by MAX(impfinal), clb.clbidentificacao';

      {

      IMP.sql.Text:='SELECT imp.sepcodigo codigo,  clb.clbidentificacao produtor, '+
                     'sum(impquantidade) quantidade,  SUM(immpontos) pontos ' +
                     'FROM imp '+
                     'INNER JOIN clb ON imp.clbcodigo = clb.clbcodigo '+
                     'Where (if(' + vlSepCodigo + '=0, imp.sepcodigo<>0, imp.sepcodigo=' + vlSepCodigo +') '+
                     'and imp.cznchave=' + vlCznChave+') '+
                     'group by clb.clbidentificacao '+
                     'order by SUM(immpontos) desc,  SUM(impquantidade) desc';
      }

      IMP.Open;

      if not IMP.IsEmpty then
      begin
        Res.Send<TJsonarray>(TConverter.New.DataSet(IMP).AsJSONArray);
      end
      else
      begin
        Res.Status(204);
      end;


    end;

  finally

    if conexao.Connected then
    conexao.Connected:=false;

    if CZN<>nil then
      CZN.DisposeOf;

    if conexao<>nil then
      conexao.DisposeOf;

  end;

end;

procedure V1GetEstatisticasID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  conexao:TUniConnection;
  CZN:TUniQuery;
  IMP:TUniQuery;

  vlCznChave: string;
  vlSepCodigo: String;

begin

  try

    vlSepCodigo := Req.Params.Items['id'];


    conexao:=TUniConnection.Create(nil);

    if AtivaConexao(conexao) then
    begin

      CZN:=TUniQuery.Create(nil);
      CZN.Connection:=conexao;
      CZN.sql.Text:='select cznchave '+
                    'from czn '+
                    'Where cznfechamento is null order by cznchave desc limit 1';
      CZN.Open;


      if not CZN.IsEmpty then
      begin
        vlcznchave := CZN.FieldByName('cznchave').AsString;
        CZN.close;
      end
      else
      begin
        vlcznchave:='1';
        CZN.close;
      end;

      IMP:=TUniQuery.Create(NIL);
      IMP.Connection:=conexao;
      IMP.sql.Text:='SELECT ' +
                    'imp.mitcodigo codigo,  count(impquantidade) quantidade, '+
                    'CONCAT(FLOOR(MAX(TIMESTAMPDIFF(MINUTE, imp.impinicio, imp.impfinal))/60),'':'',LPAD(MOD(MAX(TIMESTAMPDIFF(MINUTE, imp.impinicio, imp.impfinal)),60),2,''0''))  maiortempo, '+
                    'CONCAT(FLOOR(MIN(TIMESTAMPDIFF(MINUTE, imp.impinicio, imp.impfinal))/60),'':'',LPAD(MOD(MIN(TIMESTAMPDIFF(MINUTE, imp.impinicio, imp.impfinal)),60),2,''0'')) menortempo, ' +
                    'CONCAT(FLOOR(ROUND(AVG(TIMESTAMPDIFF(MINUTE, imp.impinicio, imp.impfinal)), 0)/60),'':'',LPAD(MOD(ROUND(AVG(TIMESTAMPDIFF(MINUTE, imp.impinicio, imp.impfinal)), 0),60),2,''0''))  mediatempo '+
                    'from imp '+
                    'Where (if( '+ vlSepCodigo + '=0, imp.sepcodigo<>0, imp.sepcodigo=' + vlSepCodigo +') '+
                    'and imp.cznchave=' + vlCznChave+') '+
                    'group by imp.mitcodigo';

      IMP.Open;

      if not IMP.IsEmpty then
      begin
        Res.Send<TJsonarray>(TConverter.New.DataSet(IMP).AsJSONArray);
      end
      else
      begin
        Res.Status(204);
      end;

    end;

  finally

    if conexao.Connected then
    conexao.Connected:=false;

    if CZN<>nil then
      CZN.DisposeOf;

    if conexao<>nil then
      conexao.DisposeOf;

  end;

end;


end.
