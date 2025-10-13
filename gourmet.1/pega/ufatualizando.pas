unit ufatualizando;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, uni, Data.DB, IdHashMessageDigest, Vcl.Imaging.pngimage, shellapi,
  UniProvider, MySQLUniProvider, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, IdBaseComponent, IdZLibCompressorBase,
  IdCompressorZLib, Vcl.ComCtrls, IdFTPCommon;

type
  /// <summary> Record para armazenar os dados de Acesso para compartilhar pelo sistema.</summary>
  TDadosConexaoFTP = record
    Host: String;
    Porta: Integer;
    usuario: string;
    Senha: string;
    Arquivo: string;
    PastaOrigem: string;
    PastaDestino: string;
  end;

type
  Tfatualizando = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    plInfo: TPanel;
    Image1: TImage;
    Label2: TLabel;
    mostra: TProgressBar;
    IdCompressorZLib1: TIdCompressorZLib;
    conexaoFTP: TIdFTP;
    plTamanho: TLabel;
    procedure conexaoFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure conexaoFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  private
    FDadosConexaoFTP: TDadosConexaoFTP;
    function ConectaBancoRemoto: Boolean;

    procedure RealizaAtualizacao;
    procedure RealizaAtualizacaoVersao;
    procedure ActAtualizarRelease(vNomeArquivo, vPasta: string);
    function EfetuaDownloadArquivo(pDadosConexaoFTP: TDadosConexaoFTP): string;
    procedure SetDadosConexaoFTP(const Value: TDadosConexaoFTP);
    { Private declarations }
  public
    { Public declarations }
    vpArquivo: string;
    vpPastaOrigem: string;
    vpPastaDestino: string;

    ConexaoWeb: TUniConnection;
    versoes: TUniQuery;
    procedure VerificarAtualizacao;
    function Conectar(const ConexaoWeb: TUniConnection): Boolean;

  published
    property DadosConexaoFTP: TDadosConexaoFTP read FDadosConexaoFTP write SetDadosConexaoFTP;
  end;

const
  vpIpServidorRemoto = '177.201.117.247';

var
  fatualizando: Tfatualizando;

implementation

{$R *.dfm}

procedure Tfatualizando.ActAtualizarRelease(vNomeArquivo: string; vPasta: string);
var

  vlPackArquivo: Cardinal;
  vlArquivo: String;
  DadosConexaoFTP: TDadosConexaoFTP;
begin

  try

    DadosConexaoFTP.Host := vpIpServidorRemoto;
    // DadosConexaoFTP.usuario := 'backups';
    // DadosConexaoFTP.Senha := 'mizio973';

    DadosConexaoFTP.usuario := 'mizios';
    DadosConexaoFTP.Senha := 'Ritieli973';

    DadosConexaoFTP.Porta := 21;
    DadosConexaoFTP.Arquivo := vNomeArquivo;
    DadosConexaoFTP.Host := 'miziosistemas.com.br';

    DadosConexaoFTP.PastaOrigem := vPasta;
    DadosConexaoFTP.PastaDestino := vPasta;
    EfetuaDownloadArquivo(DadosConexaoFTP);

    sleep(1000);

  finally
  end;
end;

function Tfatualizando.Conectar(const ConexaoWeb: TUniConnection): Boolean;
var
  vlHost: string;
begin
  try
    ConexaoWeb.Connect;

    result := true;
  except
    if ConexaoWeb.Connected = False then
    begin
      result := False;
    end;
  end;
end;

procedure Tfatualizando.conexaoFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  mostra.position := AWorkCount;
  application.ProcessMessages;

end;

procedure Tfatualizando.conexaoFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  mostra.position := 0;
  application.ProcessMessages;

end;

function Tfatualizando.ConectaBancoRemoto: Boolean;
begin
  try

    result := true;
    ConexaoWeb := TUniConnection.Create(Self);
    ConexaoWeb.LoginPrompt := False;
    ConexaoWeb.Password := 'xda973';
    ConexaoWeb.Server := vpIpServidorRemoto;

    ConexaoWeb.Port := 3306;
    ConexaoWeb.Username := 'root';
    ConexaoWeb.Database := 'empresa';
    ConexaoWeb.ProviderName := 'mySQL';
    result := Conectar(ConexaoWeb);

  except
    result := False;
  end;
