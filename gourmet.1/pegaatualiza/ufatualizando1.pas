unit ufatualizando;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, uni, Data.DB, IdHashMessageDigest, Vcl.Imaging.pngimage, shellapi,
  UniProvider, MySQLUniProvider, IdComponent,
  IdFTPCommon,
  Vcl.WinXCtrls, IdBaseComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, IdZLibCompressorBase, IdCompressorZLib,
  MemDS, DBAccess, inifiles, Vcl.ComCtrls, IdFTPList;

type
  TStreamProgressEvent = procedure(Sender: TObject; Percentage: Single) of object;

  TProgressResourceStream = class(TMemoryStream)
  private
    FOnProgress: TStreamProgressEvent;
  public
    procedure SaveToFile(const FileName: TFileName);
    property OnProgress: TStreamProgressEvent read FOnProgress write FOnProgress;
  end;

  { TProgressResourceStream }

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
    plTamanho: TLabel;
    IdCompressorZLib1: TIdCompressorZLib;
    conexaoFTP: TIdFTP;
    cfg: TUniQuery;
    cfgcfgdtinictb: TDateField;
    cfgcfgdtfinctb: TDateField;
    cfgcfgdatapadrao: TDateField;
    cfgetddoc1: TStringField;
    Image2: TImage;
    bfechar: TButton;
    plMensagem: TPanel;
    procedure conexaoFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure conexaoFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure conexaoFTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
    procedure bfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FDadosConexaoFTP: TDadosConexaoFTP;
    function ConectaBancoRemoto: Boolean;
    function ConectaBancoLocal: Boolean;

    procedure RealizaAtualizacao(vVersaoLocal: string);
    procedure RealizaAtualizacaoVersao;
    procedure ActAtualizarRelease(vNomeArquivo, vPasta: string);
    procedure StreamProgress(Sender: TObject; Percentage: Single);
    procedure SalvarArquivonoDisco(Sender: TObject; vNomeArquivo: string);
    function DownloadFTP(vPastaOrigem, vArquivo: string): Boolean;
    function FTPFileExists(aFileName: string): Boolean;
    procedure SalvaVersaoAtualizada(vVersao: string);

    { Private declarations }
  public
    { Public declarations }
    vpBeta: string;
    vpArquivo: string;
    vpPastaOrigem: string;
    vpPastaDestino: string;

    ConexaoWeb: TUniConnection;
    ConexaoLocal: TUniConnection;
    versoes: TUniQuery;

    procedure VerificarAtualizacao;
    function Conectar(const ConexaoWeb: TUniConnection): Boolean;

  end;

const

  vpIpServidorRemoto = '189.113.123.127';
  vpIpServidorLocal = '192.168.5.150';

var
  fatualizando: Tfatualizando;

implementation

{$R *.dfm}

uses midaslib, NB30;

function ComputerName(): String;
var
  ComputerName: Array [0 .. 256] of char;
  Size: DWORD;
begin
  Size := 256;
  GetComputerName(ComputerName, Size);
  Result := ComputerName;
end;

function GetMACAdress: string;
var
  NCB: PNCB;
  Adapter: PAdapterStatus;

  URetCode: PChar;
  RetCode: Ansichar;
  I: Integer;
  Lenum: PlanaEnum;
  _SystemID: string;
  TMPSTR: string;
