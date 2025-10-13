unit ufrachd;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, shellapi, Vcl.ComCtrls, ZoiperAPI_TLB, ComObj, OleCtrls, ActiveX, System.ImageList,
  Vcl.ImgList, ufuncoes, VclTee.TeeGDIPlus, VclTee.TeEngine, VclTee.Series,
  VclTee.TeeProcs, VclTee.Chart, VclTee.DBChart, Vcl.DBCGrids;

type
  Tfrachd = class(Tfrabase)
    uqtabelachdchave: TIntegerField;
    uqtabelachdregistro: TDateTimeField;
    uqtabelatcmidentificacao: TStringField;
    uqtabelatcmcodigo: TIntegerField;
    uqtabelachdidentificacao: TStringField;
    uqtabelattccodigo: TIntegerField;
    uqtabelattcidentificacao: TStringField;
    uqtabelatprcodigo: TIntegerField;
    uqtabelatpridentificacao: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelatsoemail: TStringField;
    uqtabelatsoidentificacao: TStringField;
    uqtabelatecidentificacao: TStringField;
    uqtabelaetftelefone: TStringField;
    ActTramitar: TAction;
    trc: TUniQuery;
    trctrcchave: TIntegerField;
    trcchdchave: TIntegerField;
    trctrcregistro: TDateTimeField;
    trcclbcodigo: TIntegerField;
    trctrcdescricao: TStringField;
    trcclbidentificacao: TStringField;
    DStrc: TUniDataSource;
    uqtabelaclbidentificacao: TStringField;
    anc: TUniQuery;
    ancancchave: TIntegerField;
    anctrcchave: TIntegerField;
    ancancanexo: TBlobField;
    ancancidentificacao: TStringField;
    OpenDialog: TOpenDialog;
    DSAnc: TDataSource;
    ActSoftPhone: TAction;
    plLigacoes: TPanel;
    Panel1: TPanel;
    btConectaCentral: TButton;
    Memo: TMemo;
    btDesconectarCentral: TButton;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    VerificaStatusRamais: TTimer;
    plTelefone: TPanel;
    clbclbsipramal: TStringField;
    plDiscador: TPanel;
    PhoneE: TEdit;
    btDiscar: TButton;
    btAtender: TButton;
    Panel4: TPanel;
    rlg: TUniQuery;
    rlgrlgchave: TIntegerField;
    rlgrlgregistro: TDateTimeField;
    rlgclbcodigo: TIntegerField;
    rlgrlginicio: TDateTimeField;
    rlgrlgbinagem: TStringField;
    rlgrlgoperacao: TIntegerField;
    rlgrlgfinal: TDateTimeField;
    rlgclbdestino: TIntegerField;
    rlgrlgtipo: TIntegerField;
    rlgrlggravacao: TStringField;
    plRelogio: TPanel;
    sitrlg: TUniQuery;
    sitrlgrlgchave: TIntegerField;
    sitrlgclbcodigo: TIntegerField;
    sitrlgrlgbinagem: TStringField;
    sitrlgrlgoperacao: TIntegerField;
    sitrlgclbdestino: TIntegerField;
    sitrlgrlggravacao: TStringField;
    dsstirlg: TUniDataSource;
    DBGridLigacoes: TDBGrid;
    sitrlgclbidentificacao: TStringField;
    sitrlgrlginicio: TStringField;
    sitrlgrlgfinal: TStringField;
    sitrlgrlttipo: TStringField;
    uqtabelachddescricao: TStringField;
    ActLigacao: TAction;
    Panel5: TPanel;
    btGerarChamado: TButton;
    btGerarTramite: TButton;
    regtrc: TUniQuery;
    regtrctrcchave: TIntegerField;
    regtrcchdchave: TIntegerField;
    regtrctrcregistro: TDateTimeField;
    regtrcclbcodigo: TIntegerField;
    regtrctrcdescricao: TStringField;
    sitrlgrlgdescricao: TStringField;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    rlgdescricao: TDBMemo;
    sitrlgchdchave: TIntegerField;
    uqtabelatprcor: TStringField;
    uqtabelateccor: TStringField;
    ActEstagio: TAction;
    ActAssumir: TAction;
    ActAtribuir: TAction;
    tec: TUniQuery;
    tecteccodigo: TIntegerField;
    tectecidentificacao: TStringField;
    uqtabelateccodigo: TIntegerField;
    uqtabelaetdapelido: TStringField;
    uqtabelatecsituacao: TIntegerField;
    spbTodos: TAction;
    spbEmAberto: TAction;
    spbEncerrados: TAction;
    uqtabelachddata: TDateField;
    uqtabelachddataatendimento: TDateField;
    ActProgramacao: TAction;
    etd: TUniQuery;
    rlgetdcodigo: TIntegerField;
    resumo1: TUniQuery;
    Dresumo1: TDataSource;
    resumo1quantidade: TIntegerField;
    resumo1situacao: TStringField;
    resumo1dia: TDateField;
    resumo2: TUniQuery;
    resumo2quantidade: TIntegerField;
    resumo2situacao: TStringField;
    resumo2dia: TDateField;
    Dresumo2: TDataSource;
    plresumos: TPanel;
    Panel7: TPanel;
    DBGridResumo1: TDBGrid;
    DBGrid1: TDBGrid;
    sitrlgetdcodigo: TIntegerField;
    sitrlgrlgregistro: TStringField;
    DBCtrlGrid1: TDBCtrlGrid;
    Label1: TLabel;
    chdchave: TDBEdit;
    Label2: TLabel;
    etdidentificacao: TDBEdit;
    Label3: TLabel;
    etftelefone: TDBEdit;
    Label4: TLabel;
    chdidentificacao: TDBEdit;
    DBMemo1: TDBMemo;
    plGriChamados: TPanel;
    pldetalhechamados: TPanel;
    pltramites: TPanel;
    tpridentificacao: TDBEdit;
    tcmidentificacao: TDBEdit;
    DBCtrlGridTramites: TDBCtrlGrid;
    plTitulosTramites: TPanel;
    DBEdit7: TDBEdit;
    listatrcclbidentificacao: TDBEdit;
    DBMemo2: TDBMemo;
    Label5: TLabel;
    tecidentificacao: TDBEdit;
    Label6: TLabel;
    ttcidentificacao: TDBEdit;
    Label7: TLabel;
    clbidentificacao: TDBEdit;
    ech: TUniQuery;
    echechchave: TIntegerField;
    echchdchave: TIntegerField;
    echechregistro: TDateTimeField;
    echclbidentificacao: TStringField;
    echtecidentificacao: TStringField;
    Dsech: TDataSource;
    rch: TUniQuery;
    rchrchchave: TIntegerField;
    rchchdchave: TIntegerField;
    rchrchregistro: TDateTimeField;
    rchatribuiente: TStringField;
    rchclbidentificacao: TStringField;
    plRechamados: TPanel;
    Panel9: TPanel;
    Dsrch: TDataSource;
    DBCtrlGridRch: TDBCtrlGrid;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Panel8: TPanel;
    plresumoligacao: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    pltotaisligacao: TPanel;
    pldialigacao: TPanel;
    qtdiasitrlg: TUniQuery;
    pldialigacaoatribuidas: TPanel;
    Splitter1: TSplitter;
    btDiversa: TButton;
    Panel10: TPanel;
    btExcluirTramite: TButton;
    trcs: TUniQuery;
    trcstrcchave: TIntegerField;
    trcschdchave: TIntegerField;
    trcstrcregistro: TDateTimeField;
    trcsclbcodigo: TIntegerField;
    trcsclbidentificacao: TStringField;
    trcstrcdescricao: TStringField;
    Panel3: TPanel;
    tcm: TUniQuery;
    DBGrid2: TDBGrid;
    Dtcm: TDataSource;
    tcmqtda: TIntegerField;
    tcmtcmidentificacao: TStringField;
    uqtabelatprslahoras: TIntegerField;
    tch: TUniQuery;
    tchtrcchave: TIntegerField;
    tchetdidentificacao: TStringField;
    tchchdidentificacao: TStringField;
    tchclbidentificacao: TStringField;
    tchtrcdescricao: TStringField;
    tchtrcregistro: TDateTimeField;
    dtch: TDataSource;
    tchchdchave: TIntegerField;
    Dclr: TDataSource;
    clr: TUniQuery;
    clrclrchave: TIntegerField;
    clretdcodigo: TIntegerField;
    clrcrtcodigo: TIntegerField;
    clrtalcodigo: TIntegerField;
    clrctdcodigo: TIntegerField;
    clrclrcnaeprincipal: TStringField;
    clrcrtidentificacao: TStringField;
    clretdidentificacao: TStringField;
    clrtalidentificacao: TStringField;
    clrctdidentificacao: TStringField;
    plregimetributario: TPanel;
    ctdidentificacao: TDBEdit;
    pltopregimetribitario: TPanel;
    crtidentificacao: TDBEdit;
    talidentificacao: TDBEdit;
    plQuadroSituacao: TPanel;
    spbLista: TAction;
    spbQuadro: TAction;
    ega: TUniQuery;
    egagaccodigo: TIntegerField;
    egagacidentificacao: TStringField;
    Dega: TDataSource;
    plQuadros: TPanel;
    tac: TUniQuery;
    tactaccodigo: TIntegerField;
    tacgaccodigo: TIntegerField;
    tactacidentificacao: TStringField;
    ach: TUniQuery;
    achachchave: TIntegerField;
    achchdchave: TIntegerField;
    achtaccodigo: TIntegerField;
    achachinicio: TDateTimeField;
    gac: TUniQuery;
    gacgaccodigo: TIntegerField;
    gacgacidentificacao: TStringField;
    GroupBox2: TGroupBox;
    chddescricao: TDBMemo;
    GroupBox3: TGroupBox;
    DBGtch: TDBGrid;
    plestagios: TPanel;
    Panel2: TPanel;
    DBCtrlGridEstagios: TDBCtrlGrid;
    echregistro: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    plramais: TPanel;
    ajuach: TUniQuery;
    ajuachachchave: TIntegerField;
    ajuachchdchave: TIntegerField;
    ajuachtaccodigo: TIntegerField;
    ajuachachinicio: TDateTimeField;
    ajuachachfinal: TDateTimeField;
    ajuachclbcodigo: TIntegerField;
    ActPorNoQuadro: TAction;
    egaclbcodigo: TIntegerField;
    ajuachclbatribuinte: TIntegerField;
    egaclbidentificacao: TStringField;
    achclbcodigo: TIntegerField;
    ajutrc: TUniQuery;
    ajutrctrcchave: TIntegerField;
    ajutrcchdchave: TIntegerField;
    ajutrctrcregistro: TDateTimeField;
    ajutrcclbcodigo: TIntegerField;
    ajutrctrcdescricao: TStringField;
    ajurch: TUniQuery;
    ajurchrchchave: TIntegerField;
    ajurchchdchave: TIntegerField;
    ajurchrchregistro: TDateTimeField;
    ajurchclbcodigo: TIntegerField;
    ajurchrchatribuinte: TIntegerField;
    ajutrctrctipo: TIntegerField;
    uqtabelaclbresponsavel: TStringField;
    Splitter2: TSplitter;
    dsSnep: TDataSource;
    snep: TUniQuery;
    snepcalldate: TDateTimeField;
    snepclid: TStringField;
    snepsrc: TStringField;
    snepdst: TStringField;
    DBGrid3: TDBGrid;
    snepuserfield: TStringField;
    trchint: TUniQuery;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActTramitarExecute(Sender: TObject);
    procedure DBGridtrcDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DStrcDataChange(Sender: TObject; Field: TField);
    procedure btDonwloadClick(Sender: TObject);
    procedure btConectaCentralClick(Sender: TObject);
    procedure btDesconectarCentralClick(Sender: TObject);
    procedure btAtenderClick(Sender: TObject);
    procedure btDiscarClick(Sender: TObject);
    procedure VerificaStatusRamaisTimer(Sender: TObject);
    procedure DBGridLigacoesEnter(Sender: TObject);
    procedure DBGridLigacoesExit(Sender: TObject);
    procedure ActLigacaoExecute(Sender: TObject);
    procedure btGerarChamadoClick(Sender: TObject);
    procedure btGerarTramiteClick(Sender: TObject);
    procedure DBGridLigacoesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActEstagioExecute(Sender: TObject);
    procedure ActAtribuirExecute(Sender: TObject);
    procedure spbTodosExecute(Sender: TObject);
    procedure spbEmAbertoExecute(Sender: TObject);
    procedure spbEncerradosExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActProgramacaoExecute(Sender: TObject);
    procedure PhoneEKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure btDiversaClick(Sender: TObject);
    procedure btExcluirTramiteClick(Sender: TObject);
    procedure pldialigacaoClick(Sender: TObject);
    procedure DBGtchDblClick(Sender: TObject);
    procedure spbListaExecute(Sender: TObject);
    procedure spbQuadroExecute(Sender: TObject);
    procedure ActPorNoQuadroExecute(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure plQuadroChamadoDblClick(Sender: TObject);
  private
    asterisk: TUniconnection;
    procedure Carregar; override;
    function CarregaFrame(pacote: string; destino: TPanel; conexao: TUniconnection): thandle;
    procedure OnZoiperCallHang(Sender: TObject; const call: IZoiperCall);
    procedure OnZoiperAccountRegister(Sender: TObject; const Account: IZoiperAccount);
    procedure OnZoiperAccountRegisterFail(Sender: TObject; const Account: IZoiperAccount; cause_code: Integer);
    procedure OnZoiperAccountUnregister(Sender: TObject; const Account: IZoiperAccount);
    procedure OnZoiperCallAccept(Sender: TObject; const call: IZoiperCall);
    procedure OnZoiperCallFail(Sender: TObject; const call: IZoiperCall; cause_code: Integer);
    procedure OnZoiperCallHold(Sender: TObject; const call: IZoiperCall);
    procedure OnZoiperCallIncoming(ASender: TObject; const call: IZoiperCall);
    procedure OnZoiperCallReject(Sender: TObject; const call: IZoiperCall; cause_code: Integer);
    procedure OnZoiperCallRing(Sender: TObject; const call: IZoiperCall);
    procedure OnZoiperCallUnhold(Sender: TObject; const call: IZoiperCall);
    procedure OnZoiperContactChange(Sender: TObject; const Contact: IZoiperContact);
    procedure OnZoiperContactCreate(Sender: TObject; const Contact: IZoiperContact; const Name: WideString);
    procedure OnZoiperContactDelete(Sender: TObject; const Contact: IZoiperContact);
    procedure OnZoiperContactMessageFailed(Sender: TObject; const Contact: IZoiperContact; const message: WideString; reason: Integer);
    procedure OnZoiperContactMessageRecv(Sender: TObject; const Contact: IZoiperContact; const message: WideString);
    procedure OnZoiperContactMessageSent(Sender: TObject; const Contact: IZoiperContact; const message: WideString);
    procedure OnZoiperContactStatus(Sender: TObject; const Contact: IZoiperContact; Status: EContactExtendedState);
    procedure CriaListaRamais;
    procedure criapaineisandamentos;
    procedure MontaPainelSituacao(vPainelGrupo: TPanel; vGacCodigo: string; vEtdCodigo: String);
    procedure vlDBLookupComboBoxCloseUp(Sender: TObject);
    procedure ItemOrigemMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ItemOrigemDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ItemOrigemDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ItemOrigemEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure MoveChamado(vChdChave: String; vClbCodigo: string; vTacOrigem: String; vTacDestino: String);
    procedure AjustaChamado(vChdChave, vClbCodigo, vTacOrigem, vTacDestino: String);
    procedure RegistraTramite(vlChdChave, vlEtdCodigoOrigem, vlEtdCodigoDestino, vlTacOrigem, vlTacDestino: String);
    { Private declarations }
  public
    { Public declarations }
    CalcWindow: Cardinal;
    CalcProcessID: Cardinal;

    ZoiperDisp: IZoiperPhone;
    ZoiperAPI: TZoiperAPI_;
    IncomingCall: IZoiperCall;
    OutgoingCall: IZoiperCall;
    function XContactStateToText(State: EContactExtendedState): string;

  end;

var
  frachd: Tfrachd;

  // Início ID do Módulo fravnd
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Chamados';

  // Fim ID do Módulo fravndv

implementation

uses
  ufchd, uftrc, ufrlg, ufech, ufrch, ufprogramacao, ufouvir;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

const
  IID_IDISPATCH: TGUID = '{00020400-0000-0000-C000-000000000046}';

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frachd := Tfrachd.Create(pCargaFrame);
  frachd.CarregaFrame('MAsterisk', frachd.plLigacoes, frachd.ZCone);

  // frachd.spbLista.Execute;
  frachd.spbEmAberto.Execute;

end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frachd := Tfrachd.Create(pCargaFrame);
  try
    frachd.CriaAcoesDeAcesso;
  finally
    frachd.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure ExecuteAndWait(const aCommando: string);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := trim(aCommando);
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := SW_HIDE;
  end;

  if CreateProcess(nil, pchar(tmpProgram), nil, nil, true, CREATE_NO_WINDOW, nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    // loop every 10 ms
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      Application.ProcessMessages;
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end
  else
  begin
    RaiseLastOSError;
  end;
end;

procedure Tfrachd.Carregar;
begin

  // MontaFiltroEsp(tec, '');

  inherited Carregar;
  plQuadroSituacao.Visible := false;
  DBGLista.Visible := true;
  DBGLista.Align := alClient;
  plGriChamados.Visible := true;

  asterisk := TUniconnection.Create(self);
  asterisk.Database := 'snep';
  asterisk.Server := '192.168.5.189';
  asterisk.Username := 'snep';
  asterisk.Password := 'sneppass';
  asterisk.ProviderName := 'Mysql';
  asterisk.Connect;

end;

procedure Tfrachd.criapaineisandamentos;
var
  i: Integer;
  vlPainelGrupo: TPanel;
  vlPainelFiltroGrupo: TPanel;
  vlPainelTituloGrupo: TPanel;
  vlGacCodigo: String;
  vlQueryEtd: TUniQuery;
  vlDSEtd: TDataSource;

  vlDBLookupComboBox: TDBLookupComboBox;

begin

  while true do
  begin
    try
      if plQuadros.Components[plQuadros.ComponentCount - 1] is TPanel then
        (plQuadros.Components[plQuadros.ComponentCount - 1] as TPanel).Destroy;
    except

    end;

    if plQuadros.ComponentCount = 0 then
      break;

  end;

  gac.Close;
  gac.Open;

  while not gac.Eof do
  begin
    vlPainelGrupo := TPanel.Create(plQuadros);
    vlPainelGrupo.Parent := plQuadros;
    vlPainelGrupo.Align := alBottom;
    vlPainelGrupo.Height := round(plQuadros.Height / gac.RecordCount);
    vlPainelGrupo.Align := alTop;
    vlPainelGrupo.tag := gacgaccodigo.AsInteger;
    vlPainelGrupo.Name := 'PainelGac' + gacgaccodigo.AsString;
    vlPainelGrupo.Caption := '';
    vlPainelGrupo.ParentBackground := false;
    vlPainelGrupo.Color := clWhite;

    vlPainelTituloGrupo := TPanel.Create(vlPainelGrupo);
    vlPainelTituloGrupo.Parent := vlPainelGrupo;
    vlPainelTituloGrupo.BorderWidth := 4;
    vlPainelTituloGrupo.Alignment := taLeftJustify;
    vlPainelTituloGrupo.Caption := gacgacidentificacao.AsString;
    vlPainelTituloGrupo.Align := alTop;
    vlPainelTituloGrupo.Height := 25;
    vlPainelTituloGrupo.tag := gacgaccodigo.AsInteger;
    vlPainelTituloGrupo.ParentBackground := false;
    vlPainelTituloGrupo.Color := clSilver;

    vlQueryEtd := TUniQuery.Create(vlPainelGrupo);
    vlQueryEtd.Connection := ZCone;
    vlQueryEtd.SQL.Text := ' SELECT distinct ega.clbcodigo, clb.clbidentificacao FROM clb ';
    vlQueryEtd.SQL.Add('INNER JOIN ega ON clb.clbcodigo = ega.clbcodigo ');
    vlQueryEtd.SQL.Add('INNER JOIN gac ON gac.gaccodigo = ega.gaccodigo ');
    vlQueryEtd.SQL.Add('where ega.gaccodigo=' + gacgaccodigo.AsString + ' ');
    vlQueryEtd.SQL.Add('  ORDER BY  clb.clbidentificacao');
    vlQueryEtd.Open;

    vlDSEtd := TDataSource.Create(vlPainelGrupo);
    vlDSEtd.DataSet := vlQueryEtd;

    vlDBLookupComboBox := TDBLookupComboBox.Create(vlPainelGrupo);
    vlDBLookupComboBox.Parent := vlPainelTituloGrupo;
    vlDBLookupComboBox.Align := alRight;
    vlDBLookupComboBox.Width := 150;
    vlDBLookupComboBox.ListSource := vlDSEtd;
    vlDBLookupComboBox.ListField := 'clbidentificacao';
    vlDBLookupComboBox.KeyField := 'clbcodigo';
    vlDBLookupComboBox.OnCloseUp := vlDBLookupComboBoxCloseUp;

    vlGacCodigo := gacgaccodigo.AsString;

    // MontaPainelSituacao(vlPainelGrupo, vlGacCodigo);

    gac.Next;
  end;
end;

procedure Tfrachd.vlDBLookupComboBoxCloseUp(Sender: TObject);
var
  vlGacCodigo: String;
  vlEtdCodigo: string;
  vlPainelGrupo: TPanel;
begin
  inherited;
  vlGacCodigo := IntToStr(((Sender as TDBLookupComboBox).Parent as TPanel).tag);
  vlEtdCodigo := (Sender as TDBLookupComboBox).ListSource.DataSet.FindField('clbcodigo').AsString;
  vlPainelGrupo := (((Sender as TDBLookupComboBox).Parent as TPanel).Parent as TPanel);
  MontaPainelSituacao(vlPainelGrupo, vlGacCodigo, vlEtdCodigo);
end;

procedure Tfrachd.MontaPainelSituacao(vPainelGrupo: TPanel; vGacCodigo: string; vEtdCodigo: String);
var
  vlPainelSituacao: TPanel;
  vlPainelTitulo: TPanel;
  vlPainelLista: TPanel;
  // vlListaChamado: TListBox;

  vlPainelChamado: TPanel;
  c, l, X: Integer;

begin
  try
    SendMessage(vPainelGrupo.Handle, WM_SETREDRAW, Integer(false), 0);
    X := 0;
    while true do
    begin
      try
        if vPainelGrupo.Components[vPainelGrupo.ComponentCount - 1] is TPanel then
          (vPainelGrupo.Components[vPainelGrupo.ComponentCount - 1] as TPanel).Destroy;
      except

      end;

      if vPainelGrupo.ComponentCount = 0 then
        break;
      if X = 12 then
        break
      else
        X := X + 1;

    end;

    tac.Close;
    tac.FilterSQL := 'gaccodigo=' + vGacCodigo;
    tac.Open;
    while not tac.Eof do
    begin
      vlPainelSituacao := TPanel.Create(vPainelGrupo);
      vlPainelSituacao.Parent := vPainelGrupo;
      vlPainelSituacao.Align := alRight;
      vlPainelSituacao.Width := round(vPainelGrupo.Width / tac.RecordCount);
      vlPainelSituacao.Caption := '';
      vlPainelSituacao.tag := tactaccodigo.AsInteger;
      vlPainelSituacao.Align := alLeft;

      vlPainelTitulo := TPanel.Create(vlPainelSituacao);
      vlPainelTitulo.Parent := vlPainelSituacao;
      vlPainelTitulo.Align := alTop;
      vlPainelTitulo.Caption := tactacidentificacao.AsString;
      vlPainelTitulo.Height := 20;

      ach.Close;
      ach.ParamByName('clbcodigo').AsString := vEtdCodigo;
      ach.ParamByName('taccodigo').AsInteger := tactaccodigo.AsInteger;
      ach.Open;

      vlPainelLista := TPanel.Create(vlPainelSituacao);
      vlPainelLista.Parent := vlPainelSituacao;
      vlPainelLista.Align := alClient;
      vlPainelLista.Caption := IntToStr(vPainelGrupo.tag);
      vlPainelLista.Font.Color := vlPainelLista.Color;
      vlPainelLista.OnEndDrag := ItemOrigemEndDrag;
      vlPainelLista.OnDragOver := ItemOrigemDragOver;
      vlPainelLista.OnDragDrop := ItemOrigemDragDrop;
      vlPainelLista.tag := tactaccodigo.AsInteger;
      vlPainelLista.Name := 'PainelTac' + tactaccodigo.AsString;
      vlPainelLista.HelpKeyword := vEtdCodigo;
      c := 0;
      l := 0;
      while not ach.Eof do
      begin

        consulta.Close;
        consulta.SQL.Text := 'select teccodigo from ech where  chdchave=' + achchdchave.AsString + ' order by echchave desc limit 1';
        consulta.Open;

        if (consulta.FieldByName('teccodigo').AsString <> '3') and (consulta.FieldByName('teccodigo').AsString <> '7') and (consulta.FieldByName('teccodigo').AsString <> '11') then
        begin

          vlPainelChamado := TPanel.Create(vlPainelLista);
          vlPainelChamado.Parent := vlPainelLista;
          vlPainelChamado.tag := achchdchave.AsInteger;

          vlPainelChamado.Caption := achchdchave.AsString + #13 + #10 + ' ' + timetostr(now - achachinicio.AsDateTime);

          vlPainelChamado.Height := 25;
          vlPainelChamado.Width := 80;
          vlPainelChamado.ShowHint := true;
          vlPainelChamado.ParentFont := false;
          vlPainelChamado.OnMouseDown := ItemOrigemMouseDown;
          vlPainelChamado.OnEndDrag := ItemOrigemEndDrag;
          vlPainelChamado.OnDragOver := ItemOrigemDragOver;
          vlPainelChamado.OnDragDrop := ItemOrigemDragDrop;
          vlPainelChamado.Name := 'PainelChd' + achchdchave.AsString;
          vlPainelChamado.HelpKeyword := achclbcodigo.AsString;
          vlPainelChamado.ParentBackground := false;
          vlPainelChamado.OnDblClick := plQuadroChamadoDblClick;

          vlPainelChamado.Font.Color := clblack;
          consulta.Close;
          consulta.SQL.Text := 'select tprcor from tpr,chd where chd.tprcodigo=tpr.tprcodigo and chdchave=' + achchdchave.AsString;
          consulta.Open;

          if consulta.FieldByName('tprcor').AsString <> '' then
            vlPainelChamado.Color := StringToColor(consulta.FieldByName('tprcor').AsString);

          consulta.Close;
          consulta.SQL.Text := 'select etdapelido, chdidentificacao, chdregistro from chd, etd where etd.etdcodigo=chd.etdcodigo and chdchave=' + achchdchave.AsString;
          consulta.Open;

          trchint.Close;
          trchint.SQL.Text := 'SELECT  trcdescricao FROM trc where trc.trctipo=0  and chdchave=' + achchdchave.AsString + ' order by trcregistro desc limit 1';
          trchint.Open;

          vlPainelChamado.Hint := consulta.FieldByName('chdregistro').AsString + '  ' + consulta.FieldByName('etdapelido').AsString + #13 + #13 + 'Tramite: ' +
           copy( trchint.FieldByName('trcdescricao').AsString ,1,40)+#13+
           copy( trchint.FieldByName('trcdescricao').AsString ,41,40)+#13+
           copy( trchint.FieldByName('trcdescricao').AsString ,81,40)+#13+
           copy( trchint.FieldByName('trcdescricao').AsString ,121,40)+#13+
           copy( trchint.FieldByName('trcdescricao').AsString ,161,40)

           + #13 + #13 + LowerCase(consulta.FieldByName('chdidentificacao').AsString);

          if (vlPainelChamado.Width + c) < vlPainelSituacao.Width then
          begin
            vlPainelChamado.Left := c;
            vlPainelChamado.Top := l;

            c := c + vlPainelChamado.Width
          end
          else
          begin
            c := vlPainelChamado.Width;
            l := l + vlPainelChamado.Height;
            vlPainelChamado.Top := l;
          end;

        end;

        ach.Next;
      end;
      tac.Next;
    end;
  finally

    SendMessage(vPainelGrupo.Handle, WM_SETREDRAW, Integer(true), 0);
    // Update client area
    RedrawWindow(vPainelGrupo.Handle, nil, 0, RDW_INVALIDATE or RDW_UPDATENOW or RDW_ALLCHILDREN);

  end;
end;

procedure Tfrachd.ItemOrigemDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  TPanel(Sender).EndDrag(true);
end;

procedure Tfrachd.ItemOrigemDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := true
end;

procedure Tfrachd.ItemOrigemEndDrag(Sender, Target: TObject; X, Y: Integer);
var
  vlChdChave: string;
  vlTacOrigem: String;
  vlTacDestino: String;
  i: Integer;
  vlEtdCodigoOrigem: string;
  vlEtdCodigoDestino: string;
  vlPnOrigem: TPanel;
  vlPnDestino: TPanel;
  vlPainelGrupoOrigem: TPanel;
  vlPainelGrupoDestino: TPanel;
  vlGacCodigoOrigem: String;
  vlGacCodigoDestino: string;

begin

  if Target <> nil then
  begin

    if TPanel(Target) = TPanel(Sender) then
      exit;

    if pos('PainelChd', TPanel(Target).Name) > 0 then
      vlPnDestino := (TPanel(Target).Parent as TPanel)
    else
      vlPnDestino := TPanel(Target);

    vlPnOrigem := TPanel(Sender);

    vlPainelGrupoOrigem := ((vlPnOrigem as TPanel).Parent as TPanel);
    vlPainelGrupoDestino := (vlPnDestino as TPanel);
    vlGacCodigoOrigem := ((vlPnOrigem as TPanel).Parent as TPanel).Caption;
    vlGacCodigoDestino := (vlPnDestino as TPanel).Caption;

    vlPainelGrupoOrigem := (((vlPainelGrupoOrigem as TPanel).Parent as TPanel).Parent as TPanel);
    vlPainelGrupoDestino := (((vlPainelGrupoDestino as TPanel).Parent as TPanel).Parent as TPanel);

    vlTacOrigem := IntToStr(TPanel((vlPnOrigem).Parent as TPanel).tag);
    vlTacDestino := IntToStr(TPanel((vlPnDestino).Parent as TPanel).tag);

    vlEtdCodigoOrigem := TPanel(vlPnOrigem).HelpKeyword;
    vlEtdCodigoDestino := TPanel(vlPnDestino).HelpKeyword;

    vlChdChave := TPanel(vlPnOrigem).Name;
    vlChdChave := trim(copy(vlChdChave, 10, 10));

    AjustaChamado(vlChdChave, vlEtdCodigoOrigem, vlTacOrigem, vlTacDestino);

    RegistraTramite(vlChdChave, vlEtdCodigoOrigem, vlEtdCodigoDestino, vlTacOrigem, vlTacDestino);

    MoveChamado(vlChdChave, vlEtdCodigoDestino, vlTacOrigem, vlTacDestino);
    MontaPainelSituacao(vlPainelGrupoOrigem, vlGacCodigoOrigem, vlEtdCodigoOrigem);

    if vlPainelGrupoOrigem <> vlPainelGrupoDestino then
      MontaPainelSituacao(vlPainelGrupoDestino, vlGacCodigoDestino, vlEtdCodigoDestino);

  end;

end;

procedure Tfrachd.RegistraTramite(vlChdChave: String; vlEtdCodigoOrigem: String; vlEtdCodigoDestino: String; vlTacOrigem: String; vlTacDestino: String);
var
  vlTacOrigemIdentificacao: string;
  vlTacDestinoIdentificacao: string;

  vlClbOrigemIdentificacao: string;
  vlClbDestinoIdentificacao: string;

begin
  consulta.Close;
  consulta.SQL.Text := 'select tacidentificacao from tac where taccodigo=' + vlTacOrigem;
  consulta.Open;
  vlTacOrigemIdentificacao := consulta.FieldByName('tacidentificacao').AsString;

  consulta.Close;
  consulta.SQL.Text := 'select tacidentificacao from tac where taccodigo=' + vlTacDestino;
  consulta.Open;
  vlTacDestinoIdentificacao := consulta.FieldByName('tacidentificacao').AsString;

  consulta.Close;
  consulta.SQL.Text := 'select clbidentificacao from clb where clbcodigo=' + vlEtdCodigoOrigem;
  consulta.Open;
  vlClbOrigemIdentificacao := consulta.FieldByName('clbidentificacao').AsString;

  consulta.Close;
  consulta.SQL.Text := 'select clbidentificacao from clb where clbcodigo=' + vlEtdCodigoDestino;
  consulta.Open;
  vlClbDestinoIdentificacao := consulta.FieldByName('clbidentificacao').AsString;

  ajutrc.Close;
  ajutrc.Open;

  ajutrc.Append;
  ajutrcchdchave.AsString := vlChdChave;
  ajutrctrcregistro.AsString := agora(Application, ZCone);
  ajutrcclbcodigo.AsInteger := acesso.Usuario;

  ajutrctrcdescricao.AsString := 'Ajustado o andamento de ' + vlTacOrigemIdentificacao + ' para ' + vlTacDestinoIdentificacao;

  if vlClbOrigemIdentificacao <> vlClbDestinoIdentificacao then
    ajutrctrcdescricao.AsString := ajutrctrcdescricao.AsString + ' e atribuido de ' + vlClbOrigemIdentificacao + ' para ' + vlClbDestinoIdentificacao;
  ajutrctrctipo.AsInteger := 1;
  ajutrc.Post;

  if vlClbOrigemIdentificacao <> vlClbDestinoIdentificacao then
  begin
    ajurch.Close;
    ajurch.Open;
    ajurch.Append;
    ajurchchdchave.AsString := vlChdChave;
    ajurchrchregistro.AsString := agora(Application, ZCone);
    ajurchclbcodigo.AsString := vlEtdCodigoDestino;
    ajurchrchatribuinte.AsInteger := acesso.Usuario;
    ajurch.Post;

  end;

end;

procedure Tfrachd.AjustaChamado(vChdChave: String; vClbCodigo: string; vTacOrigem: String; vTacDestino: String);
begin
  ajuach.Close;
  ajuach.ParamByName('chdchave').AsString := vChdChave;
  ajuach.ParamByName('clbCodigo').AsString := vClbCodigo;
  ajuach.ParamByName('tacCodigo').AsString := vTacOrigem;
  ajuach.FilterSQL := 'achfinal is null';
  ajuach.Open;

  ajuach.Edit;
  ajuachachfinal.AsString := agora(Application, ZCone);
  ajuachclbatribuinte.AsInteger := acesso.Usuario;
  ajuach.Post;

end;

procedure Tfrachd.MoveChamado(vChdChave: String; vClbCodigo: string; vTacOrigem: String; vTacDestino: String);
begin

  ajuach.Close;
  ajuach.ParamByName('chdchave').AsString := vChdChave;
  ajuach.ParamByName('clbCodigo').AsString := vClbCodigo;
  ajuach.ParamByName('taccodigo').AsString := vTacDestino;
  ajuach.FilterSQL := 'achfinal is null';
  ajuach.Open;

  ajuach.Append;
  ajuachchdchave.AsString := vChdChave;
  ajuachclbcodigo.AsString := vClbCodigo;
  ajuachtaccodigo.AsString := vTacDestino;
  ajuachachinicio.AsString := agora(Application, ZCone);
  ajuachclbatribuinte.AsInteger := acesso.Usuario;
  ajuach.Post;

end;

procedure Tfrachd.ItemOrigemMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) { and ((Sender = ListaOrigem) or (Sender = ListaDestino)) } then
    TPanel(Sender).BeginDrag(false) // inicia a operacao
    // TListBox(Sender).BeginDrag(False) // inicia a operacao
end;

function Tfrachd.XContactStateToText(State: EContactExtendedState): string;
begin
  case State of
    CONTACT_XSTATE_OFFLINE:
      result := 'Desconectado';
    CONTACT_XSTATE_INVISIBLE:
      result := 'Invisivel';
    CONTACT_XSTATE_ONLINE:
      result := 'Conectado';
    CONTACT_XSTATE_AWAY:
      result := 'Livre';
    CONTACT_XSTATE_BUSY:
      result := 'Ocupado';
    CONTACT_XSTATE_PHONE:
      result := 'No telefone';
    CONTACT_XSTATE_LUNCH:
      result := 'Lanche';
    CONTACT_XSTATE_BE_BACK:
      result := 'Ja volto';
  end;
end;

procedure Tfrachd.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfchd, uqtabelachdchave.AsString, '');
end;

