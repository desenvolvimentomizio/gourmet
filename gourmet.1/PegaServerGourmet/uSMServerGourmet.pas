unit uSMServerGourmet;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Stan.StorageJSON, FireDAC.Comp.DataSet, Data.FireDACJSONReflect,
  FireDAC.Stan.StorageBin;

type
{$METHODINFO ON}
  TSMServerGourmet = class(TDataModule)
    conexao: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    clb: TFDQuery;
    FDStanStorageJSONLink: TFDStanStorageJSONLink;
    FDStanStorageBinLink: TFDStanStorageBinLink;
    cfg: TFDQuery;
    grp: TFDQuery;
    cgr: TFDQuery;
    tgr: TFDQuery;
    unm: TFDQuery;
    orc: TFDQuery;
    MobAbreOrcamento: TFDStoredProc;
    tito: TFDQuery;
    ito: TFDQuery;
    itoitochave: TIntegerField;
    itoitoitem: TIntegerField;
    itoprocodigo: TIntegerField;
    itopronome: TStringField;
    itounisimbolo: TStringField;
    itopuncodigo: TIntegerField;
    itoitoquantidade: TFMTBCDField;
    itoitovalorav: TBCDField;
    itoitototalav: TBCDField;
    itoorcchave: TIntegerField;
    czn: TFDQuery;
    czncznchave: TIntegerField;
    sfn: TFDQuery;
    sfnprocodigo: TIntegerField;
    sfnpuncodigo: TIntegerField;
    sfnpronomereduzido: TStringField;
    sfnpunprecoav: TStringField;
    sfnunipro: TIntegerField;
    sfnunipun: TIntegerField;
    sfnunisimbolo: TStringField;
    sfnsfnquantidade: TSingleField;
    sfnsfncodigo: TIntegerField;
    sfngrpcodigo: TIntegerField;
    pro: TFDQuery;
    proprocodigo: TIntegerField;
    propronomereduzido: TStringField;
    propunprecoav: TStringField;
    progrpcodigo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function RetornaRegistros(vClbUsuario: string; vClbSenha: string): TFDJSONDataSets;
    function QuantidadeMesas: TFDJSONDataSets;
    function DadosTgr: TFDJSONDataSets;
    function DadosCgr: TFDJSONDataSets;
    function DadosGrp: TFDJSONDataSets;
    function DadosSfn: TFDJSONDataSets;
    function DadosPro: TFDJSONDataSets;
    function ConsultaUniaoMesa(vNumMesa:String): TFDJSONDataSets;
    function ConsultaMesa(vNumMesa:String): TFDJSONDataSets;
    function AbreMesa(vClbUsuario: string;vNumMesa:String): TFDJSONDataSets;
    function CarregaIto(vOrcChave:Integer): TFDJSONDataSets;
    function VerificaEstadoCozinha: TFDJSONDataSets;
  end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses System.StrUtils;



function TSMServerGourmet.VerificaEstadoCozinha: TFDJSONDataSets;
begin
  czn.Active := False;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, czn);

end;

function TSMServerGourmet.CarregaIto(vOrcChave:Integer): TFDJSONDataSets;
begin
  ito.Active := False;
  ito.ParamByName('orcchave').AsInteger:=vOrcChave;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, ito);

end;



function TSMServerGourmet.ConsultaUniaoMesa(vNumMesa:String): TFDJSONDataSets;
begin
  unm.Active := False;
  unm.ParamByName('unimesa').AsString:=vNumMesa;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, unm);

end;
function TSMServerGourmet.ConsultaMesa(vNumMesa:String): TFDJSONDataSets;
begin
  orc.Active := False;
  orc.ParamByName('orcmesa').AsString:=vNumMesa;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, orc);

end;


function TSMServerGourmet.AbreMesa(vClbUsuario: string;vNumMesa:String): TFDJSONDataSets;
begin
  MobAbreOrcamento.ParamByName('pEtdCodigo').asinteger:=0;
  MobAbreOrcamento.ParamByName('pClbCodigo').asInteger:=StrToInt(vClbUsuario);
  MobAbreOrcamento.ParamByName('pMocCodigo').asinteger:=5;
  MobAbreOrcamento.ParamByName('pOrcMesa').asinteger:=StrToInt(vNumMesa);
  MobAbreOrcamento.ParamByName('pFlacodigo').asinteger:=1;
  MobAbreOrcamento.ParamByName('pTrmCodigo').asinteger:=1;
  MobAbreOrcamento.ExecProc;


  orc.Active := False;
  orc.ParamByName('orcmesa').AsString:=vNumMesa;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, orc);

end;







function TSMServerGourmet.RetornaRegistros(vClbUsuario: string; vClbSenha: string): TFDJSONDataSets;
begin
  clb.Active := False;
  clb.SQL.Text := 'select clbcodigo, clbidentificacao from clb WHERE  lower(clbsenha)=' + QuotedStr(vClbSenha) + ' and lower(clbidentificacao)=' + QuotedStr(vClbUsuario);
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, clb);

end;

function TSMServerGourmet.QuantidadeMesas: TFDJSONDataSets;
begin
  cfg.Active := False;
  cfg.SQL.Text := 'select cfgmgouqtdmesas from cfgmgou';
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, cfg);

end;

function TSMServerGourmet.DadosTgr;
begin
  tgr.Active := False;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, tgr);

end;

function TSMServerGourmet.DadosGrp;
begin
  grp.Active := False;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, grp);

end;

function TSMServerGourmet.DadosCgr;
begin
  cgr.Active := False;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, cgr);
end;

function TSMServerGourmet.DadosSfn;
begin
  sfn.Active := False;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, sfn);
end;

function TSMServerGourmet.DadosPro;
begin
  pro.Active := False;
  Result := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(Result, pro);
end;



function TSMServerGourmet.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TSMServerGourmet.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.
