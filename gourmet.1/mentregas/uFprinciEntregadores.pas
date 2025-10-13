unit uFprinciEntregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni, DASQLMonitor,
  UniSQLMonitor, UniProvider, MySQLUniProvider, uPegabase, ufuncoes, inifiles,
  MemDS, Vcl.ExtCtrls, Vcl.StdCtrls, System.Actions, Vcl.ActnList;

type
  TFprinciEntregadores = class(TForm)
    MySQLUniProvider: TMySQLUniProvider;
    UniSQLMonitor: TUniSQLMonitor;
    Conexao: TUniConnection;
    consulta: TUniQuery;
    pltopo: TPanel;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgidentificacao: TStringField;
    cfgcfgdoisprecos: TIntegerField;
    cfgcfgusasrv: TIntegerField;
    cfgcfgpedeoperador: TIntegerField;
    cfgcfgtipocomissao: TIntegerField;
    cfgcfgpercomismed: TIntegerField;
    cfgcfgusamultiplicador: TIntegerField;
    cfgcfgidentificaequip: TIntegerField;
    cfgcfgrefepro: TIntegerField;
    cfgcfgdefinetoeatendimento: TIntegerField;
    cfgcfgusaveiculo: TIntegerField;
    cfgcfgcontrolaestoquedisp: TIntegerField;
    cfgcfgpedeclientevenda: TIntegerField;
    cfgetdapelido: TStringField;
    cfgcfgusanfc: TIntegerField;
    cfgcfgusapdv: TIntegerField;
    cfgetddoc1: TStringField;
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
    cfgcfgmodonfe: TIntegerField;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgcfgcstterceiros: TStringField;
    cfgetdidentificacao: TStringField;
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
    cfgcfgmensagempdv: TStringField;
    cfgcfgservarqnfes: TStringField;
    cfgcfgusacondiconsumidor: TIntegerField;
    cfgcfgviaassinar: TIntegerField;
    cfgcfgusaadc: TIntegerField;
    cfgcfgusacre: TIntegerField;
    cfgcfgdigitosbalanca: TIntegerField;
    cfgcfgcontrolalimite: TIntegerField;
    cfgcfgidentificatecnico: TIntegerField;
    cfgcfgusacaixaprevenda: TIntegerField;
    cfgcfgusache: TIntegerField;
    cfgcfgidentificavendedor: TIntegerField;
    cfgcfgajustaperccomissao: TIntegerField;
    cfgcfgusabol: TIntegerField;
    cfgcfgusavendaforaestab: TIntegerField;
    cfgcfgdescontonoservico: TIntegerField;
    cfgcfgformapagamento: TIntegerField;
    cfgcfgformacancelamento: TIntegerField;
    cfgcfgarredondapeso: TIntegerField;
    cfgcfgusaafaturar: TIntegerField;
    cfgcfgusagou: TIntegerField;
    cfgcfgproinativsaldozero: TIntegerField;
    cfgcfgprevisualizarimpressao: TIntegerField;
    trm: TUniQuery;
    trmtrmcodigo: TIntegerField;
    trmtrmidentificacao: TStringField;
    trmtciporta: TStringField;
    trmecfcodigo: TIntegerField;
    trmtipcodigo: TIntegerField;
    trmctacodigo: TIntegerField;
    trmtrmbalamodelo: TStringField;
    trmtrmbalaporta: TStringField;
    trmtrmbalabaud: TStringField;
    trmtrmbalahandshake: TStringField;
    trmtrmbalaparity: TStringField;
    trmtrmbalastop: TStringField;
    trmtrmbaladata: TStringField;
    trmtrmgaveta: TIntegerField;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    flaflasigla: TStringField;
    flaetdcodigo: TIntegerField;
    lbNomeEmpresa: TPanel;
    lterminal: TPanel;
    acoes: TActionList;
    ActAbreCaixa: TAction;
    ActFechaCaixa: TAction;
    ActListaCaixas: TAction;
    ActSangria: TAction;
    ActSuprimento: TAction;
    ActImprimeCaixa: TAction;
    ActClientes: TAction;
    ActProdutos: TAction;
    ActLiberaBloqParcial: TAction;
    ActLiberaBloqTotal: TAction;
    ActAbreGaveta: TAction;
    ActLimpaAtendimento: TAction;
    ActCancelaItem: TAction;
    ActDescontoItem: TAction;
    ActDescontoGeral: TAction;
    ActFinalizaVenda: TAction;
    ActAFaturar: TAction;
    ActSair: TAction;
    ActReimprimeAbertura: TAction;
    ActReimprimeSangria: TAction;
    ActReimprimeSuprimento: TAction;
    ActReimprimeFechamento: TAction;
    ActReimprimeComprovante: TAction;
    ActReimprimeNFCes: TAction;
    ActReimprimeTEF: TAction;
    act: TUniQuery;
    actactcodigo: TIntegerField;
    Timer2: TTimer;
    ccx: TUniQuery;
    ccxccxchave: TIntegerField;
    ccxclbcodigo: TIntegerField;
    ccxctacodigo: TIntegerField;
    ccxccxturno: TIntegerField;
    ccxccxdataber: TDateField;
    ccxccxhoraaber: TTimeField;
    ccxccxsaldoaber: TFloatField;
    ccxccxdatafecha: TDateField;
    ccxccxhorafecha: TTimeField;
    ccxccxsaldofecha: TFloatField;
    ccxccxsangrias: TFloatField;
    ccxccxsuprimentos: TFloatField;
    Dccx: TDataSource;
    plMensagemPrincipal: TPanel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Acesso: TAcesso;
    FAcsCodigo: Integer;
    function LogarSistema: Boolean;
    procedure SetAcsCodigo(const Value: Integer);
    procedure ConectaBanco;
    procedure Mostraerro(Texto: String);
    procedure FormErroShow(Sender: TObject);
    procedure FerroKeyPress(Sender: TObject; var Key: Char);
    procedure InicializacaoGeral;
    function ValidaTerminal: Boolean;
    procedure CriaAcoesDeAcesso;
    procedure AtribuiTagAcesso;
    procedure LigaTimer(Sender: TObject; var Done: Boolean);
    procedure DesligaTimer(var MSG: tagMSG; var Handled: Boolean);
    procedure Ajustabotoes(Situacao: Boolean);
    procedure AjustaCaixa;
  public
    { Public declarations }
    vpCtaCodigo: string;
    vpCznChave: string;
    vpCaixaAberto: Integer;
  published

    property AcsCodigo: Integer read FAcsCodigo write SetAcsCodigo;

  end;

