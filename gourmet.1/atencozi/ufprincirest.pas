unit ufprincirest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufprinci, ACBrBase, inifiles,
  ACBrValidador, uni, Vcl.ActnList,
  Vcl.Menus, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Buttons, ufuncoes, DBAccess, UniProvider, MySQLUniProvider,
  System.Actions, MemDS;

type
  Tfprincirest = class(TfprinciAten)
    Mesas: TTabSheet;
    plmesas: TPanel;
    pllinha01: TPanel;
    plmesa01: TPanel;
    m69: TSpeedButton;
    Panel5: TPanel;
    m68: TSpeedButton;
    Panel6: TPanel;
    m67: TSpeedButton;
    Panel9: TPanel;
    m66: TSpeedButton;
    Panel10: TPanel;
    m65: TSpeedButton;
    Panel11: TPanel;
    m64: TSpeedButton;
    Panel80: TPanel;
    m70: TSpeedButton;
    pllinha04: TPanel;
    Panel12: TPanel;
    m48: TSpeedButton;
    Panel13: TPanel;
    m47: TSpeedButton;
    Panel14: TPanel;
    m46: TSpeedButton;
    Panel15: TPanel;
    m45: TSpeedButton;
    Panel16: TPanel;
    m44: TSpeedButton;
    Panel17: TPanel;
    m43: TSpeedButton;
    Panel77: TPanel;
    m49: TSpeedButton;
    pllinha05: TPanel;
    Panel18: TPanel;
    m41: TSpeedButton;
    Panel19: TPanel;
    m40: TSpeedButton;
    Panel20: TPanel;
    m39: TSpeedButton;
    Panel21: TPanel;
    m38: TSpeedButton;
    Panel22: TPanel;
    m37: TSpeedButton;
    Panel23: TPanel;
    m36: TSpeedButton;
    Panel76: TPanel;
    m42: TSpeedButton;
    pllinha06: TPanel;
    Panel24: TPanel;
    m34: TSpeedButton;
    Panel25: TPanel;
    m33: TSpeedButton;
    Panel26: TPanel;
    m32: TSpeedButton;
    Panel27: TPanel;
    m31: TSpeedButton;
    Panel28: TPanel;
    m30: TSpeedButton;
    Panel29: TPanel;
    m29: TSpeedButton;
    Panel75: TPanel;
    m35: TSpeedButton;
    pllinha07: TPanel;
    Panel30: TPanel;
    m27: TSpeedButton;
    Panel31: TPanel;
    m26: TSpeedButton;
    Panel32: TPanel;
    m25: TSpeedButton;
    Panel33: TPanel;
    m24: TSpeedButton;
    Panel34: TPanel;
    m23: TSpeedButton;
    Panel35: TPanel;
    m22: TSpeedButton;
    Panel74: TPanel;
    m28: TSpeedButton;
    pllinha08: TPanel;
    Panel37: TPanel;
    m20: TSpeedButton;
    Panel38: TPanel;
    m19: TSpeedButton;
    Panel39: TPanel;
    m18: TSpeedButton;
    Panel40: TPanel;
    m17: TSpeedButton;
    Panel41: TPanel;
    m16: TSpeedButton;
    Panel42: TPanel;
    m15: TSpeedButton;
    Panel73: TPanel;
    m21: TSpeedButton;
    pllinha09: TPanel;
    Panel44: TPanel;
    m13: TSpeedButton;
    Panel45: TPanel;
    m12: TSpeedButton;
    Panel46: TPanel;
    m11: TSpeedButton;
    Panel47: TPanel;
    m10: TSpeedButton;
    Panel48: TPanel;
    m09: TSpeedButton;
    Panel49: TPanel;
    m08: TSpeedButton;
    Panel72: TPanel;
    m14: TSpeedButton;
    pllinha10: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    m05: TSpeedButton;
    Panel53: TPanel;
    m04: TSpeedButton;
    Panel54: TPanel;
    m03: TSpeedButton;
    plg01: TPanel;
    m01: TSpeedButton;
    Panel57: TPanel;
    m06: TSpeedButton;
    pllinha03: TPanel;
    Panel59: TPanel;
    m55: TSpeedButton;
    Panel60: TPanel;
    m54: TSpeedButton;
    Panel61: TPanel;
    m53: TSpeedButton;
    Panel62: TPanel;
    m52: TSpeedButton;
    Panel63: TPanel;
    m51: TSpeedButton;
    Panel64: TPanel;
    m50: TSpeedButton;
    Panel78: TPanel;
    m56: TSpeedButton;
    pllinha02: TPanel;
    Panel66: TPanel;
    m62: TSpeedButton;
    Panel67: TPanel;
    m61: TSpeedButton;
    Panel68: TPanel;
    m60: TSpeedButton;
    Panel69: TPanel;
    m59: TSpeedButton;
    Panel70: TPanel;
    m58: TSpeedButton;
    Panel71: TPanel;
    m57: TSpeedButton;
    Panel79: TPanel;
    m63: TSpeedButton;
    plmesaselecionada: TPanel;
    Panel36: TPanel;
    m07: TSpeedButton;
    m02: TSpeedButton;
    eMesas: tuniquery;
    ccx: tuniquery;
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
    GBCaixa: TGroupBox;
    baberturacaixa: TBitBtn;
    bsuprimentocaixa: TBitBtn;
    bretiradacaixa: TBitBtn;
    bfechamentocaixa: TBitBtn;
    mor: tuniquery;
    imm: tuniquery;
    immimmchave: TIntegerField;
    immitochave: TIntegerField;
    immtcicodigo: TIntegerField;
    immimmobs: TStringField;
    immimmimpresso: TIntegerField;
    immimmentregue: TIntegerField;
    immccxchave: TIntegerField;
    cfgcfgcodigo2: TIntegerField;
    cfgcfgetdempresa2: TIntegerField;
    cfgcfgprouso2: TIntegerField;
    cfgcfgtoeusofora2: TIntegerField;
    cfgcfgtoeusointe2: TIntegerField;
    cfgcfgtoecuffora2: TIntegerField;
    cfgcfgtoecufinte2: TIntegerField;
    cfgcfgviasnfe2: TIntegerField;
    cfgcfgnumeronfe2: TIntegerField;
    cfgcfgserienfe2: TStringField;
    cfgcfgnumeronfce2: TIntegerField;
    cfgcfgserienfce2: TStringField;
    cfgcfgobs12: TIntegerField;
    cfgcfgobs22: TIntegerField;
    cfgcfgobs32: TIntegerField;
    cfgcfgobs42: TIntegerField;
    cfgcfgdescrinfe2: TIntegerField;
    cfgcfgcsosn2: TStringField;
    cfgcfgnumecertif2: TStringField;
    cfgcfgemailnfe2: TStringField;
    cfgcfgemailservidornfe2: TStringField;
    cfgcfgemailsenhanfe2: TStringField;
    cfgcfgmailportnfe2: TStringField;
    cfgcfgemailusatls2: TIntegerField;
    cfgcrtcodigo2: TIntegerField;
    cfgcfgcstterceiros2: TStringField;
    cfgetdapelido2: TStringField;
    cfgetdidentificacao2: TStringField;
    cfgetddoc12: TStringField;
    cfgufscodigo2: TStringField;
    cfgcddcodigo2: TStringField;
    cfgedrinscest2: TStringField;
    cfgedrrua2: TStringField;
    cfgedrnumero2: TStringField;
    cfgedrbairro2: TStringField;
    cfgedrcep2: TStringField;
    cfgcddnome2: TStringField;
    cfgufssigla2: TStringField;
    cfgetftelefone2: TStringField;
    cfgctdboxedominio2: TStringField;
    cfgcfgmensagempdv2: TStringField;
    cfgcfgtrmimpfis12: TIntegerField;
    cfgcfgtrmimpfis22: TIntegerField;
    cfgcfgtrmtef12: TIntegerField;
    cfgcfgtrmtef22: TIntegerField;
    cfgcfgimpnfe12: TIntegerField;
    cfgcfgimpnfe22: TIntegerField;
    cfgcfgimpnfc12: TIntegerField;
    cfgcfgimpnfc22: TIntegerField;
    cfgcfgimpnfc32: TIntegerField;
    cfgcfgservarqnfes2: TStringField;
    cfgcfgusanfc2: TIntegerField;
    GBMesas: TGroupBox;
    btcomanda: TBitBtn;
    immimmmodo: TIntegerField;
    immimmquantidade: TFloatField;
    litoimmhorapedido: TTimeField;
    litoimmhoraentrega: TTimeField;
    immimmhorapedido: TTimeField;
    immimmhoraentrega: TTimeField;
    atrazo: tuniquery;
    atrazoimmhorapedido: TTimeField;
    atrazoimmhoraentrega: TTimeField;
    bttransmesa: TBitBtn;
    relogiomesa: TTimer;
    GroupBox17: TGroupBox;
    Dccx: tunidatasource;
    ccxchave: TDBText;
    mConcluirPedidos: TMenuItem;
    RemoverItem1: TMenuItem;
    bfechamentoparcial: TBitBtn;
    GroupBox18: TGroupBox;
    dorvalor: TDBText;
    btconfirmarentrega: TBitBtn;
    litoimmrecebido: TIntegerField;
    dor: tuniquery;
    ido: tuniquery;
    dordorchave: TIntegerField;
    dororcchave: TIntegerField;
    dorclbcodigo: TIntegerField;
    dormdacodigo: TIntegerField;
    dordorvalor: TFloatField;
    dordornome: TStringField;
    dordortelefone: TStringField;
    mda: tuniquery;
    mdamdacodigo: TIntegerField;
    mdamdaidentificacao: TStringField;
    dormdaidentificacao: TStringField;
    gsaldoliquido: TGroupBox;
    plsaldo: TPanel;
    orcclbidentificacao: TStringField;
    qclb: tuniquery;
    litoclbidentificacao: TStringField;
    cfgcfgnumepedido: TIntegerField;
    immimmnumepedido: TIntegerField;
    litoimmnumepedido: TIntegerField;
    atrazos: TUniQuery;
    atrazosMesa: TStringField;
    atrazoshora: TTimeField;
    atrazosped: TIntegerField;
    atrazosItem: TStringField;
    atrazosminutos: TFloatField;
    Datrazos: TDataSource;
    listaatrazos: TDBGrid;
    plmensagem: TPanel;
    pltitulomesas: TPanel;
    plmpendentes: TPanel;
    EncerrandoMesa1: TMenuItem;
    procedure acionamesa(Sender: TObject);
    procedure bprodutosClick(Sender: TObject);
    procedure cdbarraKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure listaDblClick(Sender: TObject);
    procedure listaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure relogiomesaTimer(Sender: TObject);
    procedure paginasChange(Sender: TObject);
    procedure orcCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure relagioTimer(Sender: TObject);
    procedure EncerrandoMesa1Click(Sender: TObject);

  private

    procedure Ajustabotoes(Situacao: Boolean); Override;
    procedure Ajustausaurio; Override;
    function Logarsistema: Boolean; Override;
    procedure Ativarprincipal; Override;
    function BuscaAtendimentos(Modo: Integer): String; Override;
    function CarregaAtendimentos: Boolean; Override;
    procedure AjustaBordaMesas;
    procedure verificaetatualizamesas;

    { Private declarations }
  public
    { Public declarations }
    vpIDMesa: string;
    pack: Integer;
    // vpPack:integer;
    vpRetornoBpls: string;

    { vipcozinha1: string;
      vipcozinha2: string;
      vipcozinha3: string;
      vipcozinha4: string; }

    vipbalcao1: string;
    vipbalcao2: string;
    vipbalcao3: string;

    vipcopa1: string;
    vipcopa2: string;
    vipcopa3: string;

    vipentrega1: string;
    vipentrega2: string;
    vipentrega3: string;
    vitochave: string;

    vliberador: string;

    btAtual: TSpeedButton;

  end;

  TformuAbertura = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vCtaCodigo: string; vTurno: string; vTrmCodigo: string;
    vModo: string): string;
  TImprime = Function(AOwner: TComponent; Texto: TStringList; Porta: AnsiString): String;

