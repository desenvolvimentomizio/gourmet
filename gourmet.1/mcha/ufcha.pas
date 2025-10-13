unit ufcha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, MemDS, DBAccess, Uni,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, Inifiles,
  Vcl.Buttons, PngSpeedButton, UniProvider, MySQLUniProvider, Vcl.DBCtrls,
  RichEdit, Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.DBCGrids;

type
  Tfcha = class(TForm)
    cha: TUniQuery;
    chachachave: TIntegerField;
    chacharegistro: TDateTimeField;
    chachaorigem: TStringField;
    chachadestino: TStringField;
    chachatexto: TStringField;
    chachaimagem: TBlobField;
    paginas: TPageControl;
    Contatos: TTabSheet;
    Conversas: TTabSheet;
    plTopo: TPanel;
    plTextos: TPanel;
    REdit: TRichEdit;
    mTexto: TMemo;
    btAnexar: TPngSpeedButton;
    btCaturaTela: TPngSpeedButton;
    bConnect: TPngSpeedButton;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    Timer: TTimer;
    cfg: TUniQuery;
    cfgetdapelido: TStringField;
    cfgetdidentificacao: TStringField;
    cfgetddoc1: TStringField;
    Dcfg: TDataSource;
    NomeFantasia: TDBText;
    etddoc1: TDBText;
    mizioonline: TUniConnection;
    PngSpeedButton1: TPngSpeedButton;
    TrayIcon: TTrayIcon;
    PopupMenu: TPopupMenu;
    mnOcultarBatePapo: TMenuItem;
    mnExibirBatePapo: TMenuItem;
    N1: TMenuItem;
    EncerrarBatePapo1: TMenuItem;
    ImageList1: TImageList;
    agt: TUniQuery;
    agtagtcodigo: TIntegerField;
    agtagtapelido: TStringField;
    agtagtnome: TStringField;
    agtagtemail: TStringField;
    agtagtimagem: TBlobField;
    agtagtstatus: TIntegerField;
    agtagtfuncao: TStringField;
    agtagtativo: TIntegerField;
    agtagtsenha: TStringField;
    DBCtrlGrid1: TDBCtrlGrid;
    Dagt: TDataSource;
    Panel1: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Panel2: TPanel;
    chachalidoorigem: TIntegerField;
    chachalidodestino: TIntegerField;
    procedure TimerTimer(Sender: TObject);
    procedure mTextoKeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure EncerrarBatePapo1Click(Sender: TObject);
    procedure mnOcultarBatePapoClick(Sender: TObject);
    procedure mnExibirBatePapoClick(Sender: TObject);
    procedure AgenteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    function ConectaBanco: boolean;
    procedure AtivarChat;
    { Private declarations }
  public
    { Public declarations }
    vpAgente: String;
  end;

var
  fcha: Tfcha;

implementation

{$R *.dfm}

// Using the Paragraph property
procedure RE_AlignText1(ARichEdit: TRichEdit; alignment: TAlignment);
begin
  ARichEdit.Paragraph.alignment := alignment;
end;

procedure RE_SetSelBgColor(RichEdit: TRichEdit; AColor: TColor);
var
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);
  with Format do
  begin
    cbSize := SizeOf(Format);
    dwMask := CFM_BACKCOLOR;
    crBackColor := AColor;
    RichEdit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
  end;
end;

procedure TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;
  Application.ProcessMessages;
end;

function Tfcha.ConectaBanco: boolean;
Var
  arquini: TIniFile;
  vlNomeBanco: String;
  vlPortaBanco: String;
  vlServidor: String;
  vlUsuario: String;
  vlSenha: String;
  vlMonitor: String;
  vlTipoBanco: String;
Begin
  result := false;
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vlNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
    vlServidor := ReadString('posi', 'servidor', '127.0.0.1');
    vlUsuario := ReadString('posi', 'usuario', 'root');
    vlSenha := ReadString('posi', 'senha', 'xda973');
    vlPortaBanco := ReadString('posi', 'portabanco', '3306');
    vlMonitor := ReadString('posi', 'monitor', '0');
    vlTipoBanco := ReadString('posi', 'tipo', 'mysql');

  End;
  arquini.Free;

  if lowercase(vlTipoBanco) = 'mysql' then
    Conexao.ProviderName := 'mySQL';

  if lowercase(vlTipoBanco) = 'postgresql' then
    Conexao.ProviderName := 'PostgreSQL';

  Conexao.Connected := false;
  Conexao.Database := vlNomeBanco;
  Conexao.Username := vlUsuario;
  Conexao.Password := vlSenha;
  Conexao.Port := StrToInt(vlPortaBanco);
  Conexao.Server := vlServidor;

  Conexao.Connected := true;
  result := Conexao.Connected;

End;

procedure Tfcha.EncerrarBatePapo1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfcha.FormShow(Sender: TObject);
begin
  if not mizioonline.Connected then
  begin
    mizioonline.Connect;
  end;

  if mizioonline.Connected then
    agt.Open;
