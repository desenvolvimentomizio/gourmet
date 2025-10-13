unit uffla;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, System.ImageList;

type
  Tffla = class(Tfrmbase)
    registroflacodigo: TIntegerField;
    registroflaidentificacao: TStringField;
    Label1: TLabel;
    flacodigo: TDBEdit;
    Label2: TLabel;
    flaidentificacao: TDBEdit;
    ContabilizacaoTributaria: TTabSheet;
    cfgcfgusactb: TIntegerField;
    dcf: TUniQuery;
    dcfdcfcodigo: TIntegerField;
    dcfflacodigo: TIntegerField;
    dcfdcficmrecuperar: TIntegerField;
    dcfdcfcofinsrecuperar: TIntegerField;
    dcfdcfcsllrecuperar: TIntegerField;
    dcfdcfirpjrecuperar: TIntegerField;
    dcfdcficmsrecolher: TIntegerField;
    dcfdcfpisrecolher: TIntegerField;
    dcfdcfcofinsrecolher: TIntegerField;
    dcfdcfcsllrecolher: TIntegerField;
    dcfdcfirpjrecolher: TIntegerField;
    dcfdcficmssvenda: TIntegerField;
    dcfdcfpissvenda: TIntegerField;
    dcfdcfcofinssvenda: TIntegerField;
    dcfdcfcsllsvenda: TIntegerField;
    dcfdcfissrecolher: TIntegerField;
    dcfdcfisssvenda: TIntegerField;
    dcfdcfipirecolher: TIntegerField;
    dcfdcfipisvenda: TIntegerField;
    dcfdcfestoque: TIntegerField;
    dcfdcfcmv: TIntegerField;
    Label3: TLabel;
    dcficmrecuperar: TDBEdit;
    Ddcf: TDataSource;
    Label4: TLabel;
    dcfpisrecuperar: TDBEdit;
    Label5: TLabel;
    dcfcofinsrecuperar: TDBEdit;
    Label6: TLabel;
    dcfcsllrecuperar: TDBEdit;
    Label7: TLabel;
    dcfirpjrecuperar: TDBEdit;
    Label8: TLabel;
    dcficmsrecolher: TDBEdit;
    Label9: TLabel;
    dcfpisrecolher: TDBEdit;
    Label10: TLabel;
    dcfcofinsrecolher: TDBEdit;
    Label11: TLabel;
    dcfcsllrecolher: TDBEdit;
    Label12: TLabel;
    dcfipirecolher: TDBEdit;
    Label13: TLabel;
    dcfirpjrecolher: TDBEdit;
    Label14: TLabel;
    dcfissrecolher: TDBEdit;
    Label15: TLabel;
    dcficmssvenda: TDBEdit;
    Label16: TLabel;
    dcfpissvenda: TDBEdit;
    Label17: TLabel;
    dcfcofinssvenda: TDBEdit;
    Label18: TLabel;
    dcfcsllsvenda: TDBEdit;
    Label19: TLabel;
    dcfisssvenda: TDBEdit;
    Label20: TLabel;
    dcfipisvenda: TDBEdit;
    Label21: TLabel;
    dcfestoque: TDBEdit;
    Label22: TLabel;
    dcfcmv: TDBEdit;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    dcfdcfpisrecuperar: TIntegerField;
    dcfpcgdcficmrecuperar: TStringField;
    dcfpcgdcfpisrecuperar: TStringField;
    dcfpcgdcfcofinsrecuperar: TStringField;
    dcfpcgdcfcsllrecuperar: TStringField;
    dcfpcgdcfirpjrecuperar: TStringField;
    dcfpcgdcficmsrecolher: TStringField;
    dcfpcgdcfdcfpisrecolher: TStringField;
    dcfpcgdcfcofinsrecolher: TStringField;
    dcfpcgdcfcsllrecolher: TStringField;
    dcfpcgdcfipirecolher: TStringField;
    dcfpcgdcfirpjrecolher: TStringField;
    dcfpcgdcfissrecolher: TStringField;
    dcfpcgdcficmssvenda: TStringField;
    dcfpcgdcfpissvenda: TStringField;
    dcfpcgdcfcofinssvenda: TStringField;
    dcfpcgdcfcsllsvenda: TStringField;
    dcfpcgdcfisssvenda: TStringField;
    dcfpcgdcfipisvenda: TStringField;
    dcfpcgdcfestoque: TStringField;
    dcfpcgdcfcmv: TStringField;
    registroflasigla: TStringField;
    registroetdcodigo: TIntegerField;
    Label23: TLabel;
    flasigla: TDBEdit;
    Label24: TLabel;
    etdcodigo: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    VerifEtd: TUniQuery;
    VerifEtdflacodigo: TIntegerField;
    VerifEtdflaidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure etdcodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ffla: Tffla;

  // Início ID do Módulo frafla
const
  vPlIdMd = '01.01.06.002-02';

  // Fim ID do Módulo frafla

implementation

{$R *.dfm}

procedure Tffla.bconfirmaClick(Sender: TObject);
begin
  inherited;

  (* Atualiza entidade nas configurações *)
  (* Futuramente o campo "etdcodigo" de "fla" deve ser utilizado em todo o sistema *)
  if ModalResult = mrOk then
  begin
    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE cfg');
    consulta.SQL.Add(' INNER JOIN cfgmcfg ON cfg.cfgcodigo = cfgmcfg.cfgcodigo');
    consulta.SQL.Add('   SET cfgmcfg.cfgetdempresa = ' + etdcodigo.Field.AsString);
    consulta.SQL.Add(' WHERE cfg.flacodigo = ' + flacodigo.Field.AsString);
    consulta.ExecSQL;
  end;
end;

procedure Tffla.etdcodigoExit(Sender: TObject);
var
  vlMensagem: string;
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if etdcodigo.Field.IsNull then
    Exit;

  (* Verifica duplicidade de entidades *)
  VerifEtd.Close;
  VerifEtd.Params[0].AsInteger := etdcodigo.Field.AsInteger;

  if Self.Situacao = 'Alterando' then
  begin
    VerifEtd.Filter := 'etdcodigo <> ' + etdcodigo.Field.AsString;
    VerifEtd.Filtered := True;
  end;

  VerifEtd.Open;

  if not VerifEtd.IsEmpty then
  begin
    vlMensagem := 'Empresa não permitida!' + sLineBreak + sLineBreak;
    vlMensagem := vlMensagem + 'Existe filial vinculada a esta empresa:' + sLineBreak;
    vlMensagem := vlMensagem + 'Filial: ' + VerifEtdflacodigo.AsString + ' - ' + VerifEtdflaidentificacao.AsString + sLineBreak;

    Application.MessageBox(PChar(vlMensagem), 'Atenção', MB_ICONWARNING + MB_OK);
    etdcodigo.SetFocus;
  end;
end;

procedure Tffla.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