var
  FprinciEntregadores: TFprinciEntregadores;
  ferro: TForm;
  ShuttingDown: Boolean = False;

implementation

{$R *.dfm}

procedure MainForm(AOwner: TApplication);
begin
  FprinciEntregadores := TFprinciEntregadores.Create(AOwner);
end;

function formulario(AOwner: TApplication): string;
begin
  FprinciEntregadores := TFprinciEntregadores.Create(AOwner);
  FprinciEntregadores.ShowModal;
  FprinciEntregadores.Free;
end;

exports MainForm, formulario;

Procedure TFprinciEntregadores.ConectaBanco;
Var
  Arquini: Tinifile;
  vlNomeBanco: String;
  vlPortaBanco: Integer;
  vlServidor: String;
  vlUsuario: String;
  vlSenha: String;
  vlMonitor: String;
Begin
  try

    Arquini := Tinifile.Create(Extractfilepath(Application.ExeName) + 'gourmeterp.ini');
    With Arquini Do
    Begin
      vlNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
      vlServidor := ReadString('posi', 'servidor', '127.0.0.1');
      vlUsuario := ReadString('posi', 'usuario', 'root');
      vlSenha := ReadString('posi', 'senha', 'xda973');
      vlPortaBanco := ReadInteger('posi', 'portabanco', 3306);

      vlMonitor := ReadString('posi', 'monitor', '0');

      Acesso.Terminal := ReadInteger('posi', 'terminal', 0);
    End;
    Arquini.Free;

    (* Configuração para DBMonitor *)

    Conexao.Connected := False;
    Conexao.Database := vlNomeBanco;
    Conexao.Username := 'root';
    Conexao.Password := vlSenha;
    Conexao.Port := vlPortaBanco;
    Conexao.Server := vlServidor;
    Conexao.Connected := True;

    consulta.Close;
    consulta.Connection := Conexao;
    consulta.SQL.Clear;
    consulta.SQL.add('SET @@GLOBAL.sql_mode=' + QuotedStr(''));
    consulta.ExecSQL;

  except
    Mostraerro('A T E N Ç Ã O   -   A T E N Ç Ã O: ' + #13 + #13 + 'Falha de conexão com o SERVIDOR.' + #13 + 'Verifique se o SERVIDOR esta ligado' + #13 +
      'e se sua rede funcionando !' + #13 + 'Ligue o SERVIDOR e depois lique os TERMINAIS.');

  end;
End;

Function TFprinciEntregadores.LogarSistema: Boolean;
var
  Login: function(pAOwner: TApplication; pConexao: TUniConnection; pTerminal: Integer): Integer;
  vlResult: Integer;
  vlPack: NativeUInt;
begin
  Result := False;

  vlPack := LoadPackage('modulos\macs.bpl');
  if vlPack <> 0 then
    try
      @Login := GetProcAddress(vlPack, PChar('Acesso'));

      if Assigned(Login) then
        vlResult := Login(Application, Conexao, Acesso.Terminal);

    finally
      DoUnLoadPackage(Application, vlPack);
    end;

  if vlResult > 0 then
  begin
    Result := True;
    AcsCodigo := vlResult;
  end;
End;

procedure TFprinciEntregadores.SetAcsCodigo(const Value: Integer);
begin
  FAcsCodigo := Value;
end;

procedure TFprinciEntregadores.FerroKeyPress(Sender: TObject; var Key: Char);
Begin
  if (Key = #27) or (Key = #$1B) then
  begin
    Key := #0;
    ferro.Close;
  end;
end;

procedure TFprinciEntregadores.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := ShuttingDown;
end;

procedure TFprinciEntregadores.DesligaTimer(var MSG: tagMSG; var Handled: Boolean); // desliga o timer ao entrar em atividade
begin
  Timer2.Enabled := False;
end;

procedure TFprinciEntregadores.LigaTimer(Sender: TObject; var Done: Boolean); // liga o timer ao ficar ocioso
begin
  Timer2.Enabled := True;
end;

Procedure TFprinciEntregadores.Ajustabotoes(Situacao: Boolean);
Begin
  { declarodo virtual para implementacao no Vertial }
End;


procedure TFprinciEntregadores.AjustaCaixa;
var
  vnome: string;
begin

  if trmctacodigo.AsString = '' then
  begin
    Showmessage('Verificar configurações do terminal, falta conta do terminal!');
    exit;
  end;
  ccx.Close;
  ccx.SQL.Text := 'SELECT   ccx.ccxchave,  ccx.clbcodigo,  ccx.ctacodigo,  ccx.ccxturno,  ccx.ccxdataber,';
  ccx.SQL.add(' ccx.ccxhoraaber,  ccx.ccxsaldoaber,  ccx.ccxdatafecha,  ccx.ccxhorafecha,  ccx.ccxsaldofecha, ');
  ccx.SQL.add(' ccx.ccxsangrias,  ccx.ccxsuprimentos FROM ccx where ccx.clbcodigo=' + Acesso.Usuario.ToString + ' and ccx.ctacodigo=' + trmctacodigo.AsString);
  ccx.SQL.add('  and ccxdatafecha is null');
  ccx.SQL.add(' ORDER BY ccx.ccxchave');
  ccx.Open;

  vpCtaCodigo := trmctacodigo.AsString;
  vnome := Self.Name;

  if (ccx.IsEmpty) { and (cfgcfgusacaixaprevenda.AsInteger = 0) } then
  begin

    if ((vnome = 'FprinciVar') { and (cfgcfgusacaixaprevenda.AsInteger = 1) } ) or (vnome = 'FprinciEnt') then
    begin

      if cfgcfgusacaixaprevenda.AsInteger = 1 then
      begin
        vpCaixaAberto := 1;
        ActAbreCaixa.Enabled := False;
        ActFechaCaixa.Enabled := True;
        ActSangria.Enabled := True;
        ActSuprimento.Enabled := True;

        plMensagemPrincipal.Caption := 'Aguardando Cliente';
        plMensagemPrincipal.Visible := True;

      end
      else
      begin
        vpCaixaAberto := 0;
        ActAbreCaixa.Enabled := True;
        ActFechaCaixa.Enabled := False;
        ActSangria.Enabled := False;
        ActSuprimento.Enabled := False;
        plMensagemPrincipal.Caption := 'Caixa Fechado';
        plMensagemPrincipal.Visible := True;

      end;
    end
    else
    begin
      vpCaixaAberto := 0;
      ActAbreCaixa.Enabled := True;
      ActFechaCaixa.Enabled := False;
      ActSangria.Enabled := False;
      ActSuprimento.Enabled := False;
      plMensagemPrincipal.Caption := 'Caixa Fechado';
      plMensagemPrincipal.Visible := True;
    end;
  end
  else
  begin
    vpCaixaAberto := 1;
    ActAbreCaixa.Enabled := False;
    ActFechaCaixa.Enabled := True;
    ActSangria.Enabled := True;
    ActSuprimento.Enabled := True;

    plMensagemPrincipal.Caption := 'Aguardando Cliente';
    plMensagemPrincipal.Visible := True;
  end;
end;



procedure TFprinciEntregadores.FormCreate(Sender: TObject);
begin

  Application.OnIdle := LigaTimer;
  Application.OnMessage := DesligaTimer;

  inherited;

  // cria um mutex usando um nome único
  CreateMutex(nil, False, 'mizioEntrega.OnlyOne');

  // verifica se houve erro na criação
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    MessageBox(0, 'Este programa já está sendo executado', 'Aviso', MB_ICONSTOP);
    Halt(0);
    // cancela execução
  end;

  InicializacaoGeral;

  consulta.Close;
  consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
  consulta.Open;

  vpCznChave := consulta.Fieldbyname('cznchave').AsString;

  Ajustabotoes(False);

  trm.Close;
  trm.Params[0].AsString := Acesso.Terminal.ToString;
  trm.Open;

  If trm.RecordCount = 0 Then
  Begin
    ShowMessage('Este terminal não esta cadastrado no sistema, verifique!');
    Application.Terminate;
  End
  Else
  Begin

    WindowState := WsMaximized;

    { if not Ajustausuario then
      Exit; }

    ajustaCaixa;

    ActFechaCaixa.Enabled := False;

    lterminal.Caption := Self.Acesso.Terminal.ToString;

    Ajustabotoes(False);

  End;

end;

procedure TFprinciEntregadores.FormErroShow(Sender: TObject);
begin
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).ParentFont := False;
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).Font.Color := clYellow;
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).Font.Size := 35;
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).Alignment := taCenter;
  ((Sender as TForm).FindComponent('plMensaErro') as TLabel).Tag := 1;