begin
  Result := '';
  _SystemID := '';
  Getmem(NCB, SizeOf(TNCB));
  Fillchar(NCB^, SizeOf(TNCB), 0);

  Getmem(Lenum, SizeOf(TLanaEnum));
  Fillchar(Lenum^, SizeOf(TLanaEnum), 0);

  Getmem(Adapter, SizeOf(TAdapterStatus));
  Fillchar(Adapter^, SizeOf(TAdapterStatus), 0);

  Lenum.Length := chr(0);
  NCB.ncb_command := chr(NCBENUM);
  NCB.ncb_buffer := Pointer(Lenum);
  NCB.ncb_length := SizeOf(Lenum);
  RetCode := Netbios(NCB);

  I := 0;
  repeat
    Fillchar(NCB^, SizeOf(TNCB), 0);
    NCB.ncb_command := chr(NCBRESET);
    NCB.ncb_lana_num := Lenum.lana[I];
    RetCode := Netbios(NCB);

    Fillchar(NCB^, SizeOf(TNCB), 0);
    NCB.ncb_command := chr(NCBASTAT);
    NCB.ncb_lana_num := Lenum.lana[I];
    // Must be 16
    NCB.ncb_callname := '*               ';

    NCB.ncb_buffer := Pointer(Adapter);

    NCB.ncb_length := SizeOf(TAdapterStatus);
    RetCode := Netbios(NCB);
    // ---- calc _systemId from mac-address[2-5] XOR mac-address[1]...
    if (RetCode = chr(0)) or (RetCode = chr(6)) then
    begin
      _SystemID := IntToHex(Ord(Adapter.adapter_address[0]), 2) + '-' + IntToHex(Ord(Adapter.adapter_address[1]), 2) + '-' + IntToHex(Ord(Adapter.adapter_address[2]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[3]), 2) + '-' + IntToHex(Ord(Adapter.adapter_address[4]), 2) + '-' + IntToHex(Ord(Adapter.adapter_address[5]), 2);
    end;
    Inc(I);
  until (I >= Ord(Lenum.Length)) or (_SystemID <> '00-00-00-00-00-00');
  FreeMem(NCB);
  FreeMem(Adapter);
  FreeMem(Lenum);
  GetMACAdress := _SystemID;
end;

function GetAppVersionStr(arq: string): string;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  try
    Exe := ParamSTR(0);
    Size := GetFileVersionInfoSize(PChar(arq), Handle);
    if Size = 0 then
      RaiseLastOSError;
    SetLength(Buffer, Size);
    if not GetFileVersionInfo(PChar(arq), Handle, Size, Buffer) then
      RaiseLastOSError;
    if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
      RaiseLastOSError;

    { result := Format('%d.%s.%s.%s', [LongRec(FixedPtr.dwFileVersionMS).Hi, // major
      formatfloat('00', LongRec(FixedPtr.dwFileVersionMS).Lo), // minor
      formatfloat('0', LongRec(FixedPtr.dwFileVersionLS).Hi), // release
      formatfloat('0', LongRec(FixedPtr.dwFileVersionLS).Lo)]); // build }

    Result := Format('%d.%d.%d.%d', [LongRec(FixedPtr.dwProductVersionMS).Hi, // major
      LongRec(FixedPtr.dwProductVersionMS).Lo, // minor
      LongRec(FixedPtr.dwProductVersionLS).Hi, // release
      LongRec(FixedPtr.dwProductVersionLS).Lo]) // build

    { LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
      LongRec(FixedPtr.dwFileVersionLS).Lo] }

  except
    Result := '0.0.0.0';
  end;
end;

function VersaoArquivo(const FileName: String): String;
type
  TVersionInfo = packed record
    Dummy: array [0 .. 7] of Byte;
    V2, V1, V4, V3: Word;
  end;
var
  Zero, Size: Cardinal;
  Data: Pointer;
  VersionInfo: ^TVersionInfo;