procedure Tfrachd.ActAtribuirExecute(Sender: TObject);
var

  vlRchChave: string;
begin
  inherited;
  if CriaFormulario(tfrch, '', uqtabelachdchave.AsString) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select rch.rchchave, clbidentificacao FROM rch,clb where  rch.clbcodigo=clb.clbcodigo and chdchave=' + uqtabelachdchave.AsString +
      '  order by rchchave desc limit 1';
    consulta.Open;

    vlRchChave := consulta.FieldByName('rchchave').AsString;

    ajutrc.Close;
    ajutrc.Open;

    ajutrc.Append;
    ajutrcchdchave.AsString := uqtabelachdchave.AsString;
    ajutrctrcregistro.AsString := agora(Application, ZCone);
    ajutrcclbcodigo.AsInteger := acesso.Usuario;
    ajutrctrcdescricao.AsString := 'Aterado responsável para ' + consulta.FieldByName('clbidentificacao').AsString;
    ajutrctrctipo.AsInteger := 1;
    ajutrc.Post;

    consulta.Close;
    consulta.SQL.Text := 'update chd set  rchchave=' + vlRchChave + ' where chdchave=' + uqtabelachdchave.AsString;
    consulta.ExecSQL;

    self.ActAtualizar.Execute;

  end;
end;

