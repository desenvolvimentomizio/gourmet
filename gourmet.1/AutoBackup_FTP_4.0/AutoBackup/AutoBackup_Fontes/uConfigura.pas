unit uConfigura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Inifiles, FileCtrl, ShellAPI,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.CheckLst,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, IdFTPCommon, Vcl.ComCtrls;

type
  TfrmConfig = class(TForm)
    pnl_menu: TPanel;
    lb_caminho: TLabel;
    img_arq1: TImage;
    img_base: TImage;
    lb_base: TLabel;
    img_arq2: TImage;
    lb_caminhoOp: TLabel;
    clbHorarios: TCheckListBox;
    clbSemana: TCheckListBox;
    pnl_topo: TPanel;
    SpeedButton1: TSpeedButton;
    pnl_rodape: TPanel;
    eDirBackup: TEdit;
    eBase: TEdit;
    eDirBackup2: TEdit;
    GroupBox1: TGroupBox;
    btn_salvar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure pnl_topoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure img_arq1Click(Sender: TObject);
    procedure img_arq2Click(Sender: TObject);
    procedure img_baseClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpDirBackup: string;
    vpDirBackup2: string;

    vpIPServidorCli: String;
    vpBaseCli: string;
    vpPortaCli: string;
    vpUsuarioCli: string;
    vpSenhaCli: string;

  end;

var
  frmConfig: TfrmConfig;

implementation

{$R *.dfm}

uses funcoesbackup, uAutoBackup, uConexaoModulo;

function Crypt(Action, Src: String): String;
// <<- Criptografa e Descriptografa os dados da empresa e senha do servidor do cliente
Label Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: String;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;
  Key := '8UIK6TKY4KYU4KY45KYUK46YU5R6T5YR6T54TRI867R3QE47557543464U589D45T49NY5TN945YT420N5DY57NY9N0Y45TENJCHER9CN';
  Dest := '';
  KeyLen := length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to length(Src) do
    begin
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + Copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + Copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= length(Src));
  end;
  Result := Dest;
Fim:
end;

procedure TfrmConfig.btn_salvarClick(Sender: TObject);
var
  NomeArquivo: String;
  Gravar: Tinifile;
  Ler: Tinifile;
  i: Integer;
