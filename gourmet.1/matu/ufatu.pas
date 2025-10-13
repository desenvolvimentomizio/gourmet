unit ufatu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Uni, Data.DB, MemDS, DBAccess, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, ufuncoes, Winapi.WinInet, Inifiles;

type
  Tfatu = class(TForm)
    rw: TUniQuery;
    rwrelcodigo: TStringField;
    rwrelidentificacao: TStringField;
    rwreltitulo: TStringField;
    rwreltipodescri: TStringField;
    rwrelsituacaodescri: TStringField;
    rwrelnomearquivo: TStringField;
    rwrelorigem: TStringField;
    rwreltipo: TIntegerField;
    relw: TUniQuery;
    rell: TUniQuery;
    relloc: TUniQuery;
    rellocrelcodigo: TStringField;
    rellocrelidentificacao: TStringField;
    rellocreltitulo: TStringField;
    rellocreltipodescri: TStringField;
    rellocrelsituacaodescri: TStringField;
    rellocrelnomearquivo: TStringField;
    rellocrelorigem: TStringField;
    rellocreltipo: TIntegerField;
    relweb: TUniQuery;
    relwebrelcodigo: TStringField;
    relwebrelidentificacao: TStringField;
    relwebreltitulo: TStringField;
    relwebreltipodescri: TStringField;
    relwebrelsituacaodescri: TStringField;
    relwebrelnomearquivo: TStringField;
    relwebrelorigem: TStringField;
    relwebreltipo: TIntegerField;
    consultaloc: TUniQuery;
    consultaweb: TUniQuery;
    MostraRelatorios: TProgressBar;
    Atualizar: TTimer;
    LbPrincipal: TLabel;
    lreloc: TUniQuery;
    lreweb: TUniQuery;
    rwlreregistro: TDateTimeField;
    lre: TUniQuery;
    lrelrechave: TIntegerField;
    lreclbcodigo: TIntegerField;
    lrelreregistro: TDateTimeField;
    lrerelarquivo: TBlobField;
    lrerelcodigo: TStringField;
    registros: TProgressBar;
    lRegistros: TLabel;
    cfgloc: TUniQuery;
    cfgweb: TUniQuery;
    cfgloccfgcodigo: TIntegerField;
    cfgloccfgatuctb: TDateTimeField;
    cfgloccfgaturel: TDateTimeField;
    cfgloccfgatuaju: TDateTimeField;
    cfgwebcfgcodigo: TIntegerField;
    cfgwebcfgatuctb: TDateTimeField;
    cfgwebcfgaturel: TDateTimeField;
    cfgwebcfgatuaju: TDateTimeField;
    vrsweb: TUniQuery;
    vrsloc: TUniQuery;
    vrslocvrschave: TIntegerField;
    vrslocvrsversao: TIntegerField;
    vrslocvrsarquivo: TBlobField;
    vrslocvrsvalidacao: TStringField;
    vrslocvrsbeta: TIntegerField;
    vrswebvrschave: TIntegerField;
    vrswebvrsversao: TIntegerField;
    vrswebvrsarquivo: TBlobField;
    vrswebvrsvalidacao: TStringField;
    vrswebvrsbeta: TIntegerField;
    cfgloccfgbeta: TIntegerField;
    procedure AtualizarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    ConexaoWeb: TUniConnection;
    Fzcone: TUniConnection;
    procedure AtualizaWeb;
    procedure AtualizaLocal;
    function ConectaWeb: boolean;
    procedure AtualizaRelatorios;
    function ImportarRelatorio(vRelCodigo: string; ImportaBPL: boolean): boolean;
    procedure ImportaDados(vlSql: string);
    function InternetAtiva: boolean;
    procedure ImportarTabela(vTabela: string);

    function DeveAtualizarVER: boolean;
    function DeveAtualizarAju: boolean;
    function DeveAtualizarCtb: boolean;
    function DeveAtualizarRel: boolean;

    function AbreTabelasWEB: boolean;
    function AbreTabelasLOCAL: boolean;

    procedure AtualizaVER(Versao: Integer);
    procedure AtualizaTOEs;
    procedure AtualizaCTB;
    procedure AtualizaAJU;
    procedure BaixaVer(Versao: Integer);
    function DescomprimeVersao(Arquivo: string): boolean;
    procedure AplicaVersao(Pasta, Versao: string);
    procedure CarregaNomePastas(PastaVersao: string; vPastas: TStringList);
    procedure AtualizaArquivos(vPasta, vVersao: string);
  public
    { Public declarations }
    vpRelCodigoStr: string;
    vpVersaoINI: string;
    vpAtualizaRel: boolean;
    vpAtualizaCtb: boolean;
    vpAtualizaAju: boolean;
    vpAtualizaVer: boolean;

    vpClienteBeta: Integer;

    vpTipoAtualizao: Integer; // 1 = web, 0 = local

  published
    property zcone: TUniConnection read Fzcone write Fzcone;

  end;