procedure Tfrachd.ActAtualizarExecute(Sender: TObject);
var
  vfilsitu: string;
begin

  if spbEmAberto.Checked then
    vfilsitu := ' (tec.tecsituacao<>9 ) '
  else if spbEncerrados.Checked then
    vfilsitu := ' (tec.tecsituacao=9)'
  else if spbTodos.Checked then
    vfilsitu := ''
  else
    (* Força abertura da tela com opção "Em Aberto" selecionada *)
    vfilsitu := '';

  self.txtfiltrosql := vfilsitu;

  inherited;

  resumo1.Close;
  resumo1.Open;

  resumo2.Close;
  resumo2.Open;

  try
    tcm.Close;
    tcm.ParamByName('datainicial').AsDate := fmddtinicial.Field.AsFloat;
    tcm.ParamByName('datafinal').AsDate := fmddtfinal.Field.AsFloat;
    tcm.Open;

  except

  end;

  try
    tch.Close;
    tch.Open;
    tch.First;

  except

  end;

end;

procedure Tfrachd.ActEstagioExecute(Sender: TObject);
var
  vEchChave: string;
  vlTecCodigo: String;
begin
  inherited;
  if CriaFormulario(tfech, '', uqtabelachdchave.AsString) then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select  ech.echchave, ech.teccodigo, tecidentificacao FROM ech,tec where ech.teccodigo=tec.teccodigo and chdchave=' + uqtabelachdchave.AsString +
      '  order by echchave desc limit 1';
    consulta.Open;

    vEchChave := consulta.FieldByName('echchave').AsString;

    ajutrc.Close;
    ajutrc.Open;

    ajutrc.Append;
    ajutrcchdchave.AsString := uqtabelachdchave.AsString;
    ajutrctrcregistro.AsString := agora(Application, ZCone);
    ajutrcclbcodigo.AsInteger := acesso.Usuario;
    ajutrctrcdescricao.AsString := 'Alterado o estágio do chamado para ' + consulta.FieldByName('tecidentificacao').AsString;
    ajutrctrctipo.AsInteger := 1;
    ajutrc.Post;

    vlTecCodigo := consulta.FieldByName('teccodigo').AsString;

    consulta.Close;
    consulta.SQL.Text := 'update chd set chd.teccodigo=' + vlTecCodigo + ' , echchave=' + vEchChave + ' where chdchave=' + uqtabelachdchave.AsString;
    consulta.ExecSQL;

    self.ActAtualizar.Execute;

  end;