end;

Procedure TFprinciEntregadores.Mostraerro(Texto: String);
var
  mensa: TLabel;
  topo: TPanel;

Begin

  try
    ferro := TForm.Create(Application);
    ferro.Name := 'ferro';
    ferro.Color := clRed;

    ferro.Font.Size := 25;
    ferro.Font.Color := clYellow;

    topo := TPanel.Create(ferro);
    ferro.Caption := 'Atenção:';
    topo.parent := ferro;
    topo.Name := 'plTopo';
    topo.ParentFont := False;
    topo.Caption := '';
    topo.BevelOuter := bvNone;
    topo.Height := 200;
    topo.Align := altop;
    topo.Color := clRed;

    mensa := TLabel.Create(ferro);
    mensa.parent := ferro;
    mensa.Name := 'plMensaErro';
    mensa.ParentFont := False;

    mensa.Align := alClient;

    mensa.Font.Size := 25;
    mensa.Font.Color := clYellow;
    mensa.Caption := Texto;
    mensa.Color := clRed;

    ferro.WindowState := WsMaximized;
    ferro.OnShow := FormErroShow;
    ferro.OnKeyPress := FerroKeyPress;
    // mensa.OnKeyPress := FerroKeyPress;

    ferro.ShowModal;

  finally
    FreeAndNil(ferro);
  end;