begin
  Size := GetFileVersionInfoSize(Pointer(FileName), Zero);
  if Size = 0 then
    Result := ''
  else
  begin
    Getmem(Data, Size);
    try
      GetFileVersionInfo(Pointer(FileName), 0, Size, Data);
      VerQueryValue(Data, '\\\', Pointer(VersionInfo), Size);
      Result := Format('%d.%d.%d.%d', [VersionInfo.V1, VersionInfo.V2, VersionInfo.V3, VersionInfo.V4]);
    finally
      FreeMem(Data);
    end;
  end;
end;

function FileTimeToDTime(FTime: TFileTime): TDateTime;
var
  LocalFTime: TFileTime;
  STime: TSystemTime;
begin
  FileTimeToLocalFileTime(FTime, LocalFTime);
  FileTimeToSystemTime(LocalFTime, STime);
  Result := SystemTimeToDateTime(STime);
end;

procedure TProgressResourceStream.SaveToFile(const FileName: TFileName);
var
  Count: Int64;
  Stream: TStream;
  BlockSize: Int64;
  P: PAnsiChar;
  WriteCount: Int64;
begin
  if Assigned(FOnProgress) then
  begin
    Count := Size;
    if Count <> 0 then
    begin
      Stream := TFileStream.Create(FileName, fmCreate);
      try
        if Count < 500 then
          BlockSize := 5
        else
          BlockSize := Count div 50;
        P := Memory;
        WriteCount := 0;
        while WriteCount < Count do
        begin
          if WriteCount < Count - BlockSize then
            Inc(WriteCount, Stream.Write(P^, BlockSize))
          else
            Inc(WriteCount, Stream.Write(P^, Count - WriteCount));
          Inc(P, BlockSize);
          FOnProgress(Self, WriteCount / Count);
        end;
      finally
        Stream.Free;
      end;
    end;
  end
  else
    inherited SaveToFile(FileName);
end;

procedure Tfatualizando.SalvarArquivonoDisco(Sender: TObject; vNomeArquivo: string);
var
  Stream: TProgressResourceStream;
begin
  mostra.Min := 0;
  Stream := TProgressResourceStream.Create;
  (Sender as tblobfield).SaveToStream(Stream);

  try
    Stream.OnProgress := StreamProgress;
    Stream.SaveToFile(vNomeArquivo);
  finally
    Stream.Free;
  end;
end;

procedure Tfatualizando.StreamProgress(Sender: TObject; Percentage: Single);
begin
  with mostra do
  begin

    Position := Round(Percentage * Max);
    Label2.Caption := 'Processado ' + Inttostr(Position) + ' %';
  end;
end;

procedure Tfatualizando.ActAtualizarRelease(vNomeArquivo: string; vPasta: string);
begin
end;

function Tfatualizando.Conectar(const ConexaoWeb: TUniConnection): Boolean;
var
  vlHost: string;
begin
  try
    ConexaoWeb.Connect;

    Result := true;
  except
    if ConexaoWeb.Connected = False then
    begin
      Result := False;
    end;
  end;
end;

procedure Tfatualizando.conexaoFTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
  Label2.Caption := AStatusText;
  application.ProcessMessages;

end;

procedure Tfatualizando.conexaoFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  mostra.Position := AWorkCount;
  application.ProcessMessages;

end;

procedure Tfatualizando.conexaoFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  mostra.Position := 0;
  application.ProcessMessages;

end;

function Tfatualizando.ConectaBancoRemoto: Boolean;
begin
  try

    Result := true;
    ConexaoWeb := TUniConnection.Create(Self);
    ConexaoWeb.LoginPrompt := False;
    ConexaoWeb.Password := 'xda973';

    if vpBeta = '' then
    begin
      ConexaoWeb.Server := vpIpServidorRemoto;
    end
    else
    begin
      ConexaoWeb.Server := vpIpServidorLocal;
    end;

    ConexaoWeb.Port := 3306;
    ConexaoWeb.Username := 'root';
    ConexaoWeb.Database := 'empresa';
    ConexaoWeb.ProviderName := 'mySQL';
    Result := Conectar(ConexaoWeb);

    application.ProcessMessages;
  except

    application.ProcessMessages;

    Result := False;

  end;
end;

function GetFileModDate(FileName: string): TDateTime;
var
  Farq: TSearchRec;
begin

  FindFirst(FileName, faAnyFile, Farq);
  Result := Farq.TimeStamp;
  FindClose(Farq);
end;

Function SoNumeros(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  I: Integer;
  S: String;
Begin
  S := '';
  For I := 1 To Length(Texto) Do
  Begin
    If (Texto[I] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, I, 1);
    End;
  End;
  Result := S;
End;

// returns MD5 has for a file
function MD5(const FileName: string): string;
var
  idmd5: TIdHashMessageDigest5;
  fs: TFileStream;
begin
  try
    idmd5 := TIdHashMessageDigest5.Create;

    if fileexists(FileName) then
    begin
      fs := TFileStream.Create(FileName, fmOpenRead OR fmShareDenyWrite);
      Result := idmd5.HashStreamAsHex(fs);
    end
    else
    begin
      Result := '0000000000000000000';
    end;

  finally
    fs.Free;
    idmd5.Free;
  end;
end;

procedure Tfatualizando.VerificarAtualizacao;
var

  vlverarquivoweb: string;
  vlvermd5web: string;
  vlverarquivoLocal: string;

  vlvermd5Local: string;

  versoesarquivo: TUniQuery;
  vlnomeapli: string;

  vlTexVersaoLocal: string;
  vlTexVersaoWeb: string;

  vlHoraVersaoLocal: TDateTime;
  vlHoraVersaoWeb: TDateTime;
  SR: TSearchRec;

begin
  vpBeta := '';
  vpBeta := ParamSTR(1);
  application.MainForm.Visible := False;

  if ConectaBancoRemoto then
  begin
    try

      application.ProcessMessages;

      versoes := TUniQuery.Create(Self);
      versoes.Connection := ConexaoWeb;

      if vpBeta <> '' then
      begin
        Self.Color := clYellow;
        plInfo.Visible := true;
        plInfo.Caption := ' * * * B E T A * * *';
        application.ProcessMessages;
        versoes.SQL.Text := 'select verarquivo,verdatahora,verpasta,vermd5,verversao from versoes_gourmet where verativa=12';
      end
      else
      begin
        Self.Color := clWhite;
        application.ProcessMessages;
        versoes.SQL.Text := 'select verarquivo,verdatahora,verpasta,vermd5,verversao from versoes_gourmet where verativa=6';
      end;
      versoes.Open;

      application.ProcessMessages;

      if not versoes.IsEmpty then
      begin

        while not versoes.Eof do
        begin

          vlverarquivoLocal := extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + versoes.FieldByName('verarquivo').AsString;

          vlTexVersaoLocal := SoNumeros(VersaoArquivo(vlverarquivoLocal));

          if vlTexVersaoLocal = '' then
          begin
            vlTexVersaoLocal := '200000';
          end;

          if strtofloat(vlTexVersaoLocal) > 200000 then
          begin
            vlTexVersaoLocal := '200000';
          end;

          vlTexVersaoWeb := SoNumeros(versoes.FieldByName('verversao').AsString);

          if (vlTexVersaoWeb <> '') and (vlTexVersaoLocal <> '') then
          begin

            { if strtoint(vlTexVersaoLocal) < strtoint(vlTexVersaoWeb) then
              begin }

            application.MainForm.Visible := true;
            fatualizando.Show;
            fatualizando.Repaint;

            fatualizando.RealizaAtualizacaoVersao;

            { end; }

          end;

          versoes.Next;
          application.ProcessMessages;
        end;

      end;

      vlverarquivoLocal := extractfilepath(application.ExeName) + 'pega.exe';
      if not fileexists(vlverarquivoLocal) then
      begin
        vlverarquivoLocal := extractfilepath(application.ExeName) + 'AtendPDV.exe';
      end;

      if fileexists(vlverarquivoLocal) then
      begin
        SalvaVersaoAtualizada(GetAppVersionStr(vlverarquivoLocal));
      end;

      application.ProcessMessages;

      versoes.close;

      if vpBeta <> '' then
      begin
        Self.Color := clYellow;
        plInfo.Visible := true;
        plInfo.Caption := ' * * * B E T A * * *';
        application.ProcessMessages;

        versoes.SQL.Text := 'select verarquivo,verdatahora,verpasta,vermd5,verversao from versoes_gourmet where verativa=8';
      end
      else
      begin
        Self.Color := clWhite;
        application.ProcessMessages;

        versoes.SQL.Text := 'select verarquivo,verdatahora,verpasta,vermd5,verversao from versoes_gourmet where verativa=4';
      end;
      versoes.Open;

      application.ProcessMessages;
      if not versoes.IsEmpty then
      begin

        while not versoes.Eof do
        begin
          vlverarquivoLocal := extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + versoes.FieldByName('verarquivo').AsString;

          vlTexVersaoLocal := SoNumeros(VersaoArquivo(vlverarquivoLocal));

          if vlTexVersaoLocal = '' then
          begin
            vlTexVersaoLocal := '200000';
          end;

          if strtofloat(vlTexVersaoLocal) > 1000000000 then
          begin
            vlTexVersaoLocal := '200000';
          end;

          vlTexVersaoWeb := SoNumeros(versoes.FieldByName('verversao').AsString);

          if (vlTexVersaoWeb <> '') and (vlTexVersaoLocal <> '') then
          begin

            if strtoint(vlTexVersaoLocal) < strtoint(vlTexVersaoWeb) then
            begin
              application.MainForm.Visible := true;
              fatualizando.Show;
              fatualizando.Repaint;

              fatualizando.RealizaAtualizacao(vlTexVersaoLocal);

            end;
          end;

          versoes.Next;
          application.ProcessMessages;
        end;

      end;

    finally
      if vpBeta = '' then
      begin
        fatualizando.close;
      end
      else
      begin
        ShowMessage('Atualização realizada com sucesso!');
        bfechar.Visible := true;
      end;

    end;
  end
  else
  begin
    if vpBeta = '' then
    begin
      fatualizando.close;
    end
    else
    begin

      ShowMessage('Falha na conexao remota!');
      bfechar.Visible := true;
    end;
  end;

end;

function ShellExecute_AndWait(FileName: string; Params: string): bool;
var
  exInfo: TShellExecuteInfo;
  Ph: DWORD;
begin

  Fillchar(exInfo, SizeOf(exInfo), 0);
  with exInfo do
  begin
    cbSize := SizeOf(exInfo);
    fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_DDEWAIT;
    Wnd := GetActiveWindow();
    exInfo.lpVerb := 'open';
    exInfo.lpParameters := PChar(Params);
    lpFile := PChar(FileName);
    nShow := SW_SHOWNORMAL;
  end;
  if ShellExecuteEx(@exInfo) then
    Ph := exInfo.hProcess
  else
  begin
    ShowMessage(SysErrorMessage(GetLastError));
    Result := true;
    exit;
  end;
  while WaitForSingleObject(exInfo.hProcess, 50) <> WAIT_OBJECT_0 do
    application.ProcessMessages;
  CloseHandle(Ph);

  Result := true;

end;

Procedure ExecuteProgram(Nome, Parametros: String);
Var
  Comando: Array [0 .. 1024] of char;
  Parms: Array [0 .. 1024] of char;
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
  vlNumeroVersao: string;

begin

  try
    application.ProcessMessages;
    vlverarquivoLocal := extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + versoes.FieldByName('verarquivo').AsString;

    vlverdatahoraLocal := GetFileModDate(vlverarquivoLocal);
    vlverdatahoraweb := versoes.FieldByName('verdatahora').AsDateTime;
    vlvermd5web := versoes.FieldByName('vermd5').AsString;

    versoesarquivo := TUniQuery.Create(Self);
    versoesarquivo.Connection := ConexaoWeb;
    application.ProcessMessages;

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
        DeleteFile(vlverarquivoLocal);
      end;

      if DownloadFTP('versoes', vlverarquivoLocal) then
      begin

        if vlvermd5web <> '' then
        begin

          vlvermd5Local := MD5(vlverarquivoLocal);


          if (vlvermd5web <> vlvermd5Local) then
          begin
            DeleteFile(PChar(vlverarquivoLocal));
          end
          else
          begin

            fatualizando.Visible := False;
            Self.Caption := vlverarquivoLocal;
            application.ProcessMessages;
            ShellExecute_AndWait(vlverarquivoLocal, ' /silent /nocancel /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS ');

            vlNumeroVersao := Copy(vlverarquivoLocal, pos('_', vlverarquivoLocal) + 1, 500);
            vlNumeroVersao := Copy(vlNumeroVersao, 1, pos('_', vlNumeroVersao) - 1);
            SalvaVersaoAtualizada(vlNumeroVersao);
            application.ProcessMessages;

          end;

        end;

      end;

    end;

  finally

  end;

end;

procedure Tfatualizando.bfecharClick(Sender: TObject);
begin
  close;
end;

function Tfatualizando.ConectaBancoLocal: Boolean;
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
  try
    arquini := TIniFile.Create(extractfilepath(application.ExeName) + 'gourmeterp.ini');
    With arquini Do
    Begin
      vlNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
      vlServidor := ReadString('posi', 'servidor', '127.0.0.1');
      vlUsuario := ReadString('posi', 'usuario', 'root');
      vlSenha := ReadString('posi', 'senha', 'xda973');
      vlPortaBanco := ReadString('posi', 'portabanco', '3306');
      vlTipoBanco := ReadString('posi', 'tipo', 'mysql');

    End;
    arquini.Free;

    ConexaoLocal := TUniConnection.Create(Self);
    ConexaoLocal.LoginPrompt := False;

    if lowercase(vlTipoBanco) = 'mysql' then
      ConexaoLocal.ProviderName := 'mySQL';

    ConexaoLocal.Connected := False;
    ConexaoLocal.Database := vlNomeBanco;
    ConexaoLocal.Username := vlUsuario;
    ConexaoLocal.Password := vlSenha;
    ConexaoLocal.Port := strtoint(vlPortaBanco);
    ConexaoLocal.Server := vlServidor;

    ConexaoLocal.Connected := true;

    Result := true;
  except
    Result := False;
  end;

End;

procedure Tfatualizando.SalvaVersaoAtualizada(vVersao: string);
var
  vlentdoc1: string;
  vlDias: Integer;
  Contratos: TUniQuery;
  Micros: TUniQuery;
  vlMacMicro: string;
begin

  if vpBeta = '' then
  begin

    if ConectaBancoLocal then
    begin

      cfg.Connection := ConexaoLocal;
      cfg.close;
      cfg.Open;

      vlentdoc1 := cfgetddoc1.AsString;

      // VerificarAtualizacao;

      if Self.ConexaoWeb.Connected then
      begin
        Contratos := TUniQuery.Create(Self);
        Contratos.Connection := ConexaoWeb;
        Contratos.SQL.Text := 'select clrchave, clrversao, etd.etdcodigo from clr,etd where  clr.etdcodigo=etd.etdcodigo and etddoc1=' + QuotedStr(vlentdoc1);
        Contratos.Open;

        if not Contratos.IsEmpty then
        begin
          Contratos.Edit;
          Contratos.FieldByName('clrversao').AsString := vVersao;
          Contratos.post;

          vlMacMicro := GetMACAdress;

          Micros := TUniQuery.Create(Self);
          Micros.Connection := ConexaoWeb;
          Micros.SQL.Text := 'select mapchave,etdcodigo,mapnomemicro,mapmacmicro, mapversao, mapregistro from map where  mapmacmicro=' + QuotedStr(vlMacMicro) +
            ' and  map.etdcodigo=' + Contratos.FieldByName('etdcodigo').AsString;
          Micros.Open;

          if Micros.IsEmpty then
            Micros.Append
          else
            Micros.Edit;

          Micros.FieldByName('etdcodigo').AsString := Contratos.FieldByName('etdcodigo').AsString;
          Micros.FieldByName('mapmacmicro').AsString := vlMacMicro;
          Micros.FieldByName('mapversao').AsString := vVersao;
          Micros.FieldByName('mapnomemicro').AsString := ComputerName;
          Micros.FieldByName('mapregistro').AsDateTime := now();
          Micros.post;

        end;

      end;

    end;
  end;
end;

procedure Tfatualizando.RealizaAtualizacao(vVersaoLocal: string);
var

  vlverarquivoweb: string;
  vlvermd5web: string;

  vlverarquivoLocal: string;

  vlvermd5Local: string;

  versoesarquivo: TUniQuery;
  vlnomeapli: string;

begin

  try

    vlverarquivoLocal := extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + versoes.FieldByName('verarquivo').AsString;

    vlvermd5web := versoes.FieldByName('vermd5').AsString;

    vlnomeapli := extractfilename(application.ExeName);

    vlnomeapli := Copy(vlnomeapli, 1, pos('.', vlnomeapli) - 1);
    vlnomeapli := 'm' + vlnomeapli + '.bpl';

    vlnomeapli := lowercase(extractfilepath(application.ExeName) + versoes.FieldByName('verpasta').AsString + '\' + vlnomeapli);

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

      if (pos('.bpl', vlverarquivoLocal) > 0) or (pos('.exe', vlverarquivoLocal) > 0) then
      begin
        if fileexists(vlverarquivoLocal) then
        begin
          RenameFile(vlverarquivoLocal, vlverarquivoLocal + SoNumeros(vVersaoLocal));
        end;
      end
      else
      begin
        DeleteFile(vlverarquivoLocal);
      end;

      if DownloadFTP(versoes.FieldByName('verpasta').AsString, vlverarquivoLocal) then
      begin


        // tblobfield(versoesarquivo.FieldByName('verconteudoarquivo')).SaveToFile(vlverarquivoLocal);

        if vlvermd5web <> '' then
        begin
          vlvermd5Local := MD5(vlverarquivoLocal);

          if uppercase(trim(vlvermd5web)) <> uppercase(trim(vlvermd5Local)) then
          begin

            if DeleteFile(PChar(vlverarquivoLocal)) then
            begin
              if fileexists(vlverarquivoLocal + SoNumeros(vVersaoLocal)) then
              begin
                RenameFile(vlverarquivoLocal + SoNumeros(vVersaoLocal), vlverarquivoLocal);

              end;
            end;

          end
          else
          begin
            DeleteFile(vlverarquivoLocal + SoNumeros(vVersaoLocal));
          end;

        end;

      end;

      plInfo.Color := $00D3D3D3;
      plInfo.Caption := 'Inicializando.  Aguarde . . .';
      plInfo.Font.Color := $00C08000;
      application.ProcessMessages;

    end;

  finally

  end;

end;

procedure Tfatualizando.FormShow(Sender: TObject);
begin
  plMensagem.Left := (Trunc(Screen.Width / 2)) - Trunc(plMensagem.Width / 2);
  plMensagem.Top := (Trunc(Screen.Height / 2)) - Trunc(plMensagem.Height / 2);

end;

function Tfatualizando.FTPFileExists(aFileName: string): Boolean;
begin
  try
    conexaoFTP.List(aFileName, False);
    Result := true;
  except
    Result := False;
  end;
end;

function Tfatualizando.DownloadFTP(vPastaOrigem: String; vArquivo: string): Boolean;
var
  vlarquivo: string;
  vlAplicativo: string;
  vlsize: Integer;
begin
  Result := False;
  { Conexão com o FTP|Envio }
  // try
  try
    if conexaoFTP.Connected then
    begin
      conexaoFTP.Disconnect;
    end;
  except

  end;

  if vpBeta = '' then
  begin
    conexaoFTP.Host := '189.113.123.127';
  end
  else
  begin
    conexaoFTP.Host := '189.113.123.127';
  end;

  conexaoFTP.Username := 'backups';
  conexaoFTP.Password := 'mizio973';
  conexaoFTP.TransferType := ftBinary;
  // conexaoDM.conexaoFTP.Passive := False;
  conexaoFTP.Port := 21;
  conexaoFTP.Connect;

  vlAplicativo := extractfilepath(application.ExeName);
  vlAplicativo := Copy(vlAplicativo, 4, 200);
  vlAplicativo := Copy(vlAplicativo, 1, pos('\', vlAplicativo) - 1);

  if conexaoFTP.Connected then
  begin

    conexaoFTP.ChangeDir(vPastaOrigem + '/' + vlAplicativo);

    if (pos('.exe', vArquivo) > 0) or (pos('.bpl', vArquivo) > 0) or (pos('.dll', vArquivo) > 0) then
    begin
      conexaoFTP.TransferType := ftBinary;
    end
    else
    begin
      conexaoFTP.TransferType := ftASCII;
    end;
    vlarquivo := extractfilename(vArquivo);

    mostra.Max := conexaoFTP.Size(vlarquivo);

    conexaoFTP.Get(vlarquivo, extractfilepath(application.ExeName) + vPastaOrigem + '\' + vlarquivo, true);
    Sleep(500);
    conexaoFTP.Disconnect;
    Result := true;
  end
  else
  begin
    Result := False;
  end;

  // except
  // Result := False;
  // end;
  { Fim }

end;

end.
