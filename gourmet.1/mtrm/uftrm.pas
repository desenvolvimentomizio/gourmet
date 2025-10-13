unit uftrm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, ACBrBase, ACBrBAL, Vcl.StdCtrls,
  Vcl.Controls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.ImgList, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, System.SysUtils, ufracit, ACBrDevice, System.ImageList,
 ACBrDeviceSerial;

type
  Tftrm = class(Tfrmbase)
    registrotrmcodigo: TIntegerField;
    registrotrmidentificacao: TStringField;
    Label1: TLabel;
    trmidentificacao: TDBEdit;
    Label2: TLabel;
    bvalidar: TButton;
    Spt1: TSplitter;
    Bevel1: TBevel;
    Plcit: TPanel;
    Balanca01: TTabSheet;
    registrotrmbalamodelo: TStringField;
    registrotrmbalaporta: TStringField;
    registrotrmbalahandshake: TStringField;
    registrotrmbalaparity: TStringField;
    registrotrmbalastop: TStringField;
    registrotrmbaladata: TStringField;
    ACBrBAL: TACBrBAL;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    sttPeso: TStaticText;
    sttResposta: TStaticText;
    edtTimeOut: TEdit;
    Memo1: TMemo;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cmbBalanca: TDBComboBox;
    cmbPortaSerial: TDBComboBox;
    cmbBaudRate: TDBComboBox;
    cmbDataBits: TDBComboBox;
    cmbHandShaking: TDBComboBox;
    cmbParity: TDBComboBox;
    cmbStopBits: TDBComboBox;
    Panel2: TPanel;
    btnConectar: TButton;
    btnDesconectar: TButton;
    btnLerPeso: TButton;
    chbMonitorar: TCheckBox;
    btnLimpar: TButton;
    registrotrmbalabaud: TStringField;
    registrotrmgaveta: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosentrmgaveta: TStringField;
    Label25: TLabel;
    trmgaveta: TDBEdit;
    trmcodigo: TDBEdit;
    registrotrmmesavendarapida: TIntegerField;
    Label29: TLabel;
    trmmesavendarapida: TDBEdit;
    registrotrmestabelecimentotipotef: TStringField;
    registrotrmterminalcodempresa: TStringField;
    registrotrmterminalcodfilial: TStringField;
    registrotrmterminalcodterminal: TStringField;
    registrotrmterminalenderecoservidor: TStringField;
    registrotrmterminalportapinpad: TStringField;
    TEF: TTabSheet;
    registrotrmtermanaladquirente: TStringField;
    Label14: TLabel;
    DBComboBox1: TDBComboBox;
    Label15: TLabel;
    trmterminalcodempresa: TDBEdit;
    Label17: TLabel;
    trmterminalcodterminal: TDBEdit;
    Label18: TLabel;
    trmterminalenderecoservidor: TDBEdit;
    Label19: TLabel;
    trmterminalportapinpad: TDBEdit;
    Label16: TLabel;
    trmtermanaladquirente: TDBEdit;
    procedure bvalidarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure chbMonitorarClick(Sender: TObject);
    procedure btnLerPesoClick(Sender: TObject);
    procedure btnDesconectarClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtTimeOutKeyPress(Sender: TObject; var Key: Char);
    procedure ACBrBALLePeso(Peso: Double; Resposta: AnsiString);
  private

    FRespostaList: TStringList;

    Function Converte(cmd: String): String;
    procedure salvacolunasframes;
  public
    { Public declarations }
    hfin: thandle;
    hcit: thandle;
  end;

var
  ftrm: Tftrm;

  // Início ID do Módulo fratrm
const
  vPlIdMd = '02.03.81.001-02';

  // Fim ID do Módulo fratrm

implementation

{$R *.dfm}

function Tftrm.Converte(cmd: String): String;
var
  A: Integer;
begin
  Result := '';
  For A := 1 to length(cmd) do
  begin
    if not(cmd[A] in ['A' .. 'Z', 'a' .. 'z', '0' .. '9', ' ', '.', ',', '/', '?', '<', '>', ';', ':', ']', '[', '{', '}', '\', '|', '=', '+', '-', '_', ')',
      '(', '*', '&', '^', '%', '$', '#', '@', '!', '~', ']']) then
      Result := Result + '#' + IntToStr(ord(cmd[A])) + ' '
    else
      Result := Result + cmd[A] + ' ';
  end;
end;

procedure Tftrm.edtTimeOutKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #13, #8]) then
    Key := #0;