end;

procedure Tfrachd.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfchd, '', '');
end;

procedure Tfrachd.ActLigacaoExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfrlg, rlgrlgchave.AsString, '');

end;

procedure Tfrachd.ActPorNoQuadroExecute(Sender: TObject);
var
  vlClbCodigo: string;
begin
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select clbcodigo from rch where chdchave=' + uqtabelachdchave.AsString + ' order by rchchave desc limit 1';
  consulta.Open;

  vlClbCodigo := consulta.FieldByName('clbcodigo').AsString;

  if vlClbCodigo <> acesso.Usuario.ToString then
  begin
    ShowMessage('Este chamado esta atribuido a outro responsável.' + #13 + 'Não pode ser enviado ao quadro de tarefas!');
    exit;
  end;

  consulta.Close;
  consulta.SQL.Text := 'SELECT tac.taccodigo, ega.clbcodigo FROM ega ';
  consulta.SQL.Add('INNER JOIN tac ON ega.gaccodigo = tac.gaccodigo ');
  consulta.SQL.Add('WHERE clbcodigo=' + vlClbCodigo + ' ');
  consulta.SQL.Add('ORDER BY tac.tacordem LIMIT 1');
  consulta.Open;

  ajuach.Close;
  ajuach.ParamByName('chdchave').AsString := uqtabelachdchave.AsString;
  ajuach.ParamByName('clbcodigo').AsString := consulta.FieldByName('clbcodigo').AsString;
  ajuach.ParamByName('taccodigo').AsString := consulta.FieldByName('taccodigo').AsString;
  ajuach.FilterSQL := 'achfinal is null';
  ajuach.Open;

  ajuach.Append;
  ajuachchdchave.AsString := uqtabelachdchave.AsString;
  ajuachclbcodigo.AsString := consulta.FieldByName('clbcodigo').AsString;
  ajuachtaccodigo.AsString := consulta.FieldByName('taccodigo').AsString;
  ajuachachinicio.AsString := agora(Application, ZCone);
  ajuachclbatribuinte.AsInteger := acesso.Usuario;
  ajuach.Post;

  ajutrc.Close;
  ajutrc.Open;

  ajutrc.Append;
  ajutrcchdchave.AsString := uqtabelachdchave.AsString;
  ajutrctrcregistro.AsString := agora(Application, ZCone);
  ajutrcclbcodigo.AsInteger := acesso.Usuario;
  ajutrctrcdescricao.AsString := 'Enviado para quadro de Controle de Atividade';
  ajutrctrctipo.AsInteger := 1;
  ajutrc.Post;

  spbQuadro.Execute;

end;

procedure Tfrachd.ActProgramacaoExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfprogramacao, uqtabelachdchave.AsString, '');
end;