end;

function GetFileModDate(fileName: string): TDateTime;
var
  Farq: TSearchRec;
begin

  FindFirst(fileName, faAnyFile, Farq);
  result := Farq.TimeStamp;
  FindClose(Farq);
end;

Function SoNumeros(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 1 To length(Texto) Do
  Begin
    If (Texto[i] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  result := S;
End;

// returns MD5 has for a file
function MD5(const fileName: string): string;
var
  idmd5: TIdHashMessageDigest5;
  fs: TFileStream;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  fs := TFileStream.Create(fileName, fmOpenRead OR fmShareDenyWrite);
  try
    result := idmd5.HashStreamAsHex(fs);
  finally
    fs.Free;
    idmd5.Free;
  end;
end;

procedure Tfatualizando.VerificarAtualizacao;
var

  vlverarquivoweb: string;
  vlvermd5web: string;

  vlverdatahoraweb: TDateTime;

  vlverarquivoLocal: string;
  vlverdatahoraLocal: TDateTime;
  vlvermd5Local: string;

  versoesarquivo: TUniQuery;
  vlnomeapli: string;

begin

  if ConectaBancoRemoto then
  begin
    try

      versoes := TUniQuery.Create(Self);
      versoes.Connection := ConexaoWeb;

      versoes.SQL.Text := 'select verarquivo,verdatahora,verpasta,vermd5 from versoes_gourmet where verativa=3';
      versoes.Open;

      if not versoes.IsEmpty then
      begin

        while not versoes.Eof do
        begin
          vlverarquivoLocal := extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + versoes.FieldByName('verarquivo').AsString;
          vlverdatahoraLocal := GetFileModDate(vlverarquivoLocal);
          vlverdatahoraweb := versoes.FieldByName('verdatahora').AsDateTime;
          vlvermd5web := versoes.FieldByName('vermd5').AsString;


          if vlverdatahoraLocal < vlverdatahoraweb then
          begin
            fatualizando.Show;
            fatualizando.Repaint;

            fatualizando.RealizaAtualizacaoVersao;

          end;
          versoes.Next;
        end;

      end;

      versoes.close;
      versoes.SQL.Text := 'select verarquivo,verdatahora,verpasta,vermd5 from versoes_gourmet where verativa=1';
      versoes.Open;

      if not versoes.IsEmpty then
      begin

        while not versoes.Eof do
        begin
          vlverarquivoLocal := extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + versoes.FieldByName('verarquivo').AsString;
          vlverdatahoraLocal := GetFileModDate(vlverarquivoLocal);
          vlverdatahoraweb := versoes.FieldByName('verdatahora').AsDateTime;
          vlvermd5web := versoes.FieldByName('vermd5').AsString;

          if vlverdatahoraLocal < vlverdatahoraweb then
          begin
            fatualizando.Show;
            fatualizando.Repaint;

            fatualizando.RealizaAtualizacao;

          end;
          versoes.Next;
        end;

      end;

    finally
      fatualizando.hide;
    end;
  end;

end;

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
    application.ProcessMessages;
  CloseHandle(Ph);

  result := true;

end;

Procedure ExecuteProgram(Nome, Parametros: String);
Var
  Comando: Array [0 .. 1024] of Char;
  Parms: Array [0 .. 1024] of Char;
Begin
  StrPCopy(Comando, Nome);
  StrPCopy(Parms, Parametros);
  ShellExecute(0, nil, Comando, Parms, nil, SW_SHOWMINIMIZED);
End;

procedure Tfatualizando.RealizaAtualizacaoVersao;
var

  vlverarquivoweb: string;
  vlvermd5web: string;

  vlverdatahoraweb: TDateTime;

  vlverarquivoLocal: string;
  vlverdatahoraLocal: TDateTime;
  vlvermd5Local: string;

  versoesarquivo: TUniQuery;

begin

  try

    vlverarquivoLocal := extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + versoes.FieldByName('verarquivo').AsString;
    vlverdatahoraLocal := GetFileModDate(vlverarquivoLocal);
    vlverdatahoraweb := versoes.FieldByName('verdatahora').AsDateTime;
    vlvermd5web := versoes.FieldByName('vermd5').AsString;

    versoesarquivo := TUniQuery.Create(Self);
    versoesarquivo.Connection := ConexaoWeb;

    if fileexists(vlverarquivoLocal) then
    begin
      vlvermd5Local := MD5(vlverarquivoLocal);
    end
    else
    begin
      vlvermd5Local := '';
    end;

    if vlvermd5web <> vlvermd5Local then
    begin
      if fileexists(vlverarquivoLocal) then
      begin
        RenameFile(vlverarquivoLocal, vlverarquivoLocal + SoNumeros(datetimetostr(vlverdatahoraLocal)));
      end;

      ActAtualizarRelease(versoes.FieldByName('verarquivo').AsString, versoes.FieldByName('verpasta').AsString);

      if fileexists(vlverarquivoLocal) then
      begin

        plInfo.Color := $00D3D3D3;
        plInfo.Caption := 'Arquivo Localizad. Aguarde . . .';
        plInfo.Font.Color := $004080FF;
        application.ProcessMessages;

        fatualizando.hide;
        sleep(1000);
        ShellExecute_AndWait(vlverarquivoLocal, '/silent /nocancel /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS ');
        ShowMessage('Atualização realizada com sucesso!');

        plInfo.Color := $00D3D3D3;
        plInfo.Caption := 'Inicializando.  Aguarde . . .';
        plInfo.Font.Color := $00C08000;
        application.ProcessMessages;

      end;
    end;

  finally

  end;

end;

procedure Tfatualizando.RealizaAtualizacao;
var

  vlverarquivoweb: string;
  vlvermd5web: string;

  vlverdatahoraweb: TDateTime;

  vlverarquivoLocal: string;
  vlverdatahoraLocal: TDateTime;
  vlvermd5Local: string;

  versoesarquivo: TUniQuery;
  vlnomeapli: string;

begin

  try

    vlverarquivoLocal := extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + versoes.FieldByName('verarquivo').AsString;
    vlverdatahoraLocal := GetFileModDate(vlverarquivoLocal);
    vlverdatahoraweb := versoes.FieldByName('verdatahora').AsDateTime;
    vlvermd5web := versoes.FieldByName('vermd5').AsString;

    vlnomeapli := extractfilename(application.ExeName);

    vlnomeapli := Copy(vlnomeapli, 1, Pos('.', vlnomeapli) - 1);
    vlnomeapli := 'm' + vlnomeapli + '.bpl';

    vlnomeapli := lowercase(extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + vlnomeapli);

    if lowercase(vlverarquivoLocal) <> lowercase(vlnomeapli) then
    begin

      versoesarquivo := TUniQuery.Create(Self);
      versoesarquivo.Connection := ConexaoWeb;

      versoesarquivo.close;
      versoesarquivo.Connection := ConexaoWeb;
      versoesarquivo.SQL.Text := 'select verconteudoarquivo from versoes_gourmet where verarquivo=' + QuotedStr(versoes.FieldByName('verarquivo').AsString);
      versoesarquivo.Open;

      if not versoesarquivo.IsEmpty then
      begin

        plInfo.Color := $00D3D3D3;
        plInfo.Caption := 'Atualiziando. Aguarde . . .';
        plInfo.Font.Color := $004080FF;
        application.ProcessMessages;

        if fileexists(vlverarquivoLocal) then
        begin
          RenameFile(vlverarquivoLocal, vlverarquivoLocal + SoNumeros(datetimetostr(vlverdatahoraLocal)));
        end;
        TBlobField(versoesarquivo.FieldByName('verconteudoarquivo')).SaveToFile(vlverarquivoLocal);

        if vlvermd5web <> '' then
        begin
          vlvermd5Local := MD5(vlverarquivoLocal);

          if vlvermd5web <> vlvermd5Local then
          begin
            if DeleteFile(PChar(vlverarquivoLocal)) then
            begin
              if fileexists(vlverarquivoLocal + SoNumeros(datetimetostr(vlverdatahoraLocal))) then
              begin
                RenameFile(vlverarquivoLocal + SoNumeros(datetimetostr(vlverdatahoraLocal)), vlverarquivoLocal);

              end;
            end;

          end;

        end;

        plInfo.Color := $00D3D3D3;
        plInfo.Caption := 'Inicializando.  Aguarde . . .';
        plInfo.Font.Color := $00C08000;
        application.ProcessMessages;

      end;
    end;

  finally

  end;

end;

function Tfatualizando.EfetuaDownloadArquivo(pDadosConexaoFTP: TDadosConexaoFTP): string;
var
  vlPastaOrigem: string;
  vlTentativas: Integer;

begin

  vpArquivo := pDadosConexaoFTP.Arquivo;
  vpPastaOrigem := pDadosConexaoFTP.PastaOrigem;
  vpPastaDestino := pDadosConexaoFTP.PastaDestino;
  DadosConexaoFTP := pDadosConexaoFTP;

  if not DirectoryExists(extractfilepath(application.ExeName) + vpPastaDestino) then
    CreateDir(extractfilepath(application.ExeName) + vpPastaDestino);

  vlTentativas := 0;
  while true do
  begin
    if vlTentativas = 10 then
    begin

      exit;
    end;

    try
      conexaoFTP.Connect;
      sleep(1000);
    except
      conexaoFTP.Disconnect;
      sleep(2000);
    end;

    if conexaoFTP.Connected then
      break
    else
    begin
      sleep(500);
      vlTentativas := vlTentativas + 1;
    end;
  end;

  if conexaoFTP.Connected then
  begin

    conexaoFTP.ChangeDir(vpPastaOrigem);

    plTamanho.Caption := IntToStr(conexaoFTP.Size(vpArquivo));
    application.ProcessMessages;
    if plTamanho.Caption = '-1' then
    begin
      // ShowMessage('Não a atualização disponivel.'+#13+#13+#13+'Efetue a atualiziação no próximo mês!');
      conexaoFTP.Disconnect;
      close;
      exit;
    end;

    mostra.Max := StrToInt(plTamanho.Caption);
    application.ProcessMessages;

    { if FileExists(extractfilepath(application.ExeName) + vpPastaDestino + '\' + vpArquivo) then
      begin
      DeleteFile(extractfilepath(application.ExeName) + vpPastaDestino + '\' + vpArquivo);
      end;

      if FileExists(extractfilepath(application.ExeName) + vpPastaDestino + '\' + vpArquivo) = false then
      begin }
    if Pos('.exe', vpArquivo) > 0 then
    begin
      conexaoFTP.TransferType := ftbinary;
    end
    else
    begin

      conexaoFTP.TransferType := ftASCII;
    end;

    conexaoFTP.Get(vpArquivo, extractfilepath(application.ExeName) + vpPastaDestino + '\' + vpArquivo, true);
    sleep(1000);
    { end; }

    conexaoFTP.Disconnect;
    sleep(1000);
    while true do
    begin
      if conexaoFTP.Connected = False then
      begin
        break;

      end
      else
      begin
        sleep(1000);
        conexaoFTP.Disconnect;

      end;

    end;

  end;

end;

procedure Tfatualizando.SetDadosConexaoFTP(const Value: TDadosConexaoFTP);
begin

  if conexaoFTP.Connected then
  begin
    conexaoFTP.Disconnect;
    sleep(1000);
  end;

  conexaoFTP.Host := Value.Host;
  conexaoFTP.Password := Value.Senha;
  conexaoFTP.Username := Value.usuario;
  conexaoFTP.Port := Value.Porta;

end;

end.
