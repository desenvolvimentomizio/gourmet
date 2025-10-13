program pega;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  Vcl.Themes,
  System.Classes,
  Vcl.Styles,
  Winapi.ShellAPI,
  dialogs,
  Inifiles;

{$R *.res}

function ShellExecute_AndWait(fileName: string; Params: string): bool;
var
  exInfo: TShellExecuteInfo;
  Ph: DWORD;
begin

  FillChar(exInfo, SizeOf(exInfo), 0);
  with exInfo do
  begin
    cbSize := SizeOf(exInfo);
    fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_DDEWAIT;
    Wnd := GetActiveWindow();
    exInfo.lpVerb := 'open';
    exInfo.lpParameters := PChar(Params);
    lpFile := PChar(fileName);
    nShow := SW_SHOWNORMAL;
  end;
  if ShellExecuteEx(@exInfo) then
    Ph := exInfo.hProcess
  else
  begin
    ShowMessage(SysErrorMessage(GetLastError));
    result := true;
    exit;
  end;
  while WaitForSingleObject(exInfo.hProcess, 50) <> WAIT_OBJECT_0 do
    Application.ProcessMessages;
  CloseHandle(Ph);

  result := true;

end;



procedure SetMainForm(FormAtivo: TForm);
var
  TmpMain: ^TCustomForm;

begin
  TmpMain := @Application.MainForm;
  TmpMain^ := FormAtivo;
end;

procedure LoadMainForm;
type
  TMainForm = procedure(AOwner: TApplication);
var
  MainForm: TMainForm;
  Pack: HModule;
begin
  Pack := LoadPackage(pchar('mprincigourmet.bpl'));
  if Pack = 0 then
    exit;

  @MainForm := GetProcAddress(Pack, pchar('MainForm'));

  if Assigned(MainForm) then
    MainForm(Application);
end;

var
  vlPathBPL: String;
  vlPathModulos: String;
  vlPathDLL: String;
  vlForm: TForm;


  arquini: TIniFile;
  vlVersao: string;

  vlatualizador:string;

begin
  vlPathBPL := ExtractFilePath(Application.ExeName) + 'BPLs;';
  vlPathModulos := ExtractFilePath(Application.ExeName) + 'Modulos;';
  vlPathDLL := ExtractFilePath(Application.ExeName) + 'DLLs;';
  SetEnvironmentVariable(PWideChar('PATH'), PWideChar(vlPathBPL + vlPathModulos + vlPathDLL));

  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vlVersao := ReadString('posi', 'Versao', '00000');
  End;
  arquini.Free;

  if vlVersao='' then
  vlVersao:='00000';


    if fileexists(ExtractFilePath(Application.ExeName) + 'pegaatualizanovo.exe') then
  begin

    if fileexists(ExtractFilePath(Application.ExeName) + 'pegaatualiza.exe') then
    begin

      if deletefile(PWideChar(ExtractFilePath(Application.ExeName) + 'pegaatualiza.exe')) then
      begin
        RenameFile(ExtractFilePath(Application.ExeName) + 'pegaatualizanovo.exe', ExtractFilePath(Application.ExeName) + 'pegaatualiza.exe')
      end;

    end
    else
    begin
      RenameFile(ExtractFilePath(Application.ExeName) + 'pegaatualizanovo.exe', ExtractFilePath(Application.ExeName) + 'pegaatualiza.exe')
    end;
  end;



  vlatualizador := ExtractFilePath(Application.ExeName) + 'pegaatualiza.exe';
  if fileexists(vlatualizador) then
  begin
    ShellExecute_AndWait(vlatualizador, '');
  end;


  LoadMainForm;
  vlForm := TForm(Application.FindComponent('fprincigourmet'));

  SetMainForm(vlForm);
  Application.Run;

end.