procedure Tfrachd.spbEmAbertoExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := true;
  spbEncerrados.Checked := false;
  spbTodos.Checked := false;
  ActAtualizar.Execute;

end;

procedure Tfrachd.spbEncerradosExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := false;
  spbEncerrados.Checked := true;
  spbTodos.Checked := false;
  ActAtualizar.Execute;

end;

procedure Tfrachd.spbListaExecute(Sender: TObject);
begin
  inherited;
  plQuadroSituacao.Visible := false;
  DBGLista.Visible := true;
  DBGLista.Align := alClient;
  plGriChamados.Visible := true;
  ActAtualizar.Execute;
end;

procedure Tfrachd.spbQuadroExecute(Sender: TObject);
begin
  inherited;
  ega.Open;
  plQuadroSituacao.Visible := true;
  DBGLista.Visible := false;
  plQuadroSituacao.Align := alClient;
  plGriChamados.Visible := false;
  criapaineisandamentos;
end;

procedure Tfrachd.spbTodosExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := false;
  spbEncerrados.Checked := false;
  spbTodos.Checked := true;
  ActAtualizar.Execute;

end;

procedure Tfrachd.ActTramitarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tftrc, '', uqtabelachdchave.AsString);
end;

procedure Tfrachd.btAtenderClick(Sender: TObject);
var
  i: Integer;
  n: string;
  vlNumeroBinado: string;
