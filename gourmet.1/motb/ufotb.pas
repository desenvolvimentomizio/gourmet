unit ufotb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Graphics, uFuncoes, System.ImageList;

type
  Tfotb = class(Tfrmbase)
    registrootbcodigo: TIntegerField;
    registrootbidentificacao: TStringField;
    Label1: TLabel;
    otbcodigo: TDBEdit;
    Label2: TLabel;
    otbidentificacao: TDBEdit;
    registrootbcondicm: TIntegerField;
    registrootbcondpis: TIntegerField;
    registrootbcondipi: TIntegerField;
    registrootbcondcofins: TIntegerField;
    registrootbcontbicm: TIntegerField;
    registrootbcontabiliza: TIntegerField;
    registropcgcodigo: TIntegerField;
    registrophgcodigo: TIntegerField;
    Label3: TLabel;
    otbcondicm: TDBEdit;
    Label4: TLabel;
    otbcontbicm: TDBEdit;
    Label5: TLabel;
    otbcondpis: TDBEdit;
    Label6: TLabel;
    otbcontpis: TDBEdit;
    Label7: TLabel;
    otbcondipi: TDBEdit;
    Label8: TLabel;
    otbcontipi: TDBEdit;
    Label9: TLabel;
    otbcondcofins: TDBEdit;
    Label10: TLabel;
    otbcontconfins: TDBEdit;
    Label12: TLabel;
    pcgcodigo: TDBEdit;
    Label14: TLabel;
    phgcodigo: TDBEdit;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenotbcontbicm: TStringField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registropcgpcgidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    cfo: TUniQuery;
    cfocfocfop: TStringField;
    cfocfoidentificacao: TStringField;
    registrootbcontpis: TIntegerField;
    registrootbcontipi: TIntegerField;
    registrootbcontconfins: TIntegerField;
    registrosenotbcontpis: TStringField;
    registrosenotbcontipi: TStringField;
    registrosenotbcontconfins: TStringField;
    cio: TUniQuery;
    ciociocodigo: TIntegerField;
    ciocioidentificacao: TStringField;
    registrociootbcondicm: TStringField;
    registrociootbcondpis: TStringField;
    registrociootbcondipi: TStringField;
    registrociootbcondcofins: TStringField;
    registrosenotbcontabiliza: TStringField;
    Label11: TLabel;
    otbcontabiliza: TDBEdit;
    cst: TUniQuery;
    registrocstcodigo: TStringField;
    registrocspcodigo: TStringField;
    registrocsicodigo: TStringField;
    registrocsfcodigo: TStringField;
    Label16: TLabel;
    cstcodigo: TDBEdit;
    Label17: TLabel;
    cspcodigo: TDBEdit;
    Label18: TLabel;
    csicodigo: TDBEdit;
    Label19: TLabel;
    csfcodigo: TDBEdit;
    csi: TUniQuery;
    csf: TUniQuery;
    csp: TUniQuery;
    cstcstcodigo: TStringField;
    cstcstidentificacao: TStringField;
    csicsicodigo: TStringField;
    csicsiidentificacao: TStringField;
    csfcsfcodigo: TStringField;
    csfcsfidentificacao: TStringField;
    cspcspcodigo: TStringField;
    cspcspidentificacao: TStringField;
    registrocstidentificacao: TStringField;
    registrocspidentificacao: TStringField;
    registrocsiidentificacao: TStringField;
    registrocsfidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure otbcondicmExit(Sender: TObject);
    procedure otbcondpisExit(Sender: TObject);
    procedure otbcondipiExit(Sender: TObject);
    procedure otbcondcofinsExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fotb: Tfotb;

  // Início ID do Módulo fotb
const
  vPlIdMd = '01.11.20.003-03';

implementation

{$R *.dfm}

procedure Tfotb.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfotb.otbcondcofinsExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if otbcondcofins.Field.AsInteger = 99 then
  begin
    csfcodigo.Field.AsString := '';
    csfcodigo.TabStop := false;
    csfcodigo.ReadOnly := true;
    csfcodigo.Color := clSilver;
  end
  else
  begin
    csfcodigo.TabStop := true;
    csfcodigo.ReadOnly := false;
    csfcodigo.Color := PEG_COR_VALORREQUERIDO;

  end;
end;

procedure Tfotb.otbcondicmExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if otbcondicm.Field.AsInteger = 99 then
  begin
    cstcodigo.Field.AsString := '';
    cstcodigo.TabStop := false;
    cstcodigo.ReadOnly := true;
    cstcodigo.Color := clSilver;
  end
  else
  begin
    cstcodigo.TabStop := true;
    cstcodigo.ReadOnly := false;
    cstcodigo.Color := PEG_COR_VALORREQUERIDO;

  end;
end;

procedure Tfotb.otbcondipiExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if otbcondipi.Field.AsInteger = 99 then
  begin
    csicodigo.Field.AsString := '';
    csicodigo.TabStop := false;
    csicodigo.ReadOnly := true;
    csicodigo.Color := clSilver;
  end
  else
  begin
    csicodigo.TabStop := true;
    csicodigo.ReadOnly := false;
    csicodigo.Color := PEG_COR_VALORREQUERIDO;

  end;
end;

procedure Tfotb.otbcondpisExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if otbcondpis.Field.AsInteger = 99 then
  begin
    cspcodigo.Field.AsString := '';
    cspcodigo.TabStop := false;
    cspcodigo.ReadOnly := true;
    cspcodigo.Color := clSilver;
  end
  else
  begin
    cspcodigo.TabStop := true;
    cspcodigo.ReadOnly := false;
    cspcodigo.Color := PEG_COR_VALORREQUERIDO;
  end;
end;

end.