var
  fatu: Tfatu;

implementation

uses
  sevenzip;

{$R *.dfm}

// funcao que deleta diretorios com arquivos e subpastas
procedure DeleteDir(const DirName: string);
var
  Path: string;
  F: TSearchRec;

begin
  Path := DirName + '\*.*';
  if FindFirst(Path, faAnyFile, F) = 0 then
  begin
    try
      repeat
        if (F.Attr and faDirectory <> 0) then
        begin
          if (F.Name <> '.') and (F.Name <> '..') then
          begin
            DeleteDir(DirName + '\' + F.Name);
          end;
        end
        else
          DeleteFile(DirName + '\' + F.Name);
      until FindNext(F) <> 0;
    finally
      FindClose(F);
    end;
  end;
  RemoveDir(DirName);
end;

// exibe a descompressoa do arquivo 7z
function ProgressCallback(Sender: Pointer; total: boolean; value: int64): HRESULT; stdcall;
begin
  if total then
    fatu.MostraRelatorios.Max := value
  else
    fatu.MostraRelatorios.Position := value;
  Result := S_OK;
end;

function AtualizaLocal(AOwner: TComponent; conexao: TUniConnection): string;
var
  vch: string;
  arquini: TIniFile;
begin
  try
    fatu := Tfatu.Create(AOwner);
    fatu.vpTipoAtualizao := 0; // 1 = web, 0 = local
    fatu.zcone := conexao;
    fatu.ShowModal;
    vch := fatu.vpVersaoINI;
    // se houve atualizacao, salva no ini local
    if vch <> '0' then
    begin
      arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
      With arquini Do
      Begin
        writeString('posi', 'versao', vch);
      End;
      arquini.Free;
    end;

    Result := vch;
  finally
    FreeAndNil(fatu);
  end;
end;

function AtualizaDaWeb(AOwner: TComponent; conexao: TUniConnection): string;
var
  vch: string;
  arquini: TIniFile;
begin
  try
    fatu := Tfatu.Create(AOwner);
    fatu.vpTipoAtualizao := 1; // 1 = web, 0 = local
    fatu.zcone := conexao;
    fatu.ShowModal;
    vch := fatu.vpVersaoINI;
    // se houve atualizacao, salva no ini local
    if vch <> '0' then
    begin
      arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
      With arquini Do
      Begin
        writeString('posi', 'versao', vch);
      End;
      arquini.Free;
    end;

    Result := vch;

  finally
    FreeAndNil(fatu);
  end;
end;

exports AtualizaDaWeb, AtualizaLocal;

function Tfatu.InternetAtiva: boolean;
var
  Flags: Cardinal;
begin

  // consulta o sistema operacional para ver se há internet
  Result := False;
  if not InternetGetConnectedState(@Flags, 0) then
    Result := False
  else
    Result := true;
end;

function Tfatu.ConectaWeb: boolean;
begin
  // conecta ao banco de dados na web
  Result := False;

  if InternetAtiva = False then
    exit;

  self.Color := $00C08000;
  try
    ConexaoWeb := TUniConnection.Create(self);
    ConexaoWeb.LoginPrompt := False;
    ConexaoWeb.Username := 'mizios_gourmet';
    ConexaoWeb.Database := 'mizios_gourmet';
    ConexaoWeb.Server := 'miziosistemas.com.br';
    ConexaoWeb.ProviderName := 'mySQL';
    ConexaoWeb.Port := 2007;
    ConexaoWeb.Password := 'mizio973';

    ConexaoWeb.Connect;
    Result := true;
  except
    Result := False;
  end;
end;

procedure Tfatu.FormShow(Sender: TObject);
var
  arquini: TIniFile;
begin
  vpVersaoINI := '0';
  // ajusta variavel publica para versao atual salva no ini do sistema
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vpVersaoINI := ReadString('posi', 'versao', '0');
  End;
  arquini.Free;

  // chama verificador de atualização
  Atualizar.Enabled := true;
end;

procedure Tfatu.AtualizarTimer(Sender: TObject);
var
  arquini: TIniFile;
begin

  Atualizar.Enabled := False;

  // verifica se o usuário é um atualizador para efetuar verificação se ha versao na web
  if vpTipoAtualizao = 1 then
    AtualizaWeb;

  // le a versão atual salva no ini local
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vpVersaoINI := ReadString('posi', 'versao', '0');
  End;
  arquini.Free;

  // verifica e realiza a atualizacao local entre maquinas
  AtualizaLocal;

  Close;
end;

procedure Tfatu.AtualizaLocal;
var
  vlVersao: Integer;
  vlVersaoAtu: Integer;
  I: Integer;
begin
  // abre tabelas
  LbPrincipal.Caption := 'Abrindo as tabelas locais.';
  Application.ProcessMessages;

  if not AbreTabelasLOCAL then
    exit;

  // identifica se há versão para aplicar
  vpAtualizaVer := DeveAtualizarVER;

  if vpAtualizaVer then
  begin
    // carrega numero de versao a ser atualizado
    vlVersao := vrslocvrsversao.AsInteger;
    for I := strtoint(vpVersaoINI) to vlVersao do
    begin
      if vrsloc.Locate('vrsversao', I, []) then
      begin
        // aplica versão
        AtualizaVER(I);
        // remove pasta temporaria de atualização
        DeleteDir(ExtractFilePath(Application.ExeName) + 'ver' + FormatFloat('00000000', I));
      end;
    end;
    vpVersaoINI := inttostr(I - 1);
  end;

end;

procedure Tfatu.AtualizaWeb;
var
  vlVersao: Integer;
  vlVersaoWeb: Integer;
  I: Integer;
begin
  // abre tabelas locais
  LbPrincipal.Caption := 'Abrindo as tabelas locais.';
  Application.ProcessMessages;

  if not AbreTabelasLOCAL then
    exit;
  // conecta ao servidor remoto
  LbPrincipal.Caption := 'Conecta ao Servidor de Atualizaçoes.';
  Application.ProcessMessages;

  if not ConectaWeb then
    exit;

  // abre tabelas  no servidor remoto
  LbPrincipal.Caption := 'Abrindo as tabelas do Servidor.';
  Application.ProcessMessages;

  if not AbreTabelasWEB then
    exit;

  // seta as necessidades de atualizações
  vpAtualizaVer := DeveAtualizarVER;
  vpAtualizaRel := DeveAtualizarRel;
  vpAtualizaCtb := DeveAtualizarCtb;
  vpAtualizaAju := DeveAtualizarAju;

  if vpAtualizaVer then
  begin
    vlVersao := vrslocvrsversao.AsInteger;
    vlVersaoWeb := vrswebvrsversao.AsInteger;
    LbPrincipal.Caption := 'Baixando arquivo do Servidor Remotor.';
    Application.ProcessMessages;
    // baixa do servidor remoto a versão
    BaixaVer(vlVersaoWeb);

    // ajusta ambiente e aplica a versão baixada do servidor remoto no micro local
    vpTipoAtualizao := 0;

    if not AbreTabelasLOCAL then
      exit;

    // carrega numero de versao a ser atualizado
    vlVersao := vrslocvrsversao.AsInteger;
    for I := strtoint(vpVersaoINI) to vlVersao do
    begin
      if vrsloc.Locate('vrsversao', I, []) then
      begin
        // aplica versão
        LbPrincipal.Caption := 'Atualizando versão: ' + inttostr(I);
        Application.ProcessMessages;

        AtualizaVER(I);
        // remove pasta temporaria de atualização
        DeleteDir(ExtractFilePath(Application.ExeName) + 'ver' + FormatFloat('00000000', I));
      end;
    end;
    vpVersaoINI := inttostr(I - 1);
  end;

  // atualiza relatorios
  if vpAtualizaRel then
    AtualizaRelatorios;

  // atualiza tabelas contabeis
  if vpAtualizaCtb then
    AtualizaCTB;

  // atualiza ajuda do sistema
  if vpAtualizaAju then
    AtualizaAJU;

end;

procedure Tfatu.BaixaVer(Versao: Integer);
begin

  // salva registro remoto na base local
  try

    vrsweb.First;
    while not vrsweb.Eof do
    begin
      vrsloc.append;
      vrslocvrsversao.AsInteger := vrswebvrsversao.AsInteger;
      vrslocvrsarquivo.AsVariant := vrswebvrsarquivo.AsVariant;
      vrslocvrsvalidacao.AsString := vrswebvrsvalidacao.AsString;
      vrslocvrsbeta.AsInteger := vrswebvrsbeta.AsInteger;
      vrsloc.post;
      vrsweb.Next;
    end;
  except
  end;
end;

procedure Tfatu.AtualizaVER(Versao: Integer);
var
  vlNomePasta: string;
  vlNomeVersao: string;
  vlVersaoOk: boolean;

begin
  try
    // define nome de pasta e arquivo para versao
    vlNomePasta := ExtractFilePath(Application.ExeName);
    vlNomeVersao := 'ver' + FormatFloat('00000000', Versao);

    // cria diretorio se nao existe
    if not DirectoryExists(vlNomePasta + vlNomeVersao) then
      ForceDirectories(vlNomePasta + vlNomeVersao);

    // salva arquivo em pasta local
    vrslocvrsarquivo.SaveToFile(vlNomePasta + vlNomeVersao + '\' + vlNomeVersao + '.7z');

    // descomprime o arquivo na pasta da versao
    if fileexists(vlNomePasta + vlNomeVersao + '\' + vlNomeVersao + '.7z') then
      vlVersaoOk := DescomprimeVersao(vlNomePasta + vlNomeVersao + '\' + vlNomeVersao + '.7z');

    if vlVersaoOk then
      AplicaVersao(vlNomePasta, vlNomeVersao);

  except

  end;

end;

Procedure Tfatu.AplicaVersao(Pasta, Versao: string);
var
  vlPastaVersao: string;
  vlPastas: TStringList;
  vlQtdPastas: Integer;
begin

  AtualizaArquivos(Pasta + Versao, Versao);

  try
    vlPastas := TStringList.Create;

    CarregaNomePastas(Pasta + Versao, vlPastas);

    for vlQtdPastas := 0 to vlPastas.Count - 1 do
    begin
      AtualizaArquivos(vlPastas[vlQtdPastas], Versao);
    end;

  finally
    FreeAndNil(vlPastas);
  end;
end;

procedure Tfatu.AtualizaArquivos(vPasta, vVersao: String);
var
  F: TSearchRec;
  vlPastaApp: string;
  vlSubPastaApp: string;
  vlPastaVersao: string;
  vlArqVersao: string;
  vlArqApp: string;
  Retorno: Integer;
begin
  vlPastaApp := ExtractFilePath(Application.ExeName);
  vlPastaVersao := vPasta;
  vlSubPastaApp := vPasta;

  while pos('\', vlSubPastaApp) > 0 do
  begin
    vlSubPastaApp := trim(copy(vlSubPastaApp, pos('\', vlSubPastaApp) + 1, length(vlSubPastaApp)));
    if pos('\', vlSubPastaApp) = 0 then
      Break;
  end;

  if (vlSubPastaApp = vVersao) then
    vlSubPastaApp := '';

  if (vlSubPastaApp <> '') then
    vlSubPastaApp := vlSubPastaApp + '\';

  Retorno := FindFirst(vlPastaVersao + '\*.*', faArchive, F);

  try
    while Retorno = 0 do
    begin
      if (F.Name <> '.') and (F.Name <> '..') then
      begin

        vlArqVersao := vlPastaVersao + '\' + F.Name;
        if fileexists(vlPastaApp + vlSubPastaApp + F.Name) then
        begin

          if fileexists(vlPastaApp + vlSubPastaApp + F.Name + '.' + vVersao) then
            DeleteFile(vlPastaApp + vlSubPastaApp + F.Name + '.' + vVersao);

          RenameFile(vlPastaApp + vlSubPastaApp + F.Name, vlPastaApp + vlSubPastaApp + F.Name + '.' + vVersao);

          if CopyFile(pchar(vlArqVersao), pchar(vlPastaApp + vlSubPastaApp + F.Name), true) then
            DeleteFile(vlArqVersao);

          if fileexists(vlPastaApp + vlSubPastaApp + F.Name + '.' + vVersao) then
            DeleteFile(vlPastaApp + vlSubPastaApp + F.Name + '.' + vVersao);

        end;

      end;
      Retorno := FindNext(F)
    end;
  finally
    FindClose(F);
  end;

end;

procedure Tfatu.CarregaNomePastas(PastaVersao: string; vPastas: TStringList);
var
  F: TSearchRec;
  Retorno: Integer;
  arq: string;
begin
  // Inicia Busca

  Retorno := FindFirst(PastaVersao + '\*.*', faDirectory, F);

  vPastas.Clear;
  try
    while Retorno = 0 do
    begin
      if (F.Name <> '.') and (F.Name <> '..') then
      begin

        if F.Attr = faDirectory then
          vPastas.Add(PastaVersao + '\' + F.Name);

      end;
      Retorno := FindNext(F)
    end;
  finally
    FindClose(F);
  end;
end;

function Tfatu.DescomprimeVersao(Arquivo: string): boolean;
begin
  with CreateInArchive(CLSID_CFormat7z) do
  begin
    try
      OpenFile(Arquivo);
      SetProgressCallback(nil, ProgressCallback);
      ExtractTo(ExtractFilePath(Arquivo));
      Result := true;
    except
      Result := False;
    end;
  end;
end;

procedure Tfatu.AtualizaAJU;
begin
  // IMPLEMENTAR

end;

procedure Tfatu.AtualizaCTB;
begin
  MostraRelatorios.Position := 0;
  MostraRelatorios.Max := 7;

  LbPrincipal.Caption := 'Tipo de Operação de Estoque';
  Application.ProcessMessages;
  ImportarTabela('tto');
  MostraRelatorios.Position := MostraRelatorios.Position + 1;
  Application.ProcessMessages;

  LbPrincipal.Caption := 'Tipo de Transação de Estoque';
  Application.ProcessMessages;
  ImportarTabela('tte');
  MostraRelatorios.Position := MostraRelatorios.Position + 1;
  Application.ProcessMessages;

  LbPrincipal.Caption := 'Tipo de Emitente de Transação de Estoque';
  Application.ProcessMessages;
  ImportarTabela('ttm');
  MostraRelatorios.Position := MostraRelatorios.Position + 1;
  Application.ProcessMessages;

  LbPrincipal.Caption := 'Tabela Movimento Físico do Estoque';
  Application.ProcessMessages;
  ImportarTabela('tme');
  MostraRelatorios.Position := MostraRelatorios.Position + 1;
  Application.ProcessMessages;

  LbPrincipal.Caption := 'Tabela de cadastro para CFOPs';
  Application.ProcessMessages;
  ImportarTabela('cfo');
  MostraRelatorios.Position := MostraRelatorios.Position + 1;
  Application.ProcessMessages;

  LbPrincipal.Caption := 'Tabela de cadastro para CFOPs';
  Application.ProcessMessages;
  ImportarTabela('cfo');
  MostraRelatorios.Position := MostraRelatorios.Position + 1;
  Application.ProcessMessages;

  LbPrincipal.Caption := 'Operacao Tributaria';
  Application.ProcessMessages;
  ImportarTabela('otb');
  MostraRelatorios.Position := MostraRelatorios.Position + 1;
  Application.ProcessMessages;

  LbPrincipal.Caption := 'Tipo de Transação de Estoque';
  Application.ProcessMessages;
  ImportarTabela('toe');
  MostraRelatorios.Position := MostraRelatorios.Position + 1;
  Application.ProcessMessages;

  cfgloc.edit;
  cfgloccfgatuctb.AsFloat := cfgwebcfgatuctb.AsFloat;
  cfgloc.post;

end;

function Tfatu.DeveAtualizarRel: boolean;
begin
  if cfgloccfgaturel.AsFloat < cfgwebcfgaturel.AsFloat then
    Result := true
  else
    Result := False;
end;

function Tfatu.DeveAtualizarVER: boolean;
begin

  // é uma atualizção publica e deve transferir para banco local e salvar em pasta local
  if vpTipoAtualizao = 1 then
  begin
    if vrslocvrsversao.AsInteger < vrswebvrsversao.AsInteger then
      Result := true
    else
      Result := False;
  end;
  // é uma atualizção local e deve transferir para pasta local
  if vpTipoAtualizao = 0 then
  begin
    if strtoint(vpVersaoINI) < vrslocvrsversao.AsInteger then
      Result := true
    else
      Result := False;
  end;

end;

function Tfatu.AbreTabelasLOCAL: boolean;
begin
  try
    cfgloc.Close;
    cfgloc.Connection := zcone;
    cfgloc.Open;

    vpClienteBeta := cfgloccfgbeta.AsInteger;

    if vpTipoAtualizao = 1 then
    begin
      vrsloc.Close;
      vrsloc.Connection := zcone;
      vrsloc.SQL.Text := 'SELECT vrschave, vrsversao, vrsarquivo, vrsvalidacao,  vrsbeta ';
      vrsloc.SQL.Add('FROM vrs order by vrsversao desc limit 1');
      vrsloc.Filtered := true;
      vrsloc.Open;
    end;
    if vpTipoAtualizao = 0 then
    begin
      vrsloc.Close;
      vrsloc.Connection := zcone;
      vrsloc.SQL.Text := 'SELECT vrschave, vrsversao, vrsarquivo, vrsvalidacao,  vrsbeta ';
      vrsloc.SQL.Add('FROM vrs where vrsversao>' + vpVersaoINI + ' order by vrsversao desc');
      vrsloc.Filtered := true;
      vrsloc.Open;
    end;

    Result := true;
  except
    Result := true;
  end;
end;

function Tfatu.AbreTabelasWEB: boolean;
begin
  try

    cfgweb.Close;
    cfgweb.Connection := ConexaoWeb;
    cfgweb.Open;

    vrsweb.Close;
    vrsweb.Connection := ConexaoWeb;

    // cliente não é beta, entao deve esconder versoes beta.
    if vpClienteBeta = 0 then
    begin
      vrsweb.Filter := 'vrsbeta=0 and vrsversao>' + vpVersaoINI;
      vrsweb.Filtered := true;
    end
    else
    begin
      vrsweb.Filter := 'vrsversao>' + vpVersaoINI;
      vrsweb.Filtered := true;
    end;
    vrsweb.Open;

    Result := true;
  except
    Result := true;
  end;
end;

function Tfatu.DeveAtualizarCtb: boolean;
begin
  if cfgloccfgatuctb.AsFloat < cfgwebcfgatuctb.AsFloat then
    Result := true
  else
    Result := False;
end;

function Tfatu.DeveAtualizarAju: boolean;
begin
  if cfgloccfgatuaju.AsFloat < cfgwebcfgatuaju.AsFloat then
    Result := true
  else
    Result := False;
end;

procedure Tfatu.ImportarTabela(vTabela: string);
var
  I: Integer;
begin
  try
    zcone.StartTransaction;
    consultaloc.Close;
    consultaloc.Connection := zcone;
    consultaloc.SQL.Text := 'select * from ' + vTabela;
    consultaloc.Open;

    consultaweb.Close;
    consultaweb.Connection := ConexaoWeb;
    consultaweb.SQL.Text := 'select * from ' + vTabela;
    consultaweb.Open;

    registros.Max := consultaweb.RecordCount;
    registros.Position := 0;
    Application.ProcessMessages;

    consultaweb.First;

    while not consultaweb.Eof do
    begin
      registros.Position := registros.Position + 1;
      Application.ProcessMessages;

      if consultaloc.Locate(consultaloc.Fields[0].FieldName, consultaweb.Fields[0].AsString, []) then
        consultaloc.edit
      else
        consultaloc.append;

      for I := 0 to consultaweb.Fields.Count - 1 do
      begin
        consultaloc.FieldByName(consultaweb.Fields[I].FieldName).AsString := consultaweb.FieldByName(consultaweb.Fields[I].FieldName).AsString;
      end;
      consultaloc.post;

      consultaweb.Next;
    end;
    zcone.Commit;
  except
    zcone.Rollback;
  end;

end;

procedure Tfatu.AtualizaTOEs;
begin

end;

procedure Tfatu.AtualizaRelatorios;
var
  vlImporOK: boolean;
  vllocal: string;
  vlRemoto: string;

  vlCodigoLoc: string;
  vlCodigoRem: string;

begin

  relweb.Connection := ConexaoWeb;
  relw.Connection := ConexaoWeb;
  rw.Connection := ConexaoWeb;
  consultaweb.Connection := ConexaoWeb;
  relweb.Open;

  rw.Close;
  rw.Open;

  zcone.StartTransaction;

  MostraRelatorios.Max := rw.RecordCount;
  MostraRelatorios.Position := 0;
  rw.First;
  while not rw.Eof do
  begin
    MostraRelatorios.Position := MostraRelatorios.Position + 1;
    Application.ProcessMessages;

    lreloc.Close;
    lreloc.Connection := zcone;
    lreloc.Params[0].AsString := rw.FieldByName('relcodigo').AsString;
    lreloc.Open;

    vllocal := lreloc.FieldByName('lreregistro').AsString;
    vlRemoto := rw.FieldByName('lreregistro').AsString;

    vlCodigoLoc := lreloc.FieldByName('relcodigo').AsString;
    vlCodigoRem := rw.FieldByName('relcodigo').AsString;

    if lreloc.FieldByName('lreregistro').AsFloat < rw.FieldByName('lreregistro').AsFloat then
    begin

      if rw.Bof then
        vlImporOK := ImportarRelatorio(rwrelcodigo.AsString, true)
      else
        vlImporOK := ImportarRelatorio(rwrelcodigo.AsString, False);

    end;
    if vlImporOK = False then
      Break;

    rw.Next;
  end;
  MostraRelatorios.Position := MostraRelatorios.Max;
  Application.ProcessMessages;

  cfgloc.edit;
  cfgloccfgaturel.AsFloat := cfgwebcfgaturel.AsFloat;
  cfgloc.post;

  zcone.Commit;

end;

procedure Tfatu.ImportaDados(vlSql: string);
var
  I, u: Integer;
begin

  consultaloc.Close;
  consultaloc.Connection := zcone;
  consultaloc.Filter := '';
  consultaloc.Filtered := False;
  consultaloc.SQL.Text := vlSql;
  consultaloc.Open;

  consultaweb.Close;
  consultaweb.Connection := ConexaoWeb;
  consultaweb.Filter := '';
  consultaweb.Filtered := False;
  consultaweb.SQL.Text := vlSql;
  consultaweb.Open;

  for I := 0 to consultaloc.Fields.Count - 1 do
  begin
    if consultaweb.Fields[I].FieldName = 'relcodigo' then
    begin
      consultaweb.Filter := 'relcodigo=' + chr(39) + vpRelCodigoStr + chr(39);
      consultaweb.Filtered := true;
    end;
  end;

  consultaweb.First;
  while not consultaweb.Eof do
  begin

    if (pos('from bpl', lowercase(vlSql)) > 0) then
    begin
      if consultaloc.Locate(consultaweb.Fields[0].FieldName, consultaweb.Fields[0].AsString, []) then
      begin
        consultaloc.edit;
      end
      else
      begin
        consultaloc.append;
      end;
    end
    else
    begin
      if consultaloc.Locate(consultaweb.Fields[0].FieldName + ';' + consultaweb.Fields[1].FieldName,
        VarArrayOf([consultaweb.Fields[0].AsString, consultaweb.Fields[1].AsString]), []) then
      begin
        consultaloc.edit;
      end
      else
      begin
        consultaloc.append;
      end;
    end;

    if (pos('from bpl', lowercase(vlSql)) > 0) or (pos('from tca', lowercase(vlSql)) > 0) or (pos('from crl', lowercase(vlSql)) > 0) or
      (pos('from mre', lowercase(vlSql)) > 0) then
      u := 0
    else
      u := 1;

    for I := u to consultaloc.Fields.Count - 1 do
    begin

      if consultaloc.Fields[I].DataType <> ftBlob then
        consultaloc.FieldByName(consultaloc.Fields[I].FieldName).AsString := consultaweb.FieldByName(consultaloc.Fields[I].FieldName).AsString
      else
        consultaloc.FieldByName(consultaloc.Fields[I].FieldName).AsVariant := consultaweb.FieldByName(consultaloc.Fields[I].FieldName).AsVariant;

      if consultaloc.Fields[I].FieldName = 'relcodigo' then
        consultaloc.Fields[I].AsString := vpRelCodigoStr;

    end;
    consultaloc.post;

    consultaweb.Next;
  end;

end;

function Tfatu.ImportarRelatorio(vRelCodigo: string; ImportaBPL: boolean): boolean;
var
  I, u: Integer;
  w: string;
  l: string;
  vlSql: string;
  vlProcessar: boolean;
begin
  try
    Result := true;

    rell.Close;
    rell.Connection := zcone;
    rell.Params[0].AsString := vRelCodigo;
    rell.Open;

    relw.Close;
    relw.Connection := ConexaoWeb;
    relw.Params[0].AsString := vRelCodigo;
    relw.Open;

    relloc.Close;
    relloc.Connection := zcone;
    relloc.Open;

    w := vRelCodigo;
    vlProcessar := False;
    if relloc.Locate('relcodigo', w, []) then
    begin
      if self.relwebreltipo.AsInteger = 1 then
      begin
        vlProcessar := true;
        rell.append;
        u := 1;
      end
      else
      begin
        vlProcessar := true;
        rell.edit;
        u := 0;
      end;
    end
    else
    begin
      vlProcessar := true;
      rell.append;
      u := 1;
    end;

    if vlProcessar then
    begin

      for I := u to rell.Fields.Count - 1 do
        rell.Fields[I].AsVariant := relw.Fields[I].AsVariant;

      rell.FieldByName('relcodigo').AsString := w;
      rell.FieldByName('reltipo').AsInteger := 0;

      if rell.FieldByName('relarquivo').AsString <> '' then
      begin

        rell.FieldByName('relcodigo').AsString := w;
        rell.FieldByName('relnomearquivo').AsString := 'rel' + w;
        rell.FieldByName('relorigem').AsString := '00000000';
        rell.FieldByName('reltipo').AsInteger := 0;
        rell.post;

        lre.Close;
        lre.Connection := zcone;
        lre.Open;
        lre.append;
        lrerelcodigo.AsString := w;
        lreclbcodigo.AsInteger := 1;
        lrelreregistro.AsString := agora(Application, zcone);
        lrerelarquivo.AsVariant := rell.FieldByName('relarquivo').AsVariant;
        lre.post;

        vpRelCodigoStr := w;

        if vpRelCodigoStr <> '' then
        begin
          if ImportaBPL then
          begin
            vlSql := 'SELECT DISTINCT tcacodigo, tcaidentificacao FROM tca';
            ImportaDados(vlSql);

            vlSql := 'SELECT DISTINCT bplcodigo, bplidentificacao, bplnomearq, bplfranome FROM bpl';
            ImportaDados(vlSql);

            vlSql := 'SELECT DISTINCT crmchave, crmnome, bplcodigo,  crmidentificacao, tcacodigo FROM crm';
            ImportaDados(vlSql);

          end;

          vlSql := 'SELECT DISTINCT relcodigo, crlnome FROM crl';
          ImportaDados(vlSql);

          vlSql := 'SELECT DISTINCT relcodigo, bplcodigo FROM mre';
          ImportaDados(vlSql);

        end;
      end
      else
      begin
        rell.Cancel;
      end;

    end;
  except
    Result := False;
  end;
end;

end.
