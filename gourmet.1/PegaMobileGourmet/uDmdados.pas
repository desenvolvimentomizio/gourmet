unit uDmdados;

interface

uses
  System.SysUtils, System.Classes,  Data.DB,
 FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageJSON;

type
  TDMDados = class(TDataModule)
    memcgr: TFDMemTable;
    memtgr: TFDMemTable;
    memgrp: TFDMemTable;
    memClb: TFDMemTable;
    json: TFDStanStorageJSONLink;
    memCfg: TFDMemTable;
    memOrc: TFDMemTable;
    memUnm: TFDMemTable;
    tisi: TFDQuery;
    tbrd: TFDQuery;
    memito: TFDMemTable;
    vtItens: TFDMemTable;
    vtItensitoitem: TIntegerField;
    vtItensorcchave: TIntegerField;
    vtItensprocodigo: TIntegerField;
    vtItenspronome: TStringField;
    vtItenspuncodigo: TIntegerField;
    vtItensitoquantidade: TFloatField;
    vtItensunisimbolo: TStringField;
    vtItensStatus: TIntegerField;
    vtItensObs: TStringField;
    vtItenstipo: TIntegerField;
    vtItenssfncodigo: TIntegerField;
    vtItensitochave: TIntegerField;
    vtItenscopos: TIntegerField;
    vtItenspratos: TIntegerField;
    memitoitochave: TIntegerField;
    memitoorcchave: TIntegerField;
    memitoitoitem: TIntegerField;
    memitoprocodigo: TIntegerField;
    memitopronome: TStringField;
    memitoitoquantidade: TFMTBCDField;
    memitounisimbolo: TStringField;
    memitoitovalorav: TBCDField;
    memitoitototalav: TBCDField;
    memitopuncodigo: TIntegerField;
    memczn: TFDMemTable;
    memczncznchave: TIntegerField;
    memcgrcgrcodigo: TIntegerField;
    memcgrcgridentificacao: TStringField;
    memtgrtgrcodigo: TIntegerField;
    memtgrtgridentificacao: TStringField;
    memgrpgrpcodigo: TIntegerField;
    memgrpgrpidentificacao: TStringField;
    memtgrcgrcodigo: TIntegerField;
    memgrptgrcodigo: TIntegerField;
    memgrptpocodigo: TIntegerField;
    memsfn: TFDMemTable;
    memsfnprocodigo: TIntegerField;
    memsfnpuncodigo: TIntegerField;
    memsfnpronomereduzido: TStringField;
    memsfnpunprecoav: TStringField;
    memsfnunipro: TIntegerField;
    memsfnunipun: TIntegerField;
    memsfnunisimbolo: TStringField;
    memsfnsfnquantidade: TSingleField;
    memsfnsfncodigo: TIntegerField;
    memsfngrpcodigo: TIntegerField;
    mempro: TFDMemTable;
    memproprocodigo: TIntegerField;
    mempropronomereduzido: TStringField;
    mempropunprecoav: TStringField;
    memprogrpcodigo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConsultaColaborador(vUsuario, vSenha: string);
    procedure QuantidadeMesa;
    procedure CarregaTgr;
    procedure CarregaCgr;
    procedure CarregaGrp;
    procedure CarregaSfn;
    procedure CarregaPro;
    procedure Carregaito(vOrcChave: integer);
    procedure CarregaEstadoCozinha;
    procedure ConsultaUniaoMessa(vNumMesa: String);
    procedure AbreMesa(vClbCodigo: String; vNumMesa: String);
    procedure SalvaItem(vOrchave: integer; vprocodigo: integer; vpuncodigo: integer; vqtde: double; vpessoas: integer; vobs: string; vsfnid: integer; vsfncodigo: integer;
      vcopos: integer; vpratos: integer; vClbCodigo: integer);
    procedure ConsultaMesa(vNumMesa: String);

  end;

var
  DMDados: TDMDados;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

uses Data.FireDACJSONReflect, uRCCDados, FMX.Dialogs, uRCMDados;

procedure TDMDados.CarregaEstadoCozinha;
var
  dsCzn: TFDJsonDataSets;
begin
  dsCzn := RCMDados.SMServerGourmetClient.VerificaEstadoCozinha;

  if TFDJSONDataSetsReader.GetListCount(dsCzn) = 1 then
  begin
    memczn.Active := false;
    memczn.AppendData(TFDJSONDataSetsReader.GetListValue(dsCzn, 0));
  end;

end;

procedure TDMDados.Carregaito(vOrcChave: integer);
var
  dsIto: TFDJsonDataSets;
begin
  dsIto := RCMDados.SMServerGourmetClient.Carregaito(vOrcChave);

  if TFDJSONDataSetsReader.GetListCount(dsIto) = 1 then
  begin
    memito.Active := false;
    memito.AppendData(TFDJSONDataSetsReader.GetListValue(dsIto, 0));
  end;

end;

procedure TDMDados.SalvaItem(vOrchave: integer; vprocodigo: integer; vpuncodigo: integer; vqtde: double; vpessoas: integer; vobs: string; vsfnid: integer; vsfncodigo: integer;
  vcopos: integer; vpratos: integer; vClbCodigo: integer);