begin

  if not DirectoryExists(extractfilepath(application.ExeName) + 'Config\') then
    ForceDirectories(extractfilepath(application.ExeName) + 'Config\');

  Gravar := Tinifile.Create(extractfilepath(application.ExeName) + 'Config\MizioBackup.ini');

  NomeArquivo := extractfilepath(application.ExeName) + 'gourmeterp.ini';

  NomeArquivo := StringReplace(NomeArquivo, '\autobackup\', '\', [rfReplaceAll, rfIgnoreCase]);

  Ler := Tinifile.Create(NomeArquivo);

  vpBaseCli := Ler.ReadString('posi', 'nomebanco', 'mizio');
  vpIPServidorCli := Ler.ReadString('posi', 'servidor', '127.0.0.1');
  vpUsuarioCli := Ler.ReadString('posi', 'usuario', 'root');
  vpSenhaCli := Ler.ReadString('posi', 'senha', 'xda973');
  vpPortaCli := Ler.ReadString('posi', 'portabanco', '3306');

  with Gravar do
  begin

    Gravar.WriteString('vCli ', 'BaseCli ', vpBaseCli);
    Gravar.WriteString('vCli ', 'DirBackup', eDirBackup.Text);
    Gravar.WriteString('vCli ', 'DirBackup2 ', eDirBackup2.Text);
    Gravar.WriteString('vCli ', 'ServidorCli ', vpIPServidorCli);
    Gravar.WriteString('vCli', 'LoginCli', Crypt('C', vpUsuarioCli));
    Gravar.WriteString('vCli', 'SenhaCli', Crypt('C', vpSenhaCli));
    Gravar.WriteString('vCli', 'PortaCli', Crypt('C', vpPortaCli));

    for i := 0 to clbSemana.Count - 1 do
      WriteBool('Dia ', clbSemana.Items[i], clbSemana.Checked[i]);
    for i := 0 to clbHorarios.Count - 1 do
      WriteBool('Hora ', clbHorarios.Items[i], clbHorarios.Checked[i]);
  end;

  Gravar.Free;
  Ler.Free;
  ShowMessage('Alterações salvas');
  SpeedButton1.Click;
end;

procedure TfrmConfig.FormCreate(Sender: TObject);
var
  Ler: Tinifile;
  i: Integer;

begin
  try
    Ler := Tinifile.Create(extractfilepath(application.ExeName) + 'Config\MizioBackup.ini');
    with Ler do
    begin
      vpBaseCli := Ler.ReadString('vCli ', 'BaseCli ', '');
      eBase.Text := vpBaseCli;

      eDirBackup.Text := Ler.ReadString('vCli ', 'DirBackup', '');
      eDirBackup2.Text := Ler.ReadString('vCli ', 'DirBackup2 ', '');
      vpIPServidorCli := Ler.ReadString('vCli ', 'ServidorCli ', '');

      vpUsuarioCli := Ler.ReadString('vCli', 'LoginCli', '');
      vpUsuarioCli := Crypt('D', vpUsuarioCli);

      vpSenhaCli := Ler.ReadString('vCli', 'SenhaCli', '');
      vpSenhaCli := Crypt('D', vpSenhaCli);

      vpPortaCli := Ler.ReadString('vCli', 'PortaCli', '');
      vpPortaCli := Crypt('D', vpPortaCli);

      for i := 0 to clbSemana.Count - 1 do
        clbSemana.Checked[i] := ReadBool('Dia', clbSemana.Items[i], clbSemana.Checked[i]);

      for i := 0 to clbHorarios.Count - 1 do
        clbHorarios.Checked[i] := ReadBool('Hora', clbHorarios.Items[i], clbHorarios.Checked[i]);
    end;
  finally
    Ler.Free;
  end;
end;

procedure TfrmConfig.img_arq1Click(Sender: TObject);
var
  selDir: string;
begin
  SelectDirectory('Selecione uma Pasta', '', selDir);
  eDirBackup.Text := selDir;
end;

procedure TfrmConfig.img_arq2Click(Sender: TObject);
var
  selDir: string;
begin
  SelectDirectory('Selecione uma Pasta', '', selDir);
  eDirBackup2.Text := selDir;
end;

procedure TfrmConfig.img_baseClick(Sender: TObject);
var
  Ler: Tinifile;
  NomeArquivo: string;
  v: string;
  vlTipoVertical: string;
  vlPathAplicativo: string;
begin

  vlPathAplicativo := extractfilepath(application.ExeName);

  if fileexists(vlPathAplicativo + 'GourmetERP.exe') then
    vlTipoVertical := 'Gourmet'
  else if fileexists(vlPathAplicativo + 'MercatoERP.exe') then
    vlTipoVertical := 'Mercato'
  else if fileexists(vlPathAplicativo + 'BoutiqueERP.exe') then
    vlTipoVertical := 'Botique'
  else if fileexists(vlPathAplicativo + 'VarejoERP.exe') then
    vlTipoVertical := 'Varejo'
  else
    vlTipoVertical := 'mizio';

  NomeArquivo := extractfilepath(application.ExeName) + vlTipoVertical + '.ini';

  NomeArquivo := StringReplace(NomeArquivo, '\autobackup\', '\', [rfReplaceAll, rfIgnoreCase]);

  Ler := Tinifile.Create(NomeArquivo);
  v := Ler.ReadString('posi', 'nomebanco', '');
  eBase.Text := v;
  Ler.Free;
end;

procedure TfrmConfig.pnl_topoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    frmConfig.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TfrmConfig.SpeedButton1Click(Sender: TObject);
begin
  frmConfig.Close;
  // frmConfig.Free;
end;

end.