begin
  inherited;
  vlNumeroBinado := rlgrlgbinagem.AsString;
  if btAtender.Caption = 'Desligar' then
  begin
    PhoneE.Text := '';
    try
      btAtender.Caption := 'Atender';
      ZoiperAPI.Hang;
      plTelefone.Color := clBtnFace;
      Application.ProcessMessages;

    except
      on E: Exception do
        Memo.Lines.Add('Error = ' + E.message);
    end;
  end
  else if btAtender.Caption = 'Atender' then
  begin
    VerificaStatusRamais.Enabled := false;

    if length(vlNumeroBinado) = 11 then
    begin
      n := copy(vlNumeroBinado, 2, 10);
      etd.Close;
      etd.SQL.Text := ' SELECT etd.etdcodigo, etdidentificacao, etftelefone FROM etd, etf WHERE etd.etdcodigo=etf.etdcodigo ';
      etd.SQL.Add('  and etftelefone like ' + QuotedStr('%' + n + '%'));

      etd.Open;

    end;

    rlg.Edit;
    rlgrlgoperacao.AsInteger := 9;
    rlgclbcodigo.AsInteger := acesso.Usuario;

    if etd.RecordCount = 1 then
      rlgetdcodigo.AsInteger := etd.FieldByName('etdcodigo').AsInteger;

    rlg.Post;

    if Assigned(IncomingCall) then
    begin
      btAtender.Caption := 'Desligar';

      IncomingCall.Accept;

      ActLigacao.Execute;

    end;

    VerificaStatusRamais.Enabled := true;
  end;

end;

procedure Tfrachd.btConectaCentralClick(Sender: TObject);

begin
  inherited;

  CriaListaRamais;
  sitrlg.Close;
  sitrlg.Open;

  VerificaStatusRamais.Enabled := true;
  plTelefone.Visible := true;

  // try
  OleCheck(CoCreateInstance(CLASS_ZoiperAPI_, nil, CLSCTX_INPROC_SERVER or CLSCTX_LOCAL_SERVER, IZoiperPhone, ZoiperDisp));
  ZoiperAPI := TZoiperAPI_.Create(nil);
  ZoiperAPI.OnZoiperCallHang := OnZoiperCallHang;
  ZoiperAPI.OnZoiperCallRing := OnZoiperCallRing;
  ZoiperAPI.OnZoiperCallHold := OnZoiperCallHold;
  ZoiperAPI.OnZoiperCallUnhold := OnZoiperCallUnhold;
  ZoiperAPI.OnZoiperCallAccept := OnZoiperCallAccept;
  ZoiperAPI.OnZoiperCallReject := OnZoiperCallReject;
  ZoiperAPI.OnZoiperCallFail := OnZoiperCallFail;
  ZoiperAPI.OnZoiperContactCreate := OnZoiperContactCreate;
  ZoiperAPI.OnZoiperContactDelete := OnZoiperContactDelete;
  ZoiperAPI.OnZoiperContactChange := OnZoiperContactChange;
  ZoiperAPI.OnZoiperContactStatus := OnZoiperContactStatus;
  ZoiperAPI.OnZoiperContactMessageRecv := OnZoiperContactMessageRecv;
  ZoiperAPI.OnZoiperContactMessageSent := OnZoiperContactMessageSent;
  ZoiperAPI.OnZoiperContactMessageFailed := OnZoiperContactMessageFailed;
  ZoiperAPI.OnZoiperAccountRegister := OnZoiperAccountRegister;
  ZoiperAPI.OnZoiperAccountUnregister := OnZoiperAccountUnregister;
  ZoiperAPI.OnZoiperAccountRegisterFail := OnZoiperAccountRegisterFail;
  ZoiperAPI.OnZoiperCallIncoming := OnZoiperCallIncoming;

  ZoiperAPI.ConnectTo(ZoiperDisp);


  // except
  // on E: Exception do
  // Memo.Lines.Add('Erro = ' + E.message);
  // end;

end;

procedure Tfrachd.CriaListaRamais;
var
  vlPainel: TPanel;

begin
  rlg.Close;
  rlg.Open;

  clb.Close;
  clb.Open;

  while not clb.Eof do
  begin

    vlPainel := self.FindComponent('plRamal' + clbclbsipramal.AsString) as TPanel;
    if vlPainel = nil then
    begin

      vlPainel := TPanel.Create(self);
      vlPainel.Parent := plramais;
      vlPainel.Align := alBottom;
      vlPainel.BorderWidth := 3;
      vlPainel.Height := 18;
      vlPainel.Alignment := taLeftJustify;
      vlPainel.Name := 'plRamal' + clbclbsipramal.AsString;
      vlPainel.Caption := clbclbsipramal.AsString + ' - ' + clbclbidentificacao.AsString;
      vlPainel.ParentBackground := false;
      vlPainel.Font.Size := 8;
      vlPainel.Font.Style := [fsbold];
      vlPainel.Font.Color := clblack;

      vlPainel.Align := alTop;

    end;

    clb.Next;
  end;
  VerificaStatusRamais.Enabled := true;
end;

procedure Tfrachd.OnZoiperCallHang(Sender: TObject; const call: IZoiperCall);
begin
  try
    Memo.Lines.Add('EVENT : Hangup call - ' + call.Phone);

    rlg.Edit;
    rlgrlgbinagem.AsString := call.Phone;
    rlgrlgoperacao.AsInteger := 1;
    rlgrlgfinal.AsString := agora(Application, ZCone);
    rlg.Post;

    btAtender.Caption := 'Atender';

    if call = IncomingCall then
      IncomingCall := nil;
    if call = OutgoingCall then
      OutgoingCall := nil;

  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperCallRing(Sender: TObject; const call: IZoiperCall);
begin
  try
    Memo.Lines.Add('EVENT : Ringing call');

  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperCallHold(Sender: TObject; const call: IZoiperCall);
begin
  try
    Memo.Lines.Add('EVENT : Hold call');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperCallUnhold(Sender: TObject; const call: IZoiperCall);
begin
  try
    Memo.Lines.Add('EVENT : Unhold call');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperCallAccept(Sender: TObject; const call: IZoiperCall);
begin
  try
    Memo.Lines.Add('EVENT : Accept call');

    rlg.Edit;
    rlgrlgoperacao.AsInteger := 9;
    rlg.Post;

    call.Record_;
    // if call = IncomingCall then
    // IncomingCall := nil;
    // if call = OutgoingCall then
    // OutgoingCall := nil;
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperCallReject(Sender: TObject; const call: IZoiperCall; cause_code: Integer);
begin
  try
    Memo.Lines.Add('EVENT : Reject call');
    if call = IncomingCall then
      IncomingCall := nil;
    if call = OutgoingCall then
      OutgoingCall := nil;

  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperCallFail(Sender: TObject; const call: IZoiperCall; cause_code: Integer);
