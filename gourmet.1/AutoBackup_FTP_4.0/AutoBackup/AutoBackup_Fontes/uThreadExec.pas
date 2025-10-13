unit uThreadExec;

interface

uses
  System.Classes, Inifiles, Registry, ShellAPI, WinSvc, Windows, Vcl.Forms,
  IdFTPCommon,
  SysUtils, DADump, UniDump;

type
  uBackupExec = class(TThread)
  private
    function ExecutarEEsperar(NomeArquivo: String): boolean;

  protected
    procedure Execute; override;
  public
    function Crypt(Action, Src: String): String;
    Function BuscaTroca(Text, Busca, Troca: String): String;
    function ManipulaINI(Modo, LocalIni, Parametro1, Parametro2, ParametroGravar: string): string;
    procedure memoriaLivre;
    function ManipulaTXT(LocalTxt, Tipo, Parametro: string): string;
    function GeradorLog(Local, Parametros, Data: string): boolean;
    function NotificaExecucaoDoBackup(Cnpj, Apelido, BaseE, ServerE, SenhaE, LoginE: string): boolean;
    function FTPFileExists(aFileName: string): boolean;
    constructor Create();
  end;

var
  vBackupOn: boolean;
  Logexit: string;

implementation

uses funcoesbackup, uAutoBackup, uConexaoModulo, uConfigura, uThreadNotifica;

function uBackupExec.BuscaTroca(Text, Busca, Troca: String): String;
Var
  N: Integer;
Begin

  For N := 1 To Length(Text) Do
  Begin
    If Copy(Text, N, 1) = Busca Then
    Begin
      Delete(Text, N, 1);
      Insert(Troca, Text, N);
    End;
  End;

  Result := Text;
End;

constructor uBackupExec.Create;
begin
  inherited Create(True);

  FreeOnTerminate := True;

  Priority := TpLower;

  Resume;
end;

function uBackupExec.Crypt(Action, Src: String): String;
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
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
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
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:
end;

Function CreateProcessSimple(cmd: String): boolean;
var
  cl: string;
  SI: TStartupInfo;
  PI: TProcessInformation;

begin

  cl := cmd;
  UniqueString(cl);

  try
    try

      FillChar(SI, sizeof(SI), 0);
      FillChar(PI, sizeof(PI), 0);
      SI.cb := sizeof(SI);

      if not CreateProcess(nil, PChar(cl), nil, nil, True, 0, nil, nil, SI, PI) then
        RaiseLastOSError;

      WaitForSingleObject(PI.hProcess, INFINITE);

      CloseHandle(PI.hProcess);
      CloseHandle(PI.hThread);

    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally

  end;

end;

function uBackupExec.ExecutarEEsperar(NomeArquivo: String): boolean;
var
  Sh: TShellExecuteInfo;
  CodigoSaida: DWORD;
  vHandle: Cardinal;
begin
  FillChar(Sh, sizeof(Sh), 0);
  Sh.cbSize := sizeof(TShellExecuteInfo);
  with Sh do
  begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := application.Handle;
    SetProcessAffinityMask(Wnd, $01);
    lpVerb := nil;
    lpFile := PChar(NomeArquivo);
    nShow := SW_HIDE;
  end;
  if ShellExecuteEx(@Sh) then
  begin
    repeat
      application.ProcessMessages;
      GetExitCodeProcess(Sh.hProcess, CodigoSaida);
    until not(CodigoSaida = STILL_ACTIVE);
    Result := True;
  end
  else
    Result := False;
end;

procedure uBackupExec.Execute;

var { Diretorios dos Bats }
  DirBatCopia, DirBatOrigem, DirBatXml, HoraBat, HoraBat2: string;
  ErroEnvio: boolean;
var { Complementares }
  OrigemArq, XmlArq: string;
  LocalLog, HoraUltimo: string;

var { Ultimo - Relatorio de ultimo backup feito e sua situação na hora de sua efetuação }
  UltimoBackup, UltimoStatus, UltimoLocalPrincipal, UltimoLocalSecundario: string;