End;

function TFprinciEntregadores.ValidaTerminal: Boolean;
begin
  trm.Close;
  trm.Params[0].AsInteger := Acesso.Terminal;
  trm.Open;

  vpCtaCodigo := trmctacodigo.AsString;

  if not trm.IsEmpty then
    Result := True
  else
  begin
    Result := False;
    Application.MessageBox(PChar('Não foi possível abrir o sistema.' + #13 + 'Verifique o cadastro do terminal de número ' + Acesso.Terminal.ToString + '.'), 'Atenção',
      MB_ICONWARNING + MB_OK);
  end;
end;

procedure TFprinciEntregadores.InicializacaoGeral;
Begin
  ConectaBanco;

  (* Realiza validações e identifica se abandona a aplicação *)
  try
    if not Conexao.Connected then
      raise Exception.Create('Falha de conexão.');

    if not ValidaTerminal then
      raise Exception.Create('Terminal inválido.');

    if not LogarSistema then
      raise Exception.Create('Acesso inválido.');

  except
    on e: Exception do
    begin
      ShowMessage(e.Message);
      Application.ShowMainForm := False;
      Application.Terminate;
      exit;
    end;
  end;

  (* Abre query com as configurações *)

  if cfg.Active then
    cfg.Close;

  cfg.Params[0].AsInteger := Acesso.Filial;
  cfg.Open;

  fla.Close;
  fla.Params[0].AsInteger := Acesso.Filial;
  fla.Open;

  cfg.Open;

  Caption := 'Entregas - Mizio Sistemas (66) 3544-2765';

  lbNomeEmpresa.Caption := flaflasigla.AsString + ' - ' + Trim(Self.cfgcfgidentificacao.AsString);
  lterminal.Caption := Acesso.Terminal.ToString;

  (* Atualiza os direitos de acesso e atribui a ação para Action *)
  CriaAcoesDeAcesso; // Somente habilitada quando for criada nova Action;

  AtribuiTagAcesso;


End;

procedure TFprinciEntregadores.AtribuiTagAcesso;
var
  i: Integer;
begin
  act.Close;
  act.SQL.Clear;
  act.SQL.add('SELECT act.actcodigo, act.actacao');
  act.SQL.add('  FROM mdl');
  act.SQL.add(' INNER JOIN act ON mdl.mdlcodigo = act.mdlcodigo');
  act.SQL.add(' WHERE mdl.mdlnome = ''' + Self.Name + '''');
  act.Open;

  for i := 0 to Self.acoes.ActionCount - 1 do
    if act.Locate('actacao', Self.acoes[i].Name, []) then
      Self.acoes[i].Tag := Self.actactcodigo.AsInteger;
end;

procedure TFprinciEntregadores.CriaAcoesDeAcesso;
var
  i: Integer;
  uqMdl: TUniQuery;
  uqAct: TUniQuery;
  vlMdlCodigo: Integer;
begin
  (*
    *
    * Atualização dos Módulos e Ações do Sistema
    *
  *)
  uqMdl := TUniQuery.Create(Application);
  uqAct := TUniQuery.Create(Application);
  try
    uqMdl.Connection := Conexao;
    uqMdl.SQL.Clear;
    uqMdl.SQL.add('SELECT mdl.mdlcodigo, mdl.mdlidentificacao, mdl.mdlnome, mdl.mdlsubgrupo');
    uqMdl.SQL.add('  FROM mdl');
    uqMdl.SQL.add(' WHERE mdl.mdlnome = :mdlnome');

    uqAct.Connection := Conexao;
    uqAct.SQL.Clear;
    uqAct.SQL.add('SELECT act.actcodigo, act.mdlcodigo, act.actidentificacao, act.actformulario, act.actacao, act.actativa');
    uqAct.SQL.add('  FROM act');
    uqAct.SQL.add(' INNER JOIN mdl ON act.mdlcodigo = mdl.mdlcodigo');
    uqAct.SQL.add(' WHERE mdl.mdlnome = :mdlnome');

    uqMdl.Params[0].AsString := Self.Name;
    uqMdl.Open;

    uqAct.Params[0].AsString := Self.Name;
    uqAct.Open;

    for i := 0 to Self.acoes.ActionCount - 1 do
      if (Self.acoes[i].Enabled) and (Self.acoes[i].Tag > -1) then
      begin

        if not uqMdl.Locate('mdlsubgrupo', Self.acoes[i].Category, []) then
        begin
          uqMdl.Append;
          uqMdl.Fieldbyname('mdlidentificacao').AsString := Application.Title;
          uqMdl.Fieldbyname('mdlsubgrupo').AsString := Self.acoes[i].Category;
          uqMdl.Fieldbyname('mdlnome').AsString := Self.Name;
          uqMdl.Post;

          vlMdlCodigo := uqMdl.Fields[0].AsInteger;

          uqMdl.Refresh;
          uqMdl.Locate('mdlcodigo', vlMdlCodigo, []);
        end
        else
          vlMdlCodigo := uqMdl.Fields[0].AsInteger;

        if uqAct.Locate('actacao', Self.acoes[i].Name, []) then
          uqAct.Edit
        else
          uqAct.Append;

        uqAct.Fieldbyname('mdlcodigo').AsInteger := vlMdlCodigo;
        uqAct.Fieldbyname('actidentificacao').AsString := '000 ' + Self.acoes[i].Caption;
        uqAct.Fieldbyname('actformulario').AsString := Self.Name;
        uqAct.Fieldbyname('actacao').AsString := Self.acoes[i].Name;
        uqAct.Fieldbyname('actativa').AsInteger := 1;

        uqAct.Post;
      end;

  finally
    uqMdl.Close;
    uqAct.Close;
    FreeAndNil(uqMdl);
    FreeAndNil(uqAct);
  end;
end;

end.