end;

procedure Tfcha.mnExibirBatePapoClick(Sender: TObject);
begin
  Application.MainForm.Visible := true;
end;

procedure Tfcha.mnOcultarBatePapoClick(Sender: TObject);
begin
  Application.MainForm.Visible := false;
end;

procedure Tfcha.mTextoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if not cha.active then
    begin
      cha.ParamByName('origem').AsString := etddoc1.Field.AsString;
      cha.ParamByName('destino').AsString := vpAgente;
      cha.Open;
    end;
    RE_AlignText1(REdit, taLeftJustify);
    RE_SetSelBgColor(REdit, CLWHITE);
    REdit.SelAttributes.Size := 10;
    REdit.SelAttributes.Style := [fsBold];
    REdit.SelAttributes.Color := clRed;
    REdit.SelText := NomeFantasia.Field.AsString + #13;
    REdit.SelAttributes.Style := [];
    REdit.SelAttributes.Color := clBlack;
    REdit.SelText := mTexto.Text + '  ';
    REdit.SelAttributes.Size := 7;

    REdit.SelText := formatdatetime('hh:nn', now()) + #13 + #13 + #13;

    cha.Append;
    chacharegistro.AsFloat := now;
    chachaorigem.AsString := etddoc1.Field.AsString;
    chachadestino.AsString := vpAgente;
    chachatexto.AsString := mTexto.Text;
    cha.Post;

    mTexto.Clear;
    SendMessage(REdit.Handle, WM_VSCROLL, SB_BOTTOM, 0);

  end

end;

procedure Tfcha.AtivarChat;
begin
  paginas.ActivePage := Conversas;
  Application.ProcessMessages;

  if not mizioonline.Connected then
  begin
    mizioonline.Connect;
  end;

  if not Conexao.Connected then
  begin
    ConectaBanco;
    cfg.Open;
  end;

  cha.Close;
  cha.ParamByName('origem').AsString := etddoc1.Field.AsString;
  cha.ParamByName('destino').AsString := vpAgente;
  cha.Open;
  try
    REdit.Lines.BeginUpdate;
    cha.first;
    while not cha.Eof do
    begin
      if chachaorigem.AsString = etddoc1.Field.AsString then
      begin

        RE_AlignText1(REdit, taLeftJustify);
        RE_SetSelBgColor(REdit, CLWHITE);

        REdit.SelAttributes.Size := 8;
        REdit.SelAttributes.Style := [fsBold];
        REdit.SelAttributes.Color := clRed;
        REdit.SelText := NomeFantasia.Field.AsString + #13;
        REdit.SelAttributes.Style := [];
        REdit.SelAttributes.Color := clBlack;
        REdit.SelText := chachatexto.AsString + '  ';
        REdit.SelAttributes.Size := 7;

        REdit.SelText := formatdatetime('dd/mm hh:nn', chacharegistro.AsFloat) + #13 + #13 + #13;
        cha.Edit;
        chachalidoorigem.AsInteger := 1;
        cha.Post;

      end;

      if chachaorigem.AsString = vpAgente then
      begin
        RE_AlignText1(REdit, taRightJustify);
        RE_SetSelBgColor(REdit, clSilver);
        REdit.SelAttributes.Size := 8;
        REdit.SelAttributes.Style := [fsBold];
        REdit.SelAttributes.Color := clNavy;
        REdit.SelText := vpAgente + #13;
        REdit.SelAttributes.Style := [];
        REdit.SelAttributes.Color := clBlack;
        REdit.SelText := chachatexto.AsString + '  ';
        REdit.SelAttributes.Size := 7;

        REdit.SelText := formatdatetime('dd/mm hh:nn', chacharegistro.AsFloat) + #13 + #13 + #13;
        cha.Edit;
        chachalidodestino.AsInteger := 1;
        cha.Post;

      end;

      cha.Next;
    end;

    SendMessage(REdit.Handle, WM_VSCROLL, SB_BOTTOM, 0);

  finally
    REdit.Lines.EndUpdate;
  end;
  Timer.Enabled := true;

end;

procedure Tfcha.TimerTimer(Sender: TObject);
begin
  try
    Timer.Enabled := false;
    TrimAppMemorySize;
    if not mizioonline.Connected then
    begin
      mizioonline.Connect;
    end;

    if not Conexao.Connected then
    begin
      ConectaBanco;
      cfg.Open;
      agt.Open;
    end;
  finally
    Timer.Enabled := true;
  end;

end;

procedure Tfcha.AgenteClick(Sender: TObject);
begin
  vpAgente := agtagtapelido.AsString;
  REdit.Clear;
  AtivarChat;
end;

procedure Tfcha.PngSpeedButton1Click(Sender: TObject);
begin
  REdit.Clear;
  AtivarChat;
end;

end.