begin
  try
    Memo.Lines.Add('EVENT : Call failed');
    if call = IncomingCall then
      IncomingCall := nil;
    if call = OutgoingCall then
      OutgoingCall := nil;
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperContactCreate(Sender: TObject; const Contact: IZoiperContact; const Name: WideString);
begin
  try
    Memo.Lines.Add('EVENT : Contact create');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperContactDelete(Sender: TObject; const Contact: IZoiperContact);
begin
  try
    Memo.Lines.Add('EVENT : Contact delete');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperContactChange(Sender: TObject; const Contact: IZoiperContact);
begin
  try
    Memo.Lines.Add('EVENT : Contact change');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperContactStatus(Sender: TObject; const Contact: IZoiperContact; Status: EContactExtendedState);
begin
  try
    Memo.Lines.Add('EVENT : Contact (' + Contact.Display + ') state : ' + XContactStateToText(Status));
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.PhoneEKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if (pos('*1', PhoneE.Text) > 0) and (length(PhoneE.Text) = 6) then
  begin
    IncomingCall.Transfer(copy(PhoneE.Text, 3, 4));
    PhoneE.Text := '';
  end;
end;

procedure Tfrachd.pldialigacaoClick(Sender: TObject);
var
  vlNumeroBinado: string;
  n: string;
begin
  inherited;

  sitrlg.First;
  while not sitrlg.Eof do
  begin
    vlNumeroBinado := sitrlgrlgbinagem.AsString;

    if length(vlNumeroBinado) = 11 then
    begin
      n := copy(vlNumeroBinado, 2, 10);
      etd.Close;
      etd.SQL.Text := ' SELECT etd.etdcodigo, etdidentificacao, etftelefone FROM etd, etf WHERE etd.etdcodigo=etf.etdcodigo ';
      etd.SQL.Add('  and etftelefone = ' + QuotedStr(n));
      etd.Open;
      if etd.RecordCount = 1 then
      begin
        consulta.Close;
        consulta.SQL.Text := 'update rlg set etdcodigo=' + etd.FieldByName('etdcodigo').AsString + ' where rlgchave=' + sitrlgrlgchave.AsString;
        consulta.ExecSQL;
      end;

    end;
    sitrlg.Next;
  end;
end;

procedure Tfrachd.plQuadroChamadoDblClick(Sender: TObject);
var
  vlChamado: string;
begin
  inherited;
  vlChamado := (Sender as TPanel).Caption;
  vlChamado :=trim( copy(vlChamado, 1, pos(' ', vlChamado) - 1));
  CriaFormulario(tftrc, '', vlChamado);
end;

procedure Tfrachd.VerificaStatusRamaisTimer(Sender: TObject);
var
  vlContato: IZoiperContact;
begin
  inherited;
  if not sitrlg.Active then
    exit;
  sitrlg.Refresh;

  plRelogio.Caption := timetostr(time);

  pltotaisligacao.Caption := IntToStr(sitrlg.RecordCount);
  qtdiasitrlg.Close;
  qtdiasitrlg.Open;
  pldialigacao.Caption := qtdiasitrlg.Fields[0].AsString;
  pldialigacaoatribuidas.Caption := qtdiasitrlg.Fields[1].AsString;
  Application.ProcessMessages;

  if not clb.Active then
    exit;

  clb.First;
  while not clb.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'select rlginicio from rlg where clbcodigo=' + clbclbcodigo.AsString + ' and ISNULL(rlgfinal)';
    consulta.Open;
    if not consulta.IsEmpty then
    begin
      if self.FindComponent('plRamal' + clbclbsipramal.AsString) <> nil then
      begin
        (self.FindComponent('plRamal' + clbclbsipramal.AsString) as TPanel).Color := clYellow;
        Application.ProcessMessages;
      end;

    end
    else
    begin
      if self.FindComponent('plRamal' + clbclbsipramal.AsString) <> nil then
      begin
        (self.FindComponent('plRamal' + clbclbsipramal.AsString) as TPanel).Color := clBtnFace;
        plDiscador.Color := clBtnFace;
        Application.ProcessMessages;
      end;

    end;

    clb.Next;
  end;

  try
    snep.Close;
    snep.Connection := asterisk;
    snep.Open;
  except

  end;
end;

procedure Tfrachd.OnZoiperContactMessageRecv(Sender: TObject; const Contact: IZoiperContact; const message: WideString);
begin
  try
    Memo.Lines.Add('EVENT : Contact message receive');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperContactMessageSent(Sender: TObject; const Contact: IZoiperContact; const message: WideString);
begin
  try
    Memo.Lines.Add('EVENT : Contact message sent');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperContactMessageFailed(Sender: TObject; const Contact: IZoiperContact; const message: WideString; reason: Integer);
begin
  try
    Memo.Lines.Add('EVENT : Contact message failed');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperAccountRegister(Sender: TObject; const Account: IZoiperAccount);
begin
  try
    Memo.Lines.Add('EVENT : Account register');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperAccountUnregister(Sender: TObject; const Account: IZoiperAccount);
begin
  try
    Memo.Lines.Add('EVENT : Account unregister');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperAccountRegisterFail(Sender: TObject; const Account: IZoiperAccount; cause_code: Integer);
begin
  try
    Memo.Lines.Add('EVENT : Account register fail');
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.OnZoiperCallIncoming(ASender: TObject; const call: IZoiperCall);
begin
  try
    plTelefone.Color := clYellow;
    Application.ProcessMessages;

    Memo.Lines.Add('EVENT : Incoming call');
    IncomingCall := call;

    rlg.Append;
    rlgrlgregistro.AsString := agora(Application, ZCone);
    rlgclbcodigo.AsInteger := 0;
    rlgrlginicio.AsString := agora(Application, ZCone);
    rlgrlgbinagem.AsString := IncomingCall.Phone;

    rlgrlgoperacao.AsInteger := 1;
    rlgclbdestino.AsInteger := 0;
    rlgrlgtipo.AsInteger := 1;
    rlg.Post;

    Memo.Lines.Add(IncomingCall.Phone);

  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;
end;

procedure Tfrachd.btDesconectarCentralClick(Sender: TObject);
var
  vlPainel: TPanel;
begin
  inherited;

  ZoiperAPI.Disconnect;
  FreeAndNil(ZoiperAPI);
  ZoiperDisp := nil;
  Memo.Lines.Add('Desconectado da central.');

  VerificaStatusRamais.Enabled := false;
  plTelefone.Visible := false;
  plRelogio.Enabled := false;
  sitrlg.Close;

  while not clb.Eof do
  begin

    vlPainel := self.FindComponent('plRamal' + clbclbsipramal.AsString) as TPanel;
    if vlPainel <> nil then
    begin
      vlPainel.Free;
    end;
    clb.Next;
  end;
end;

procedure Tfrachd.btDiscarClick(Sender: TObject);
var
  vlclbdestino: Integer;
begin
  inherited;
  try
    if clb.Locate('clbsipramal', PhoneE.Text, []) then
      vlclbdestino := clbclbcodigo.AsInteger
    else
      vlclbdestino := 0;

    rlg.Append;
    rlgrlgregistro.AsString := agora(Application, ZCone);
    rlgclbcodigo.AsInteger := acesso.Usuario;
    rlgrlginicio.AsString := agora(Application, ZCone);
    if vlclbdestino <> 0 then
      rlgrlgbinagem.AsString := PhoneE.Text;

    rlgrlgoperacao.AsInteger := 1;
    rlgclbdestino.AsInteger := vlclbdestino;
    rlgrlgtipo.AsInteger := 1;
    rlg.Post;

    OutgoingCall := ZoiperAPI.Dial(PhoneE.Text, 0);

    ActLigacao.Execute;

    Memo.Lines.Add('Success.');
    btAtender.Caption := 'Desligar';
    Application.ProcessMessages;
  except
    on E: Exception do
      Memo.Lines.Add('Error = ' + E.message);
  end;

end;