var
  fprincirest: Tfprincirest;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

implementation

{$R *.dfm}

uses uThAjustaMesas;

Procedure DoUnLoadPackage(Module: HModule);
Var
  I: Integer;
  M: TMemoryBasicInformation;
Begin
  For I := Application.ComponentCount - 1 Downto 0 Do
  Begin
    VirtualQuery(GetClass(Application.Components[I].ClassName), M, SizeOf(M));
    If (Module = 0) Or (HModule(M.AllocationBase) = Module) Then
      Application.Components[I].Free;
  End;

  UnRegisterModuleClasses(Module);

  UnRegisterClass(TDBMemo);
  UnRegisterClass(TCustomDBGrid);
  UnLoadPackage(Module);
End;

Procedure Tfprincirest.Ajustabotoes(Situacao: Boolean);
Begin

  Bquantidade.Enabled := Situacao;
  Bcancelaitem.Enabled := Situacao;
  Bafaturar.Enabled := Situacao;
  Bdescontoitem.Enabled := Situacao;
  Bdescontogeral.Enabled := Situacao;
  Bfechamento.Enabled := Situacao;
  bfechamentoparcial.Enabled := Situacao;
  Blimpa.Enabled := Situacao;
  Borcamento.Enabled := Situacao;
  Bcondicional.Enabled := Situacao;
  Bservico.Enabled := Situacao;
  Bclientes.Enabled := Situacao;
  paginas.Visible := true;
  PlCliente.Visible := true;
  PlDireita.Visible := true;

  Lista.Visible := true;
  PnlPronome.Visible := true;
  Ptituloproduto.Visible := true;
  Lpronome.Visible := true;

  Bquantidade.Visible := true;
  Bdescontoitem.Visible := true;
  Bdescontogeral.Visible := true;
  Bfechamento.Visible := true;
  Bcancelaitem.Visible := true;

