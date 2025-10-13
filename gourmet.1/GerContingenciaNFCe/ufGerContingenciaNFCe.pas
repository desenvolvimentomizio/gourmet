unit ufGerContingenciaNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Inifiles, Registry, PngImageList, Vcl.Menus,
  UniProvider, MySQLUniProvider, Data.DB, DBAccess, Uni, MemDS, Vcl.ComCtrls,
  ACBrNFe, pcnConversao, Vcl.ImgList, Winapi.WinInet, ACBrBase, ACBrDFe,
  pcnConversaoNFe, System.ImageList, MemData, Vcl.Clipbrd, IdBaseComponent,
  IdAntiFreezeBase, IdAntiFreeze, upegabase, ACBrDFeUtil, ACBrUtil, pcnAuxiliar;

type
  TfGerContingenciaNFCe = class(TForm)
    pltopo: TPanel;
    bocultar: TButton;
    pipmicro: TPanel;
    PnlDataHora: TPanel;
    PlModo: TPanel;
    MNotificacoes: TMemo;
    DBGListaNF: TDBGrid;
    Imagens: TPngImageList;
    TrayIcon: TTrayIcon;
    PopupMenu: TPopupMenu;
    N2: TMenuItem;
    MOSTRARImpressor: TMenuItem;
    OCULTARImpressor: TMenuItem;
    N1: TMenuItem;
    Fechar: TMenuItem;
    relogio: TTimer;
    conexao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmensagempdv: TStringField;
    cfgcfgtrmimpfis1: TIntegerField;
    cfgcfgtrmimpfis2: TIntegerField;
    cfgcfgtrmtef1: TIntegerField;
    cfgcfgtrmtef2: TIntegerField;
    cfgcfgimpnfe1: TIntegerField;
    cfgcfgimpnfe2: TIntegerField;
    cfgcfgimpnfc1: TIntegerField;
    cfgcfgimpnfc2: TIntegerField;
    cfgcfgimpnfc3: TIntegerField;
    cfgcfgservarqnfes: TStringField;
    cfgcfgnumecertif: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgprouso: TIntegerField;
    cfgcfgtoeusofora: TIntegerField;
    cfgcfgtoeusointe: TIntegerField;
    cfgcfgtoecuffora: TIntegerField;
    cfgcfgtoecufinte: TIntegerField;
    cfgcfgviasnfe: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgnumeronfce: TIntegerField;
    cfgcfgserienfce: TStringField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgdescrinfe: TIntegerField;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgcfgcstterceiros: TStringField;
    cfgetdapelido: TStringField;
    cfgetdidentificacao: TStringField;
    cfgetddoc1: TStringField;
    cfgufscodigo: TStringField;
    cfgcddcodigo: TStringField;
    cfgedrinscest: TStringField;
    cfgedrrua: TStringField;
    cfgedrnumero: TStringField;
    cfgedrbairro: TStringField;
    cfgedrcep: TStringField;
    cfgcddnome: TStringField;
    cfgufssigla: TStringField;
    cfgetftelefone: TStringField;
    cfgctdboxedominio: TStringField;
    cfgcfgusanfc: TIntegerField;
    cfgcfgmodonfe: TIntegerField;
    cfgcfgnumecertifa1: TStringField;
    plTopNFE: TPanel;
    DtEmissao: TDateTimePicker;
    Panel2: TPanel;
    bAtualizarRegistros: TButton;
    OcultarInicial: TTimer;
    qnfs: TUniQuery;
    qnfsmeschave: TIntegerField;
    qnfsmesemissao: TDateField;
    qnfstdfidentificacao: TStringField;
    qnfsmesnumero: TIntegerField;
    qnfsetdcodigo: TIntegerField;
    qnfsetdidentificacao: TStringField;
    qnfsmesvalor: TFloatField;
    qnfsmesdesconto: TFloatField;
    qnfsmestotal: TFloatField;
    qnfssdeidentificacao: TStringField;
    qnfstoeidentificacao: TStringField;
    qnfsmesserie: TStringField;
    qnfsclbcodigo: TIntegerField;
    qnfstrmcodigo: TIntegerField;
    qnfsmesprotocolo: TStringField;
    qnfssdecodigo: TStringField;
    qnfsmesdatanfe: TDateField;
    qnfstemcodigo: TIntegerField;
    qnfstemidentificacao: TStringField;
    qnfstoeorigem: TStringField;
    qnfstdfcodigo: TStringField;
    qnfsttecodigo: TIntegerField;
    qnfstteidentificacao: TStringField;
    qnfsmeschavenfe: TStringField;
    qnfsmesregistro: TDateField;
    Dregistros: TUniDataSource;
    PlStatSefaz: TPanel;
    ACBrNFe: TACBrNFe;
    cfgcfgidtokennfce: TStringField;
    cfgcfgtoken1nfce: TStringField;
    ttInicializar: TTimer;
    ttVerificaContingencia: TTimer;
    rec: TUniQuery;
    recreccodigo: TIntegerField;
    recrecmotivo: TStringField;
    recrecdthoraentrada: TDateTimeField;
    recrecdthorasaida: TDateTimeField;
    recrecmanual: TIntegerField;
    NFCeConti: TUniQuery;
    qConsulta: TUniQuery;
    NFCeContimeschave: TIntegerField;
    NFCeContitdfcodigo: TStringField;
    NFCeContimesregistro: TDateField;
    NFCeContimeschavenfe: TStringField;
    NFCeContimesprotocolo: TStringField;
    NFCeContimesnumero: TIntegerField;
    cfgcfgsenhacertificadoa1: TStringField;
    mizioonline: TUniConnection;
    mizio_gab: TUniQuery;
    mizio_gabmizio_gabchave: TIntegerField;
    mizio_gabmizio_gabdoc1: TStringField;
    mizio_gabmizio_gabnome: TStringField;
    mizio_gabmizio_gabbackup: TDateField;
    mizio_gabmizio_gabcontigencia: TDateField;
    Panel1: TPanel;
    plTipoContingencia: TPanel;
    mnMudarContigenciaManual: TMenuItem;
    mesxml: TUniQuery;
    mesxmlmeschave: TIntegerField;
    mesxmlmesarqxml: TBlobField;
    mesxmlflacodigo: TIntegerField;
    NFCeContiflacodigo: TIntegerField;
    Button1: TButton;
    IdAntiFreeze1: TIdAntiFreeze;
    mizio_gabmizio_gabcontigencias: TIntegerField;
    mizio_gabmizio_gabpendentes: TIntegerField;
    NFCeContimesdatanfe: TDateField;
    NFCeContimesserie: TStringField;
    NFCeEmitidas: TUniQuery;
    NFCeEmitidasmeschave: TIntegerField;
    NFCeEmitidastdfcodigo: TStringField;
    NFCeEmitidasmesregistro: TDateField;
    NFCeEmitidasmesnumero: TIntegerField;
    NFCeEmitidasmeschavenfe: TStringField;
    NFCeEmitidasmesprotocolo: TStringField;
    NFCeEmitidasflacodigo: TIntegerField;
    NFCeEmitidasmesdatanfe: TDateField;
    NFCeEmitidasmesserie: TStringField;
    NFCeEmitidastemcodigo: TIntegerField;
    NFCeContitemcodigo: TIntegerField;
    NFCeContimesemissao: TDateField;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure MOSTRARImpressorClick(Sender: TObject);
    procedure OCULTARImpressorClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure relogioTimer(Sender: TObject);
    procedure bocultarClick(Sender: TObject);
    procedure bAtualizarRegistrosClick(Sender: TObject);
    procedure DBGListaNFDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure OcultarInicialTimer(Sender: TObject);
    procedure PlStatSefazClick(Sender: TObject);
    procedure ttInicializarTimer(Sender: TObject);
    procedure ttVerificaContingenciaTimer(Sender: TObject);
    procedure mnMudarContigenciaManualClick(Sender: TObject);
    procedure conexaoConnectionLost(Sender: TObject; Component: TComponent; ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    zcone: TUniConnection;

    vpEmContingencia: Boolean;

    vpDataAtual: Double;
    vpFilial: String;
    vpNomeBanco: string;
    vpIpServidor: string;
    vpUsuario: string;
    vpSenha: string;

    vpPastaPrincipal: string;
    vpAnoMesNomeNFCe: String;

    vpTrmcodigo: string;

    procedure RunOnStartup(sProgTitle, sCmdLine: String; bRunOnce: Boolean);
    procedure CarregaDadosIni;
    function BancoConectado: Boolean;
    procedure MostraMensagem(texto: string);
    function ConsultaStausSEFAZ: Boolean;
    function LerConfiguracaoNFCe: Boolean;
    procedure AjustaCaminhoGeralNF(Data: TDate);
    procedure VerificaNFCeContingencia;
    procedure NotificaVerficacaodeContigencia;
    function GeraNomeArqNFCe(vMesChave: string; vFlaCodigo: String = '1'): string;
    procedure VerificaNFCeProtocoloEmitidas;
    procedure NotificaVerficacaodePendente;
    function ModuloNFCe(vfuncao: string; vTrmCodigo: string; vMesChave: string; vClbCodigo: string; vEmails: string = ''): Boolean;
    procedure VerficarNFCePendentes(vMesChave: Integer; vEmissaoNFCe: TDate);
    { Private declarations }
  public
    { Public declarations }
    vpTentativasReconexoes: Integer;
  end;

  Tmodulonfce = function(AOwner: TComponent; conexao: TUniConnection; vMesChave: string; vfuncao: string; Acesso: TAcesso; vImprimir: Boolean; vConsultouSefaz: Boolean;
    vemail: string): Boolean;

  TFriendly = class(TCustomDBGrid);
  TCellGrid = class(TCustomGrid);

var
  fGerContingenciaNFCe: TfGerContingenciaNFCe;

implementation

uses ufuncoes;
{$R *.dfm}

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

(* Chamada exportada para carga da BPL *)
procedure MainForm(AOwner: TApplication);
begin
  fGerContingenciaNFCe := TfGerContingenciaNFCe.Create(AOwner);
end;

exports MainForm;

function InternetAtiva: Boolean;
var
  Flags: Cardinal;
begin
  Result := false;
  if not InternetGetConnectedState(@Flags, 0) then
    Result := false
  else
    Result := true;
end;

procedure TfGerContingenciaNFCe.bAtualizarRegistrosClick(Sender: TObject);
begin
  try
    qnfs.Params[0].AsDate := DtEmissao.Date;
    qnfs.Params[1].AsString := '65';

    if qnfs.Active then
    begin
      qnfs.Refresh;
      Exit;
    end;

    qnfs.close;
    qnfs.Open;
  except

  end;
end;

procedure TfGerContingenciaNFCe.bocultarClick(Sender: TObject);
begin
  Application.MainForm.Visible := false;
end;

procedure TfGerContingenciaNFCe.Button1Click(Sender: TObject);
var
  s: string;
  m: TClipboard;
begin
  MNotificacoes.SelectAll;
  s := MNotificacoes.Lines.Text;
  m := TClipboard.Create;
  m.SetTextBuf(PChar(s));
  ShowMessage('Menssagens na memória, escolha' + #13 + ' o destino e clique ctrl+v');

end;

procedure TfGerContingenciaNFCe.FecharClick(Sender: TObject);
begin
  relogio.Enabled := false;
  Application.Terminate;
end;

procedure TfGerContingenciaNFCe.FormCreate(Sender: TObject);
begin
  RunOnStartup('Gerenciador NFC-e em Contingência Pégasus', Application.exename, false);
  ttInicializar.Enabled := true;
end;

procedure TfGerContingenciaNFCe.FormShow(Sender: TObject);
begin
  Label1.Caption := 'Versão: ' + GetAppVersionStr(Application.exename);
end;

procedure TfGerContingenciaNFCe.MOSTRARImpressorClick(Sender: TObject);
begin
  Self.WindowState := wsNormal;
  Application.MainForm.Visible := true;
end;

procedure TfGerContingenciaNFCe.OCULTARImpressorClick(Sender: TObject);
begin
  Application.MainForm.Visible := false;
end;

procedure TfGerContingenciaNFCe.OcultarInicialTimer(Sender: TObject);
begin
  OcultarInicial.Enabled := false;
  bocultar.Click;
end;

procedure TfGerContingenciaNFCe.PlStatSefazClick(Sender: TObject);
begin
  ConsultaStausSEFAZ;

  VerificaNFCeContingencia;

  VerificaNFCeProtocoloEmitidas;

  NotificaVerficacaodePendente;

  NotificaVerficacaodeContigencia;

  bAtualizarRegistros.Click;
end;

procedure TfGerContingenciaNFCe.relogioTimer(Sender: TObject);
begin
  PnlDataHora.Caption := 'Data e Hora Atual: ' + DateTimeToStr(Now());
end;

Procedure TfGerContingenciaNFCe.RunOnStartup(sProgTitle, sCmdLine: String; bRunOnce: Boolean);
Var
  sKey: String;
  Reg: TRegIniFile;
Begin
  Try
    If (bRunOnce) Then
      sKey := 'Once'
    Else
      sKey := '';
    Reg := TRegIniFile.Create('');
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    Reg.WriteString('Software\Microsoft\Windows\CurrentVersion\Run' + sKey + #0, sProgTitle, sCmdLine);

    Reg.Free;
  Except
    Reg.Free;
  End;
End;

procedure TfGerContingenciaNFCe.ttInicializarTimer(Sender: TObject);
var
  I: Integer;
begin
  ttInicializar.Enabled := false;

  CarregaDadosIni;

  if not BancoConectado then
    Application.Terminate;

  zcone := conexao;

  for I := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[I] is TUniQuery then
      (Self.Components[I] as TUniQuery).Connection := Self.conexao;

    if Self.Components[I] is tunitable then
      (Self.Components[I] as tunitable).Connection := Self.conexao;
  end;

  cfg.ParamByName('flacodigo').AsString := vpFilial;
  cfg.Open;
  if cfgcfgmodonfe.AsInteger = 1 then
    PlModo.Caption := 'Produção'
  else
    PlModo.Caption := 'Homologação';

  if cfgcfgservarqnfes.AsString = '' then
    vpPastaPrincipal := ExtractFilePath(Application.exename)
  else
    vpPastaPrincipal := cfgcfgservarqnfes.AsString;

  vpDataAtual := strtodatetime(agora(Application, zcone));

  LerConfiguracaoNFCe;
  AjustaCaminhoGeralNF(vpDataAtual);

  DtEmissao.Date := Date;
  bAtualizarRegistros.Click;

  ConsultaStausSEFAZ;

  VerificaNFCeContingencia;
  VerificaNFCeProtocoloEmitidas;
  NotificaVerficacaodeContigencia;
  NotificaVerficacaodePendente;

  OcultarInicial.Enabled := true;
end;

procedure TfGerContingenciaNFCe.ttVerificaContingenciaTimer(Sender: TObject);
begin
  ConsultaStausSEFAZ;
  VerificaNFCeContingencia;
  NotificaVerficacaodeContigencia;
end;

procedure TfGerContingenciaNFCe.CarregaDadosIni;
var
  vlArquIni: TInifile;
begin
  try
    vlArquIni := TInifile.Create(ExtractFilePath(Application.exename) + 'gourmeterp.ini');

    With vlArquIni Do
    Begin
      vpNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
      vpIpServidor := ReadString('posi', 'servidor', '127.0.0.1');
      vpUsuario := ReadString('posi', 'usuario', 'root');
      vpSenha := ReadString('posi', 'senha', 'xda973');
      vpTrmcodigo := ReadString('posi', 'terminal', '1');
      vpFilial := ReadString('posi', 'filial', '1');

    End;
    pipmicro.Caption := 'Terminal: ' + vpTrmcodigo;
  finally
    vlArquIni.Free;
  end;
end;

procedure TfGerContingenciaNFCe.conexaoConnectionLost(Sender: TObject; Component: TComponent; ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
begin
  while vpTentativasReconexoes < 6 do
  begin
    sleep(1000);
    RetryMode := rmReconnectExecute;
    if conexao.Connected then
      Break;
    if vpTentativasReconexoes > 5 then
    begin
      MNotificacoes.Lines.Add('Falha de rede, conexão com servidor pedida!');
      vpTentativasReconexoes := 0;
    end
    else
    begin
      MNotificacoes.Lines.Add('Tentativa ' + Inttostr(vpTentativasReconexoes) + ' de 6 de reconexão com sistema.' + #13#13 + 'VEREFIQUE SUA REDE!');
      vpTentativasReconexoes := vpTentativasReconexoes + 1;
    end;
  end;
end;

procedure TfGerContingenciaNFCe.DBGListaNFDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  fixRect := Rect;

  If odd(Dregistros.DataSet.RecNo) Then
    DBGListaNF.Canvas.Brush.Color := CLWHITE
  Else
    DBGListaNF.Canvas.Brush.Color := CLWHITE;

  if Copy(Dregistros.DataSet.FieldByName('mesprotocolo').AsString, 1, 15) = '000000000000000' then
    DBGListaNF.Canvas.Font.Color := clRed
  else
    DBGListaNF.Canvas.Font.Color := clBlack;

  with TFriendly(DBGListaNF) do
    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
      Font.Color := CLWHITE;
    End;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure TfGerContingenciaNFCe.mnMudarContigenciaManualClick(Sender: TObject);
begin
  try
    qConsulta.close;
    qConsulta.SQL.Text := 'update rec set recdthorasaida=' + QuotedStr(formatdatetime('yyyy-dd-mm', Now) + formatdatetime('h:n:s', Now)) + ' where recdthorasaida=null';
    qConsulta.ExecSQL;

    if not rec.Active then
      rec.Open;

    Self.rec.Append;
    Self.recrecmotivo.AsString := 'Velocidade da internet muito baixa.';
    Self.recrecdthoraentrada.AsDateTime := Now;
    Self.recrecmanual.AsInteger := 1;
    Self.rec.Post;

  except

  end;
end;

procedure TfGerContingenciaNFCe.MostraMensagem(texto: string);
begin
  MNotificacoes.Lines.Add(DateTimeToStr(Now) + ' ' + texto);
  Application.ProcessMessages;
end;

Function TfGerContingenciaNFCe.BancoConectado: Boolean;
Var
  iTentativas: Integer;
Begin
  try
    Result := false;

    If conexao.Connected Then
    begin
      MostraMensagem('Banco de Dados - Conectado');
      Result := true;
      Exit;
    end;

    While true Do
    Begin
      Try
        conexao.Connected := false;
        conexao.Database := vpNomeBanco;
        conexao.Username := 'root';
        conexao.Password := vpSenha;
        conexao.Server := vpIpServidor;
        conexao.Connected := true;

        If conexao.Connected Then
        Begin
          MostraMensagem('Banco de Dados - Conectado');
          Result := true;
          Break;
        End;

      Except
        MostraMensagem('Tentando conexão  ' + Inttostr(iTentativas) + ' com o banco ' + vpNomeBanco + ' em ' + vpIpServidor);

        sleep(1000);

        Inc(iTentativas);

        If iTentativas = 30 Then
          MostraMensagem('Não foi possível conectar o banco ' + vpNomeBanco + ' em ' + vpIpServidor + #13 + 'LIGUE para (66) 35442765 Mizio Sistemas');
      End;
    End;
  except
    conexao.Connected := false;
    MNotificacoes.Lines.Add('Tentando conexão  ' + Inttostr(iTentativas) + ' com o banco ' + vpNomeBanco + ' em ' + vpIpServidor);
  end;
End;

function TfGerContingenciaNFCe.LerConfiguracaoNFCe: Boolean;
Begin
  try
    Result := true;

    ACBrNFe.Configuracoes.WebServices.Visualizar := false;
    ACBrNFe.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.exename) + 'schemas\ACBrNFeServicos.ini';
    ACBrNFe.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.exename) + 'schemas';

    ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;
    ACBrNFe.Configuracoes.Geral.VersaoDF := ve400;

    ACBrNFe.Configuracoes.Certificados.NumeroSerie := Self.cfgcfgnumecertifa1.AsString;

    if (Length(cfgcfgsenhacertificadoa1.AsString) > 0) then
      ACBrNFe.Configuracoes.Certificados.Senha := cfgcfgsenhacertificadoa1.AsString;

    ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;
    ACBrNFe.Configuracoes.Geral.Salvar := true;

    ACBrNFe.Configuracoes.WebServices.UF := UpperCase(Self.cfgufssigla.AsString);

    ACBrNFe.Configuracoes.Geral.IdCSC := FormatFloat('000000', cfgcfgidtokennfce.AsInteger);
    ACBrNFe.Configuracoes.Geral.CSC := LowerCase(cfgcfgtoken1nfce.AsString);

    if cfgcfgmodonfe.AsInteger = 2 then
      ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao
    else if cfgcfgmodonfe.AsInteger = 1 then
      ACBrNFe.Configuracoes.WebServices.Ambiente := taProducao;

  except
    Result := false;
  end;
End;

procedure TfGerContingenciaNFCe.AjustaCaminhoGeralNF(Data: TDate);
begin
  // verifca se os diretorios existem se nao ja cria os mesmos
  if not DirectoryExists(vpPastaPrincipal) then
    ForceDirectories(vpPastaPrincipal);

  vpAnoMesNomeNFCe := vpPastaPrincipal + 'arqnfces\' + formatdatetime('yyyymm', Data) + '\';

  if not DirectoryExists(vpAnoMesNomeNFCe) then
    ForceDirectories(vpAnoMesNomeNFCe);

  ACBrNFe.Configuracoes.Arquivos.PathSalvar := vpAnoMesNomeNFCe;
end;

function TfGerContingenciaNFCe.ConsultaStausSEFAZ: Boolean;
var
  vRetornoErro: String;
  vlxMotivo: String;
  vlDataAtual: Double;
  vlDiferenca: String;
  vldias: string;
  vlRecCodigo: string;
begin
  try
    if conexao.Connected then
    begin
      vRetornoErro := '';
      vlxMotivo := '';

      MNotificacoes.Lines.Add('');
      MNotificacoes.Lines.Add('Consulta Status Serviço - ' + DateTimeToStr(Now()));

      rec.close;
      rec.Open;

      if recrecmanual.AsInteger = 1 then
      begin
        plTipoContingencia.Caption := 'C O N T I G E N C I A   M A N U A L';
        plTipoContingencia.Color := clYellow;
        plTipoContingencia.Font.Color := clRed;

        qConsulta.close;
        qConsulta.SQL.Text := 'SELECT TIMEDIFF(NOW(),rec.recdthoraentrada), reccodigo, dateDIFF(NOW(),rec.recdthoraentrada) FROM rec where reccodigo=' + recreccodigo.AsString;
        qConsulta.Open;

        vlRecCodigo := qConsulta.Fields[1].AsString;
        vlDiferenca := Copy(DateTimeToStr(qConsulta.Fields[0].AsDateTime), 12, 20);

        vldias := qConsulta.Fields[2].AsString;

        vlDiferenca := Floattostr(Round(Frac(qConsulta.Fields[0].AsFloat) * 60));
        { if (StrToTime(vlDiferenca) >= StrToTime('09:00:00')) or (Strtoint(vldias) > 1) then
          begin
          qConsulta.close;
          qConsulta.SQL.Text := 'update rec set recmanual=0 where reccodigo=' + vlRecCodigo;
          qConsulta.ExecSQL;
          end; }
        Result := false;

      end
      else
      begin
        plTipoContingencia.Caption := 'NORMAL';
        plTipoContingencia.Color := clSilver;
        plTipoContingencia.Font.Color := clBlack;
      end;

      try
        LerConfiguracaoNFCe;
        ACBrNFe.WebServices.StatusServico.Executar;
        Result := ACBrNFe.WebServices.StatusServico.cStat = 107;
        vlxMotivo := ACBrNFe.WebServices.StatusServico.xMotivo;
      except
        on e: Exception do
          vRetornoErro := e.Message;
      end;

      vlDataAtual := strtodatetime(agora(Application, zcone));

      if Result = true then
      begin
        MNotificacoes.Lines.Add('Ambiente: ' + TpAmbToStr(ACBrNFe.WebServices.StatusServico.tpAmb));
        MNotificacoes.Lines.Add('Versão: ' + ACBrNFe.WebServices.StatusServico.verAplic);
        MNotificacoes.Lines.Add('Status: ' + Inttostr(ACBrNFe.WebServices.StatusServico.cStat));
        MNotificacoes.Lines.Add('Motivo: ' + ACBrNFe.WebServices.StatusServico.xMotivo);
        MNotificacoes.Lines.Add('UF: ' + Inttostr(ACBrNFe.WebServices.StatusServico.cUF));
        MNotificacoes.Lines.Add('Data: ' + DateTimeToStr(ACBrNFe.WebServices.StatusServico.dhRecbto));
        MNotificacoes.Lines.Add('Tempo Médio: ' + Inttostr(ACBrNFe.WebServices.StatusServico.TMed));

        if not rec.IsEmpty Then
        begin
          rec.Edit;
          recrecdthorasaida.AsFloat := vlDataAtual;
          rec.Post;
        end;

        vpEmContingencia := false;

        PlStatSefaz.Color := clGreen;
      end
      else
      begin
        MNotificacoes.Lines.Add('Serviço indisponível.');
        if vRetornoErro <> '' then
          MNotificacoes.Lines.Add('Mensagem: ' + vRetornoErro);

        if Length(vlxMotivo) > 0 then
          MNotificacoes.Lines.Add('Mensagem: ' + vlxMotivo);

        if rec.IsEmpty then
        begin
          rec.Append;
          recrecdthoraentrada.AsFloat := vlDataAtual;
          recrecmotivo.AsString := 'Falha de comunicação com servidores da SEFAZ.';
          rec.Post;
        end;

        vpEmContingencia := true;
        PlStatSefaz.Color := clRed;
      end;
    end;
  finally
    MNotificacoes.Lines.Add('Fim da verificação.' + DateTimeToStr(Now));
  end;
end;

function TfGerContingenciaNFCe.GeraNomeArqNFCe(vMesChave: string; vFlaCodigo: String = '1'): string;
var
  vlArqNFCe: String;
  vData: Double;
  vlCNPJ: String;
  vlNrNFCe, vlNrSer: Integer;
  vlUfCod: string;
begin
  vlArqNFCe := '';

  try

    (* Tenta encontrar arquivo da NFCe com geração NORMAL *)
    vlCNPJ := SomenteNumeros(Self.cfgetddoc1.AsString);
    vlUfCod := Copy(Self.cfgcddcodigo.AsString, 1, 2);

    vlNrNFCe := NFCeContimesnumero.AsInteger;

    if NFCeContimesserie.AsString <> '' then
      vlNrSer := NFCeContimesserie.AsInteger
    else
      vlNrSer := 1;

    vlCNPJ := SomenteNumeros(vlCNPJ);
    if NFCeContitemcodigo.AsInteger=4 then
    begin
     vData := NFCeContimesregistro.AsFloat
    end
    else
    begin

    if NFCeContimesdatanfe.AsFloat = 0 then
      vData := NFCeContimesregistro.AsFloat
    else
      vData := NFCeContimesdatanfe.AsFloat;
    end;

    // nome da nota com emissao normal
    vlArqNFCe := Copy(vlUfCod, 1, 2);
    vlArqNFCe := vlArqNFCe + formatdatetime('yymm', vData);
    vlArqNFCe := vlArqNFCe + vlCNPJ;
    vlArqNFCe := vlArqNFCe + '65';
    vlArqNFCe := vlArqNFCe + FormatFloat('000', vlNrSer);
    vlArqNFCe := vlArqNFCe + FormatFloat('000000000', vlNrNFCe);
    if NFCeContitemcodigo.AsInteger = 50 then
    begin
      vlArqNFCe := vlArqNFCe + '9';
    end
    else
    begin
      vlArqNFCe := vlArqNFCe + '1';
    end;
    vlArqNFCe := vlArqNFCe + FormatFloat('00000000', vlNrNFCe);
    vlArqNFCe := vlArqNFCe + Modulo11(Trim(vlArqNFCe));
    // vlArqNFCe := vlArqNFCe + '-nfe.xml';

  finally
    Result := vlArqNFCe;
  end;
end;

procedure TfGerContingenciaNFCe.VerificaNFCeProtocoloEmitidas;
var
  VaaaammNFCe: String;
  vArqNFCe: String;
  VProtocoloNFe: String;
  vlCStat: Integer;
  vlxMotivo: String;
  vlDataEmissao: TDate;
  vRetornoErro: String;
  vNovaChave: String;

  vEmissaoNFCe: TDate;
  vlQtNotasValidadas: Integer;
  vlQtNotasPendentes: Integer;
begin
  vlCStat := 0;
  vRetornoErro := '';

  NFCeEmitidas.close;
  NFCeEmitidas.Open;
  vlQtNotasValidadas := 0;
  vlQtNotasPendentes := 0;
  while not NFCeEmitidas.Eof do
  begin
    vEmissaoNFCe := NFCeEmitidasmesdatanfe.AsFloat;
    AjustaCaminhoGeralNF(vEmissaoNFCe);

    VaaaammNFCe := vpPastaPrincipal + 'arqnfces' + '\' + formatdatetime('yyyymm', vEmissaoNFCe);
    vArqNFCe := VaaaammNFCe + '\' + NFCeEmitidasmeschavenfe.AsString + '-nfe.xml';

    if not FileExists(vArqNFCe) then
    begin

      if NFCeEmitidastemcodigo.AsInteger = 50 then
      begin

        if ModuloNFCe('GerarXMLCont', '1', NFCeEmitidasmeschave.AsString, '1') then
        begin

        end;

      end;

      MNotificacoes.Lines.Add('            Erro: Arquivo ' + vArqNFCe + ' não localizado.');
      NFCeEmitidas.Next;
    end
    else
    begin

      ACBrNFe.NotasFiscais.Clear;
      ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;

      ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);

      if ACBrNFe.NotasFiscais.Count > 0 then
      begin

        if ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt = '' then
        begin
          MNotificacoes.Lines.Add('**** Protoco não localizado na nota: ' + vArqNFCe);
        end
        else
        begin
          vlQtNotasValidadas := vlQtNotasValidadas + 1;

        end;

      end
      else
      begin
        ShowMessage(vArqNFCe);
      end;

      NFCeEmitidas.Next;
    end;
  end;

  MNotificacoes.Lines.Add('');
  MNotificacoes.Lines.Add('Protocolos conferidos: ' + Inttostr(vlQtNotasValidadas) + ' de ' + Inttostr(NFCeEmitidas.RecordCount));
  MNotificacoes.Lines.Add('Analise de protocolos concluída.');

end;

function TfGerContingenciaNFCe.ModuloNFCe(vfuncao: string; vTrmCodigo: string; vMesChave: string; vClbCodigo: string; vEmails: string = ''): Boolean;
var
  ModuloNFCe: Tmodulonfce;
  vlRetorno: Boolean;
  vlPackNFCe: Cardinal;
  Acesso: TAcesso;
begin
  Acesso.IdAcesso := -1;
  Acesso.usuario := 1;
  Acesso.Filial := 1;
  Acesso.Terminal := 1;

  Result := false;
  vlPackNFCe := 0;
  vlPackNFCe := LoadPackage('modulos\mnfegourmet.bpl');
  if vlPackNFCe <> 0 then
    @ModuloNFCe := GetProcAddress(vlPackNFCe, PChar('modulonfce'));

  if Assigned(ModuloNFCe) then
  begin
    vlRetorno := ModuloNFCe(Application, Self.zcone, vMesChave, vfuncao, Acesso, true, true, vEmails);
    Result := vlRetorno;

  end;
  DoUnLoadPackage(Application, vlPackNFCe);
End;

procedure TfGerContingenciaNFCe.VerficarNFCePendentes(vMesChave: Integer; vEmissaoNFCe: TDate);
const
  PESO = '4329876543298765432987654329876543298765432';
var
  VaaaammNFCe: String;
  vArqNFCe: String;
  vArqNFCeVelho: String;
  vArqNFCePendente: string;
  VProtocoloNFe: String;

  vlxMotivo: String;
  vlDataEmissao: TDate;
  vRetornoErro: String;
  vNovaChave: String;

  searchResult: TSearchRec;
  vlNovaChave: string;
  vlChaveAntiga: string;
  I, j, Digito: Integer;
  vlChaveRetornada: string;
  vArqNFCeContiNovo: string;
  vlCStat: Integer;

  vChaveNFCe: string;

begin

  vRetornoErro := '';

  AjustaCaminhoGeralNF(vEmissaoNFCe);

  vNovaChave := Copy(GeraNomeArqNFCe(Inttostr(vMesChave)), 1, 34) + '*.xml';

  VaaaammNFCe := vpPastaPrincipal + 'arqnfces' + '\' + formatdatetime('yyyymm', vEmissaoNFCe);

  vArqNFCePendente := VaaaammNFCe + '\' + vNovaChave;

  if findfirst(vArqNFCePendente, faAnyFile, searchResult) = 0 then
  begin
    repeat
      vArqNFCe := VaaaammNFCe + '\' + searchResult.Name;
      vNovaChave := Copy(searchResult.Name, 1, 44);

      if NFCeContitemcodigo.AsInteger = 4 then
      begin
        if FileExists(vArqNFCe) then
        begin
        vArqNFCeVelho:=vArqNFCe;

          ACBrNFe.NotasFiscais.Clear;
          ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);

          ACBrNFe.Consultar;

          vlCStat := ACBrNFe.WebServices.Consulta.cStat;

          if vlCStat = 562 then
          begin

           vlCStat := ACBrNFe.WebServices.Consulta.cStat;
              vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
              VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
              vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;


            vlChaveRetornada := Copy(vlxMotivo, 2, 100);
            vlChaveRetornada := Copy(vlChaveRetornada, 1, Length(vlChaveRetornada) - 1);

            MNotificacoes.Lines.Add('Nova Chave: ' + vlChaveRetornada + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));

            vNovaChave := vlChaveRetornada;
            vChaveNFCe := vlChaveRetornada;
            // ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID:='NFe'+vlChaveRetornada;
            ACBrNFe.NotasFiscais.Items[0].NFe.Ide.cNF := StrToInt(Copy(vlChaveRetornada, 36, 8));
            vEmissaoNFCe := NFCeContimesemissao.AsDateTime;
            AjustaCaminhoGeralNF(vEmissaoNFCe);

            VaaaammNFCe := vpPastaPrincipal + 'arqnfces' + '\' + formatdatetime('yyyymm', vEmissaoNFCe);
            vArqNFCe := VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml';

            if Copy(vChaveNFCe, 35, 1) = '1' then
            begin
              ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID := 'NFe' + vlChaveRetornada;

              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.tpEmis := teNormal;
              ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.tpEmis := teNormal;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dhCont := 0; // recrecdthoraentrada.AsFloat;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.xJust := '';

              if FileExists(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml') then
              begin
               // ACBrNFe.NotasFiscais.Assinar;
               // RenameFile(vArqNFCeVelho, VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                MNotificacoes.Lines.Add('Renomear: ' + vArqNFCe + ' para: ' + VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.NotasFiscais.Clear;
                ACBrNFe.NotasFiscais.LoadFromFile(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.Consultar;

              end
              else
              begin

                RenameFile(vArqNFCeVelho, VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                MNotificacoes.Lines.Add('Renomear: ' + vArqNFCe + ' para: ' + VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.NotasFiscais.Clear;
                ACBrNFe.NotasFiscais.LoadFromFile(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.Consultar;

                // ACBrNFe.NotasFiscais.GravarXML(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
              end;



            end
            else
            begin

               qConsulta.close;
              qConsulta.SQL.Text := 'UPDATE mes SET ';
              qConsulta.SQL.Add('tdfcodigo = ''65'', ');
              qConsulta.SQL.Add('meschavenfe = ''' + vlChaveRetornada + ''' ,');
              qConsulta.SQL.Add('temcodigo =50 ');
              qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
              qConsulta.ExecSQL;



             { ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID := 'NFe' + vlChaveRetornada;

              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.tpEmis := teContingencia;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.cNF:= strtoint(copy(vlChaveRetornada,36,8));

              ACBrNFe.Configuracoes.Geral.FormaEmissao := teContingencia;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.tpEmis := teContingencia;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dhCont := 0; // recrecdthoraentrada.AsFloat;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.xJust := '';}



              // ACBrNFe.NotasFiscais.GerarNFe;
              // .GravarXML(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');

              if FileExists(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml') then
              begin
                ACBrNFe.NotasFiscais.Assinar;
                RenameFile(vArqNFCeVelho, VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                MNotificacoes.Lines.Add('Renomear: ' + vArqNFCe + ' para: ' + VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.NotasFiscais.Clear;
                ACBrNFe.NotasFiscais.LoadFromFile(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.Consultar;

              end
              else
              begin

                RenameFile(vArqNFCeVelho, VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                MNotificacoes.Lines.Add('Renomear: ' + vArqNFCe + ' para: ' + VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.NotasFiscais.Clear;
                ACBrNFe.NotasFiscais.LoadFromFile(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.Consultar;

                // ACBrNFe.NotasFiscais.GravarXML(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
              end;






              // ACBrNFe.NotasFiscais.Assinar;




            end;

                qConsulta.close;
              qConsulta.SQL.Text := 'UPDATE mes SET ';
              qConsulta.SQL.Add('tdfcodigo = ''65'', ');
              qConsulta.SQL.Add('meschavenfe = ''' + vlChaveRetornada + ''' ');
              qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
              qConsulta.ExecSQL;

                MNotificacoes.Lines.Add('Chave ajustada no banco: ' +vlChaveRetornada);

            vlChaveAntiga := ACBrNFe.NotasFiscais.Items[0].NomeArq;

            if vlChaveAntiga <> VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml' then
            begin
              RenameFile(vlChaveAntiga, VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
              vArqNFCe := VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml';
              vlCStat := 100;
            end;

            ACBrNFe.NotasFiscais.Clear;
            ACBrNFe.NotasFiscais.LoadFromFile(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');

            if FileExists(vArqNFCe) then
            begin
              if vlChaveAntiga <> VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml' then
              begin
                ACBrNFe.Consultar;
              end;

              vlCStat := ACBrNFe.WebServices.Consulta.cStat;
              vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
              VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
              vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;

              ACBrNFe.Consultar;
              vlCStat := ACBrNFe.WebServices.Consulta.cStat;
              vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
              VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
              vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;

              MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));

            end;

            vArqNFCeContiNovo := VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml';
            vMesChave := NFCeContimeschave.AsInteger;

            qConsulta.close;
            qConsulta.SQL.Text := 'UPDATE mes SET ';
            qConsulta.SQL.Add('tdfcodigo = ''65'', ');
            qConsulta.SQL.Add('meschavenfe = ''' + vlChaveRetornada + ''' ');
            qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
            qConsulta.ExecSQL;

            ACBrNFe.Consultar;
            vlCStat := ACBrNFe.WebServices.Consulta.cStat;
            vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
            MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));

          end
          else
          begin

            VProtocoloNFe := '';
            vlDataEmissao := null;

            VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;

            if VProtocoloNFe <> '' then
            begin

              vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
              vlChaveRetornada := Copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);

              try
                qConsulta.close;
                qConsulta.SQL.Text := 'UPDATE mes SET ';
                qConsulta.SQL.Add('tdfcodigo = ''65'', ');
                qConsulta.SQL.Add('mesdatanfe = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
                qConsulta.SQL.Add('mesregistro = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
                qConsulta.SQL.Add('mesprotocolo = ''' + VProtocoloNFe + ''', ');
                qConsulta.SQL.Add('temcodigo = 5, ');
                qConsulta.SQL.Add('meschavenfe = ''' + vlChaveRetornada + ''' ');
                qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
                qConsulta.ExecSQL;

                mesxml.close;
                mesxml.ParamByName('meschave').AsInteger := NFCeContimeschave.AsInteger;
                mesxml.ParamByName('flacodigo').AsInteger := NFCeContiflacodigo.AsInteger;
                mesxml.Open;

                if mesxml.IsEmpty then
                  mesxml.Append
                else
                  mesxml.Edit;

                mesxmlmesarqxml.LoadFromFile(vArqNFCe);
                mesxmlflacodigo.AsInteger := NFCeContiflacodigo.AsInteger;
                mesxmlmeschave.AsInteger := NFCeContimeschave.AsInteger;

                mesxml.Post;

              except
                MNotificacoes.Lines.Add('Erro SQL: ' + qConsulta.SQL.Text);
              end;
              MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro);

            end;

          end;
        end;

      end;
      begin

      end;

    until FindNext(searchResult) <> 0;

  end;

end;

procedure TfGerContingenciaNFCe.VerificaNFCeContingencia;
  procedure ReenviaNFCeContingencia(vMesChave: Integer; vChaveNFCe: String; vEmissaoNFCe: TDate; vConsultaNFCe: Boolean = false);

  const
    PESO = '4329876543298765432987654329876543298765432';
  var
    VaaaammNFCe: String;
    vArqNFCe: String;
    vArqNFCeVelho: String;
    vArqNFCeConti: string;
    VProtocoloNFe: String;
    vlCStat: Integer;
    vlxMotivo: String;
    vlDataEmissao: TDate;
    vRetornoErro: String;
    vNovaChave: String;

    retorno: String;
    arq: String;
    vlpesquisa: string;

    searchResult: TSearchRec;
    vlNovaChave: string;
    vlChaveAntiga: string;
    I, j, Digito: Integer;
    vlChaveRetornada: string;
    vArqNFCeContiNovo: string;

  begin
    vlCStat := 0;
    vRetornoErro := '';

    AjustaCaminhoGeralNF(vEmissaoNFCe);

    vNovaChave := GeraNomeArqNFCe(Inttostr(vMesChave));

    VaaaammNFCe := vpPastaPrincipal + 'arqnfces' + '\' + formatdatetime('yyyymm', vEmissaoNFCe);

    vArqNFCe := VaaaammNFCe + '\' + vChaveNFCe + '-nfe.xml';
    vArqNFCeVelho:=vArqNFCe;

    vArqNFCeConti := VaaaammNFCe + '\' + vNovaChave + '-nfe.xml';

    vlpesquisa := VaaaammNFCe + '\' + Copy(vChaveNFCe, 1, 34) + '1' + '*-nfe.xml';
    if findfirst(vlpesquisa, faAnyFile, searchResult) = 0 then
    begin
      repeat
        vArqNFCe := VaaaammNFCe + '\' + searchResult.Name;
        vChaveNFCe := Copy(searchResult.Name, 1, 44);
        vNovaChave := vChaveNFCe;
        Break;
      until FindNext(searchResult) <> 0;

      // Must free up resources used by these successful finds
      FindClose(searchResult);
    end;

    if NFCeContitemcodigo.AsInteger = 50 then
    begin
      if not FileExists(vArqNFCe) then
      begin
        vEmissaoNFCe := NFCeContimesemissao.AsDateTime;
        AjustaCaminhoGeralNF(vEmissaoNFCe);

        VaaaammNFCe := vpPastaPrincipal + 'arqnfces' + '\' + formatdatetime('yyyymm', vEmissaoNFCe);

        ModuloNFCe('GerarXMLCont', '1', NFCeContimeschave.AsString, '1');

      end;
    end;

    if NFCeContitemcodigo.AsInteger = 50 then
    begin

      ACBrNFe.NotasFiscais.Clear;
      ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;
      if Copy(vChaveNFCe, 35, 1) = '1' then
      begin
        if FileExists(vArqNFCe) then
        begin
          ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);
        end;
      end
      else
      begin

        if FileExists(vArqNFCe) then
        begin

          ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);
          ACBrNFe.NotasFiscais.Items[0].NFe.Ide.cNF := GerarCodigoDFe(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);
          vlNovaChave := Copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 35) + IntToStrZero(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.cNF, 8);

          for I := 1 to 43 do
            j := j + StrToInt(Copy(vlNovaChave, I, 1)) * StrToInt(Copy(PESO, I, 1));
          Digito := 11 - (j mod 11);
          if (j mod 11) < 2 then
            Digito := 0;

          vlNovaChave := vlNovaChave + Inttostr(Digito);

          // ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID:='NFe'+vlNovaChave;
          ACBrNFe.NotasFiscais.Assinar;

          vlNovaChave := Copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 100);
          vArqNFCe := VaaaammNFCe + '\' + vlNovaChave + '-nfe.xml';
          vChaveNFCe := vlNovaChave;

          ACBrNFe.Consultar;
          vlCStat := ACBrNFe.WebServices.Consulta.cStat;
          vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
          MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));

          if vlCStat = 562 then
          begin

            vlChaveRetornada := Copy(vlxMotivo, 2, 100);
            vlChaveRetornada := Copy(vlChaveRetornada, 1, Length(vlChaveRetornada) - 1);

            vNovaChave := vlChaveRetornada;
            vChaveNFCe := vlChaveRetornada;

            MNotificacoes.Lines.Add('Nova Chave: ' + vlChaveRetornada + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));

            // ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID:='NFe'+vlChaveRetornada;
            ACBrNFe.NotasFiscais.Items[0].NFe.Ide.cNF := StrToInt(Copy(vlChaveRetornada, 36, 8));
            vEmissaoNFCe := NFCeContimesemissao.AsDateTime;
            AjustaCaminhoGeralNF(vEmissaoNFCe);

            VaaaammNFCe := vpPastaPrincipal + 'arqnfces' + '\' + formatdatetime('yyyymm', vEmissaoNFCe);
            vArqNFCe := VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml';

            if Copy(vChaveNFCe, 35, 1) = '1' then
            begin
              ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID := 'NFe' + vlChaveRetornada;

              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.tpEmis := teNormal;
              ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.tpEmis := teNormal;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dhCont := 0; // recrecdthoraentrada.AsFloat;
              ACBrNFe.NotasFiscais.Items[0].NFe.Ide.xJust := '';
              if FileExists(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml') then
              begin
                ACBrNFe.NotasFiscais.Assinar;

                RenameFile(vArqNFCeVelho, VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                MNotificacoes.Lines.Add('Renomear: ' + vArqNFCe + ' para: ' + VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.NotasFiscais.Clear;
                ACBrNFe.NotasFiscais.LoadFromFile(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.Consultar;

              end
              else
              begin
                RenameFile(vArqNFCeVelho, VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                MNotificacoes.Lines.Add('Renomear: ' + vArqNFCe + ' para: ' + VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.NotasFiscais.Clear;
                ACBrNFe.NotasFiscais.LoadFromFile(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
                ACBrNFe.Consultar;

                // ACBrNFe.NotasFiscais.GravarXML(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
              end;

            end
            else
            begin
              ACBrNFe.NotasFiscais.Assinar;
            end;

            qConsulta.close;
              qConsulta.SQL.Text := 'UPDATE mes SET ';
              qConsulta.SQL.Add('tdfcodigo = ''65'', ');
              qConsulta.SQL.Add('meschavenfe = ''' + vlChaveRetornada + ''' ');
              qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
              qConsulta.ExecSQL;

                MNotificacoes.Lines.Add('Chave ajustada no banco: ' +vlChaveRetornada);

            vlChaveAntiga := ACBrNFe.NotasFiscais.Items[0].NomeArq;

            if vlChaveAntiga <> VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml' then
            begin
              RenameFile(vlChaveAntiga, VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');
              vArqNFCe := VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml';
              vlCStat := 100;
            end;

            ACBrNFe.NotasFiscais.Clear;
            ACBrNFe.NotasFiscais.LoadFromFile(VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml');

            if FileExists(vArqNFCe) then
            begin
              if vlChaveAntiga <> VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml' then
              begin
                ACBrNFe.Consultar;
              end;

              vlCStat := ACBrNFe.WebServices.Consulta.cStat;
              vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
              VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
              vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;

              ACBrNFe.Consultar;
              vlCStat := ACBrNFe.WebServices.Consulta.cStat;
              vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
              VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
              vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;

              MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));

            end;

            vArqNFCeContiNovo := VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml';
            vMesChave := NFCeContimeschave.AsInteger;

            qConsulta.close;
            qConsulta.SQL.Text := 'UPDATE mes SET ';
            qConsulta.SQL.Add('tdfcodigo = ''65'', ');
            qConsulta.SQL.Add('meschavenfe = ''' + vlChaveRetornada + ''' ');
            qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
            qConsulta.ExecSQL;

            ACBrNFe.Consultar;
            vlCStat := ACBrNFe.WebServices.Consulta.cStat;
            vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
            MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));



          end;







          // ACBrNFe.NotasFiscais.GravarXML(VaaaammNFCe + '\' + vlNovaChave + '-nfe.xml' )

        end
        else
        begin

          ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCeConti);
          ACBrNFe.NotasFiscais.Items[0].NFe.Ide.cNF := GerarCodigoDFe(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);
          vlNovaChave := ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID;
        end;

      end;
      if ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt <> '' then
      begin
        MNotificacoes.Lines.Add('Protoco já na nota: ' + ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt);
        vConsultaNFCe := true;

      end;

      try
        if vConsultaNFCe then
        begin
          ACBrNFe.Consultar;
          vlCStat := ACBrNFe.WebServices.Consulta.cStat;
          vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
          MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));

          if vlCStat = 100 then
          begin
            if FileExists(vArqNFCeConti) then
            begin
              DeleteFile(vArqNFCeConti);
            end;
            vArqNFCeConti := vArqNFCe;

            VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
            vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;

            ACBrNFe.NotasFiscais.GravarXML(vArqNFCeConti);

            try
              qConsulta.close;
              qConsulta.SQL.Text := 'UPDATE mes SET ';
              qConsulta.SQL.Add('tdfcodigo = ''65'', ');
              qConsulta.SQL.Add('mesdatanfe = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
              qConsulta.SQL.Add('mesregistro = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
              qConsulta.SQL.Add('mesprotocolo = ''' + VProtocoloNFe + ''', ');
              qConsulta.SQL.Add('temcodigo = 5, ');
              qConsulta.SQL.Add('meschavenfe = ''' + vNovaChave + ''' ');
              qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
              qConsulta.ExecSQL;
            except
              MNotificacoes.Lines.Add('Erro SQL: ' + qConsulta.SQL.Text);
            end;

          end
          else if vlCStat = 150 then
          begin
            VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
            vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;

            try
              qConsulta.close;
              qConsulta.SQL.Text := 'UPDATE mes SET ';
              qConsulta.SQL.Add('tdfcodigo = ''65'', ');
              qConsulta.SQL.Add('mesdatanfe = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
              qConsulta.SQL.Add('mesregistro = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
              qConsulta.SQL.Add('mesprotocolo = ''' + VProtocoloNFe + ''', ');
              qConsulta.SQL.Add('temcodigo = 5, ');
              qConsulta.SQL.Add('meschavenfe = ''' + vChaveNFCe + ''' ');
              qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
              qConsulta.ExecSQL;
            except
              MNotificacoes.Lines.Add('Erro SQL: ' + qConsulta.SQL.Text);
            end;

            try
              if FileExists(vArqNFCe) then
                if NFCeConti.Active then
                begin

                  mesxml.close;
                  mesxml.ParamByName('meschave').AsInteger := NFCeContimeschave.AsInteger;
                  mesxml.ParamByName('flacodigo').AsInteger := NFCeContiflacodigo.AsInteger;
                  mesxml.Open;

                  if mesxml.IsEmpty then
                    mesxml.Append
                  else
                    mesxml.Edit;

                  mesxmlmesarqxml.LoadFromFile(vArqNFCe);
                  mesxmlflacodigo.AsInteger := NFCeContiflacodigo.AsInteger;
                  mesxmlmeschave.AsInteger := NFCeContimeschave.AsInteger;

                  mesxml.Post;

                end;
            except
            end;

            MNotificacoes.Lines.Add('            ' + 'Protocolo: ' + ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt + ' ' +
              DateTimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.dhRecbto));

          end
          else
          begin
            if FileExists(vArqNFCe) then
            begin
              ACBrNFe.Enviar(0, false, true);
              // ACBrNFe.Consultar;
              vlCStat := ACBrNFe.WebServices.Consulta.cStat;
              vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
              VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
              vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
              if VProtocoloNFe <> '' then
              begin
                vlCStat := 150;

              end;

              MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));

            end;

          end;

        end
        else
        begin
          if FileExists(vArqNFCe) then
          begin
            ACBrNFe.Enviar(0, false, true);
            // ACBrNFe.Consultar;
            vlCStat := ACBrNFe.WebServices.Consulta.cStat;
            vlxMotivo := ACBrNFe.WebServices.Consulta.xMotivo;
            VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
            vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;

            MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));
          end;
        end;
      except
        on e: Exception do
        begin
          vRetornoErro := e.Message;

          vlCStat := ACBrNFe.WebServices.Enviar.cStat;
          vlxMotivo := ACBrNFe.WebServices.Enviar.xMotivo;
        end;
      end;

    end;

    { if vlCStat = 0 then
      begin }

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;
    ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);
    if ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt <> '' then
    begin
      MNotificacoes.Lines.Add('Protoco já na nota: ' + ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt);
      vConsultaNFCe := true;
    end;
    try
      if vConsultaNFCe then
      begin
        ACBrNFe.Consultar;
      end
      else
      begin
        ACBrNFe.Enviar(0, false, true);
      end;
    except
      on e: Exception do
      begin
        vRetornoErro := e.Message;

        vlCStat := ACBrNFe.WebServices.Enviar.cStat;
        vlxMotivo := ACBrNFe.WebServices.Enviar.xMotivo;
      end;
    end;

    if vlChaveAntiga <> VaaaammNFCe + '\' + vlChaveRetornada + '-nfe.xml' then
    begin
      if FileExists(vArqNFCe) then
      begin
        vlCStat := 100;
      end;

    end;

    sleep(200);
    MNotificacoes.Lines.Add('Chave: ' + vArqNFCe + ' Retorno: ' + vRetornoErro + ' Status: ' + Inttostr(vlCStat));
    if vlCStat = 0 then
    begin
      if FileExists(vArqNFCe) then
      begin

        ACBrNFe.NotasFiscais.Clear;
        ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;

        ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);

        if ACBrNFe.NotasFiscais.Count > 0 then
        begin
          if ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt = '' then
          begin
            ACBrNFe.Enviar(0, false, true);
          end;
          vlCStat := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.cStat;
          vlxMotivo := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.xMotivo;
          MNotificacoes.Lines.Add('Protoco já na nota: ' + ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt);
        end
        else
        begin
          vlCStat := 9999;
          MNotificacoes.Lines.Add('ERRO - Sem protoclo: ' + vArqNFCe);
          ACBrNFe.Enviar(0, false, true);
        end;
      end
      else
      begin

        if ModuloNFCe('GerarXMLCont', '1', Inttostr(vMesChave), '1') then
        begin

        end;
      end;

      MNotificacoes.Lines.Add('ERRO - Arquivo não localizado: ' + vArqNFCe);
    end;

    if (vlCStat = 539) { or (vlCStat = 9999) } then
    begin

      vChaveNFCe := GeraNomeArqNFCe(Inttostr(vMesChave));
      VaaaammNFCe := vpPastaPrincipal + 'arqnfces' + '\' + formatdatetime('yyyymm', vEmissaoNFCe);
      vArqNFCe := VaaaammNFCe + '\' + vChaveNFCe + '-nfe.xml';

      if FileExists(vArqNFCe) then
      begin

        ACBrNFe.NotasFiscais.Clear;
        ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;

        ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);

        if ACBrNFe.NotasFiscais.Count > 0 then
        begin

          VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
          vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
          try
            qConsulta.close;
            qConsulta.SQL.Text := 'UPDATE mes SET ';
            qConsulta.SQL.Add('tdfcodigo = ''65'', ');
            qConsulta.SQL.Add('mesdatanfe = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
            qConsulta.SQL.Add('mesregistro = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
            qConsulta.SQL.Add('mesprotocolo = ''' + VProtocoloNFe + ''', ');
            qConsulta.SQL.Add('temcodigo = 5, ');
            qConsulta.SQL.Add('meschavenfe = ''' + vChaveNFCe + ''' ');
            qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
            qConsulta.ExecSQL;
          except
            MNotificacoes.Lines.Add('Erro SQL: ' + qConsulta.SQL.Text);
          end;

          try
            if FileExists(vArqNFCe) then
              if NFCeConti.Active then
              begin

                mesxml.close;
                mesxml.ParamByName('meschave').AsInteger := NFCeContimeschave.AsInteger;
                mesxml.ParamByName('flacodigo').AsInteger := NFCeContiflacodigo.AsInteger;
                mesxml.Open;

                if mesxml.IsEmpty then
                  mesxml.Append
                else
                  mesxml.Edit;

                mesxmlmesarqxml.LoadFromFile(vArqNFCe);
                mesxmlflacodigo.AsInteger := NFCeContiflacodigo.AsInteger;
                mesxmlmeschave.AsInteger := NFCeContimeschave.AsInteger;

                mesxml.Post;

              end;
          except
          end;

          MNotificacoes.Lines.Add('            ' + 'Protocolo: ' + ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt + ' ' +
            DateTimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.dhRecbto));

        end;
      end;

    end
    else if (vlCStat = 205) { or (vlCStat = 9999) } then
    begin

      VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
      vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
      try
        qConsulta.close;
        qConsulta.SQL.Text := 'UPDATE mes SET ';
        qConsulta.SQL.Add('tdfcodigo = ''65'', ');
        qConsulta.SQL.Add('mesdatanfe = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
        qConsulta.SQL.Add('mesregistro = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
        qConsulta.SQL.Add('mesprotocolo = ''' + VProtocoloNFe + ''', ');
        qConsulta.SQL.Add('temcodigo = 7, ');
        qConsulta.SQL.Add('meschavenfe = ''' + vChaveNFCe + ''' ');
        qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
        qConsulta.ExecSQL;
      except
        MNotificacoes.Lines.Add('Erro SQL: ' + qConsulta.SQL.Text);
      end;

      try
        if FileExists(vArqNFCe) then
          if NFCeConti.Active then
          begin

            mesxml.close;
            mesxml.ParamByName('meschave').AsInteger := NFCeContimeschave.AsInteger;
            mesxml.ParamByName('flacodigo').AsInteger := NFCeContiflacodigo.AsInteger;
            mesxml.Open;

            if mesxml.IsEmpty then
              mesxml.Append
            else
              mesxml.Edit;

            mesxmlmesarqxml.LoadFromFile(vArqNFCe);
            mesxmlflacodigo.AsInteger := NFCeContiflacodigo.AsInteger;
            mesxmlmeschave.AsInteger := NFCeContimeschave.AsInteger;

            mesxml.Post;

          end;
      except
      end;

      MNotificacoes.Lines.Add('            ' + 'Protocolo: ' + ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt + ' ' +
        DateTimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.dhRecbto));

    end;

    (* Duplicidade de NFC-e. Chama Consulta Status *)

    if (vlCStat = 204) { or (vlCStat = 9999) } then
    begin
      vChaveNFCe := GeraNomeArqNFCe(Inttostr(vMesChave));
      VaaaammNFCe := vpPastaPrincipal + 'arqnfces' + '\' + formatdatetime('yyyymm', vEmissaoNFCe);
      vArqNFCe := VaaaammNFCe + '\' + vChaveNFCe + '-nfe.xml';

      if FileExists(vArqNFCe) then
      begin

        ACBrNFe.NotasFiscais.Clear;
        ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;

        ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);

        if ACBrNFe.NotasFiscais.Count > 0 then
        begin

          VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.digVal;
        end;

      end;

      // ReenviaNFCeContingencia(vMesChave, vChaveNFCe, vEmissaoNFCe, true);
      Exit;
    end;

    (* Autorizada com Chave diferente. Captura essa NOVA CHAVE e Consulta Status *)
    { if vlCStat = 539 then
      begin
      MNotificacoes.Lines.Add('            Erro: ' + vlxMotivo);
      MNotificacoes.Lines.Add('            Verificando com chave principal...');
      vNovaChave := Trim(Copy(vlxMotivo, Pos('[', vlxMotivo) + 2, 44));
      ReenviaNFCeContingencia(vMesChave, vNovaChave, vEmissaoNFCe, true);
      Exit;
      end; }

    (* Emissão com data e hora atrazada. Chama Consulta Status *)
    if vlCStat = 704 then
    begin
      ReenviaNFCeContingencia(vMesChave, vChaveNFCe, vEmissaoNFCe, true);
      Exit;
    end;

    if vRetornoErro <> '' then
      MNotificacoes.Lines.Add('            Erro: ' + vRetornoErro)
    else
      MNotificacoes.Lines.Add('            Status NFC-e: ' + Inttostr(vlCStat) + ' - ' + vlxMotivo);

    MNotificacoes.Lines.Add('Status: ' + Inttostr(vlCStat));
    if (vlCStat = 100) Then
    begin

      VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
      vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
      try
        qConsulta.close;
        qConsulta.SQL.Text := 'UPDATE mes SET ';
        qConsulta.SQL.Add('tdfcodigo = ''65'', ');
        qConsulta.SQL.Add('mesdatanfe = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
        qConsulta.SQL.Add('mesregistro = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
        qConsulta.SQL.Add('mesprotocolo = ''' + VProtocoloNFe + ''', ');
        qConsulta.SQL.Add('temcodigo = 5, ');
        qConsulta.SQL.Add('meschavenfe = ''' + vChaveNFCe + ''' ');
        qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
        qConsulta.ExecSQL;
      except
        MNotificacoes.Lines.Add('Erro SQL: ' + qConsulta.SQL.Text);
      end;

      try
        if FileExists(vArqNFCe) then
          if NFCeConti.Active then
          begin

            mesxml.close;
            mesxml.ParamByName('meschave').AsInteger := NFCeContimeschave.AsInteger;
            mesxml.ParamByName('flacodigo').AsInteger := NFCeContiflacodigo.AsInteger;
            mesxml.Open;

            if mesxml.IsEmpty then
              mesxml.Append
            else
              mesxml.Edit;

            mesxmlmesarqxml.LoadFromFile(vArqNFCe);
            mesxmlflacodigo.AsInteger := NFCeContiflacodigo.AsInteger;
            mesxmlmeschave.AsInteger := NFCeContimeschave.AsInteger;

            mesxml.Post;

          end;
      except
      end;

      MNotificacoes.Lines.Add('            ' + 'Protocolo: ' + ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt + ' ' +
        DateTimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.dhRecbto));
    end
    else if (vlCStat = 150) then
    begin

      VProtocoloNFe := ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt;
      vlDataEmissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;

      try
        qConsulta.close;
        qConsulta.SQL.Text := 'UPDATE mes SET ';
        qConsulta.SQL.Add('tdfcodigo = ''65'', ');
        qConsulta.SQL.Add('mesdatanfe = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
        qConsulta.SQL.Add('mesregistro = ''' + Ajustadata(DateToStr(vlDataEmissao)) + ''', ');
        qConsulta.SQL.Add('mesprotocolo = ''' + VProtocoloNFe + ''', ');
        qConsulta.SQL.Add('temcodigo = 5, ');
        qConsulta.SQL.Add('meschavenfe = ''' + vChaveNFCe + ''' ');
        qConsulta.SQL.Add('WHERE meschave = ' + Inttostr(vMesChave));
        qConsulta.ExecSQL;
      except
        MNotificacoes.Lines.Add('Erro SQL: ' + qConsulta.SQL.Text);
      end;

      try
        if FileExists(vArqNFCe) then
          if NFCeConti.Active then
          begin

            mesxml.close;
            mesxml.ParamByName('meschave').AsInteger := NFCeContimeschave.AsInteger;
            mesxml.ParamByName('flacodigo').AsInteger := NFCeContiflacodigo.AsInteger;
            mesxml.Open;

            if mesxml.IsEmpty then
              mesxml.Append
            else
              mesxml.Edit;

            mesxmlmesarqxml.LoadFromFile(vArqNFCe);
            mesxmlflacodigo.AsInteger := NFCeContiflacodigo.AsInteger;
            mesxmlmeschave.AsInteger := NFCeContimeschave.AsInteger;

            mesxml.Post;

          end;
      except
      end;

      MNotificacoes.Lines.Add('            ' + 'Protocolo: ' + ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.NProt + ' ' +
        DateTimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.ProcNFe.dhRecbto));

    end;
    // end;
  end;

begin
  /// ///////////////////////////////////////////////////////////////////////////////
  //
  // Verificação de NFC-es que foram geradas em contingência
  //
  /// ///////////////////////////////////////////////////////////////////////////////

  if not vpEmContingencia then
  begin
    if conexao.Connected then
    begin

      NFCeConti.close;
      NFCeConti.Open;

      MNotificacoes.Lines.Add('');
      MNotificacoes.Lines.Add('Verificação de NFC-e em contingência iniciada.');

      if NFCeConti.IsEmpty then
      begin
        MNotificacoes.Lines.Add('Nenhuma NFC-e em contingência foi encontrada.');
        Exit;
      end;

      MNotificacoes.Lines.Add('Total NFC-e(s): ' + Inttostr(NFCeConti.RecordCount));

      while not NFCeConti.Eof do
      begin
        try
          MNotificacoes.Lines.Add('Verificando ' + Inttostr(NFCeConti.RecNo) + 'ª NFC-e');
          MNotificacoes.Lines.Add('            ' + 'Venda: ' + NFCeContimeschave.AsString + ' - Número: ' + NFCeContimesnumero.AsString);

          Application.ProcessMessages;

          VerficarNFCePendentes(NFCeContimeschave.AsInteger, NFCeContimesregistro.AsFloat);

          NFCeConti.Next;
        except
          on e: Exception do
          begin
            MNotificacoes.Lines.Add('Erro: ' + e.Message + '       ' + 'Venda: ' + NFCeContimeschave.AsString);
            NFCeConti.Next;
          end;

        end;
      end;

      NFCeConti.close;
      NFCeConti.Open;

      MNotificacoes.Lines.Add('');
      MNotificacoes.Lines.Add('Verificação de NFC-e em contingência iniciada.');

      if NFCeConti.IsEmpty then
      begin
        MNotificacoes.Lines.Add('Nenhuma NFC-e em contingência foi encontrada.');
        Exit;
      end;

      MNotificacoes.Lines.Add('Total NFC-e(s): ' + Inttostr(NFCeConti.RecordCount));

      while not NFCeConti.Eof do
      begin
        try
          MNotificacoes.Lines.Add('Verificando ' + Inttostr(NFCeConti.RecNo) + 'ª NFC-e');
          MNotificacoes.Lines.Add('            ' + 'Venda: ' + NFCeContimeschave.AsString + ' - Número: ' + NFCeContimesnumero.AsString);

          Application.ProcessMessages;

          ReenviaNFCeContingencia(NFCeContimeschave.AsInteger, NFCeContimeschavenfe.AsString, NFCeContimesregistro.AsFloat, true);

          NFCeConti.Next;
        except
          on e: Exception do
          begin
            MNotificacoes.Lines.Add('Erro: ' + e.Message + '       ' + 'Venda: ' + NFCeContimeschave.AsString);
            NFCeConti.Next;
          end;

        end;
      end;
      MNotificacoes.Lines.Add('');
      MNotificacoes.Lines.Add('Verificação concluída.');

    end;
  end;

end;

procedure TfGerContingenciaNFCe.NotificaVerficacaodePendente;
var
  vlCNPJ: String;
  vlPendente: Integer;
begin

  // Verifica se a internet esta ativa
  if not InternetAtiva then
  begin
    MNotificacoes.Lines.Add('Sem conexao com internet!');
    Exit;
  end
  else
    MNotificacoes.Lines.Add('Conectado com internet!');

  cfg.ParamByName('flacodigo').AsString := vpFilial;
  cfg.Open;
  // busca cnpj para ser chave de acesso da empresa
  vlCNPJ := SomenteNumeros(cfgetddoc1.AsString);
  try

    // conecta ao banco remoto
    mizioonline.Disconnect;
    mizioonline.Connect;
    MNotificacoes.Lines.Add('Conectado ao Banco Remoto!');
  except
    MNotificacoes.Lines.Add('Não conectou com o banco remoto!');

    Exit;
  end;

  try

    vlPendente := 0;

    NFCeEmitidas.close;
    NFCeEmitidas.Open;

    while not NFCeEmitidas.Eof do
    begin

      if NFCeEmitidastemcodigo.AsInteger = 4 then
      begin
        vlPendente := vlPendente + 1;
      end;

      NFCeEmitidas.Next;
    end;

    // salva registro da verificacao da contigencia
    mizio_gab.close;
    mizio_gab.Connection := mizioonline;
    mizio_gab.Params[0].AsString := vlCNPJ;
    mizio_gab.Open;

    if mizio_gab.IsEmpty then
      mizio_gab.Append
    else
      mizio_gab.Edit;

    mizio_gabmizio_gabdoc1.AsString := vlCNPJ;
    mizio_gabmizio_gabnome.AsString := cfgetdapelido.AsString;
    mizio_gabmizio_gabcontigencia.AsFloat := Date;
    mizio_gabmizio_gabpendentes.AsInteger := vlPendente;
    mizio_gab.Post;
    MNotificacoes.Lines.Add('Regitro de notificação salvo!');
  except
    MNotificacoes.Lines.Add('Não conseguiu salvar o reguistro!');

  end;
end;

procedure TfGerContingenciaNFCe.NotificaVerficacaodeContigencia;
var
  vlCNPJ: String;
  vlEmContingencia: Integer;
begin

  // Verifica se a internet esta ativa
  if not InternetAtiva then
  begin
    MNotificacoes.Lines.Add('Sem conexao com internet!');
    Exit;
  end
  else
    MNotificacoes.Lines.Add('Conectado com internet!');

  cfg.ParamByName('flacodigo').AsString := vpFilial;
  cfg.Open;
  // busca cnpj para ser chave de acesso da empresa
  vlCNPJ := SomenteNumeros(cfgetddoc1.AsString);
  try

    // conecta ao banco remoto
    mizioonline.Disconnect;
    mizioonline.Connect;
    MNotificacoes.Lines.Add('Conectado ao Banco Remoto!');
  except
    MNotificacoes.Lines.Add('Não conectou com o banco remoto!');

    Exit;
  end;

  try

    vlEmContingencia := 0;
    NFCeConti.close;
    NFCeConti.Open;
    while not NFCeConti.Eof do
    begin
      vlEmContingencia := vlEmContingencia + 1;

      NFCeConti.Next;
    end;

    // salva registro da verificacao da contigencia
    mizio_gab.close;
    mizio_gab.Connection := mizioonline;
    mizio_gab.Params[0].AsString := vlCNPJ;
    mizio_gab.Open;

    if mizio_gab.IsEmpty then
      mizio_gab.Append
    else
      mizio_gab.Edit;

    mizio_gabmizio_gabdoc1.AsString := vlCNPJ;
    mizio_gabmizio_gabnome.AsString := cfgetdapelido.AsString;
    mizio_gabmizio_gabcontigencia.AsFloat := Date;
    mizio_gabmizio_gabcontigencias.AsInteger := vlEmContingencia;
    mizio_gab.Post;
    MNotificacoes.Lines.Add('Regitro de notificação salvo!');
  except
    MNotificacoes.Lines.Add('Não conseguiu salvar o reguistro!');

  end;
end;

END.