procedure Tfrachd.btDiversaClick(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(pchar('Arquivar a ligação pois não é chamado ou tramite?'), pchar('Arquivar'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'update rlg set rlgtipo=9, clbcodigo=' + acesso.Usuario.ToString + ' where rlgchave=' + sitrlgrlgchave.AsString;
    consulta.ExecSQL;

  End;
end;

procedure Tfrachd.btDonwloadClick(Sender: TObject);
begin
  inherited;
  OpenDialog.FileName := self.ancancidentificacao.AsString;
  if OpenDialog.Execute then
  begin
    ancancanexo.SaveToFile(OpenDialog.FileName);
  end;
end;

procedure Tfrachd.btExcluirTramiteClick(Sender: TObject);
begin
  inherited;

  If Application.MessageBox(pchar('Confirma a exclusão do registro selecionado?'), pchar('Excluir'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES Then
  Begin
    consulta.Close;
    consulta.SQL.Text := 'delete from trc where trcchave=' + trctrcchave.AsString;
    consulta.ExecSQL;
  End;

end;

procedure Tfrachd.btGerarChamadoClick(Sender: TObject);
begin
  inherited;

  ActIncluir.Execute;

  consulta.Close;
  consulta.SQL.Text := 'update rlg set rlgtipo=2, chdchave=' + uqtabelachdchave.AsString + ' where rlgchave=' + sitrlgrlgchave.AsString;
  consulta.ExecSQL;

end;

procedure Tfrachd.btGerarTramiteClick(Sender: TObject);
begin
  inherited;
  regtrc.Close;
  regtrc.Open;

  regtrc.Append;
  regtrcchdchave.AsInteger := uqtabelachdchave.AsInteger;
  regtrctrcregistro.AsDateTime := sitrlgrlgregistro.AsDateTime;
  regtrcclbcodigo.AsInteger := acesso.Usuario;
  regtrctrcdescricao.AsString := sitrlgrlgdescricao.AsString;
  regtrc.Post;

  if CriaFormulario(tftrc, regtrctrcchave.AsString, uqtabelachdchave.AsString) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'update rlg set rlgtipo=3, chdchave=' + uqtabelachdchave.AsString + ' where rlgchave=' + sitrlgrlgchave.AsString;
    consulta.ExecSQL;
  end;

end;

procedure Tfrachd.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  inherited;
  { if Self.uqtabelateccor.AsString <> '' then
    tecidentificacao.Color := StringToColor(Self.uqtabelateccor.AsString); }

end;

procedure Tfrachd.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  btBmp: TBitBtn;
  Bmp: TBitMap;
  R: TRect;
  i: Integer;

  function GetColsWidth: Integer;
  var
    i: Integer;
  begin
    result := 0;
    for i := 0 to Column.Index do
    begin
      result := result + TDBGrid(Sender).columns.Items[i].Width;
    end;
    result := result + 10 + (Column.Index);
  end;

begin


  // Inherited;

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;

    if (Column.FieldName = 'tpridentificacao') then
    begin

      if self.uqtabelatprcor.AsString <> '' then
        DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabelatprcor.AsString);
    end;
    if (Column.FieldName = 'tecidentificacao') then
    begin
      if self.uqtabelateccor.AsString <> '' then
        DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabelateccor.AsString);

    end;

    if (Column.FieldName = 'chdchave') then
    begin

      trcs.Close;
      trcs.ParamByName('chdchave').AsInteger := uqtabelachdchave.AsInteger;
      trcs.Open;

      if trcs.RecordCount = 0 then
      begin
        if uqtabelateccodigo.AsInteger <> 3 then
        begin
          DBGLista.Canvas.Brush.Color := clred;
        end;

      end
      else
      begin
        if tdate(trcstrcregistro.AsDateTime) < Strtodate(datetostr((date - 6))) then
        begin
          if trcs.RecordCount = 0 then
          begin
            if uqtabelateccodigo.AsInteger <> 3 then
            begin

              DBGLista.Canvas.Brush.Color := clred
            end;
          end;
        end
        else
          DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
      end;

    end;

  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := clWhite;

    if (Column.FieldName = 'tpridentificacao') then
    begin

      if self.uqtabelatprcor.AsString <> '' then
        DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabelatprcor.AsString);
    end;

    if (Column.FieldName = 'tecidentificacao') then
    begin
      if self.uqtabelateccor.AsString <> '' then
        DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabelateccor.AsString);

    end;

    if (Column.FieldName = 'chdchave') then
    begin

      trcs.Close;
      trcs.ParamByName('chdchave').AsInteger := uqtabelachdchave.AsInteger;
      trcs.Open;

      if trcs.RecordCount = 0 then
      begin
        if uqtabelateccodigo.AsInteger <> 3 then
        begin
          if trcs.RecordCount = 0 then
          begin
            DBGLista.Canvas.Brush.Color := clred;
          end;
        end;
      end
      else
      begin

        if tdate(trcstrcregistro.AsDateTime) < Strtodate(datetostr((date - 6))) then
        begin
          if uqtabelateccodigo.AsInteger <> 3 then
          begin

            DBGLista.Canvas.Brush.Color := clred
          end;
        end
        else
          DBGLista.Canvas.Brush.Color := clWhite;
      end;

    end;

  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clSilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clWhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin

        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;

        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;

  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).columns[DataCol].Field, State);

end;

procedure Tfrachd.DBGrid3DblClick(Sender: TObject);
var
  vldia: String;
  vlurl: string;
begin
  inherited;
  // try
  Application.CreateForm(tfouvir, fouvir);
  fouvir.show;
  vldia := copy(snepcalldate.AsString, 7, 4) + '-' + copy(snepcalldate.AsString, 4, 2) + '-' + copy(snepcalldate.AsString, 1, 2);
  vlurl := 'http://192.168.5.189/snep/arquivos/' + vldia + '/' + snepuserfield.AsString + '.wav';

  fouvir.WebBrowser1.Navigate(vlurl);
  { finally
    FreeAndNil(fouvir);
    end; }
end;

procedure Tfrachd.DBGrid3Enter(Sender: TObject);
begin
  inherited;
  VerificaStatusRamais.Enabled := false;
end;

procedure Tfrachd.DBGrid3Exit(Sender: TObject);
begin
  inherited;
  VerificaStatusRamais.Enabled := true;
end;

procedure Tfrachd.DBGridLigacoesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
begin

  // If DBGLigacoes.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGridLigacoes.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGridLigacoes.Canvas.Brush.Color := clWhite;
  end;

  if self.sitrlgrlttipo.AsString = 'LIGAÇÃO' then
  begin
    DBGridLigacoes.Canvas.Font.Color := clMaroon;
  end
  else if self.sitrlgrlttipo.AsString = 'CHAMADO' then
  begin
    DBGridLigacoes.Canvas.Font.Color := clGreen;
  end
  else if self.sitrlgrlttipo.AsString = 'TRAMITE' then
  begin
    DBGridLigacoes.Canvas.Font.Color := clTeal;
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGridLigacoes) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clSilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clWhite;
    End;

  with TFriendly(DBGridLigacoes) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).columns[DataCol].Field, State);

end;

procedure Tfrachd.DBGridLigacoesEnter(Sender: TObject);
begin
  inherited;
  VerificaStatusRamais.Enabled := false;
end;

procedure Tfrachd.DBGridLigacoesExit(Sender: TObject);
begin
  inherited;
  VerificaStatusRamais.Enabled := true;
end;

procedure Tfrachd.DBGridtrcDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrachd.DBGtchDblClick(Sender: TObject);
begin
  inherited;
  uqtabela.Locate('chdchave', tchchdchave.AsInteger, []);
end;

procedure Tfrachd.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if DStabela.DataSet.Active then
    if not DStabela.DataSet.IsEmpty then
    begin

      if uqtabelachdchave.AsString <> '' then
      begin
        trc.Close;
        trc.ParamByName('chdchave').AsString := uqtabelachdchave.AsString;
        trc.Open;

        plTitulosTramites.Caption := 'Tramites: ' + IntToStr(trc.RecordCount);
      end;

      if uqtabelachdchave.AsString <> '' then
      begin
        ech.Close;
        ech.ParamByName('chdchave').AsString := uqtabelachdchave.AsString;
        ech.Open;
      end;

      if uqtabelachdchave.AsString <> '' then
      begin
        rch.Close;
        rch.ParamByName('chdchave').AsString := uqtabelachdchave.AsString;
        rch.Open;
      end;

      plregimetributario.Visible := false;

      if uqtabelaetdcodigo.AsString <> '' then
      begin
        clr.Close;
        clr.ParamByName('etdcodigo').AsString := uqtabelaetdcodigo.AsString;
        clr.Open;
        if not clr.IsEmpty then
          plregimetributario.Visible := true
        else
          plregimetributario.Visible := false;
      end
      else
        plregimetributario.Visible := false;

    end;

end;

procedure Tfrachd.DStrcDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if DStrc.DataSet.Active then
    if not DStrc.DataSet.IsEmpty then
    begin

      if trctrcchave.AsString <> '' then
      begin
        anc.Close;
        anc.ParamByName('trcchave').AsString := trctrcchave.AsString;
        anc.Open;
      end;
    end;

end;

function Tfrachd.CarregaFrame(pacote: string; destino: TPanel; conexao: TUniconnection): thandle;
begin

end;

end.