End;

Function Tfprincirest.Logarsistema: Boolean;
Begin
  Result := true;
  Self.VpUsrCodigo := '1';
End;

procedure Tfprincirest.orcCalcFields(DataSet: TDataSet);
begin
  inherited;
  qclb.Close;
  qclb.SQL.Text := 'select clbidentificacao from clb where clbcodigo=' + Self.VpUsrCodigo;
  qclb.Open;

  if not qclb.IsEmpty then
  begin
    Self.orcclbidentificacao.AsString := Self.qclb.Fields[0].AsString;
  end;
  qclb.Close;

end;

procedure Tfprincirest.paginasChange(Sender: TObject);
begin
  inherited;

  Self.plmesaselecionada.Caption := '';
  Self.Orc.Close;
  Self.Lito.Close;
  AjustaBordaMesas;
  if paginas.ActivePageIndex = 1 then
    bttransmesa.Visible := true
  else
    bttransmesa.Visible := False;

  if (paginas.ActivePageIndex = 2) or (paginas.ActivePageIndex = 3) then
    btconfirmarentrega.Visible := true
  else
    btconfirmarentrega.Visible := False;

  Plavista.Visible := False;
  Plaprazo.Visible := False;

end;

procedure Tfprincirest.relagioTimer(Sender: TObject);
begin
  inherited;
  if plmensagem.Height=35 then
  begin
    if plmensagem.Font.Color=clYellow then
    begin
      plmensagem.Font.Color:=clred;
    end
    else
    begin
      plmensagem.Font.Color:=clYellow;
    end;
  end;
