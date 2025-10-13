unit ufprincigourmet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Uni, Data.DB, DBAccess, MemData,

  UniProvider, MySQLUniProvider, Vcl.ExtCtrls, MemDS, VirtualTable,
  Vcl.StdCtrls,
  Vcl.Buttons, PngImageList, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.ActnMan, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.DBGrids,
  Types, IniFiles, uPegaBase, pngimage, Math, IdBaseComponent,
  UxTheme, Themes, System.ImageList, DASQLMonitor, ufuncoes,
  UniSQLMonitor, PngSpeedButton, Vcl.Imaging.jpeg,  Vcl.ExtDlgs, Vcl.Menus,
  Winapi.WinInet, DAScript, UniScript, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, DateUtils,
  ACBrBase, ACBrDFe, ACBrNFe, pcnConversaoNFe;

type
  TPageControlHelper = class helper for TPageControl

  public
    procedure UpdateTab2(Page: Vcl.ComCtrls.TTabSheet);
  end;

type
  TTimerThread = class(TThread)
  private
    FTickEvent: THandle;
  protected
    procedure Execute; override;
  public
    constructor Create(CreateSuspended: Boolean);
    destructor Destroy; override;
    procedure FinishThreadExecution;
  end;

type
  Tfprincigourmet = class(TForm)
    acoes: TActionManager;
    ini: TVirtualTable;
    iniaba: TStringField;
    inigrupo: TStringField;
    inibotao: TStringField;
    inidica: TStringField;
    iniformaabertura: TStringField;
    initamanhobotao: TStringField;
    iniarquivo: TStringField;
    cfg: TUniQuery;
    consulta: TUniQuery;
    clb: TUniQuery;
    paginas: TPageControl;
    cfgcfgcodigo: TIntegerField;
    cfgcfgidentificacao: TStringField;
    cfgcddcodigo: TStringField;
    Ativar: TTimer;
    TimerVerificaServidor: TTimer;
    trm: TUniQuery;
    trmtrmcodigo: TIntegerField;
    trmtrmidentificacao: TStringField;
    cfgcfgusanfe: TIntegerField;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    cfgcfgmodonfe: TIntegerField;
    trmtrmstatus: TIntegerField;
    iniimagem: TBlobField;
    iniordem: TIntegerField;
    inicgrupo: TStringField;
    Dini: TDataSource;
    uqMenus: TUniQuery;
    uqMenusmdpcodigo: TIntegerField;
    uqMenusmdpordem: TIntegerField;
    uqMenusmdpidentificacao: TStringField;
    uqMenusgrmcodigo: TIntegerField;
    uqMenusgrmidentificacao: TStringField;
    uqMenusbtmidentificacao: TStringField;
    uqMenusbtmdica: TStringField;
    uqMenusbtmformaabe: TIntegerField;
    uqMenusbtmtipobotao: TIntegerField;
    uqMenusbtmimagem: TBlobField;
    uqMenusbplnomearq: TStringField;
    uqMenusfranome: TStringField;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    flaflasigla: TStringField;
    flaetdcodigo: TIntegerField;
    UniSQLMonitor: TUniSQLMonitor;
    uqMenusbplfuncao: TStringField;
    mensagens: TStatusBar;
    plTopo: TPanel;
    plLogo: TPanel;
    Logo: TImage;
    plFerramentas: TPanel;
    btTrocardeUsuario: TPngSpeedButton;
    uqActs: TUniQuery;
    uqActsactformulario: TStringField;
    OpenTextFileDialog: TOpenTextFileDialog;
    PopupMenuProdutora: TPopupMenu;
    mnGravacaodeTestes: TMenuItem;
    mnIniciarGravacao: TMenuItem;
    erminarGravao1: TMenuItem;
    N1: TMenuItem;
    mnExecutarGravacao: TMenuItem;
    cfgetddoc1: TStringField;
    mno: TUniQuery;
    mnomnochave: TIntegerField;
    mnomnotexto: TStringField;
    mnomnoenvio: TDateTimeField;
    clbfnccodigo: TIntegerField;
    rln: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbatualizador: TIntegerField;
    rlnrlnchave: TIntegerField;
    rlnetddoc1: TStringField;
    rlnclbcodigo: TIntegerField;
    rlnrlnleitura: TDateTimeField;
    rlnmnochave: TIntegerField;
    plFundo: TPanel;
    cfgcfglogo: TBlobField;
    Dcfg: TDataSource;
    mes: TUniQuery;
    drn: TUniQuery;
    drndrnchave: TIntegerField;
    drnetddoc1: TStringField;
    drnmnochave: TIntegerField;
    regmno: TUniQuery;
    regmnomnochave: TIntegerField;
    regmnomnotexto: TStringField;
    regmnomnoenvio: TDateTimeField;
    regfdn: TUniQuery;
    regfdnfdnchave: TIntegerField;
    regfdnetddoc1: TStringField;
    regfdnfnccodigo: TIntegerField;
    mnTabelas: TMenuItem;
    MainMenu: TMainMenu;
    cfgcfgversao: TStringField;
    cfgcfgultimobackup: TDateTimeField;

    ACBrNFeNotas: TACBrNFe;
    cfgcfgnumecertif: TStringField;
    cfgcfgsenhacertificado: TStringField;
    cfgufssigla: TStringField;
    cfgcfgsenhacertificadoa1: TStringField;
    cfgcfgctacodigopix: TIntegerField;
    procedure CliqueDuploAjustarGrupo(Sender: TObject);
    procedure MostraListaBRR(pacote: string; modulo: string);

    procedure MostraLista(pacote: string; modulo: string; forma: string = '1'; titulo: string = ''; funcao: string = 'formu');
    procedure MostraListaCCO(pacote: string; modulo: string; vctacodigo: Integer; forma: string = '1'; titulo: string = '');
    procedure FormCreate(Sender: TObject);
    procedure ActLogOffExecute(Sender: TObject);
    procedure PageControlCloseButtonDrawTab(Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure PageControlCloseButtonMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PageControlCloseButtonMouseLeave(Sender: TObject);
    procedure PageControlCloseButtonMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PageControlCloseButtonMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AtivarTimer(Sender: TObject);
    procedure TimerVerificaServidorTimer(Sender: TObject);
    procedure paginasChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure MnuSairExecute(Sender: TObject);
    procedure ApplicationEventsException(Sender: TObject; e: Exception);
    procedure Logoff(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btTrocardeUsuarioClick(Sender: TObject);
    procedure btChatClick(Sender: TObject);
    procedure mnIniciarGravacaoClick(Sender: TObject);
    procedure erminarGravao1Click(Sender: TObject);
    procedure mnExecutarGravacaoClick(Sender: TObject);
    procedure mnTabelasClick(Sender: TObject);
    procedure ConexaoConnectionLost(Sender: TObject; Component: TComponent; ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
    procedure ConexaoAfterDisconnect(Sender: TObject);

  private
    // botão de fechar nas paginas

    FTimerThread: TTimerThread;

    RibbonTms: TPageControl;
    FCloseButtonMouseDownIndex: Integer;
    FCloseButtonShowPushed: Boolean;
    FAcesso: Integer;
    AcessoRec: TAcesso;
    FCloseButtonsRect: array of TRect;

    function LogarSistema: Boolean;
    function ValidaTerminal: Boolean;
    procedure ConectaBanco;
    procedure CriaBotaoAba;

    procedure MontaMenuPrincipal;
    procedure ExecutaMenu(Sender: TObject);

    procedure CarregaScripts;
    procedure CarregaTabelas;

    procedure AtivaPagina;
    procedure DoUnLoadPackage(AOwner: TComponent; Module: HModule);

    procedure AtualizaStatusBar;
    procedure SetAcesso(const Value: Integer);
    procedure MostraAcelerato(Sender: TObject);
    procedure MostraAlertaDesktop(Mensagem: String; Texto: string);
    procedure MostraIni;
    procedure VerificaBotoes;
    procedure carregadadospadroes;
    procedure VerificaValidadeCertificado;
    function LerConfiguracao: Boolean;
    procedure NotificaFaltaBackup;

    { Private declarations }
  public
    vpNomeBanco: String;
    vpPortaBanco: String;
    vpServidor: String;
    vpUsuario: String;
    vpSenha: String;

    vpDataModeloNFE: String;
    vpVersao: String;
    vpTentativasReconexoes: Integer;
    { Public declarations }
    pack: Integer;
    // vpTrmCodigo: string;
    vers: String;
    vlAutoAtualizar: String;
    vpCnpj: String;
  published
    property Acesso: Integer read FAcesso write SetAcesso;
  end;

  Tcarregatabelas = function(AOwner: TApplication; Conexao: TUniConnection; vPasta: string; vVersao: string = ''): string;

var
  fprincigourmet: Tfprincigourmet;

implementation

uses
  ufAlertaMsn, uftabelas, ACBrDFeSSL, ufRealizaBackup;

{$R *.dfm}

procedure MainForm(AOwner: TApplication);
begin
  fprincigourmet := Tfprincigourmet.Create(AOwner);
end;

exports MainForm;

procedure TPageControlHelper.UpdateTab2(Page: Vcl.ComCtrls.TTabSheet);
begin
  // Self.UpdateTab(Page);
  Tabs[Page.TabIndex] := Page.Caption + '     .';
end;

function PngToBmp(Png: TPngImage): TBitmap;
begin
  Result := TBitmap.Create;
  Result.Assign(Png);
end;

Procedure Tfprincigourmet.ConectaBanco;
Var
  arquini: TIniFile;
  vlMonitor: String;
  vlTipoBanco: String;
Begin
  // try
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vpNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
    vpServidor := ReadString('posi', 'servidor', '127.0.0.1');
    vpUsuario := ReadString('posi', 'usuario', 'root');
    vpSenha := ReadString('posi', 'senha', 'xda973');
    vpPortaBanco := ReadString('posi', 'portabanco', '3306');
    vlMonitor := ReadString('posi', 'monitor', '0');
    vlTipoBanco := ReadString('posi', 'tipo', 'mysql');
    vlAutoAtualizar := ReadString('posi', 'AutoAtualizar', '0');
    vpDataModeloNFE := ReadString('posi', 'DataModeloNFE', '02/08/2018');
    vpVersao := ReadString('posi', 'Versao', '00000');

    if vpNomeBanco = 'sulani' then
      vpSenha := 'riticami';

    AcessoRec.Terminal := ReadInteger('posi', 'terminal', 0);
  End;
  arquini.Free;

  (* Configuração para DBMonitor *)
  if vlMonitor = '1' then
    UniSQLMonitor.Active := true
  else
    UniSQLMonitor.Active := False;

  if lowercase(vlTipoBanco) = 'mysql' then
    Conexao.ProviderName := 'mySQL';


  Conexao.Connected := False;
  Conexao.Database := vpNomeBanco;
  Conexao.Username := vpUsuario;
  Conexao.Password := vpSenha;
  Conexao.Port := StrToInt(vpPortaBanco);
  Conexao.Server := vpServidor;

  Conexao.Connected := true;

  (* Chama execução dos Scripts e CSVs *)


  CarregaScripts;

  CarregaTabelas;

  carregadadospadroes;




End;

procedure Tfprincigourmet.carregadadospadroes;
var
  vlfnccodigo: string;
begin

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := 'SET NAMES latin1';
  consulta.ExecSQL;

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := 'select fnccodigo,fncidentificacao from fnc where fncidentificacao=' + quotedstr('GARÇOM');
  consulta.Open;

  if consulta.IsEmpty then
  begin
    consulta.Append;
    consulta.FieldByName('fncidentificacao').AsString := 'GARÇOM';
    consulta.Post;
  end;

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := 'select fnccodigo,fncidentificacao from fnc where fncidentificacao=' + quotedstr('PRODUÇÃO');
  consulta.Open;

  if consulta.IsEmpty then
  begin
    consulta.Append;
    consulta.FieldByName('fncidentificacao').AsString := 'PRODUÇÃO';
    consulta.Post;
  end;

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := 'select fnccodigo,fncidentificacao from fnc where fncidentificacao=' + quotedstr('ENTREGADOR');
  consulta.Open;

  if consulta.IsEmpty then
  begin
    consulta.Append;
    consulta.FieldByName('fncidentificacao').AsString := 'ENTREGADOR';
    consulta.Post;
  end;

  vlfnccodigo := consulta.FieldByName('fnccodigo').AsString;

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := 'select clbcodigo from clb where clbidentificacao=' + quotedstr('CARDAPIO');
  consulta.Open;

  if consulta.IsEmpty then
  begin
    consulta.Close;
    consulta.SQL.Text := '';
    consulta.SQL.add
      ('INSERT INTO clb(clbcodigo, fnccodigo, clbdescmaximo, clbsenha, clbativo, clbidentificacao, clbsuper, clbpercdispmulta, clbpercdispmora, clbpercdescrfi, clbliberacredito, clbatualizador, ');
    consulta.SQL.add
      ('clbperccomissao, clbsalvaima, clbsalvasaldo, flacodigo, clbsiphost, clbsipsenha, clbsipusuario, clbsipramal, etdcodigo, clbcodigobio, clbrelogio) VALUES ');
    consulta.SQL.add('(@clbcodigo, ' + vlfnccodigo + ', 0, ' + quotedstr('7690affd477d8d4') + ', ' + quotedstr('1') + ', ' + quotedstr('CARDAPIO') +
      ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0);');
    consulta.ExecSQL
  end;

end;

procedure Tfprincigourmet.ConexaoAfterDisconnect(Sender: TObject);
begin
  vpTentativasReconexoes := 0;
end;

procedure Tfprincigourmet.ConexaoConnectionLost(Sender: TObject; Component: TComponent; ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
begin
  while vpTentativasReconexoes < 6 do
  begin
    sleep(1000);
    RetryMode := rmReconnectExecute;
    if Conexao.Connected then
      Break;
    if vpTentativasReconexoes > 5 then
    begin
      ShowMessage('Falha de rede, conexão com servidor pedida!');
      Application.Terminate;
    end
    else
    begin
      ShowMessage('Tentativa ' + Inttostr(vpTentativasReconexoes) + ' de 6 de reconexão com sistema.' + #13#13 + 'VEREFIQUE SUA REDE!');
      vpTentativasReconexoes := vpTentativasReconexoes + 1;
    end;
  end;
end;

procedure Tfprincigourmet.ExecutaMenu(Sender: TObject);
var
  bplnome: string;
  franome: string;
  bplforma: string;
  bplFuncaoEspecial: String;
begin

  if (Sender is TAction) then
  begin
    bplnome := (Sender as TAction).Name;
    if pos('_', bplnome) > 0 then
      bplnome := copy(bplnome, 1, pos('_', bplnome) - 1);

    bplnome := trim(copy(bplnome, 5, 30));
    franome := 'fra' + trim(copy(bplnome, 2, 30));
    bplforma := (Sender as TAction).Name;
    bplforma := copy(bplforma, 4, 1);
    bplFuncaoEspecial := (Sender as TAction).HelpKeyword;
    if bplFuncaoEspecial = '' then
      bplFuncaoEspecial := 'formu';

    if ((Sender as TAction).Name = 'act2mcco') then
    begin
      MostraListaCCO(bplnome, franome, (Sender as TAction).Tag, bplforma, StringReplace((Sender as TAction).Caption, '|', '', [rfReplaceAll]));
    end
    else
    begin
      MostraLista(bplnome, franome, bplforma, StringReplace((Sender as TAction).Caption, '|', ' ', [rfReplaceAll]), bplFuncaoEspecial);
    end;

  end
  else if (Sender is TButton) then
  begin

    bplnome := (Sender as TButton).Name;
    bplnome := trim(copy(bplnome, 5, 30));

    bplforma := (Sender as TAction).Name;
    bplforma := copy(bplforma, 4, 1);

    MostraLista(bplnome, (Sender as TButton).Caption, bplforma, (Sender as TButton).Caption);

  end;

end;

procedure Tfprincigourmet.ActSairExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfprincigourmet.Logoff(Sender: TObject);
begin
  Ativar.Enabled := true;
end;

procedure Tfprincigourmet.mnExecutarGravacaoClick(Sender: TObject);
begin
  { if (VersaoWin <> wvWin10) then
    begin

    if MacroRecorder.IsRecording then
    MacroRecorder.StopRecording;

    OpenTextFileDialog.Execute;
    MacroRecorder.FileName := OpenTextFileDialog.FileName;
    MacroRecorder.PlayMacro;
    end; }
end;

procedure Tfprincigourmet.mnIniciarGravacaoClick(Sender: TObject);
begin
  { if (VersaoWin <> wvWin10) then
    begin

    if MacroRecorder.IsRecording then
    MacroRecorder.StopRecording;

    MacroRecorder.FileName := ExtractFilePath(Application.ExeName) + 'macros\' + Inttostr(AcessoRec.Usuario) + '_' + Inttostr(AcessoRec.Terminal) +
    formatdatetime('yyyymmddhhnnss', StrtoDateTime(agora(Application, Conexao))) + '.txt';

    MacroRecorder.RecordMacro;
    end; }

end;

procedure Tfprincigourmet.mnTabelasClick(Sender: TObject);
var
  vlTabelas: TstringList;
  i: Integer;
begin
  try
    Application.CreateForm(tftabelas, ftabelas);

    ftabelas.tabes.Open;
    vlTabelas := TstringList.Create;

    Self.consulta.Close;
    Self.consulta.SQL.Text := 'show tables';
    Self.consulta.Open;

    while not consulta.Eof do
    begin
      vlTabelas.add(consulta.Fields[0].AsString);

      consulta.Next;
    end;

    for i := 0 to vlTabelas.Count - 1 do
    begin
      consulta.Close;
      consulta.SQL.Text := 'select count(*) from ' + vlTabelas[i];
      consulta.Open;

      ftabelas.tabes.Append;
      ftabelas.tabes.FieldByName('tabela').AsString := vlTabelas[i];
      ftabelas.tabes.FieldByName('registros').AsInteger := consulta.Fields[0].AsInteger;

      consulta.Close;
      consulta.SQL.Text := 'select * from ' + vlTabelas[i];
      consulta.Open;

      ftabelas.tabes.FieldByName('campos').AsInteger := consulta.Fields.Count;
      ftabelas.tabes.Post;

    end;

    ftabelas.ShowModal;

  finally
    freeandnil(vlTabelas);
  end;

end;

procedure Tfprincigourmet.ActLogOffExecute(Sender: TObject);
begin
  LogarSistema;
end;

procedure Tfprincigourmet.FormClose(Sender: TObject; var Action: TCloseAction);
var
  SR: TSearchRec;
  i: Integer;
  DireTemp: string;
begin
  DireTemp := ExtractFilePath(Application.ExeName) + 'temp\';
  i := FindFirst(DireTemp + '*.*', faAnyFile, SR);

  while i = 0 do
  begin
    DeleteFile(DireTemp + SR.Name);
    i := FindNext(SR);
  end;

end;

procedure Tfprincigourmet.FormCreate(Sender: TObject);
begin

  ConectaBanco;

  ReportMemoryLeaksOnShutdown := true;
  FTimerThread := TTimerThread.Create(False);

  (* Realiza validações e identifica se abandona a aplicação *)
  try
    if not ValidaTerminal then
      raise Exception.Create('Terminal inválido.');

    if not LogarSistema then
      raise Exception.Create('Acesso inválido.');
  except
    on e: Exception do
    begin
      Application.ShowMainForm := False;
      Application.Terminate;
      exit;
    end;
  end;

  MontaMenuPrincipal;

  AtualizaStatusBar;

  (* Inicia timer que realiza consulta no banco para não encerrar a conexão *)
  TimerVerificaServidor.Enabled := true;
end;

procedure Tfprincigourmet.FormDestroy(Sender: TObject);
begin
  FTimerThread.FinishThreadExecution;
end;

procedure Tfprincigourmet.CliqueDuploAjustarGrupo(Sender: TObject);
var
  i: Integer;
  vlLarguraGrupo: Integer;
begin
  if (Sender as TGroupBox).width > 6 then
    (Sender as TGroupBox).width := 6
  else
  begin
    vlLarguraGrupo := 0;
    for i := 0 to (Sender as TGroupBox).ComponentCount - 1 do
    begin

      vlLarguraGrupo := vlLarguraGrupo + ((Sender as TGroupBox).Components[i] as TPngSpeedButton).width

    end;

    (Sender as TGroupBox).width := vlLarguraGrupo + 4;
  end;

end;

procedure Tfprincigourmet.FormPaint(Sender: TObject);
begin
  AtivaPagina;
end;

procedure Tfprincigourmet.FormResize(Sender: TObject);
begin
  AtivaPagina;
end;

procedure Tfprincigourmet.FormShow(Sender: TObject);
var
  i: Integer;
  vlListaView: TstringList;
begin

  AjustaImagem(Logo, MIZ_IMG_LOGO);

  Screen.Cursors[crSQLWait] := Screen.Cursors[crDefault];

  mensagens.Panels[0].width := 250;
  for i := 1 to mensagens.Panels.Count - 1 do
  begin
    mensagens.Panels[i].width := mensagens.Font.Size * (length(mensagens.Panels[i].Text));
  end;

  Self.mensagens.Panels[0].Text := vers;

  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'macros') then
    ForceDirectories(ExtractFilePath(Application.ExeName) + 'macros');

  if StrToDate(vpDataModeloNFE) <= StrToDate(hoje(Application, Conexao)) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'update cfgmnfe set cfgversao=' + quotedstr('4') + ' where cfgcodigo=' + AcessoRec.Filial.ToString;
    consulta.ExecSQL;
  end
  else
  begin
    consulta.Close;
    consulta.SQL.Text := 'update cfgmnfe set cfgversao=' + quotedstr('3,1') + ' where cfgcodigo=' + AcessoRec.Filial.ToString;
    consulta.ExecSQL;
  end;

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := AcessoRec.Filial;
  cfg.Open;

  if cfgcfgctacodigopix.AsInteger = 0 then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select ctacodigo from cta where tctcodigo=2 order by ctacodigo limit 1';
    consulta.Open;
    if not consulta.IsEmpty then
    begin
      cfg.Edit;
      cfgcfgctacodigopix.AsInteger := consulta.FieldByName('ctacodigo').AsInteger;
      cfg.Post;
    end
    else
    begin
      consulta.Close;
      consulta.SQL.Text := 'select cfgctacaixa from cfg';
      consulta.Open;
      cfg.Edit;
      cfgcfgctacodigopix.AsInteger := consulta.FieldByName('cfgctacaixa').AsInteger;
      cfg.Post;

    end;

  end;

  paginas.Visible := true;

  // MostraIni;

  NotificaFaltaBackup;

end;

procedure Tfprincigourmet.VerificaBotoes;
begin
  { }
  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := 'select btmcodigo from btm';
  consulta.Open;

  if consulta.IsEmpty then
  begin
    MostraLista('mbtm', 'frabtm', '2', 'acessos', 'formu');
  end;

end;

procedure Tfprincigourmet.NotificaFaltaBackup;
var
  vlMilliSegundos: Integer;
  vlDias: Integer;

begin

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := AcessoRec.Filial;
  cfg.Open;

  if cfgcfgultimobackup.AsString = '' then
  begin
    vlMilliSegundos := MilliSecondsBetween(strtodatetime('01/01/2000 00:00:00'), now());
  end
  else
  begin

    { Obtendo a quantidade exata de millissegundos entre as datas }
    vlMilliSegundos := MilliSecondsBetween(cfgcfgultimobackup.AsDateTime, now());
  end;

  { A partir da quantidade exata de millissegundos, podemos obter a quantidade
    exata de dias, já que sabemos quantos millissegundos hão exatamente em um dia }
  vlDias := vlMilliSegundos div MSecsPerDay;

  if (vlDias >= 3) or (cfgcfgultimobackup.AsString = '') then
  begin

    if FindWindow('TfRealizaBackup', nil) = 0 then
    begin

      if (vlDias.ToString = '') or (pos('-', vlDias.ToString) > 0) then
      begin
        vlDias := 3;
      end;

      Application.CreateForm(tfRealizaBackup, fRealizaBackup);

      fRealizaBackup.vpApelido := cfgcfgidentificacao.AsString;
      fRealizaBackup.vpCnpj := sonumeros(cfgetddoc1.AsString);
      fRealizaBackup.LMENSAGEM.Caption := 'Última cópia de segurança foi a mais de ' + vlDias.ToString + ' dias!';

      fRealizaBackup.vpLoginCli := vpUsuario;
      fRealizaBackup.vpSenhaCli := vpSenha;
      fRealizaBackup.vpPortaCli := vpPortaBanco;
      fRealizaBackup.vpServidorCli := vpServidor;
      fRealizaBackup.vpBancoCli := vpNomeBanco;

      if fRealizaBackup.ShowModal = mrok then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select cfgcodigo, cfgultimobackup from cfg where cfgcodigo=1';
        consulta.Open;

        consulta.Edit;
        consulta.FieldByName('cfgultimobackup').AsDateTime := now();
        consulta.Post;
      end;
      fRealizaBackup.Free;
    end;

  end;
end;

procedure Tfprincigourmet.MontaMenuPrincipal;
var
  vlAba: string;
  vlNomeAba: string;
  vlAbaAtual: string;

  vlGrupo: string;
  vlNomeGrupo: string;
  vlGrupoAtual: string;

  vlNomeArquivo: string;
  vlNomeAction: string;
  vlModulo: String;

  vlAction: TAction;

  Img: TPngImage;
  st: TMemorystream;

  CustomRibbonPageTms: TTabSheet;
  RibbonGroupTms: TGroupBox;
  BtmMenu: TPngSpeedButton;

  vlVersaoApp: String;
  i: Integer;
  vlLarguraGrupo: Integer;
  Bordas: TPadding;
  vlMenuitem: TMenuItem;
  vlMenuGrupo: TMenuItem;
  vlMenu: TMenuItem;

begin

  VerificaBotoes;

  try

    while true do
    begin
      if acoes.ComponentCount > 0 then
        acoes[0].Destroy
      else
        Break;
    end;

    if RibbonTms <> nil then
      RibbonTms.Destroy;

    RibbonTms := TPageControl.Create(Self);

    RibbonTms.Parent := plTopo; // fprincigourmet;
    // RibbonTms.Images := Image32;
    RibbonTms.Name := 'rbRibbonTms';
    RibbonTms.Align := alClient;
    RibbonTms.Height := 121;
    RibbonTms.Style := tsTabs;

    vlVersaoApp := 'Mizio ' + GetAppVersionStr(Application.ExeName);

    if cfg.Active then
      cfg.Close;

    cfg.Params[0].AsInteger := AcessoRec.Filial;
    cfg.Open;

    fla.Close;
    fla.Params[0].AsInteger := AcessoRec.Filial;
    fla.Open;

    Self.Caption := '[ ' + flaflasigla.AsString + ' ] - [ ' + trim(UpperCase(Self.cfg.Fields[1].AsString)) + '] - ' + vlVersaoApp +
      ' -  Mizio Sistemas (66) 3544-2765';
    cfg.Close;

    ini.Clear;
    ini.Open;

    uqMenus.Close;
    uqMenus.Params[0].AsInteger := AcessoRec.Usuario;
    uqMenus.Open;

    uqActs.Close;
    uqActs.Params[0].AsInteger := AcessoRec.Usuario;
    uqActs.Open;

    uqMenus.first;

    while not uqMenus.Eof do
    begin

      ini.Append;
      iniaba.AsString := semacento(uqMenusmdpidentificacao.AsString);
      inigrupo.AsString := uqMenusgrmidentificacao.AsString;
      inibotao.AsString := uqMenusbtmidentificacao.AsString;
      inidica.AsString := uqMenusbtmdica.AsString;
      iniformaabertura.AsString := uqMenusbtmformaabe.AsString;
      initamanhobotao.AsString := uqMenusbtmtipobotao.AsString;
      iniarquivo.AsString := uqMenusbplnomearq.AsString;
      iniimagem.AsVariant := uqMenusbtmimagem.AsVariant;
      iniordem.AsInteger := uqMenusmdpordem.AsInteger;
      inicgrupo.AsString := 'GrpBtMn' + uqMenusgrmcodigo.AsString;

      ini.Post;

      uqMenus.Next;
    end;

    ini.first;
    while not ini.Eof do
    begin

      vlNomeArquivo := iniarquivo.AsString;
      vlNomeAction := 'act' + iniformaabertura.AsString + copy(vlNomeArquivo, 1, pos('.', vlNomeArquivo) - 1);

      vlModulo := 'fra' + copy(iniarquivo.AsString, 2, pos('.', iniarquivo.AsString) - 2);

      if uqActs.Locate('actformulario', vlModulo, [locaseinsensitive]) or (AcessoRec.Usuario = 1) then
      begin

        vlAba := iniaba.AsString;
        vlGrupo := inicgrupo.AsString;

        if vlAba <> vlAbaAtual then
        begin

          { vlMenuitem:=TMenuItem.Create(MainMenu);
            vlMenuitem.Caption:=vlAba;
            MainMenu.Items.Add(vlMenuitem); }

          vlNomeAba := semacento(vlAba);
          vlNomeAba := 'aba' + StringReplace(vlNomeAba, ' ', '', [rfReplaceAll]);

          CustomRibbonPageTms := TTabSheet(RibbonTms.FindComponent(vlNomeAba));

          if CustomRibbonPageTms = nil then
          begin
            CustomRibbonPageTms := TTabSheet.Create(RibbonTms);
            CustomRibbonPageTms.Caption := vlAba;
            CustomRibbonPageTms.Name := vlNomeAba;
            CustomRibbonPageTms.PageControl := RibbonTms;

            // RibbonTms.a .Add(CustomRibbonPageTms);
            try
              CustomRibbonPageTms.PageIndex := iniordem.AsInteger;
            except
            end;
            vlAbaAtual := vlAba;
          end;
        end;

        if vlGrupo <> vlGrupoAtual then
        begin

          vlNomeGrupo := semacento(vlGrupo);
          vlNomeGrupo := 'grupo' + StringReplace(vlNomeGrupo, ' ', '', [rfReplaceAll]);

          if CustomRibbonPageTms.FindComponent(vlNomeAba + vlNomeGrupo) = nil then
          begin
            RibbonGroupTms := TGroupBox(CustomRibbonPageTms.FindComponent(vlNomeAba + vlNomeGrupo));
            vlLarguraGrupo := 0;
            if RibbonGroupTms = nil then
            begin

              { vlMenuGrupo:=TMenuItem.Create(vlMenuitem);
                vlMenuGrupo.Caption:=inigrupo.asstring;
                vlMenuitem.Add(vlMenuGrupo); }

              RibbonGroupTms := TGroupBox.Create(CustomRibbonPageTms);
              RibbonGroupTms.Name := vlNomeAba + vlNomeGrupo;
              RibbonGroupTms.Caption := inigrupo.AsString;
              RibbonGroupTms.Parent := CustomRibbonPageTms;
              RibbonGroupTms.Align := alleft;
              // RibbonGroupTms.ShowOptionIndicator := False;
              vlGrupoAtual := vlGrupo;
              RibbonGroupTms.width := 0;
              RibbonGroupTms.OnDblClick := CliqueDuploAjustarGrupo;

            end;
          end;
        end;

        if acoes.FindComponent(vlNomeAction) = nil then
        begin

          if ini.FieldByName('imagem').AsString <> '' then
          begin

            try
              Img := TPngImage.Create;

              st := TMemorystream.Create;
              TBlobField(ini.FieldByName('imagem')).SaveToStream(st);
              st.Position := 0;
              Img.LoadFromStream(st);

              vlAction := TAction.Create(acoes);
              vlAction.Category := vlGrupo;
              vlAction.OnExecute := ExecutaMenu;
              vlAction.Caption := inibotao.AsString;
              vlAction.Name := vlNomeAction;
              vlAction.ActionList := acoes;

              (* Não é necessário criar o botão para Movimentação de Contas *)
              if vlNomeAction = 'act2mcco' then
                Continue;

              BtmMenu := TPngSpeedButton.Create(RibbonGroupTms);
              BtmMenu.Name := 'btn' + vlAction.Name;
              BtmMenu.pngimage := Img;

              BtmMenu.Action := vlAction;
              BtmMenu.Caption := StringReplace(BtmMenu.Caption, '|', SLineBreak, [rfReplaceAll]);
              BtmMenu.Height := 50;

              BtmMenu.Parent := RibbonGroupTms;
              BtmMenu.width := (length(BtmMenu.Caption) * Self.Font.Size) + 15;

              if BtmMenu.width > 75 then
                BtmMenu.width := 75;

              if BtmMenu.width < 75 then
                BtmMenu.width := 45;

              BtmMenu.Hint := inidica.AsString;
              BtmMenu.Flat := true;
              BtmMenu.Align := alleft;
              BtmMenu.ShowHint := true;

              BtmMenu.Layout := blGlyphTop;

              vlLarguraGrupo := vlLarguraGrupo + (BtmMenu.width);
            finally
              freeandnil(Img);
            end;

          end;
        end;
      end;

      RibbonGroupTms.width := vlLarguraGrupo + 8;
      Bordas := TPadding.Create(Self);
      Bordas.Left := 2;
      Bordas.Bottom := 2;
      Bordas.Top := 2;

      RibbonGroupTms.padding := Bordas;

      ini.Next;
    end;
    RibbonTms.ActivePageIndex := 0;

  finally
  end;

end;

procedure Tfprincigourmet.CriaBotaoAba;
var
  i: Integer;
begin

  paginas.OwnerDraw := true;

  SetLength(FCloseButtonsRect, paginas.PageCount);
  FCloseButtonMouseDownIndex := -1;

  for i := 0 to length(FCloseButtonsRect) - 1 do
  begin
    FCloseButtonsRect[i] := Rect(0, 0, 0, 0);
  end;
end;

procedure Tfprincigourmet.PageControlCloseButtonDrawTab(Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  CloseBtnSize: Integer;
  PageControl: TPageControl;
  TabCaption: TPoint;
  CloseBtnRect: TRect;
  CloseBtnDrawState: Cardinal;
  CloseBtnDrawDetails: TThemedElementDetails;
begin
  PageControl := Control as TPageControl;

  if InRange(TabIndex, 0, length(FCloseButtonsRect) - 1) then
  begin
    CloseBtnSize := 14;
    TabCaption.Y := Rect.Top + 3;

    if Active then
    begin
      CloseBtnRect.Top := Rect.Top + 4;
      CloseBtnRect.Right := Rect.Right - 5;
      TabCaption.X := Rect.Left + 6;
    end
    else
    begin
      CloseBtnRect.Top := Rect.Top + 3;
      CloseBtnRect.Right := Rect.Right - 5;
      TabCaption.X := Rect.Left + 3;
    end;

    CloseBtnRect.Bottom := CloseBtnRect.Top + CloseBtnSize;
    CloseBtnRect.Left := CloseBtnRect.Right - CloseBtnSize;
    FCloseButtonsRect[TabIndex] := CloseBtnRect;

    PageControl.Canvas.FillRect(Rect);
    PageControl.Canvas.TextOut(TabCaption.X, TabCaption.Y, PageControl.Pages[TabIndex].Caption);

    if not UseThemes then
    begin
      if (FCloseButtonMouseDownIndex = TabIndex) and FCloseButtonShowPushed then
        CloseBtnDrawState := DFCS_CAPTIONCLOSE + DFCS_PUSHED
      else
        CloseBtnDrawState := DFCS_CAPTIONCLOSE;

      Winapi.Windows.DrawFrameControl(PageControl.Canvas.Handle, FCloseButtonsRect[TabIndex], DFC_CAPTION, CloseBtnDrawState);
    end
    else
    begin
      Dec(FCloseButtonsRect[TabIndex].Left);

      if (FCloseButtonMouseDownIndex = TabIndex) and FCloseButtonShowPushed then
        CloseBtnDrawDetails := StyleServices.GetElementDetails(twCloseButtonPushed)
      else
        CloseBtnDrawDetails := StyleServices.GetElementDetails(twCloseButtonNormal);

      StyleServices.DrawElement(PageControl.Canvas.Handle, CloseBtnDrawDetails, FCloseButtonsRect[TabIndex]);
    end;
  end;
end;

procedure Tfprincigourmet.AtivaPagina;
var
  HWND: Integer;
begin

  if (paginas.ActivePage <> nil) then
  begin
    HWND := (paginas.ActivePage as TTabSheet).Tag;
    if HWND > 0 then
      SetForegroundWindow(HWND);
  end;
end;

procedure Tfprincigourmet.PageControlCloseButtonMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
  PageControl: TPageControl;
begin
  PageControl := Sender as TPageControl;

  if Button = mbLeft then
    for i := 0 to length(FCloseButtonsRect) - 1 do
      if PtInRect(FCloseButtonsRect[i], Point(X, Y)) then
      begin
        FCloseButtonMouseDownIndex := i;
        FCloseButtonShowPushed := true;
        PageControl.Repaint;
      end;
end;

procedure Tfprincigourmet.PageControlCloseButtonMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  PageControl: TPageControl;
  Inside: Boolean;
begin
  PageControl := Sender as TPageControl;

  if (ssLeft in Shift) and (FCloseButtonMouseDownIndex >= 0) then
  begin
    Inside := PtInRect(FCloseButtonsRect[FCloseButtonMouseDownIndex], Point(X, Y));

    if FCloseButtonShowPushed <> Inside then
    begin
      FCloseButtonShowPushed := Inside;
      PageControl.Repaint;
    end;
  end;
end;

procedure Tfprincigourmet.PageControlCloseButtonMouseLeave(Sender: TObject);
var
  PageControl: TPageControl;
begin
  PageControl := Sender as TPageControl;
  FCloseButtonShowPushed := False;
  PageControl.Repaint;
end;

procedure Tfprincigourmet.PageControlCloseButtonMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  PageControl: TPageControl;
  vlFraNome: string;
  vlFrame: TComponent;
  vlActSair: TAction;
  // vlPack: Integer;
begin
  PageControl := Sender as TPageControl;

  if (Button = mbLeft) and (FCloseButtonMouseDownIndex >= 0) then
    if PtInRect(FCloseButtonsRect[FCloseButtonMouseDownIndex], Point(X, Y)) then
    begin
      // vlPack := paginas.ActivePage.Tag;

      vlFraNome := paginas.ActivePage.Name;
      vlFraNome := 'fra' + copy(vlFraNome, 5, length(vlFraNome));

      vlFrame := Application.FindComponent(vlFraNome);

      if vlFrame <> nil then
      begin
        vlActSair := vlFrame.FindComponent('ActSair') as TAction;
        if vlActSair <> nil then
        begin
          vlActSair.Execute;
          // DoUnLoadPackage(Application, vlPack);
        end;
      end;

      FCloseButtonMouseDownIndex := -1;
      PageControl.Repaint;
    end;
end;

procedure Tfprincigourmet.paginasChange(Sender: TObject);
begin
  AtivaPagina;
end;

procedure Tfprincigourmet.btChatClick(Sender: TObject);
begin

  // Showmessage('Módulo em desenvolvimento!');
end;

procedure Tfprincigourmet.btTrocardeUsuarioClick(Sender: TObject);
begin
  if LogarSistema = False then
    Application.Terminate;
end;

procedure Tfprincigourmet.SetAcesso(const Value: Integer);
begin
  FAcesso := Value;

  consulta.Close;
  consulta.SQL.Text := 'SELECT acs.acschave, acs.clbcodigo, acs.flacodigo FROM acs WHERE acs.acschave = ' + Acesso.ToString;
  consulta.Open;

  AcessoRec.IdAcesso := consulta.Fields[0].AsInteger;
  AcessoRec.Usuario := consulta.Fields[1].AsInteger;
  AcessoRec.Filial := consulta.Fields[2].AsInteger;
end;

function Tfprincigourmet.ValidaTerminal: Boolean;
begin
  trm.Close;
  trm.Params[0].AsInteger := AcessoRec.Terminal;
  trm.Open;

  if not trm.IsEmpty then
    Result := true
  else
  begin
    Result := False;
    Application.MessageBox(PChar('Não foi possível abrir o sistema.' + #13 + 'Terminal de número ' + AcessoRec.Terminal.ToString +
      ' não está cadastrado.'), 'Atenção', MB_ICONWARNING + MB_OK);
  end;
end;

procedure Tfprincigourmet.MostraListaBRR(pacote: string; modulo: string);
var
  vlFormu: function(pCargaFrame: TCargaFrame): string;
  autorizado: Boolean;
  vlTabSheet: TTabSheet;
  vlCargaFrame: TCargaFrame;
  vlFormuFrame: function(pCargaFrame: TCargaFrame): string;
begin

  consulta.Close;
  consulta.SQL.Text := 'SELECT dauativo FROM mdl, act, dau WHERE ';
  consulta.SQL.add('dau.actcodigo = act.actcodigo AND ');
  consulta.SQL.add('dau.dauativo = 1 AND ');
  consulta.SQL.add('dau.clbcodigo = ' + AcessoRec.Usuario.ToString + ' AND ');
  consulta.SQL.add('mdl.mdlcodigo = act.mdlcodigo AND ');
  consulta.SQL.add('mdlnome=''' + lowercase(modulo) + '''');
  consulta.Open;

  autorizado := False;

  if not consulta.IsEmpty then
    autorizado := true;

  if AcessoRec.Usuario = 1 then
    autorizado := true;

  if pacote = 'mace' then
    autorizado := true;

  if not autorizado then
  begin
    Application.MessageBox(PChar('Usuário não autorizado a acessar  '), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  pack := LoadPackage('modulos\' + 'mbrr' + '.bpl');
  if pack <> 0 then
    try
      @vlFormu := GetProcAddress(pack, PChar('Receb'));

      if Assigned(vlFormu) then
      begin
        vlCargaFrame := CargaFrameFormu(Application, pack, Conexao, AcessoRec, '');
        vlFormu(vlCargaFrame);
      end;
    finally
      DoUnLoadPackage(Application, pack);
    end;
end;

procedure Tfprincigourmet.MostraIni;
var
  vlFormu: function(pCargaFrame: TCargaFrame): string;
  autorizado: Boolean;
  vlTabSheet: TTabSheet;
  vlCargaFrame: TCargaFrame;
  vlFormuFrame: function(pCargaFrame: TCargaFrame): string;
  funcao: String;
begin

  pack := LoadPackage('modulos\mini.bpl');
  if pack <> 0 then
    try
      vlTabSheet := paginas.FindChildControl('tbs' + 'mini') as TTabSheet;
      if vlTabSheet <> nil then
      begin
        paginas.ActivePage := vlTabSheet;
      end
      else
      begin

        funcao := funcao + 'formuFrame';

        @vlFormuFrame := GetProcAddress(pack, PChar(funcao));
        if Assigned(vlFormuFrame) then
        begin
          vlTabSheet := TTabSheet.Create(Self.paginas);
          vlTabSheet.PageControl := Self.paginas;
          vlTabSheet.Caption := 'Início';
          vlTabSheet.Name := 'tbsmini';
          vlTabSheet.Tag := pack;
          vlTabSheet.PageControl.UpdateTab2(vlTabSheet);
          CriaBotaoAba;

          (* Alimenta o record CargaFrame para carregamento do Frame *)
          vlCargaFrame := CargaFrameTab(Application, pack, vlTabSheet, Conexao, AcessoRec);
          vlFormuFrame(vlCargaFrame);
          paginas.ActivePage := vlTabSheet;
          AtivaPagina;
        end;
      end;

    finally

    end;

end;

procedure Tfprincigourmet.MostraLista(pacote: string; modulo: string; forma: string = '1'; titulo: string = ''; funcao: string = 'formu');
var
  vlFormu: function(pCargaFrame: TCargaFrame): string;

  autorizado: Boolean;
  vlTabSheet: TTabSheet;
  vlCargaFrame: TCargaFrame;
  vlFormuFrame: function(pCargaFrame: TCargaFrame): string;
begin

  consulta.Close;
  consulta.SQL.Text := 'SELECT dauativo FROM mdl, act, dau WHERE ';
  consulta.SQL.add('dau.actcodigo = act.actcodigo AND ');
  consulta.SQL.add('dau.dauativo = 1 AND ');
  consulta.SQL.add('dau.clbcodigo = ' + AcessoRec.Usuario.ToString + ' AND ');
  consulta.SQL.add('mdl.mdlcodigo = act.mdlcodigo AND ');
  consulta.SQL.add('mdlnome=''' + lowercase(modulo) + '''');
  consulta.Open;

  autorizado := False;

  if not consulta.IsEmpty then
    autorizado := true;

  if AcessoRec.Usuario = 1 then
    autorizado := true;

  if pacote = 'mace' then
    autorizado := true;

  if not autorizado then
  begin
    Application.MessageBox(PChar('Usuário não autorizado a acessar o módulo de ' + titulo), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  end;

  // if vlAutoAtualizar = '1' then
  // VerAtualizacao(pacote);

  pack := LoadPackage('modulos\' + pacote + '.bpl');
  if pack <> 0 then
    try
      if forma = '1' then
      begin
        @vlFormu := GetProcAddress(pack, PChar(funcao));

        if Assigned(vlFormu) then
        begin
          vlCargaFrame := CargaFrameFormu(Application, pack, Conexao, AcessoRec, '');
          vlFormu(vlCargaFrame);
        end;
      end;

      if forma = '2' then
      begin
        vlTabSheet := paginas.FindChildControl('tbs' + pacote) as TTabSheet;
        if vlTabSheet <> nil then
        begin
          paginas.ActivePage := vlTabSheet;
        end
        else
        begin

          funcao := funcao + 'Frame';

          @vlFormuFrame := GetProcAddress(pack, PChar(funcao));
          if Assigned(vlFormuFrame) then
          begin
            vlTabSheet := TTabSheet.Create(Self.paginas);
            vlTabSheet.PageControl := Self.paginas;
            vlTabSheet.Caption := titulo;
            vlTabSheet.Name := 'tbs' + pacote;
            vlTabSheet.Tag := pack;
            vlTabSheet.PageControl.UpdateTab2(vlTabSheet);
            CriaBotaoAba;

            (* Alimenta o record CargaFrame para carregamento do Frame *)
            vlCargaFrame := CargaFrameTab(Application, pack, vlTabSheet, Conexao, AcessoRec);
            vlFormuFrame(vlCargaFrame);
            paginas.ActivePage := vlTabSheet;
            AtivaPagina;
          end;
        end;
      end;
    finally
      if forma = '1' then
        DoUnLoadPackage(Application, pack);
    end;
end;

procedure Tfprincigourmet.MostraListaCCO(pacote: string; modulo: string; vctacodigo: Integer; forma: string = '1'; titulo: string = '');
var
  autorizado: Boolean;
  vlNomeTab: String;
  vlTabSheet: TTabSheet;
  vctatit: string;
  vlCargaFrame: TCargaFrame;
  vlFormuFrame: function(pCargaFrame: TCargaFrame): string;
begin

  consulta.Close;
  consulta.SQL.Text := 'SELECT dauativo FROM mdl, act, dau WHERE ';
  consulta.SQL.add('dau.actcodigo = act.actcodigo AND ');
  consulta.SQL.add('dau.dauativo = 1 AND ');
  consulta.SQL.add('dau.clbcodigo = ' + AcessoRec.Usuario.ToString + ' AND ');
  consulta.SQL.add('mdl.mdlcodigo = act.mdlcodigo AND ');
  consulta.SQL.add('mdlnome=''' + modulo + '''');
  consulta.Open;

  autorizado := False;

  if not consulta.IsEmpty then
    autorizado := true;

  if AcessoRec.Usuario = 1 then
    autorizado := true;

  if not autorizado then
  begin
    ShowMessage('Usuário não autorizado a acessar o módulo ' + modulo);
    exit;
  end;

  pack := LoadPackage('modulos\' + pacote + '.bpl');

  if pack <> 0 then
    try
      vlNomeTab := 'tbs' + pacote + Inttostr(vctacodigo);

      vlTabSheet := paginas.FindChildControl(vlNomeTab) as TTabSheet;
      if vlTabSheet <> nil then
      begin
        paginas.ActivePage := vlTabSheet;
      end
      else
      begin

        @vlFormuFrame := GetProcAddress(pack, PChar('formuFrame'));

        if Assigned(vlFormuFrame) then
        begin
          vlTabSheet := TTabSheet.Create(Self);
          vlTabSheet.PageControl := Self.paginas;
          consulta.Close;
          consulta.SQL.Text := 'select ctaidentificacao from cta where ctacodigo=' + Inttostr(vctacodigo);
          consulta.Open;
          vctatit := consulta.Fields[0].AsString;
          consulta.Close;

          vlTabSheet.Caption := vctatit;
          vlTabSheet.Name := vlNomeTab;
          vlTabSheet.Tag := pack;
          vlTabSheet.PageControl.UpdateTab2(vlTabSheet);
          CriaBotaoAba;

          (* Alimenta o record CargaFrame para carregamento do Frame *)
          vlCargaFrame := CargaFrameTab(Application, pack, vlTabSheet, Conexao, AcessoRec, Inttostr(vctacodigo));
          vlFormuFrame(vlCargaFrame);

          paginas.ActivePage := vlTabSheet;
        end;
      end;
    finally
      if forma = '1' then
        if pacote <> 'mpeg' then
          DoUnLoadPackage(Application, pack);
    end;
end;

procedure Tfprincigourmet.MnuSairExecute(Sender: TObject);
begin
  Close;
end;

function Tfprincigourmet.LogarSistema: Boolean;
var
  Acesso: function(pAOwner: TApplication; pConexao: TUniConnection; pTerminal: Integer): Integer;
  vlResult: Integer;
begin
  Result := False;

  pack := LoadPackage('modulos\macs.bpl');
  if pack <> 0 then
    try
      @Acesso := GetProcAddress(pack, PChar('Acesso'));

      if Assigned(Acesso) then
        vlResult := Acesso(Application, Conexao, AcessoRec.Terminal);

    finally
      DoUnLoadPackage(Application, pack);
    end;

  if vlResult > 0 then
  begin
    Result := true;
    Self.Acesso := vlResult;
  end;
End;

Procedure Tfprincigourmet.CarregaScripts;
var
  exec: Tcarregatabelas;
  vu: string;
  pasta: string;
begin

  pasta := ExtractFilePath(Application.ExeName) + 'scripts';

  pack := LoadPackage('modulos\mcgt.bpl');
  if pack <> 0 then
    try
      @exec := GetProcAddress(pack, PChar('carregatabelas'));

      if Assigned(exec) then
        vu := exec(Application, Conexao, pasta, vpVersao);

      if vu = 'erro' then
      begin
        Application.MessageBox(PChar('Erro na atualização do banco de dados!!' + #13 + #13 + 'Ligue para Mizio Sistemas (66) 3544-2765.'), 'Erro',
          MB_ICONERROR + MB_OK);

        Application.Terminate;
      end;

    finally
      DoUnLoadPackage(Application, pack);
    end;

End;

Procedure Tfprincigourmet.CarregaTabelas;
var
  exec: Tcarregatabelas;
  vu: string;
  pasta: string;
begin

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := '';
  consulta.SQL.Text := 'INSERT INTO tsi (tsicodigo, tsiidentificacao, ttscodigo, tsitipo)  SELECT * FROM (SELECT 1 as tsicodigo, ' + quotedstr('SEM')
    + ',1,0) AS tmp WHERE NOT EXISTS (SELECT tsicodigo FROM tsi WHERE tsicodigo = 1) LIMIT 1';
  consulta.ExecSQL;

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := '';
  consulta.SQL.Text := 'INSERT INTO tsi (tsicodigo, tsiidentificacao, ttscodigo, tsitipo)  SELECT * FROM (SELECT 2 as tsicodigo, ' +
    quotedstr('POUCO(A)') + ',1,0) AS tmp WHERE NOT EXISTS (SELECT tsicodigo FROM tsi WHERE tsicodigo = 2) LIMIT 1';
  consulta.ExecSQL;

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := '';
  consulta.SQL.Text := 'INSERT INTO tsi (tsicodigo, tsiidentificacao, ttscodigo, tsitipo)  SELECT * FROM (SELECT 3 as tsicodigo, ' +
    quotedstr('NORMAL') + ',1,0) AS tmp WHERE NOT EXISTS (SELECT tsicodigo FROM tsi WHERE tsicodigo = 3) LIMIT 1';
  consulta.ExecSQL;

  consulta.Close;
  consulta.Connection := Conexao;
  consulta.SQL.Text := '';
  consulta.SQL.Text := 'INSERT INTO tsi (tsicodigo, tsiidentificacao, ttscodigo, tsitipo)  SELECT * FROM (SELECT 4 as tsicodigo, ' +
    quotedstr('MUITO') + ',1,0) AS tmp WHERE NOT EXISTS (SELECT tsicodigo FROM tsi WHERE tsicodigo = 4) LIMIT 1';
  consulta.ExecSQL;

  pasta := ExtractFilePath(Application.ExeName) + 'csvs';

  pack := LoadPackage('modulos\mcgt.bpl');
  if pack <> 0 then
    try
      @exec := GetProcAddress(pack, PChar('carregatabelas'));

      if Assigned(exec) then
        vu := exec(Application, Conexao, pasta, vpVersao);

      if vu = 'erro' then
      begin
        Application.MessageBox(PChar('Erro na atualização dos dados do banco de dados!!' + #13 + #13 + 'Ligue para Mizio Sistemas (66) 3544-2765.'),
          'Erro', MB_ICONERROR + MB_OK);

        Application.Terminate;
      end;

    finally
      DoUnLoadPackage(Application, pack);
    end;
End;

procedure Tfprincigourmet.TimerVerificaServidorTimer(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT CURDATE();';
  consulta.Open;
  consulta.Close;

  NotificaFaltaBackup;

end;

procedure Tfprincigourmet.ApplicationEventsException(Sender: TObject; e: Exception);
begin
  if pos('Invalid input', e.Message) > 0 then
  begin
    Application.MessageBox(PChar('Dados inválido para este campo!'), 'Atenção', MB_ICONWARNING + MB_OK);
    if (Sender is TDBEdit) then
      (Sender as TDBEdit).Field.AsString := '';
  end;

end;

procedure Tfprincigourmet.AtivarTimer(Sender: TObject);
var
  i: Integer;
  vlUsrAtual: Integer;
begin
  vlUsrAtual := AcessoRec.Usuario;
  Ativar.Enabled := False;

  if not LogarSistema then
    Application.Terminate
  else if vlUsrAtual <> AcessoRec.Usuario then
    try
      for i := 0 to paginas.PageCount - 1 do
        paginas.Pages[0].Destroy;

      MontaMenuPrincipal;
    except
    end;
end;

procedure Tfprincigourmet.AtualizaStatusBar;
begin
  mensagens.ControlStyle := mensagens.ControlStyle + [csAcceptsControls];

  consulta.Close;
  consulta.SQL.Text := 'select clbidentificacao from clb where clbcodigo=' + AcessoRec.Usuario.ToString;
  consulta.Open;

  mensagens.Panels[1].Text := '   Usuário: ' + AcessoRec.Usuario.ToString + ' ' + consulta.Fields[0].AsString;
  mensagens.Panels[1].width := length(mensagens.Panels[1].Text) * 8;

  consulta.Close;
  consulta.SQL.Text := 'SELECT MAX(vdbversao) FROM vdb';
  consulta.Open;

  mensagens.Panels[4].Text := 'BD: ' + Conexao.Database + '-' + consulta.Fields[0].AsString;
  consulta.Close;

  mensagens.Panels[5].Text := 'IP: ' + Conexao.Server;

  cfg.Open;

  case cfgcfgmodonfe.AsInteger of
    1:
      mensagens.Panels[6].Text := 'NFe: ' + 'Produção';
    2:
      mensagens.Panels[6].Text := 'NFe: ' + 'Homologação';
  else
    mensagens.Panels[6].Text := 'NFe: ' + cfgcfgmodonfe.AsString + ' verificar';
  end;

  mensagens.Panels[7].Text := 'Movimento: ' + DateToStr(Date);

  mensagens.Panels[8].Text := 'TRM: ' + AcessoRec.Terminal.ToString + ' ' + trim(trmtrmidentificacao.AsString);

  mensagens.Panels[9].Text := 'Path: ' + ExtractFilePath(Application.ExeName);
  mensagens.Panels[9].width := length(mensagens.Panels[9].Text) * 8;

  VerificaValidadeCertificado;
end;

procedure Tfprincigourmet.MostraAcelerato(Sender: TObject);
begin
  MostraLista('mace', 'frace', '2', 'Acelerato', 'formu');
end;

procedure Tfprincigourmet.DoUnLoadPackage(AOwner: TComponent; Module: HModule);
var
  i: Integer;
  m: TMemoryBasicInformation;
begin
  for i := AOwner.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(AOwner.Components[i].ClassName), m, SizeOf(m));
    if (Module = 0) or (HModule(m.AllocationBase) = Module) then
      AOwner.Components[i].Free;
  end;
  UnRegisterModuleClasses(Module);

  System.Classes.UnRegisterClass(TDBMemo);
  System.Classes.UnRegisterClass(TCustomdbgrid);

  UnLoadPackage(Module);
end;

procedure Tfprincigourmet.erminarGravao1Click(Sender: TObject);
begin
  { if (VersaoWin <> wvWin10) then
    begin
    if MacroRecorder.IsRecording then
    MacroRecorder.StopRecording;
    end; }
end;

function Tfprincigourmet.LerConfiguracao: Boolean;
Var
  IniFile: String;
  ini: TIniFile;
  ok: Boolean;
  StreamMemo: TMemorystream;
Begin
  Result := true;

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := AcessoRec.Filial;
  cfg.Open;

  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');

  ACBrNFeNotas.Configuracoes.Geral.VersaoDF := ve400;

  ACBrNFeNotas.Configuracoes.Geral.SSLHttpLib := httpWinINet;
  ACBrNFeNotas.Configuracoes.Geral.SSLLib := libWinCrypt;
  ACBrNFeNotas.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;

  ACBrNFeNotas.Configuracoes.Certificados.VerificarValidade := False;

  ACBrNFeNotas.Configuracoes.WebServices.ResourceName := 'ACBrNFeServicos';
  ACBrNFeNotas.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName) + 'schemas';
  ACBrNFeNotas.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.ExeName) + 'schemas\ACBrNFeServicos.ini';

  ACBrNFeNotas.Configuracoes.Certificados.NumeroSerie := Self.cfgcfgnumecertif.AsString;

  if length(cfgcfgsenhacertificadoa1.AsString) > 0 then
    ACBrNFeNotas.Configuracoes.Certificados.Senha := cfgcfgsenhacertificadoa1.AsString;

  ACBrNFeNotas.Configuracoes.WebServices.UF := UpperCase(Self.cfgufssigla.AsString);

  ACBrNFeNotas.Configuracoes.WebServices.ProxyHost := ini.ReadString('Proxy', 'Host', '');
  ACBrNFeNotas.Configuracoes.WebServices.ProxyPort := ini.ReadString('Proxy', 'Porta', '');
  ACBrNFeNotas.Configuracoes.WebServices.ProxyUser := ini.ReadString('Proxy', 'User', '');
  ACBrNFeNotas.Configuracoes.WebServices.ProxyPass := ini.ReadString('Proxy', 'Pass', '');

end;

procedure Tfprincigourmet.VerificaValidadeCertificado;
var
  vldia: tdateTime;
  vlVcnto: tdateTime;
begin

  try
    LerConfiguracao;
    vldia := ACBrNFeNotas.SSL.CertDataVenc;

    vlVcnto := IncDay(now(), 15);

    if vldia <= vlVcnto then
    begin
      fprincigourmet.MostraAlertaDesktop('A T E N Ç Ã O !', 'FAVOR RENOVAR CERTIFICADO DIGITAL.' + #13 + #13 + #13 + 'DATA DE VENCIMENTO: ' +
        datetimetostr(vldia));
      mensagens.Panels[0].Text := 'Vcto Certificado: ' + datetimetostr(vldia);

    end
    else
    begin
      mensagens.Panels[0].Text := 'Vcto Certificado: ' + datetimetostr(vldia);
    end;

  except
    on e: Exception do
    begin
    end;
  end;

end;

procedure Tfprincigourmet.MostraAlertaDesktop(Mensagem: String; Texto: string);
var
  i: Integer;
  BarraIniciar: HWND;
  { Barra Iniciar } tmAltura: Integer;
  tmRect: TRect;
  xTop: Integer;
  xIniTop: Integer;
begin
  // localiza o Handle da janela iniciar
  BarraIniciar := FindWindow('Shell_TrayWnd', nil);
  // Pega o "retângulo" que envolve a barra e sua altura
  if FindWindow('TfAlertaMsn', nil) <> 0 then
    exit;

  GetWindowRect(BarraIniciar, tmRect);
  tmAltura := tmRect.Bottom - tmRect.Top;
  fAlertaMsn := TfAlertaMsn.Create(Self);
  fAlertaMsn.LMENSAGEM.Caption := Mensagem;
  fAlertaMsn.reMensagem.Lines.Text := Texto;

  with fAlertaMsn do
  begin

    if (pos('certificado', lowercase(Texto)) > 0) or (pos('cópia', lowercase(Texto)) > 0) then
      plItulo.Color := CLRED;

    Left := Screen.width - width; // ClientWidth;
    if tmRect.Top = -2 then
      tmAltura := 10;

    xTop := Screen.Height - Height - tmAltura;

    xIniTop := Screen.Height + Height + tmAltura;
    Top := xIniTop;

      Top := Top - 500;
      Show;
      Update;
      Application.ProcessMessages;
      sleep(2);

  end;
end;

{ TTimerThread }

constructor TTimerThread.Create(CreateSuspended: Boolean);
begin
  inherited;
  FreeOnTerminate := true;
  FTickEvent := CreateEvent(nil, true, False, nil);
end;

destructor TTimerThread.Destroy;
begin
  CloseHandle(FTickEvent);
  inherited;
end;

procedure TTimerThread.FinishThreadExecution;
begin
  try
    Terminate;
  except
  end;
  SetEvent(FTickEvent);
end;

procedure TTimerThread.Execute;
begin
  while not Terminated do
  begin
    if WaitForSingleObject(FTickEvent, 30000) = WAIT_TIMEOUT then
    begin

      Synchronize(
        procedure
        begin
          if fprincigourmet <> nil then
          begin

            // fprincigourmet.AtivaNotificacoes;

            // fprincigourmet.MostraAlertaDesktop('F A L H A   C R I T I C A', 'Notas em CONTIGÊNCIAS: 14' + #13 + #13 + 'Por Favor, verifique.');
          end;
        end);
    end;
  end;
end;

function InternetAtiva: Boolean;
var
  Flags: Cardinal;
begin
  Result := False;
  if not InternetGetConnectedState(@Flags, 0) then
    Result := False
  else
    Result := true;
end;

end.