end;


procedure Tftrm.ACBrBALLePeso(Peso: Double; Resposta: AnsiString);
var
  valid: Integer;
begin
  inherited;
  // Objeto para armazenar as leituras
  if (not Assigned(FRespostaList)) then
    FRespostaList := TStringList.Create;

  if FRespostaList.Count > 0 then
    FRespostaList.Add(StringOfChar('-', 80));

  sttPeso.Caption := formatFloat('######0.000', Peso);
  sttResposta.Caption := Converte(Resposta);

  // Acrescentar resposta
  FRespostaList.Add(sttResposta.Caption);

  if Peso > 0 then
    Memo1.Lines.Text := 'Leitura OK !'
  else
  begin
    valid := Trunc(ACBrBAL.UltimoPesoLido);
    case valid of
      0:
        Memo1.Lines.Text := 'TimeOut !' + sLineBreak + 'Coloque o produto sobre a Balança!';
      -1:
        Memo1.Lines.Text := 'Peso Instavel ! ' + sLineBreak + 'Tente Nova Leitura';
      -2:
        Memo1.Lines.Text := 'Peso Negativo !';
      -10:
        Memo1.Lines.Text := 'Sobrepeso !';
    end;
  end;
end;

procedure Tftrm.bconfirmaClick(Sender: TObject);
begin
  inherited;
  salvacolunasframes;
end;


procedure Tftrm.btnConectarClick(Sender: TObject);
begin
  inherited;
  // se houver conecção aberta, Fecha a conecção
  if ACBrBAL.Ativo then
    ACBrBAL.Desativar;

  // configura porta de comunicação
  ACBrBAL.Modelo := TACBrBALModelo(cmbBalanca.ItemIndex);
  ACBrBAL.Device.HandShake := TACBrHandShake(cmbHandShaking.ItemIndex);
  ACBrBAL.Device.Parity := TACBrSerialParity(cmbParity.ItemIndex);
  ACBrBAL.Device.Stop := TACBrSerialStop(cmbStopBits.ItemIndex);
  ACBrBAL.Device.Data := StrToInt(cmbDataBits.Text);
  ACBrBAL.Device.Baud := StrToInt(cmbBaudRate.Text);
  ACBrBAL.Device.Porta := cmbPortaSerial.Text;

  // Conecta com a balança
  ACBrBAL.Ativar;

  btnConectar.Enabled := false;
  Panel1.Enabled := false;
  btnDesconectar.Enabled := true;
  btnLerPeso.Enabled := true;
end;


procedure Tftrm.btnDesconectarClick(Sender: TObject);
begin
  inherited;
  ACBrBAL.Desativar;

  btnConectar.Enabled := true;
  Panel1.Enabled := true;
  btnDesconectar.Enabled := false;
  btnLerPeso.Enabled := false;
end;

procedure Tftrm.btnLerPesoClick(Sender: TObject);
Var
  TimeOut: Integer;
begin
  try
    TimeOut := StrToInt(edtTimeOut.Text);
  except
    TimeOut := 2000;
  end;

  ACBrBAL.LePeso(TimeOut);
end;

procedure Tftrm.btnLimparClick(Sender: TObject);
begin
  inherited;
  sttPeso.Caption := '';
  sttResposta.Caption := '';

end;


procedure Tftrm.bvalidarClick(Sender: TObject);
begin
  inherited;
  if self.registro.State <> dsbrowse then
    self.registro.Post;

  hcit := CarregaFrame('mcit', Plcit, 'Impressoras');
end;


procedure Tftrm.chbMonitorarClick(Sender: TObject);
begin
  inherited;
  ACBrBAL.MonitorarBalanca := chbMonitorar.Checked;
end;

procedure Tftrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ACBrBAL.Desativar;

  // Salvar
  if Assigned(FRespostaList) then
  begin
    FRespostaList.SaveToFile(ChangeFileExt(ParamStr(0), '.balanca.log'));
    FRespostaList.Free;
  end;

end;

procedure Tftrm.FormShow(Sender: TObject);
var
  I: Integer;
begin
  IdModulo := vPlIdMd;

  inherited;
end;

procedure Tftrm.salvacolunasframes;
var
  fra: Tframe;
begin
  if hcit <> 0 then
  begin
    fra := nil;
    fra := Tfracit(Application.FindComponent('fracit'));
    if fra <> nil then
      if (fra is Tfracit) then
        (fra as Tfracit).salvacolunas;
  end;
end;

end.