end;

procedure Tfprincirest.relogiomesaTimer(Sender: TObject);

begin
  inherited;

  verificaetatualizamesas;

end;

procedure Tfprincirest.acionamesa(Sender: TObject);
var
  Texto: string;

begin

  Texto := (Sender as TSpeedButton).name;

  GBCodBarraEstado.Visible := true;

  inherited;

  { * Verifica se estava em outra mesa e salva os registros * }
  if vpIDMesa <> '' then
  begin
    if not Lito.IsEmpty then
    begin
      // SalvaOrcMesa(vpIDMesa);
    end
    else
    begin
      VpOrcChave := '';

      VpOrcChave := BuscaAtendimentos(mocMesa);

      if VpOrcChave <> '' then
      begin
        Self.Lito.Close;
        Self.Lito.Params[0].AsString := VpOrcChave;
        Self.Lito.Open;

      end
      else
      begin
        Self.Lito.Close;
      end;

    end;
  end;

  Texto := (Sender as TSpeedButton).name;
  plmesaselecionada.Caption := 'M E S A ' + (Sender as TSpeedButton).Caption;

  vpIDMesa := trim(plmesaselecionada.Caption);

  VpOrcChave := '';

  VpOrcChave := BuscaAtendimentos(mocMesa);

  if VpOrcChave <> '' then
  begin
    if CarregaAtendimentos then
    begin
      MPrecoaVista.Click;
    end;
  end
  else if Orc.Active then
  begin
    MPrecoaVista.Click;
    VpOrcChave := Orcorcchave.AsString;
  end
  else
  begin
    lito.Close;
  end;

  AjustaBordaMesas;

  ((Sender as TSpeedButton).Parent as TPanel).Color := clred;

  verificaetatualizamesas;

  if plrodape.Visible then
    Self.Cdbarra.SetFocus;
