unit ufcct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes;

type
  Tfcct = class(Tfrmbase)
    registrocctchave: TIntegerField;
    registrocctregistro: TDateField;
    registroetdcodigo: TIntegerField;
    registrocctvalor: TFloatField;
    registrocctdatainicio: TDateField;
    registrocctdatafinal: TDateField;
    registrocctperiodicidade: TIntegerField;
    registrocctrenovacaoauto: TIntegerField;
    registroctrdiavencto: TIntegerField;
    Label1: TLabel;
    cctchave: TDBEdit;
    Label2: TLabel;
    cctregistro: TDBEdit;
    Label3: TLabel;
    etdcodigo: TDBEdit;
    lbcctvalor: TLabel;
    cctvalor: TDBEdit;
    Label5: TLabel;
    cctdatainicio: TDBEdit;
    lbcctdatafinal: TLabel;
    cctdatafinal: TDBEdit;
    lbcctrenovacaoauto: TLabel;
    cctrenovacaoauto: TDBEdit;
    Label9: TLabel;
    ctrdiavencto: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosencctrenovacaoauto: TStringField;
    tcc: TUniQuery;
    tcctcccodigo: TIntegerField;
    tcctccidentificacao: TStringField;
    registrotcccodigo: TIntegerField;
    registrotccidentificacao: TStringField;
    lbtcccodigo: TLabel;
    tcccodigo: TDBEdit;
    registrocarcodigo: TIntegerField;
    registrobcocodigo: TStringField;
    car: TUniQuery;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    bco: TUniQuery;
    bcobcocodigo: TStringField;
    bcobconome: TStringField;
    registrocaridentificacao: TStringField;
    registrobconome: TStringField;
    Label10: TLabel;
    carcodigo: TDBEdit;
    Label11: TLabel;
    bcocodigo: TDBEdit;
    registrocctidentificacao: TStringField;
    lbcctidentificacao: TLabel;
    cctidentificacao: TDBEdit;
    registromoecodigo: TIntegerField;
    moe: TUniQuery;
    moemoecodigo: TIntegerField;
    moemoeidentificacao: TStringField;
    registromoeidentificacao: TStringField;
    Label13: TLabel;
    moecodigo: TDBEdit;
    moemoesimbolo: TStringField;
    Dmoe: TDataSource;
    moesimbolo: TDBText;
    registromoesimbolo: TStringField;
    registrocctvalorfechado: TIntegerField;
    registrosencctvalorfechado: TStringField;
    lbcctvalorfechado: TLabel;
    cctvalorfechado: TDBEdit;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmcctipos: TStringField;
    cfgcfgmcctformavalor: TStringField;
    cfgcfgmcctidentificador: TStringField;
    cfgcfgmcctempercentual: TIntegerField;
    cfgcfgmcctusarenovacao: TIntegerField;
    cfgcfgmcctusadatafinal: TIntegerField;
    cfgcfgmccttipovalor: TStringField;
    registrocctpercentual: TIntegerField;
    registrosencctpercentual: TStringField;
    lbcctpercentual: TLabel;
    cctpercentual: TDBEdit;
    registrocctcpfresponsavel: TStringField;
    registrocctnomeresponsavel: TStringField;
    registrocctdescricao: TStringField;
    Label4: TLabel;
    cctnomeresponsavel: TDBEdit;
    Label6: TLabel;
    cctcpfresponsavel: TDBEdit;
    cctdescricao: TDBMemo;
    Label7: TLabel;
    registrotitcodigo: TIntegerField;
    tit: TUniQuery;
    tittitcodigo: TIntegerField;
    tittitidentificacao: TStringField;
    labtitcodigo: TLabel;
    titcodigo: TDBEdit;
    registrotitidentificacao: TStringField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    etdatv: TUniQuery;
    atv: TUniQuery;
    atvatvcodigo: TIntegerField;
    atvatvidentificacao: TStringField;
    etdatvatvidentificacao: TStringField;
    Detdatv: TDataSource;
    Label8: TLabel;
    atvcodigo: TDBEdit;
    etdatvatvcodigo: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure DSRegistroDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure etdcodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcct: Tfcct;

implementation

{$R *.dfm}

procedure Tfcct.bconfirmaClick(Sender: TObject);
begin
  inherited;
  if etdatv.State<>dsbrowse then
    etdatv.Post;

end;

procedure Tfcct.DSRegistroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if cctpercentual.Field.AsString <> '' then
    if cctpercentual.Field.AsInteger = 1 then
    begin
      moesimbolo.Visible := false;
      lbcctvalor.Caption := 'Percenctual';
    end
    else
    begin
      moesimbolo.Visible := True;
      lbcctvalor.Caption := cfgcfgmcctformavalor.AsString;
    end;

  if cctdatafinal.Field.AsString <> '' then
  begin
    labtitcodigo.Visible := True;
    titcodigo.Visible := True;
  end
  else
  begin
    labtitcodigo.Visible := false;
    titcodigo.Visible := false;

  end;

end;

procedure Tfcct.etdcodigoExit(Sender: TObject);
begin
  inherited;
  if etdcodigo.Field.AsString<>'' then
  begin
  etdatv.Close;
  etdatv.FilterSQL:='etdcodigo='+etdcodigo.Field.AsString;
  etdatv.Open;
  end;

end;

procedure Tfcct.FormShow(Sender: TObject);
begin

  cfg.Close;
  cfg.ParamByName('cfgcodigo').AsInteger := acesso.Filial;
  cfg.Open;
  if cfg.IsEmpty then
  begin
    cfg.Append;
    cfgcfgcodigo.AsInteger := acesso.Filial;
    cfg.Post;
  end;

  if cfgcfgmcctusarenovacao.AsInteger = 1 then
  begin
    cctrenovacaoauto.Visible := True;
    lbcctrenovacaoauto.Visible := True;
    registrocctrenovacaoauto.Visible := True;
  end
  else
  begin
    cctrenovacaoauto.Visible := false;
    lbcctrenovacaoauto.Visible := false;
    registrocctrenovacaoauto.Visible := false;
  end;

  if cfgcfgmcctusadatafinal.AsInteger = 1 then
  begin
    cctdatafinal.Visible := True;
    lbcctdatafinal.Visible := True;
    registrocctdatafinal.Visible := True;

  end
  else
  begin
    cctdatafinal.Visible := false;
    lbcctdatafinal.Visible := false;
    registrocctdatafinal.Visible := false;
  end;

  if cfgcfgmcctempercentual.AsInteger = 1 then
  begin
    registrocctvalor.DisplayFormat := '#0.0000';
    registrocctvalor.EditFormat := registrocctvalor.DisplayFormat;
    lbcctpercentual.Visible := True;
    cctpercentual.Visible := True;

  end
  else
  begin
    registrocctvalor.DisplayFormat := '#,##0.00';
    registrocctvalor.EditFormat := registrocctvalor.DisplayFormat;
    lbcctpercentual.Visible := false;
    cctpercentual.Visible := false;

  end;

  lbcctidentificacao.Caption := cfgcfgmcctidentificador.AsString;
  lbcctvalor.Caption := cfgcfgmcctformavalor.AsString;
  lbtcccodigo.Caption := cfgcfgmcctipos.AsString;
  lbcctvalorfechado.Caption := cfgcfgmcctformavalor.AsString;

  inherited;
end;

procedure Tfcct.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrocctrenovacaoauto.AsInteger := 1;
  registrocctregistro.AsString := hoje(application, ZCone);
  registrocctperiodicidade.AsInteger := 30;
  registromoecodigo.AsInteger := 1;
end;

end.