var
  dstIto: TFDJsonDataSets;
begin

  { dstIto := RCMDados.SMServerGourmetClient.AbreMesa(vClbCodigo);

    if TFDJSONDataSetsReader.GetListCount(dstIto) = 1 then
    begin
    memOrc.Active := false;
    memOrc.AppendData(TFDJSONDataSetsReader.GetListValue(dstIto, 0));
    end; }

end;

procedure TDMDados.AbreMesa(vClbCodigo: String; vNumMesa: String);
var
  dsOrc: TFDJsonDataSets;
begin
  dsOrc := RCMDados.SMServerGourmetClient.AbreMesa(vClbCodigo, vNumMesa);

  if TFDJSONDataSetsReader.GetListCount(dsOrc) = 1 then
  begin
    memOrc.Active := false;
    memOrc.AppendData(TFDJSONDataSetsReader.GetListValue(dsOrc, 0));
  end;

end;

procedure TDMDados.ConsultaMesa(vNumMesa: String);
var
  dsOrc: TFDJsonDataSets;
begin
  dsOrc := RCMDados.SMServerGourmetClient.ConsultaMesa(vNumMesa);

  if TFDJSONDataSetsReader.GetListCount(dsOrc) = 1 then
  begin
    memOrc.Active := false;
    memOrc.AppendData(TFDJSONDataSetsReader.GetListValue(dsOrc, 0));
  end;

end;

procedure TDMDados.ConsultaUniaoMessa(vNumMesa: String);
var
  dsUnm: TFDJsonDataSets;
begin
  dsUnm := RCMDados.SMServerGourmetClient.ConsultaUniaoMesa(vNumMesa);

  if TFDJSONDataSetsReader.GetListCount(dsUnm) = 1 then
  begin
    memUnm.Active := false;
    memUnm.AppendData(TFDJSONDataSetsReader.GetListValue(dsUnm, 0));
  end;

end;

procedure TDMDados.CarregaTgr;
var
  dsTgr: TFDJsonDataSets;
begin
  dsTgr := RCMDados.SMServerGourmetClient.DadosTgr;

  if TFDJSONDataSetsReader.GetListCount(dsTgr) = 1 then
  begin
    memtgr.Active := false;
    memtgr.AppendData(TFDJSONDataSetsReader.GetListValue(dsTgr, 0));
  end;
end;

procedure TDMDados.CarregaPro;
var
  dpro: TFDJsonDataSets;

begin
  dpro := RCMDados.SMServerGourmetClient.DadosPro;

  if TFDJSONDataSetsReader.GetListCount(dpro) = 1 then
  begin
    mempro.Active := false;
    mempro.AppendData(TFDJSONDataSetsReader.GetListValue(dpro, 0));
  end;
end;


procedure TDMDados.CarregaSfn;
var
  dSfn: TFDJsonDataSets;

begin
  dSfn := RCMDados.SMServerGourmetClient.DadosSfn;

  if TFDJSONDataSetsReader.GetListCount(dSfn) = 1 then
  begin
    memsfn.Active := false;
    memsfn.AppendData(TFDJSONDataSetsReader.GetListValue(dSfn, 0));
  end;
end;

procedure TDMDados.CarregaCgr;
var
  dsCgr: TFDJsonDataSets;

begin
  dsCgr := RCMDados.SMServerGourmetClient.DadosCgr;

  if TFDJSONDataSetsReader.GetListCount(dsCgr) = 1 then
  begin
    memcgr.Active := false;
    memcgr.AppendData(TFDJSONDataSetsReader.GetListValue(dsCgr, 0));
  end;
end;

procedure TDMDados.CarregaGrp;
var
  dsGrp: TFDJsonDataSets;

begin
  dsGrp := RCMDados.SMServerGourmetClient.DadosGrp;

  if TFDJSONDataSetsReader.GetListCount(dsGrp) = 1 then
  begin
    memgrp.Active := false;
    memgrp.AppendData(TFDJSONDataSetsReader.GetListValue(dsGrp, 0));
  end;
end;

procedure TDMDados.QuantidadeMesa;
var
  dsCfg: TFDJsonDataSets;
begin
  dsCfg := RCMDados.SMServerGourmetClient.QuantidadeMesas;

  if TFDJSONDataSetsReader.GetListCount(dsCfg) = 1 then
  begin
    memCfg.Active := false;
    memCfg.AppendData(TFDJSONDataSetsReader.GetListValue(dsCfg, 0));
  end;
end;

procedure TDMDados.ConsultaColaborador(vUsuario: string; vSenha: string);
var
  dsClb: TFDJsonDataSets;
begin
  dsClb := RCMDados.SMServerGourmetClient.RetornaRegistros(vUsuario, vSenha);

  if TFDJSONDataSetsReader.GetListCount(dsClb) = 1 then
  begin
    memClb.Active := false;
    memClb.AppendData(TFDJSONDataSetsReader.GetListValue(dsClb, 0));
  end;
end;

end.