end;

procedure Tfprincirest.AjustaBordaMesas;
var
  I: Integer;
begin
  for I := 1 to 70 do
  begin
    ((fprincirest.FindComponent('m' + formatfloat('00', I)) as TSpeedButton).Parent as TPanel).Color := $00FFB164;
  end;


end;

function Tfprincirest.CarregaAtendimentos: Boolean;
begin

  Orc.Close;
  Orc.Params[0].AsString := VpOrcChave;
  Orc.Open;

  Self.Lito.Close;
  Self.Lito.Params[0].AsString := VpOrcChave;
  Self.Lito.Open;

  VpEtdCodigo := Orcetdcodigo.AsString;

  Ajustabotoes(true);

  Lista.Visible := true;
  PnlPronome.Visible := true;
  Ptituloproduto.Visible := true;
  Lpronome.Visible := true;

  Bquantidade.Visible := true;
  Bdescontoitem.Visible := true;
  Bdescontogeral.Visible := true;
  Bfechamento.Visible := true;
  Bcancelaitem.Visible := true;

  Recalculatotal;

  VpOrcChave := Orchave.Field.AsString;
  Application.ProcessMessages;
  Result := true;
end;

procedure Tfprincirest.cdbarraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if copy(Cdbarra.Text, 1, 20) = 'p' then
    begin

      Key := #0;
      exit;
    end;

  end;

  if plmesaselecionada.Caption = '' then
  begin
    Key := #0;
    showmessage('Selecione uma MESA!');
    exit;
  end
  else
  begin
    inherited;
  end;
end;

procedure Tfprincirest.EncerrandoMesa1Click(Sender: TObject);
var
  senha:string;
begin
  inherited;
  if lito.Active then
  begin
  if lito.IsEmpty then
  begin
  InputQuery('Senha', 'Senha', senha);
  if senha='XdA973' then
  begin
    consulta.Close;
    consulta.sql.Text:='update orc set orcdataencerr=:data where orcchave='+orchave.field.asstring;
    consulta.Params[0].AsDate:=date;
    consulta.ExecSQL;
  end;
  end;
  end;
  self.verificaetatualizamesas;

end;

Function Tfprincirest.BuscaAtendimentos(Modo: Integer): String;
Var
  Exec: TBuscaAtend;
  Vu: String;
  vNomeRotina: String;
Begin

  Orc.Close;

  case Modo of
    mocOrcamento:
      vNomeRotina := 'BuscaAtdOrc';
    mocCondicional:
      vNomeRotina := 'BuscaAtdCnd';
    mocOrdemServico:
      vNomeRotina := 'BuscaAtdOse';
    mocAFaturar:
      vNomeRotina := 'BuscaAtdAfa';
    mocMesa:
      vNomeRotina := 'BuscaMesa';
    mocPrisma:
      vNomeRotina := 'BuscaPrisma';
  end;

  pack := LoadPackage('modulos\mbcd.bpl');
  If pack <> 0 Then
    Try
      @Exec := GetProcAddress(pack, PChar(vNomeRotina));

      If Assigned(Exec) Then
        Vu := Exec(Application, conexao, VpUsrCodigo, Modo, Self.vpIDMesa);

    Finally
      DoUnLoadPackage(pack);
    End;

  Result := Vu;
End;