var
  E: Exception;
  AppName: PChar;
var
  ServidorFTP, LoginFTP, SenhaFTP, LoginCli, SenhaCli, ServidorBackup, LoginBackup, SenhaBackup, Basemizio, BaseTelemitria, Cnpj, Apelido, BaseCli, DirBackup, DirBackup2,
    ServidorCli: string;

var

  vlDump: TUniDump;

var
  vlNomeapp: string;

var
  vlNomeArquivo: string;

begin
  frmAutoBackup.ParaExecuodoBackup1.Visible := True;
  frmAutoBackup.ExecutarBackup1.Caption := 'AutoBackup em Execução';
  vBackupOn := True;
  frmAutoBackup.ExecutarBackup1.Enabled := False;
  frmAutoBackup.vNada := True;
  frmAutoBackup.vNovamente := False;
  frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
  frmAutoBackup.bWindows.BalloonHint := 'AutoBackup em Execução';
  frmAutoBackup.bWindows.ShowBalloonHint;
  frmAutoBackup.ExecBackup.Enabled := False;
  HoraBat := FormatDateTime('dd-mm-yyyy--hh-nn-ss', now);
  HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
  HoraUltimo := FormatDateTime('dd/mm/yyyy', now);

  vlNomeapp := extractfilepath(application.ExeName);
  vlNomeapp := trim(Copy(vlNomeapp, 4, 50));

  if not DirectoryExists(extractfilepath(application.ExeName) + 'Logs') then
    ForceDirectories(extractfilepath(application.ExeName) + 'Logs');

  GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Backup Iniciado', HoraBat2);
  Logexit := '';
  Logexit := extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt';
  { Fim }

  { Parametros para Logar nos Servidores Cliente|Envio|BackupBanco }

  try
    HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Arquivos Descriptografados e codificados', HoraBat2);
  except
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Erro na Leitura do Arquivo .INI', HoraBat2);
    //
    if frmAutoBackup.Notificaes1.Checked then
    begin
      frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
      frmAutoBackup.bWindows.BalloonHint := 'Erro na Execução do Backup - Erro (101) Leitura de dados';
      frmAutoBackup.bWindows.BalloonTimeout := 10000;
      frmAutoBackup.bWindows.ShowBalloonHint;
      //
    end;

    exit
  end;

  HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);

  try

    ServidorFTP := Crypt('D', ServidorFTP);
    ServidorBackup := Crypt('D', ServidorBackup);
    LoginFTP := Crypt('D', LoginFTP);
    SenhaFTP := Crypt('D', SenhaFTP);
    LoginCli := Crypt('D', LoginCli);
    SenhaCli := Crypt('D', SenhaCli);
    LoginBackup := Crypt('D', LoginBackup);
    SenhaBackup := Crypt('D', SenhaBackup);
    Basemizio := Crypt('D', Basemizio);
    BaseTelemitria := Crypt('D', BaseTelemitria);

    if conexaoDM.Local.Connected then
    begin
      conexaoDM.Local.Disconnect;
    end;
    conexaoDM.Local.Database := BaseCli;
    conexaoDM.Local.Server := ServidorCli;
    conexaoDM.Local.username := LoginCli;
    conexaoDM.Local.password := SenhaCli;





    Apelido := conexaoDM.cfgetdapelido.AsString;
    Cnpj := conexaoDM.cfgcfgdoc1.AsString;

    HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Conexão com o Banco Local feito com sucesso', HoraBat2);
  except
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Erro na Conexão com o Banco Local', HoraBat2);
    //


    if frmAutoBackup.Notificaes1.Checked then
    begin
      frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
      frmAutoBackup.bWindows.BalloonHint := 'Erro na Execução do Backup - Erro (101) Leitura de dados';
      frmAutoBackup.bWindows.BalloonTimeout := 10000;
      frmAutoBackup.bWindows.ShowBalloonHint;
      //
    end;

    exit;
  end;
  { Fim }

  HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
  LocalLog := extractfilepath(application.ExeName) + 'Logs\LogBackup-' + Cnpj + '.txt';
  { Criando .Bat para executar a Copia e compactação dos arquivos }

  try

    vlNomeArquivo := extractfilepath(application.ExeName);
    vlNomeArquivo := StringReplace(vlNomeArquivo, '\autobackup\', '\', [rfReplaceAll, rfIgnoreCase]);

    if not DirectoryExists(extractfilepath(application.ExeName) + 'Temp') then
      ForceDirectories(extractfilepath(application.ExeName) + 'Temp');

    if not DirectoryExists(extractfilepath(application.ExeName) + 'TempArq') then
      ForceDirectories(extractfilepath(application.ExeName) + 'TempArq');

    ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecOrigem.bat', 'Gravar', 'cd\' + vlNomeapp + '\Config && 7z  a -t7z TempArq\Origem-' + Cnpj + '-' + HoraBat +
      'B.zip ' + vlNomeArquivo + 'relat\copia.sql');

    ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecXml.bat', 'Gravar', 'cd\' + vlNomeapp + '\Config && 7z  a -t7z TempArq\XMLTerc-' + Cnpj + '-' + HoraBat + 'B.zip '
      + vlNomeArquivo + 'xml-recebidos\*.*');

    DirBatCopia := extractfilepath(application.ExeName) + 'Temp\ExecCopia.bat';
    DirBatOrigem := extractfilepath(application.ExeName) + 'Temp\ExecOrigem.bat';
    DirBatXml := extractfilepath(application.ExeName) + 'Temp\ExecXml.bat';

    if not DirectoryExists(extractfilepath(application.ExeName) + 'Config\TempArq') then
      ForceDirectories(extractfilepath(application.ExeName) + 'Config\TempArq');

    OrigemArq := extractfilepath(application.ExeName) + 'Config\TempArq\Origem-' + Cnpj + '-' + HoraBat + 'B.zip';
    XmlArq := extractfilepath(application.ExeName) + 'Config\TempArq\XMLTerc-' + Cnpj + '-' + HoraBat + 'B.zip';



    ExecutarEEsperar(DirBatOrigem);
    ExecutarEEsperar(DirBatXml);
    HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Geração de Arquivos .Bat e Execução feitas com sucesso', HoraBat2);

  except
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Erro ao Gerar os arquivos', HoraBat2);
    //
    if frmAutoBackup.Notificaes1.Checked then
    begin
      frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
      frmAutoBackup.bWindows.BalloonHint := 'Erro na Execução do Backup - Erro (103) Arquivos não Gerados';
      frmAutoBackup.bWindows.BalloonTimeout := 10000;
      frmAutoBackup.bWindows.ShowBalloonHint;
      //
    end;

    exit
  end;
  { Fim }

  HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
  ErroEnvio := False;


  try
    { Conexão com o Envio }


  except
    ErroEnvio := True;
        GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Erro na tentativa de envio dos arquivos para nuvem', HoraBat2);

  end;

  HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);

  try
    { Criar .BAT para Mover|Copiar Arquivos para os destinos para salvar }

    if DirBackup2 <> '' then
    begin
      ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecCopyArqO.bat', 'Gravar', 'Copy ' + OrigemArq + ' ' + DirBackup2);
      ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecCopyArqX.bat', 'Gravar', 'Copy ' + XmlArq + ' ' + DirBackup2);
      ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqO.bat', 'Gravar', 'Move ' + OrigemArq + ' ' + DirBackup);
      ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqX.bat', 'Gravar', 'Move ' + XmlArq + ' ' + DirBackup);
      ExecutarEEsperar(extractfilepath(application.ExeName) + 'Temp\ExecCopyArqO.bat');
      ExecutarEEsperar(extractfilepath(application.ExeName) + 'Temp\ExecCopyArqX.bat');
      ExecutarEEsperar(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqO.bat');
      ExecutarEEsperar(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqX.bat');
    end
    else
    begin
      if not DirectoryExists(DirBackup) then
      begin
        if not DirectoryExists(extractfilepath(application.ExeName) + 'backup') then
        begin
          ForceDirectories(extractfilepath(application.ExeName) + 'backup');
        end;
        GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Não foi possivel encontrar o Diretorio de escolha', HoraBat2);
        ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqO.bat', 'Gravar', 'Move ' + OrigemArq + ' ' + extractfilepath(application.ExeName) + 'backup');
        ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqX.bat', 'Gravar', 'Move ' + XmlArq + ' ' + extractfilepath(application.ExeName) + 'backup');
      end
      else
      begin
        ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqO.bat', 'Gravar', 'Move ' + OrigemArq + ' ' + DirBackup);
        ManipulaTXT(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqX.bat', 'Gravar', 'Move ' + XmlArq + ' ' + DirBackup);
        ExecutarEEsperar(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqO.bat');
        ExecutarEEsperar(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqX.bat');
      end;

    end;
    HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Arquivos movidos e copiados para os diretorios', HoraBat2);
  except
        GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Erro ao mover os arquivos para os diretorios', HoraBat2);

    if frmAutoBackup.Notificaes1.Checked then
    begin
      //
      frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
      frmAutoBackup.bWindows.BalloonHint := 'Erro na Execução do Backup - Erro (104) Tentativa de Armazenamentos dos arquivos';
      frmAutoBackup.bWindows.BalloonTimeout := 10000;
      frmAutoBackup.bWindows.ShowBalloonHint;
      //
    end;
    exit
  end;

  { Fim }

  HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);

  try
    { Preparar para finalizar rotina do backup }
    DeleteFile(DirBatCopia);
    DeleteFile(DirBatOrigem);
    DeleteFile(DirBatXml);
    DeleteFile(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqO.bat');
    DeleteFile(extractfilepath(application.ExeName) + 'Temp\ExecMoveArqX.bat');
    DeleteFile(extractfilepath(application.ExeName) + 'Temp\ExecCopyArqO.bat');
    DeleteFile(extractfilepath(application.ExeName) + 'Temp\ExecCopyArqX.bat');
    frmAutoBackup.ExecBackup.Enabled := True;
    { Fim }
    HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Arquivos temporarios excluidos', HoraBat2);
  except

    if frmAutoBackup.Notificaes1.Checked then
    begin
      //
      frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
      frmAutoBackup.bWindows.BalloonHint := 'Erro na Execução do Backup - Erro (105) Arquivos temporarios';
      frmAutoBackup.bWindows.BalloonTimeout := 10000;
      frmAutoBackup.bWindows.ShowBalloonHint;
      //
    end;
    exit
  end;
  HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
  try
    { Executa }
    NotificaExecucaoDoBackup(Cnpj, Apelido, BaseTelemitria, ServidorBackup, SenhaBackup, LoginBackup);

    { Fim }
    HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Procedimento de Notificação e AtualizaçãoNCMs feitas com sucesso', HoraBat2);
  except

    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Erro na  NotificaExecucaoDoBackup ', HoraBat2);

  end;
  HoraBat2 := FormatDateTime('dd-mm-yyyy | hh:nn:ss', now);
  //
  frmAutoBackup.vNada := True;
  frmAutoBackup.vNovamente := False;
  frmAutoBackup.ExecBackup.Enabled := True;
  frmAutoBackup.ExecutarBackup1.Enabled := True;
  vBackupOn := False;

  //
  ManipulaINI('Gravar', extractfilepath(application.ExeName) + 'Config\MizioBackup.ini', 'Ultimo', 'Backup', HoraUltimo);
  //
  if ErroEnvio = False then
  begin
    if frmAutoBackup.Notificaes1.Checked then
    begin
      frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
      frmAutoBackup.bWindows.BalloonHint := 'Backup Feito com sucesso';
      frmAutoBackup.bWindows.ShowBalloonHint;
    end;
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Backup Feito com sucesso', HoraBat2);
  end;
  if ErroEnvio = True then
  begin
    if frmAutoBackup.Notificaes1.Checked then
    begin
      frmAutoBackup.bWindows.BalloonTitle := 'Notifica Backup';
      frmAutoBackup.bWindows.BalloonHint := 'Backup Feito com sucesso e Notificado';
      frmAutoBackup.bWindows.ShowBalloonHint;
    end;
    GeradorLog(extractfilepath(application.ExeName) + 'Logs\LogBackup' + HoraBat + '.txt', 'Backup Feito com sucesso | Sem o envio para nuvem', HoraBat2);
  end;
  frmAutoBackup.ExecutarBackup1.Caption := 'Executar Backup';
  frmAutoBackup.ParaExecuodoBackup1.Visible := False;
  memoriaLivre;
end;

function uBackupExec.FTPFileExists(aFileName: string): boolean;
begin

end;

function uBackupExec.GeradorLog(Local, Parametros, Data: string): boolean;
begin
  if not FileExists(Local) then
  begin
    ManipulaTXT(Local, 'Gravar', '[' + Data + ']: ');
    ManipulaTXT(Local, 'Gravar', '');
    ManipulaTXT(Local, 'Escrita', '[' + Data + ']: ' + Parametros);
  end
  else
  begin
    ManipulaTXT(Local, 'Escrita', '[' + Data + ']: ' + Parametros);
  end;
end;

function uBackupExec.ManipulaINI(Modo, LocalIni, Parametro1, Parametro2, ParametroGravar: string): string;
var
  vIni: Tinifile;
  vResultaIni: string;
begin
  if (Modo = 'Ler') then
  begin
    vResultaIni := '';
    vIni := Tinifile.Create(LocalIni);
    vResultaIni := vIni.ReadString(Parametro1, Parametro2, '');
    vIni.Free;
    Result := vResultaIni;
  end
  else if (Modo = 'Gravar') then
  begin
    vIni := Tinifile.Create(LocalIni);
    vIni.WriteString(Parametro1, Parametro2, ParametroGravar);
    vIni.Free;
  end;
end;

function uBackupExec.ManipulaTXT(LocalTxt, Tipo, Parametro: string): string;
var
  arq: Textfile;
begin
  if (Tipo = 'Gravar') then
  begin
    AssignFile(arq, LocalTxt);
    Rewrite(arq);
    Write(arq, Parametro);
    CloseFile(arq);
  end;

  if (Tipo = 'Escrita') then
  begin
    AssignFile(arq, LocalTxt);
    Append(arq);
    Writeln(arq, Parametro);
    CloseFile(arq);
  end;

  if (Tipo = 'Leitura') then
  begin
    AssignFile(arq, LocalTxt);
    Reset(arq);
    While not Eof(arq) do
    begin
      Readln(arq, Result);
    end;
  end;
end;

procedure uBackupExec.memoriaLivre;
var
  MainHandle: THandle;
begin

  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, False, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;

end;

function uBackupExec.NotificaExecucaoDoBackup(Cnpj, Apelido, BaseE, ServerE, SenhaE, LoginE: string): boolean;
var
  ANow, AThen: TDate;

begin

  conexaoDM.conexaoweb.Database := 'empresa';
  conexaoDM.conexaoweb.Server := 'telemetria.miziosistemas.com.br';
  conexaoDM.conexaoweb.password := 'SuRiCa973';
  conexaoDM.conexaoweb.username := 'root';
  conexaoDM.conexaoweb.port := 8369;
  conexaoDM.conexaoweb.Connect;

  conexaoDM.gab.Close;
  conexaoDM.gab.Connection := conexaoDM.conexaoweb;
  conexaoDM.gab.Params[0].AsString := Cnpj;
  conexaoDM.gab.Open;

  if conexaoDM.gab.IsEmpty then
    conexaoDM.gab.Append
  else
    conexaoDM.gab.Edit;

  conexaoDM.gabgabdoc1.AsString := Cnpj;
  conexaoDM.gabgabnome.AsString := conexaoDM.cfgetdapelido.AsString;
  conexaoDM.gabgabbackup.AsFloat := Date;
  conexaoDM.gab.Post;
  memoriaLivre;
  conexaoDM.conexaoweb.Disconnect;
end;



end.