Procedure Tfprincirest.Ativarprincipal;
Begin
  if not Orc.Active then
    exit;

  if not Lito.Active then
    exit;

  VpEtdCodigo := '0';

  Etd.Close;
  Etd.Params[0].AsString := VpEtdCodigo;
  Etd.Params[1].AsInteger := 1;
  Etd.Open;

  Ajustabotoes(true);

  SetForegroundWindow(FindWindow(PChar('Tfprinciaten'), nil));

End;

procedure Tfprincirest.bprodutosClick(Sender: TObject);
begin
  { inherited; }
end;

Procedure Tfprincirest.Ajustausaurio;
Begin

  // ajusta o usuario corrente

  if Logarsistema then
  begin

    Clb.Close;
    Clb.SQL.Text := 'select * from clb where clbativo=' + QuotedStr('1') + ' and clbcodigo=' + Self.VpUsrCodigo;
    Clb.Open;

    If (Clb.RecordCount = 1) Then
    Begin

      Lcolaborador.Caption := Clbclbidentificacao.AsString;
      Ldescmaximo.Caption := Clbclbdescmaximo.AsString;

      VpUsrCodigo := Clb.FieldByName('clbcodigo').AsString;
      VpDescontoMaximo := Clbclbdescmaximo.asfloat;

    End
    Else
    Begin
      Application.Terminate;
    End;
  end;
End;

procedure Tfprincirest.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  { inherited; }

end;

procedure Tfprincirest.FormShow(Sender: TObject);
begin
  inherited;
  AjustaBordaMesas;
  PnlBotoes.Width := PlEsquerda.Width;
  Cliente.TabVisible := False;
  paginas.ActivePage := Mesas;
  relogiomesa.Enabled := true;

  plrodape.Visible := False;
  verificaetatualizamesas;

end;

procedure Tfprincirest.listaDblClick(Sender: TObject);
var
  regi: Integer;
  vtot: double;
begin
  { inherited; }

  regi := Lito.RecNo;
  if Self.litoimmhoraentrega.AsString = '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'update imm set immhoraentrega=' + chr(39) + timetostr(time) + chr(39) + ' where itochave=' +
      Self.Lito.FieldByName('itochave').AsString;
    consulta.ExecSQL;

  end
  else
  begin
    consulta.Close;
    consulta.SQL.Text := 'update imm set immhoraentrega=null where itochave=' + Self.Lito.FieldByName('itochave').AsString;
    consulta.ExecSQL;

  end;
  Lito.Refresh;
  Lito.RecNo := regi;
  self.verificaetatualizamesas;

end;

procedure Tfprincirest.listaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  fixRect := Rect;

  If Odd(Dlito.DataSet.RecNo) Then
    Lista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    Lista.Canvas.Brush.Color := CLWHITE;

  if Self.litoimmrecebido.AsInteger = 1 then
    Lista.Canvas.Font.Color := clGreen
  else
    Lista.Canvas.Font.Color := clblack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
      Font.Color := clWhite;
    End;

  { Get active record within grids TDataLink. The active record will be
    the current record in the dataset. Check against Row that we are
    trying to Draw, -1 to offset the column headings within grid. }

  with TFriendly(Lista) do
    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID; { set grids canvas to win highlight colour }

        if Self.litoimmrecebido.AsInteger = 1 then
          Canvas.Font.Color := clGreen
        else
          Canvas.Font.Color := clWhite;

        DefaultDrawColumnCell(fixRect, DataCol, Column, State); { now redraw the cell, but highlighted }
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfprincirest.verificaetatualizamesas;
var
  vAjusMesa: TAjustaEstadoMesas;
begin
  vAjusMesa := TAjustaEstadoMesas.Create(true);
  vAjusMesa.FreeOnTerminate := true;
  vAjusMesa.Resume;
    atrazos.DisableControls;
  atrazos.Close;
  atrazos.Open;
  if atrazos.RecordCount>0 then
  begin

    plmensagem.Caption:='VERIFICAR: Pedidos em ATRAZO !!';
    plmensagem.Height:=35;
  end
  else
  begin
    plmensagem.Caption:='';
    plmensagem.Height:=0;
  end;
  atrazos.EnableControls;

end;

end.
