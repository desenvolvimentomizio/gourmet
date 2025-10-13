unit uFPrinciSai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFprinciAte, DBAccess, Uni, Data.DB, Vcl.Menus, System.Actions,
  Vcl.ActnList, MemDS, Vcl.ExtCtrls, UniProvider, MySQLUniProvider, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, ufuncoes,
  Vcl.Buttons, Vcl.Themes, System.MaskUtils, StrUtils,
  System.Diagnostics, DateUtils, frxClass, frxExportImage, Vcl.Mask, frxDBSet, DASQLMonitor, UniSQLMonitor,
  frxDACComponents, frxUniDACComponents, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, ufrmbase, uPegabase, frxDCtrl;

type
  TFrmBaseClass = class of TFrmBase;

type
  TGroupBox = class(Vcl.StdCtrls.TGroupBox) // declare this before of your form definition
  public
    procedure Paint; override;
  end;

type
  TFPrinciSai = class(TFprinciAte)
    GBCaixaVar: TGroupBox;
    orcs: TUniQuery;
    orcsorcchave: TIntegerField;
    orcsorcdataabert: TDateField;
    orcsorchoraabert: TTimeField;
    orcsorcdataencerr: TDateField;
    orcsorchoraencerr: TTimeField;
    orcsetdcodigo: TIntegerField;
    orcsetdidentificacao: TStringField;
    orcsclbidentificacao: TStringField;
    orcsorcobs: TStringField;
    orcsorcnome: TStringField;
    orcsorcendereco: TStringField;
    orcsorctelefone: TStringField;
    orcspuocodigo: TIntegerField;
    dsOrcs: TUniDataSource;
    orcsorcgeral: TFloatField;
    orcsorcdesconto: TFloatField;
    orcsorctotal: TFloatField;
    plDireitaDetalhe: TPanel;
    plEsquerdaPdv: TPanel;
    plGrupoQuantidade: TPanel;
    plTituloQuantidade: TPanel;
    plGrupoTotalItem: TPanel;
    Panel2: TPanel;
    plTotalDesconto: TPanel;
    plGrupoTotVenda: TPanel;
    plTituloTotalVenda: TPanel;
    plValorLiquidoOp: TPanel;
    IImagem: TImage;
    listaOrcs: TDBGrid;
    plTotalBruto: TPanel;
    SBDescontoGeral: TSpeedButton;
    SBFinalizaVenda: TSpeedButton;
    SBAFaturar: TSpeedButton;
    SBSair: TSpeedButton;
    sbAtualizar: TSpeedButton;
    sbVoltaVenda: TSpeedButton;
    orcsedrbairro: TStringField;
    orcsedrendereco: TStringField;
    ActEntregador: TAction;
    clbent: TUniQuery;
    clbentetdcodigo: TIntegerField;
    clbentetdidentificacao: TStringField;
    orcspdghoraentrega: TStringField;
    dsorcssai: TUniDataSource;
    orcssai: TUniQuery;
    orcssaiorcchave: TIntegerField;
    orcssaiorcdataabert: TDateField;
    orcssaiorchoraabert: TTimeField;
    orcssaiorcdataencerr: TDateField;
    orcssaiorchoraencerr: TTimeField;
    orcssaietdcodigo: TIntegerField;
    orcssaietdidentificacao: TStringField;
    orcssaiorcgeral: TFloatField;
    orcssaiorcdesconto: TFloatField;
    orcssaiorctotal: TFloatField;
    orcssaiclbidentificacao: TStringField;
    orcssaiorcobs: TStringField;
    orcssaiorcnome: TStringField;
    orcssaiorcendereco: TStringField;
    orcssaiorctelefone: TStringField;
    orcssaipuocodigo: TIntegerField;
    orcssaiedrbairro: TStringField;
    orcssaiedrendereco: TStringField;
    orcssaipdghoraentrega: TStringField;
    Panel3: TPanel;
    orcsorcdescrpagto: TStringField;
    orcssaiorcdescrpagto: TStringField;
    orcssaipdgnumero: TStringField;
    orcspdgnumero: TStringField;
    ActVoltar: TAction;
    frxDados: TfrxDBDataset;
    ActImprimePedido: TAction;
    relatorio: TfrxReport;
    SpeedButton1: TSpeedButton;
    orcsetdidentificacaoent: TStringField;
    orcssaietdidentificacaoent: TStringField;
    Timer: TTimer;
    gri: TUniQuery;
    GroupBox1: TGroupBox;
    cfgcfgmgourelentrecomple: TStringField;
    cfgcfgmgourelentreresumido: TStringField;
    ActCancelar: TAction;
    SpeedButton2: TSpeedButton;
    orcsorcdataentrega: TDateField;
    orcsorchoraentrega: TTimeField;
    cfgcfggouentregafutura: TIntegerField;
    frxUniDACComponents1: TfrxUniDACComponents;
    orcsmarca: TIntegerField;
    btSelecionarEntregador: TSpeedButton;
    Splitter1: TSplitter;
    Timer2: TTimer;
    horario: TLabel;
    ActAbrirCaixa: TAction;
    SpeedButton3: TSpeedButton;
    czn: TUniQuery;
    ActFecharCaixa: TAction;
    clbcax: TUniQuery;
    clbcaxetdcodigo: TIntegerField;
    clbcaxetdidentificacao: TStringField;
    SpeedButton4: TSpeedButton;
    orcabe: TUniQuery;
    orcabeorcchave: TIntegerField;
    Panel4: TPanel;
    DBGridCozinha: TDBGrid;
    dsorcscoz: TDataSource;
    orcscoz: TUniQuery;
    Splitter2: TSplitter;
    orcscozorcchave: TIntegerField;
    orcscozorcdataabert: TDateField;
    orcscozorchoraabert: TTimeField;
    orcscozorcdataencerr: TDateField;
    orcscozorchoraencerr: TTimeField;
    orcscozetdcodigo: TIntegerField;
    orcscozetdidentificacao: TStringField;
    orcscozorcgeral: TFloatField;
    orcscozorcdesconto: TFloatField;
    orcscozorctotal: TFloatField;
    orcscozclbidentificacao: TStringField;
    orcscozorcobs: TStringField;
    orcscozorcnome: TStringField;
    orcscozorcendereco: TStringField;
    orcscozorctelefone: TStringField;
    orcscozpuocodigo: TIntegerField;
    orcscozedrbairro: TStringField;
    orcscozedrendereco: TStringField;
    orcscozpdghoraentrega: TStringField;
    orcscozorcdescrpagto: TStringField;
    orcscozpdgnumero: TStringField;
    orcscozetdidentificacaoent: TStringField;
    orcssaiorcretorno: TStringField;
    plEntregadores: TPanel;
    plLinhaColaborador01: TPanel;
    clbsit: TUniQuery;
    clbsitorcchave: TIntegerField;
    clbsitpdghoraentrega: TStringField;
    clbsitpdgnumero: TStringField;
    clbsitorcretorno: TStringField;
    clbcaxcceabertura: TDateTimeField;
    Dclbsit: TDataSource;
    plLinhaColaborador02: TPanel;
    ActListaDetalhado: TAction;
    ActListaSimples: TAction;
    sbRelatorioSimples: TSpeedButton;
    SpeedButton5: TSpeedButton;
    frxDialogControls1: TfrxDialogControls;
    iocflacodigo: TIntegerField;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure dsOrcsDataChange(Sender: TObject; Field: TField);
    procedure listaOrcsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActDescontoGeralExecute(Sender: TObject);
    procedure ActDescontoItemExecute(Sender: TObject);
    procedure sbAtualizarClick(Sender: TObject);
    procedure ActClientesExecute(Sender: TObject);
    procedure sbVoltaVendaClick(Sender: TObject);
    procedure ActFinalizaVendaExecute(Sender: TObject);
    procedure ActLimpaAtendimentoExecute(Sender: TObject);
    procedure ActAFaturarExecute(Sender: TObject);
    procedure listaOrcsTitleClick(Column: TColumn);
    procedure ActVoltarExecute(Sender: TObject);
    procedure ActEntregadorExecute(Sender: TObject);
    procedure ActImprimePedidoExecute(Sender: TObject);
    procedure dsorcssaiDataChange(Sender: TObject; Field: TField);

    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure listaOrcsCellClick(Column: TColumn);
    procedure listaOrcsEnter(Sender: TObject);
    procedure listaEnter(Sender: TObject);
    procedure listaCellClick(Column: TColumn);
    procedure listaTitleClick(Column: TColumn);
    procedure TimerTimer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ActAbrirCaixaExecute(Sender: TObject);
    procedure ActFecharCaixaExecute(Sender: TObject);
    procedure DBGridCozinhaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCozinhaCellClick(Column: TColumn);
    procedure ActListaSimplesExecute(Sender: TObject);
    procedure ActListaDetalhadoExecute(Sender: TObject);
  private
    FRegistroFrmBase: String;
    FPodeFechar: Boolean;

    function GetBotoesAtivosImpre: String; override;
    function RegistroAcessoOperacao(vactcodigo, vMotivo: string; vtabela:string='';vregistro:string=''): Boolean;
    procedure DesligaTimer(var MSG: tagMSG; var Handled: Boolean);
    procedure LigaTimer(Sender: TObject; var Done: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure AtualizacaSituacao;
    function CriaFormulario(pFormClass: TFrmBaseClass; pChave, pChaveMestre: String; pFiltro: String = ''): Boolean;
    function ProcessaVendas(vOrcchave: string): string;
    procedure SituacaoEntregadores;

    { Private declarations }
  public
    { Public declarations }
    vpCznChave: string;
  end;

  TliberacaoRFI = function(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vactcodigo: string; vMotivo: string; vtdecodigo, vOrcchave, vmeschave: String;
    vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false;vtabela:string='';vregistro:string=''): string;

  TModuloNFCe = function(AOwner: TComponent; conexao: TUniConnection; vmeschave: string; vfuncao: string; vusrcodigo: string; vTrmCodigo: string; vImprimir: Boolean): Boolean;

var
  FPrinciSai: TFPrinciSai;

implementation

uses
  ulentregadores, ufcce, ulcaixaentregadores, ufccefecha;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);
  (* Chamada exportada para carga da BPL *)

function NewMinutesBetween(aNow, aThen: TDateTime): Int64;
var
  MinDiff: Extended;
begin
  MinDiff := (aThen - aNow) * 24 * 60;
  if (MinDiff - Trunc(MinDiff)) > 0.9999 then
    MinDiff := Round(MinDiff);

  Result := Trunc(MinDiff);
end;

procedure MainForm(AOwner: TApplication);
begin
  FPrinciSai := TFPrinciSai.Create(AOwner);
end;

function formulario(AOwner: TApplication): string;
begin
  FPrinciSai := TFPrinciSai.Create(AOwner);
  FPrinciSai.ShowModal;
  FPrinciSai.Free;
end;

exports MainForm, formulario;

procedure TGroupBox.Paint;
var
  H: Integer;
  R: TRect;
  Flags: Longint;
  CaptionRect, OuterRect: TRect;
  Size: TSize;
  Box: TThemedButton;
  Details: TThemedElementDetails;
begin
  with Canvas do
  begin
    Font := Self.Font;

    if ThemeControl(Self) then
    begin
      if Text <> '' then
      begin
        GetTextExtentPoint32(Handle, PChar(Text), Length(Text), Size);
        CaptionRect := Rect(0, 0, Size.cx, Size.cy);
        if not UseRightToLeftAlignment then
          OffsetRect(CaptionRect, 8, 0)
        else
          OffsetRect(CaptionRect, Width - 8 - CaptionRect.Right, 0);
      end
      else
        CaptionRect := Rect(0, 0, 0, 0);

      OuterRect := ClientRect;
      OuterRect.Top := (CaptionRect.Bottom - CaptionRect.Top) div 2;
      with CaptionRect do
        ExcludeClipRect(Handle, Left, Top, Right, Bottom);
      if Enabled then
        Box := tbGroupBoxNormal
      else
        Box := tbGroupBoxDisabled;
      Details := ThemeServices.GetElementDetails(Box);
      // Draw the themed frame
      ThemeServices.DrawElement(Handle, Details, OuterRect);
      SelectClipRgn(Handle, 0);
      if Text <> '' then
      begin
        Font.Name := 'Tahoma';
        Font.Size := 11;
        Font.Style := [fsBold];
        H := TextHeight('0');
        if not UseRightToLeftAlignment then
          R := Rect(8, 0, 0, H)
        else
          R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);
        Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
        // Now using the Windows.DrawText
        DrawText(Handle, PChar(Text), Length(Text), R, Flags or DT_CALCRECT);
        if Tag > 0 then
          Font.Color := clwhite; // background color of the caption

        Brush.Color := Color; // background color of the caption
        DrawText(Handle, PChar(Text), Length(Text), R, Flags);
      end;
    end
    else
      inherited; // if the control is not themed then use the original paint method.
  end;
end;

procedure TFPrinciSai.listaCellClick(Column: TColumn);
begin
  inherited;
  vpOrcChave := orcssaiorcchave.AsString;
  vpPedChave := orcssaipdgnumero.AsString;
  frxDados.DataSet := orcssai;
end;

procedure TFPrinciSai.listaEnter(Sender: TObject);
begin
  inherited;
  frxDados.DataSet := orcssai;
end;

procedure TFPrinciSai.listaOrcsCellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'marca' then
  begin
    (* Pode fazer assim - Gabriel - 2014-02-06 1323 *)
    orcs.Edit;
    if orcs.Fieldbyname('marca').AsString = '1' then
      orcs.Fieldbyname('marca').AsString := '0'
    else
      orcs.Fieldbyname('marca').AsString := '1';
    orcs.Post;

  end;

  vpOrcChave := orcsorcchave.AsString;
  vpPedChave := orcspdgnumero.AsString;
  frxDados.DataSet := orcs;
end;

procedure TFPrinciSai.listaOrcsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  Check: Integer;
  vminutos: Integer;
  vsegundos: Integer;
begin

  fixRect := Rect;

  If Odd(dsOrcs.DataSet.RecNo) Then
    listaOrcs.Canvas.Brush.Color := PEG_COR_BASE
  else
    listaOrcs.Canvas.Brush.Color := clwhite;

  vsegundos := calcularDiferencaHoras(date, orcsorcdataabert.AsFloat, time, orcsorchoraabert.AsFloat);
  vminutos := vsegundos div 60;

  if vminutos > (30) then
  begin
    listaOrcs.Canvas.Font.Color := clRed;
    listaOrcs.Canvas.Brush.Color := clYellow;
  end;

  vsegundos := calcularDiferencaHoras(date, orcsorcdataabert.AsFloat, time, orcsorchoraabert.AsFloat);
  vminutos := vsegundos div 60;

  if vminutos > (50) then
  begin
    listaOrcs.Canvas.Font.Color := clYellow;
    listaOrcs.Canvas.Brush.Color := clRed;
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(listaOrcs) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        if listaOrcs.Canvas.Font.Color = clGreen then
          Brush.Color := clwhite // $004080FF;
        else
          Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      if listaOrcs.Canvas.Font.Color = clGreen then
        Brush.Color := clwhite
      else
        Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(listaOrcs) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        if listaOrcs.Canvas.Font.Color = clGreen then
          Brush.Color := clsilver
        else
          Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'marca' then
  begin


    // Desenha um checkbox no dbgrid

    listaOrcs.Canvas.FillRect(Rect);

    Check := 0;
    if Self.orcs.Fieldbyname('marca').AsString = '1' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    // fixRect := Rect;
    InflateRect(fixRect, -2, -2);
    DrawFrameControl(listaOrcs.Canvas.Handle, fixRect, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

{
  var
  fixRect: TRect;
  Check: Integer;
  vlHoraAber: Ttime;
  vlHoraAtu: Ttime;
  begin
  fixRect := Rect;


  vlHoraAber := orcsorchoraabert.Asfloat;
  vlHoraAtu := time + strtotime('00:30:00');

  if strtotime(timetostr(vlHoraAber)) < strtotime(timetostr(vlHoraAtu)) then
  listaOrcs.Brush.Color := clYellow;

  vlHoraAtu := time + strtotime('00:50:00');

  if strtotime(timetostr(vlHoraAber)) < strtotime(timetostr(vlHoraAtu)) then
  listaOrcs.Brush.Color := clRed;


  If Odd(dsOrcs.DataSet.RecNo) Then
  lista.Canvas.Brush.Color := PEG_COR_BASE
  Else
  lista.Canvas.Brush.Color := clwhite;



  If gdSelected In State Then
  With (Sender As TDBGrid).Canvas Do
  Begin
  Brush.Color := PEG_COR_SELCGRID;
  FillRect(fixRect);
  Font.Color := clwhite;
  End;

  with TFriendly(listaOrcs) do
  if TDataLink(DataLink).ActiveRecord = Row - 1 then
  with Canvas do
  begin
  Brush.Color := PEG_COR_SELCGRID;

  DefaultDrawColumnCell(fixRect, DataCol, Column, State);
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'marca' then
  begin


  // Desenha um checkbox no dbgrid

  listaOrcs.Canvas.FillRect(Rect);

  Check := 0;
  if Self.orcs.Fieldbyname('marca').AsString = '1' then
  Check := DFCS_CHECKED
  else
  Check := 0;



  fixRect := Rect;
  InflateRect(fixRect, -2, -2);
  DrawFrameControl(listaOrcs.Canvas.Handle, fixRect, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;


  end; }

procedure TFPrinciSai.listaOrcsEnter(Sender: TObject);
begin
  inherited;
  frxDados.DataSet := orcs;
end;

procedure TFPrinciSai.listaOrcsTitleClick(Column: TColumn);
begin
  inherited;
  orcs.IndexFieldNames := Column.FieldName;
end;

procedure TFPrinciSai.listaTitleClick(Column: TColumn);
begin
  inherited;
  orcssai.IndexFieldNames := Column.FieldName;
end;

procedure TFPrinciSai.sbAtualizarClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  horario.Caption := TimeToStr(Now());
  orcssai.Close;
  orcscoz.Close;
  orcs.Close;

  if not orcs.Active then
  begin
    orcs.Open;
    orcssai.Open;
    orcscoz.Open;
    orc.Open;
    ito.Open;
    lito.Open;
  end;
  for i := 0 to listaOrcs.Columns.Count - 1 do
  begin
    if listaOrcs.Columns[i].FieldName = 'orchoraabert' then
      if listaOrcs.Columns[i].Width < 30 then
        listaOrcs.Columns[i].Width := 150;

  end;

  // orcs.Refresh;
  orcs.IndexFieldNames := 'orchoraabert';
  orcs.First;

  orcssai.IndexFieldNames := 'orchoraabert';
  orcssai.First;

  orcscoz.IndexFieldNames := 'orchoraabert';
  orcscoz.First;

  SituacaoEntregadores;

  // orcssai.Refresh;
end;

procedure TFPrinciSai.sbVoltaVendaClick(Sender: TObject);
begin
  if orcs.IsEmpty then
    Exit;

  if application.MessageBox(PChar('Você realmente deseja voltar esse atendimento para Pré-Venda?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO) = IDNO then
    Exit;

  orc.Edit;
  orcstocodigo.AsInteger := stoEmAberto;

  if orcmoccodigo.AsInteger = mocNovoRegistro then
    orcmoccodigo.AsInteger := mocOrcamento;

  orc.Post;

  // AtualizaSituacaoItens(vpOrcChave, stoEmAberto);
  AtualizaSituacaoItens(vpOrcChave, stoEmAberto, tdfMovimentoEmAndamento);

  orcs.Refresh;
end;

function TFPrinciSai.CriaFormulario(pFormClass: TFrmBaseClass; pChave, pChaveMestre: String; pFiltro: String = ''): Boolean;
var
  vlRecNo: Integer;
  vlCargaFrame: TCargaFrame;
  FormBase: TFrmBase;
begin
  FRegistroFrmBase := '';

  Result := false;

  vlCargaFrame := CargaFormu(application, conexao, Acesso, pFiltro, pChave, pChaveMestre);

  FormBase := pFormClass.Create(vlCargaFrame);

  try
    if FormBase.ShowModal = mrOk then
    begin
      FRegistroFrmBase := FormBase.vChave;;
      Result := true;
    end;

  finally
    FormBase.Free;

  end;
end;

procedure TFPrinciSai.ActAbrirCaixaExecute(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
  consulta.Open;

  CriaFormulario(Tfcce, '', consulta.fields[0].AsString);
end;

procedure TFPrinciSai.ActAFaturarExecute(Sender: TObject);
begin
  if orcs.IsEmpty then
    Exit;

  inherited;

  orcs.Refresh;
end;

procedure TFPrinciSai.ActCancelarExecute(Sender: TObject);
begin
  inherited;
  If application.MessageBox(PChar('Confirma a CANCELAMENTO deste pedido ??'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
  begin

    consulta.Close;
    consulta.SQL.Text := 'update orc set stocodigo=88 where orcchave=' + orcsorcchave.AsString;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update ito set stocodigo=88 where orcchave=' + orcsorcchave.AsString;
    consulta.ExecSQL;

    Self.sbAtualizar.Click;

  end;
end;

procedure TFPrinciSai.ActClientesExecute(Sender: TObject);
begin
  if orcs.IsEmpty then
    Exit;

  inherited;
  Mostraclienteselecionado;
  if orc.State = dsEdit then
    orc.Post;

  orcs.Refresh;
end;

procedure TFPrinciSai.ActDescontoGeralExecute(Sender: TObject);
begin
  if orcs.IsEmpty then
    Exit;

  inherited;

  if orc.State = dsEdit then
    orc.Post;
  orcs.Refresh;
end;

procedure TFPrinciSai.ActDescontoItemExecute(Sender: TObject);
begin
  if orcs.IsEmpty then
    Exit;

  if litotpocodigo.AsInteger = 9 then
  begin
    application.MessageBox(PChar('Não pode ser concedido desconto para itens do tipo "Serviço".'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;

  if orc.State = dsEdit then
    orc.Post;
  orcs.Refresh;
end;

procedure TFPrinciSai.ActEntregadorExecute(Sender: TObject);
var
  vlAgora: string;
  myDate: TDateTime;
  myYear, myMonth, myDay: Word;
  myHour, myMin, mySec, myMilli: Word;
begin
  inherited;
  try
    // Timer.Enabled := false;
    // relogio.Enabled := false;

    application.CreateForm(tlentregadores, lentregadores);
    clbent.Close;
    clbent.ParamByName('cznchave').AsString := vpCznChave;
    clbent.Open;
    lentregadores.Dclb.DataSet := clbent;

    if lentregadores.ShowModal = mrOk then
    begin
      // Timer.Enabled := True;
      // relogio.Enabled := True;

      consulta.Close;
      vlAgora := agora(application, conexao);

      DecodeDateTime(strtodatetime(vlAgora), myYear, myMonth, myDay, myHour, myMin, mySec, myMilli);

      vlAgora := formatfloat('0000', myYear) + '-' + formatfloat('00', myMonth) + '-' + formatfloat('00', myDay) + ' ' + formatfloat('00', myHour) + ':' + formatfloat('00', myMin)
        + ':' + formatfloat('00', mySec);

      orcs.First;
      while not orcs.Eof do
      begin
        if orcs.Fieldbyname('marca').AsInteger = 1 then
        begin
          consulta.SQL.Text := 'update imm set immhoraentrega=' + chr(39) + vlAgora + chr(39) + ', etdcodigoent=' + clbentetdcodigo.AsString + ' where immnumepedido=' +
            orcspdgnumero.AsString;
          consulta.ExecSQL;

          consulta.SQL.Text := 'update orc set moccodigo=7 where orcchave=' + orcsorcchave.AsString;
          consulta.ExecSQL;

          lito.First;
          while not lito.Eof do
          begin
            ioc.Close;
            ioc.ParamByName('itochave').AsInteger := litoitochave.AsInteger;
            ioc.Open;

            if ioc.IsEmpty then
            begin
              ioc.Append;
              iocclbcodigo.AsInteger:= clbentetdcodigo.AsInteger;
              iocitochave.AsInteger := litoitochave.AsInteger;
              iociocpercentual.AsFloat := 100;
              iocflacodigo.asinteger:=1;
              ioc.Post;
            end;

            lito.Next;
          end;

        end;
        orcs.Next;
      end;
      sbAtualizar.Click;

    end
    else
    begin
      // Timer.Enabled := True;
      // relogio.Enabled := True;
    end;

  finally
    freeandnil(lentregadores);
  end;
end;

procedure TFPrinciSai.ActFecharCaixaExecute(Sender: TObject);
var
  vlMesChave: string;
begin
  inherited;
  application.CreateForm(tlcaixaentregadores, lcaixaentregadores);
  clbcax.Close;
  clbcax.ParamByName('cznchave').AsString := vpCznChave;

  clbcax.Open;
  lcaixaentregadores.Dclb.DataSet := clbcax;

  if lcaixaentregadores.ShowModal = mrOk then
  begin

    consulta.Close;
    consulta.SQL.Text := 'SELECT ccechave from cce where ccefechamento IS NULL and cznchave=' + vpCznChave + ' and  etdcodigo=' + clbcaxetdcodigo.AsString;
    consulta.Open;
    if not consulta.IsEmpty then
    begin
      if CriaFormulario(Tfccefecha, consulta.Fieldbyname('ccechave').AsString, consulta.fields[0].AsString) then
      begin
        orcabe.Close;
        orcabe.ParamByName('cznchave').AsString := vpCznChave;
        orcabe.ParamByName('etdcodigoent').AsString := clbcaxetdcodigo.AsString;
        orcabe.Open;
        orcabe.First;
        while not orcabe.Eof do
        begin
          vlMesChave := '';
          vlMesChave := ProcessaVendas(orcabeorcchave.AsString);
          if vlMesChave <> '' then
          begin

          end;

          orcabe.Next;
        end;
        ShowMessage('Caixa fechado com sucesso!');
      end;
    end;

  end;
end;

procedure TFPrinciSai.ActFinalizaVendaExecute(Sender: TObject);
begin
  if orcs.IsEmpty then
    Exit;

  Infce.Tag := 1;
  Infe.Tag := 1;
  IDAV.Tag := 1;

  inherited;

  orcs.Refresh;
end;

procedure TFPrinciSai.ActImprimePedidoExecute(Sender: TObject);
var
  vlNomeArq: string;
  BlobField: TBlobField;
  vDirRelat: string;
begin
  inherited;
  frxUniDACComponents1.DefaultDatabase := conexao;

  { consulta.Close;
    consulta.SQL.Text := 'update imm set immhoraimpresso=null where immnumepedido=' + orcspdgnumero.Asstring;
    consulta.ExecSQL;

    ShowMessage('Pedido reenviado para Impressão'); }

  { consulta.Close;
    consulta.SQL.Text := 'select relarquivo from rel where relnomearquivo=' + chr(39) + 'rel06600000000' + chr(39);
    consulta.Open; }

  vlNomeArq := ExtractFilePath(application.ExeName) + 'Report\comprovanteDelivery.fr3';

  { BlobField := consulta.Fields[0] as TBlobField;
    BlobField.SaveToFile(vlNomeArq); }

  if not FileExists(vlNomeArq) then
  begin
    ShowMessage('Arquivo nao localizado: ' + vlNomeArq);
    Exit;
  end;

  // relatorio.LoadFromFile(vlNomeArq);

  consulta.Close;
  consulta.SQL.Text := 'select orcvias from orc where orcchave=' + vpOrcChave;
  consulta.Open;

  vDirRelat := ExtractFilePath(application.ExeName) + 'report\ComprovanteDELIVERY.fr3';

  { relatorio.Variables['tcicodigo'] := QuotedStr('99999');
    relatorio.Variables['immnumepedido'] := QuotedStr(vpPedChave);



    relatorio.PrepareReport(True);
    relatorio.PrintOptions.ShowDialog := false;
    relatorio.ShowProgress := false;
    relatorio.ShowReport; }

  ImprimirComprovantesOrc(application, conexao, vpOrcChave, vDirRelat, trmtciporta.AsString, tiImprimir);

  { relatorio.PrepareReport(TRUE);
    relatorio.PrintOptions.ShowDialog := false;
    relatorio.ShowProgress := false;
    relatorio.ShowReport; }

end;

procedure TFPrinciSai.ActLimpaAtendimentoExecute(Sender: TObject);
begin
  if orcs.IsEmpty then
    Exit;

  inherited;
end;

procedure TFPrinciSai.ActListaDetalhadoExecute(Sender: TObject);
var
  vlNomeArq: string;
  BlobField: TBlobField;
begin
  FPrinciSai.consulta.Close;
  FPrinciSai.consulta.SQL.Text := 'select relarquivo from rel where relcodigo=' + chr(39) + FPrinciSai.cfgcfgmgourelentrecomple.AsString + chr(39);
  FPrinciSai.consulta.Open;

  vlNomeArq := ExtractFilePath(application.ExeName) + 'Relat\relatorioentdetalhado.fr3';

  BlobField := FPrinciSai.consulta.fields[0] as TBlobField;
  BlobField.SaveToFile(vlNomeArq);

  if not FileExists(vlNomeArq) then
  begin
    ShowMessage('Arquivo nao localizado: ' + vlNomeArq);
    Exit;
  end;

  FPrinciSai.relatorio.LoadFromFile(vlNomeArq);

  FPrinciSai.relatorio.Variables['cznchave'] := QuotedStr(FPrinciSai.vpCznChave);

  FPrinciSai.relatorio.ShowReport;

end;

procedure TFPrinciSai.ActListaSimplesExecute(Sender: TObject);
var
  vlNomeArq: string;
  BlobField: TBlobField;
begin
  inherited;
  { if Autorizado(Sender as TAction, '') then
    begin }

  FPrinciSai.consulta.Close;
  FPrinciSai.consulta.SQL.Text := 'select relarquivo from rel where relcodigo=' + chr(39) + FPrinciSai.cfgcfgmgourelentreresumido.AsString + chr(39);
  FPrinciSai.consulta.Open;

  vlNomeArq := ExtractFilePath(application.ExeName) + 'Relat\relatorioentsimples.fr3';

  BlobField := FPrinciSai.consulta.fields[0] as TBlobField;
  BlobField.SaveToFile(vlNomeArq);

  if not FileExists(vlNomeArq) then
  begin
    ShowMessage('Arquivo nao localizado: ' + vlNomeArq);
    Exit;
  end;

  FPrinciSai.relatorio.LoadFromFile(vlNomeArq);

  FPrinciSai.relatorio.Variables['cznchave'] := QuotedStr(FPrinciSai.vpCznChave);
  FPrinciSai.relatorio.ShowReport;

  { end; }
end;

procedure TFPrinciSai.ActVoltarExecute(Sender: TObject);
var
  vlAcao: string;
begin
  inherited;

  vlAcao := '1';

  if RegistroAcessoOperacao(vlAcao, 'Registro') then
  begin

    consulta.Close;

    consulta.SQL.Text := 'update imm set immhoraentrega=null, etdcodigoent=0 where immnumepedido=' + orcssaipdgnumero.AsString + ' and cznchave=' + vpCznChave;
    consulta.ExecSQL;

    sbAtualizar.Click;

  end;
end;

procedure TFPrinciSai.dsOrcsDataChange(Sender: TObject; Field: TField);
var
  vlTotalGeral, vlDescontos, vlTotalLiquido: Double;
begin
  vlTotalGeral := 0;
  vlDescontos := 0;
  vlTotalLiquido := 0;
  try
    if orcs.IsEmpty then
    begin
      orc.Close;
      lito.Close;
      ito.Close;

      vpEtdCodigo := '';

      Exit;
    end;
    vpOrcChave := Self.orcsorcchave.AsString;
    vpEtdCodigo := Self.orcsetdcodigo.AsString;

    orc.Close;
    orc.Params[0].AsString := vpOrcChave;
    orc.Open;

    lito.Close;
    lito.Params[0].AsString := vpOrcChave;
    lito.Open;

    ito.Close;
    ito.Params[0].AsString := vpOrcChave;
    ito.Open;

    vlTotalGeral := orcsorcgeral.AsFloat;
    vlDescontos := orcsorcdesconto.AsFloat;
    vlTotalLiquido := orcsorctotal.AsFloat;
  finally
    plTotalBruto.Caption := formatfloat('##,###,##0.00', vlTotalGeral);
    plTotalDesconto.Caption := formatfloat('##,###,##0.00', vlDescontos);
    plValorLiquidoOp.Caption := formatfloat('##,###,##0.00', vlTotalLiquido);
  end;
end;

procedure TFPrinciSai.dsorcssaiDataChange(Sender: TObject; Field: TField);
var
  vlTotalGeral, vlDescontos, vlTotalLiquido: Double;
begin
  vlTotalGeral := 0;
  vlDescontos := 0;
  vlTotalLiquido := 0;
  try
    if orcs.IsEmpty then
    begin
      orc.Close;
      lito.Close;
      ito.Close;

      vpEtdCodigo := '';

      Exit;
    end;
    vpOrcChave := Self.orcssaiorcchave.AsString;
    vpEtdCodigo := Self.orcssaietdcodigo.AsString;

    orc.Close;
    orc.Params[0].AsString := vpOrcChave;
    orc.Open;

    lito.Close;
    lito.Params[0].AsString := vpOrcChave;
    lito.Open;

    ito.Close;
    ito.Params[0].AsString := vpOrcChave;
    ito.Open;

    vlTotalGeral := orcssaiorcgeral.AsFloat;
    vlDescontos := orcssaiorcdesconto.AsFloat;
    vlTotalLiquido := orcssaiorctotal.AsFloat;
  finally
    plTotalBruto.Caption := formatfloat('##,###,##0.00', vlTotalGeral);
    plTotalDesconto.Caption := formatfloat('##,###,##0.00', vlDescontos);
    plValorLiquidoOp.Caption := formatfloat('##,###,##0.00', vlTotalLiquido);
  end;

end;

procedure TFPrinciSai.LigaTimer(Sender: TObject; var Done: Boolean); // liga o timer ao ficar ocioso
begin
  Timer2.Enabled := true;
end;

procedure TFPrinciSai.DBGridCozinhaCellClick(Column: TColumn);
begin
  inherited;
  vpOrcChave := orcscozorcchave.AsString;
  vpPedChave := orcscozpdgnumero.AsString;
  frxDados.DataSet := orcscoz;
end;

procedure TFPrinciSai.DBGridCozinhaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  Check: Integer;
  vminutos: Integer;
  vsegundos: Integer;
begin

  fixRect := Rect;

  If Odd(dsorcscoz.DataSet.RecNo) Then
    DBGridCozinha.Canvas.Brush.Color := PEG_COR_BASE
  else
    DBGridCozinha.Canvas.Brush.Color := clwhite;

  vsegundos := calcularDiferencaHoras(date, orcscozorcdataabert.AsFloat, time, orcscozorchoraabert.AsFloat);
  vminutos := vsegundos div 60;

  if vminutos > (15) then
  begin
    DBGridCozinha.Canvas.Font.Color := clRed;
    DBGridCozinha.Canvas.Brush.Color := clYellow;
  end;

  vsegundos := calcularDiferencaHoras(date, orcscozorcdataabert.AsFloat, time, orcscozorchoraabert.AsFloat);
  vminutos := vsegundos div 60;

  if vminutos > (45) then
  begin
    DBGridCozinha.Canvas.Font.Color := clYellow;
    DBGridCozinha.Canvas.Brush.Color := clRed;
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGridCozinha) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        if DBGridCozinha.Canvas.Font.Color = clGreen then
          Brush.Color := clwhite // $004080FF;
        else
          Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      if DBGridCozinha.Canvas.Font.Color = clGreen then
        Brush.Color := clwhite
      else
        Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure TFPrinciSai.DesligaTimer(var MSG: tagMSG; var Handled: Boolean); // desliga o timer ao entrar em atividade
begin
  Timer2.Enabled := false;
end;

procedure TFPrinciSai.Timer1Timer(Sender: TObject); // ao executar o timer, depois do tempo informado
begin

end;

procedure TFPrinciSai.Timer2Timer(Sender: TObject);
begin
  inherited;
  // Aqui você executa a ação cabível. no meu caso apenas alterei um label.
  horario.Caption := TimeToStr(Now());
  Self.sbAtualizar.Click;
end;

procedure TFPrinciSai.TimerTimer(Sender: TObject);
begin
  inherited;
  // lreglogio.Caption:=timetostr(time);
end;

procedure TFPrinciSai.AtualizacaSituacao;
var
  Handle: THandle;
begin

  Handle := 0;
  Handle := FindWindow('Tlentregadores', nil);

  if Handle = 0 then
  begin
    sbAtualizar.Click;
    horario.Caption := TimeToStr(Now);
    gri.Close;
    gri.Open;
    if gri.fields[0].AsInteger > 0 then
    begin
      Mostraerro('A T E N Ç Ã O   -   A T E N Ç Ã O: ' + ''#13'' + ''#13'' + 'Falha de IMPRESSORA:' + ''#13'' + ''#13'' + gri.fields[1].AsString + ''#13'' + ''#13'' +
        'Verifique a IMPRESSORA!!' + ''#13'');
    end;
  end;
end;

procedure TFPrinciSai.FormCreate(Sender: TObject);
begin

  application.OnIdle := LigaTimer;
  application.OnMessage := DesligaTimer;

  vpLarguraTela := 1920;
  vpAlturaTela := 1080;

  inherited;

  // cria um mutex usando um nome único
  CreateMutex(nil, false, 'mizioCaixa.OnlyOne');

  // verifica se houve erro na criação
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    MessageBox(0, 'Este programa já está sendo executado', 'Aviso', MB_ICONSTOP);
    Halt(0);
    // cancela execução
  end;

  if FileExists(ExtractFilePath(application.ExeName) + 'logo.png') then
  begin
    IFundo.Picture.LoadFromFile(ExtractFilePath(application.ExeName) + 'logo.png');
    IImagem.Picture.LoadFromFile(ExtractFilePath(application.ExeName) + 'logo.png');
  end;

  InicializacaoGeral;

  consulta.Close;
  consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
  consulta.Open;

  vpCznChave := consulta.Fieldbyname('cznchave').AsString;

  Ajustabotoes(false);

  Trm.Close;
  Trm.Params[0].AsString := Acesso.Terminal.ToString;
  Trm.Open;

  If Trm.RecordCount = 0 Then
  Begin
    ShowMessage('Este terminal não esta cadastrado no sistema, verifique!');
    application.Terminate;
  End
  Else
  Begin

    WindowState := WsMaximized;

    { if not Ajustausuario then
      Exit; }

    ativaimpressoraNF;

    if not IDAV.Visible then
      If FileExists(ExtractFilePath(application.ExeName) + 'relat\comprovante.fr3') Then
        IDAV.Visible := true;

    ajustaCaixa;
    ActFechaCaixa.Enabled := false;

    lterminal.Caption := Self.Acesso.Terminal.ToString;

    Ajustabotoes(false);

    AdjustColumnWidths(lista);
    AdjustColumnWidths(listaOrcs);
    plMensagemPrincipal.Visible := false;

    if vpCaixaAberto = 1 then
    begin
      plDetalhe.Visible := true;
      plMensagemPrincipal.Visible := false;

      sbAtualizar.Click;
    end;
  End;
end;

procedure TFPrinciSai.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  Tecla: Integer;
  VCdBarra: String;
  VQuantidade: Double;
Begin
  VCdBarra := (FindComponent('Cdbarra') as TEdit).Text;
  (FindComponent('Cdbarra') as TEdit).Text := '';

  Tecla := Key;
  Key := 0;

  // Identifica se tem combinação de tecla com Ctrl;
  If Shift = [SsCtrl] Then
  Begin
    Case Tecla Of
      (* I - CANCELAMENTO DE ITEM *)
      73:
        ActCancelaItem.Execute;

      (* U - LIMPA ATENDIMENTO *)
      85:
        ActLimpaAtendimento.Execute;

      (* D - DESCONTO NO ITEM *)
      68:
        ActDescontoItem.Execute;

      (* G - DESCONTO GERAL *)
      71:
        ActDescontoGeral.Execute;

    Else
      Key := Tecla;
    End;

  End
  Else
  Begin
    Case Tecla Of

      (* F2 - Atualiza Lista ORCS *)
      113:
        sbAtualizar.Click;

      { (* F3 - INFORMAÇÃO COMPLEMENTAR *)
        114:
        ActInfoComplementar.Execute;

        (* F4 - AJUSTA QUANTIDADE *)
        115:
        ActQuantidade.Execute;

        (* F5 - AJUSTA PREÇO *)
        116:
        ActAjustaPreco.Execute; }

      (* F6 -  FINALIZAR VENDA *)
      117:
        ActFinalizaVenda.Execute;

      (* F7 - BUSCA CLIENTES *)
      118:
        ActClientes.Execute;

      (* F9 - A FATURAR *)
      120:
        ActAFaturar.Execute;

      (* NENHUMA DAS OPÇÕES DEVOLVE VALOR DAS TECLAS *)
    Else
      // DEVOLVE POSIÇÃO DO CURSOR PARA O FIM
      Key := Tecla;
    End;
  End;
end;

procedure TFPrinciSai.FormShow(Sender: TObject);
begin

  inherited;
  ldia.Caption := hoje(application, conexao);
  horario.Caption := TimeToStr(Now());
  Screen.Cursors[crSQLWait] := Screen.Cursors[crDefault];

  // Timer.Enabled := True;

  if cfgcfggouentregafutura.AsInteger = 1 then
  begin
    listaOrcs.Columns[2].Visible := true;
    listaOrcs.Columns[3].Visible := true;
  end
  else
  begin
    listaOrcs.Columns[2].Visible := false;
    listaOrcs.Columns[3].Visible := false;
  end;

end;

function TFPrinciSai.GetBotoesAtivosImpre: String;
Var
  vlImpAtivos: string;
Begin
  vlImpAtivos := '     ';

  if IDAV.Visible then
    // if vpImprimiuDAV then
    Insert('O', vlImpAtivos, 1);

  Insert(' ', vlImpAtivos, 2);

  if Infce.Visible then
    // if vpImprimiuNFCe then
    Insert('F', vlImpAtivos, 3);

  if Infe.Visible then
    // if vpImprimiuNFE then
    Insert('E', vlImpAtivos, 4);

  if orcfopcodigo.AsInteger = 2 then
    Insert('B', vlImpAtivos, 5);

  Result := vlImpAtivos;
end;

function TFPrinciSai.RegistroAcessoOperacao(vactcodigo: string; vMotivo: string; vtabela:string='';vregistro:string=''): Boolean;
var
  auto: TliberacaoRFI;
  vRetornoUsr: string;
  vLiberacao: Boolean;
  Pack: Cardinal;
begin

  vLiberacao := true;

  Pack := LoadPackage('modulos\mlia.bpl');
  if Pack <> 0 then
    try
      @auto := GetProcAddress(Pack, PChar('liberacao'));

      if Assigned(auto) then
      begin
        vRetornoUsr := auto(application, conexao, Acesso.Usuario.ToString, vactcodigo, vMotivo, '', '', '', '', '', true);

        if (vRetornoUsr = '0') or (vRetornoUsr = '') then // retornou NÃO AUTORIZADO
          vLiberacao := false;
      end;
    finally
      DoUnLoadPackage(application, Pack);
    end;

  Result := vLiberacao;
end;

function TFPrinciSai.ProcessaVendas(vOrcchave: string): string;
var
  Processa: TProcessaOrc;
  vlPackopm: Cardinal;
  vmeschave: String;
  vlOrcChave: string;
begin
  vmeschave := '';
  vlOrcChave := vOrcchave;

  vlPackopm := LoadPackage('modulos\mopm.bpl');
  If vlPackopm <> 0 Then
    Try
      @Processa := GetProcAddress(vlPackopm, PChar('ProcessaOrc'));

      If Assigned(Processa) Then
      Begin
        vmeschave := '0';
        vmeschave := Processa(application, conexao, vlOrcChave, Acesso);
      End;
    Finally
      // DoUnLoadPackage(Pack);
    End;

  If (vmeschave <> '0') and (vmeschave <> '') Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'update orc set stocodigo=' + IntToStr(stoVendido) + ' where orcchave=' + vlOrcChave;
    consulta.ExecSQL;

    AtualizaSituacaoItens(vlOrcChave, stoVendido, tdfMovimentoEmAndamento);

  End;

  Result := vmeschave;
end;

procedure TFPrinciSai.SituacaoEntregadores;
var
  vlPlColab: TPanel;
  vlPlColabNome: TPanel;
  vlPlColabTempo: TPanel;
  vlDifTempo: ttime;

  vlCor: Tcolor;
  vlCorLetra: Tcolor;

  i: Integer;
begin
  i := 1;

  clbcax.Close;
  clbcax.ParamByName('cznchave').AsString := vpCznChave;
  clbcax.Open;

  clbcax.First;
  while not clbcax.Eof do
  begin

    clbsit.Close;
    clbsit.ParamByName('etdcodigo').AsInteger := clbcaxetdcodigo.AsInteger;
    clbsit.FilterSQL := 'orcretorno is null';
    clbsit.Open;

    if not clbsit.IsEmpty then
    begin
      // esta na rua

      vlDifTempo := time - strtotime(clbsitpdghoraentrega.AsString);

      if (plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) <> nil) or
        (plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) <> nil) then
      begin
        if (plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) <> nil) then
        begin
          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Caption := TimeToStr(vlDifTempo);

          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Color := clRed;

          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Font.Size := 10;

          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Font.Color := clwhite;

          ((((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Parent as TPanel).Color := clRed;

          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Color := clRed;

          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Font.Color := clwhite;

          ((((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Parent as TPanel).Color := clRed;

          ((((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Parent as TPanel).Font.Color := clwhite;

        end
        else if (plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) <> nil) then
        begin

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Caption := TimeToStr(vlDifTempo);

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Color := clRed;

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Font.Size := 10;

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Font.Color := clwhite;

          ((((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Parent as TPanel).Color := clRed;

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Color := clRed;

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Font.Color := clwhite;

          ((((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Parent as TPanel).Color := clRed;

          ((((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Parent as TPanel).Font.Color := clwhite;

        end

      end
      else
      begin

        if plLinhaColaborador01.ComponentCount < 11 then
        begin
          vlPlColab := TPanel.Create(plLinhaColaborador01);
          vlPlColab.Name := 'plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger);
          vlPlColab.Parent := plLinhaColaborador01;

        end
        else
        begin
          vlPlColab := TPanel.Create(plLinhaColaborador02);
          vlPlColab.Name := 'plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger);
          vlPlColab.Parent := plLinhaColaborador02;

        end;

        vlPlColab.Align := alLeft;
        vlPlColab.Width := 80;
        vlPlColab.ParentBackground := false;
        vlPlColab.Color := clRed;
        vlPlColab.Font.Size := 10;
        vlPlColab.Font.Color := clwhite;
        vlPlColab.Caption := ''; // copy(clbcaxetdidentificacao.AsString, 1, 8);

        vlPlColabNome := TPanel.Create(vlPlColab);
        vlPlColabNome.Name := 'plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger);
        vlPlColabNome.Parent := vlPlColab;
        vlPlColabNome.Align := alTop;
        vlPlColabNome.Height := 25;
        vlPlColabNome.ParentBackground := false;
        vlPlColabNome.Color := clRed;
        vlPlColabNome.Font.Size := 10;
        vlPlColabNome.Font.Color := clwhite;
        vlPlColabNome.Caption := copy(clbcaxetdidentificacao.AsString, 1, 8);
        vlPlColabNome.BevelOuter := bvNone;

        vlPlColabTempo := TPanel.Create(vlPlColab);
        vlPlColabTempo.Name := 'plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger);
        vlPlColabTempo.Parent := vlPlColab;
        vlPlColabTempo.Align := alBottom;
        vlPlColabTempo.Height := 15;
        vlPlColabTempo.ParentBackground := false;
        vlPlColabTempo.Color := clRed;
        vlPlColabTempo.Font.Size := 10;
        vlPlColabTempo.Font.Color := clwhite;
        vlPlColabTempo.Caption := TimeToStr(vlDifTempo);
        vlPlColabTempo.BevelOuter := bvNone;
      end

    end
    else
    begin
      // esta na loja
      clbsit.Close;
      clbsit.ParamByName('etdcodigo').AsInteger := clbcaxetdcodigo.AsInteger;
      clbsit.FilterSQL := '';
      clbsit.Open;

      if clbsitpdghoraentrega.AsString <> '' then
      begin
        vlDifTempo := time - strtotime(clbsitorcretorno.AsString);
        vlCor := clGreen;
        vlCorLetra := clwhite;
      end
      else
      begin
        vlDifTempo := time - strtotime(trim(copy(clbcaxcceabertura.AsString, 11, 10)));
        vlCor := clYellow;
        vlCorLetra := clRed;
      end;

      if (plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) <> nil) or
        (plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) <> nil) then
      begin

        if (plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) <> nil) then
        begin
          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Caption := TimeToStr(vlDifTempo);

          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Color := vlCor;

          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Font.Color := vlCorLetra;

          (((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Color := vlCor;

          ((((plLinhaColaborador01.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Parent as TPanel).Color := vlCor;

        end;
        if (plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) <> nil) then
        begin
          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Caption := TimeToStr(vlDifTempo);

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Color := vlCor;

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Font.Color := vlCorLetra;

          (((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Color := vlCor;

          ((((plLinhaColaborador02.FindComponent('plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel) as TPanel)
            .FindComponent('plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger)) as TPanel).Parent as TPanel).Color := vlCor;

        end;

      end
      else
      begin
        if plLinhaColaborador01.ComponentCount < 11 then
        begin
          vlPlColab := TPanel.Create(plLinhaColaborador01);
          vlPlColab.Name := 'plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger);
          vlPlColab.Parent := plLinhaColaborador01;

        end
        else
        begin
          vlPlColab := TPanel.Create(plLinhaColaborador02);
          vlPlColab.Name := 'plColab' + formatfloat('000000', clbcaxetdcodigo.AsInteger);
          vlPlColab.Parent := plLinhaColaborador02;

        end;

        vlPlColab.Align := alLeft;
        vlPlColab.Width := 60;
        vlPlColab.ParentBackground := false;
        vlPlColab.Color := vlCor;
        vlPlColab.Font.Size := 10;
        vlPlColab.Font.Color := vlCorLetra;
        vlPlColab.Caption := ''; // copy(clbcaxetdidentificacao.AsString, 1, 8);

        vlPlColabNome := TPanel.Create(vlPlColab);
        vlPlColabNome.Name := 'plColabNome' + formatfloat('000000', clbcaxetdcodigo.AsInteger);
        vlPlColabNome.Parent := vlPlColab;
        vlPlColabNome.Align := alTop;
        vlPlColabNome.Height := 25;
        vlPlColabNome.ParentBackground := false;
        vlPlColabNome.Color := vlCor;
        vlPlColabNome.Font.Size := 10;
        vlPlColabNome.Font.Color := vlCorLetra;
        vlPlColabNome.Caption := copy(clbcaxetdidentificacao.AsString, 1, 8);
        vlPlColabNome.BevelOuter := bvNone;

        vlPlColabTempo := TPanel.Create(vlPlColab);
        vlPlColabTempo.Name := 'plColabTempo' + formatfloat('000000', clbcaxetdcodigo.AsInteger);
        vlPlColabTempo.Parent := vlPlColab;
        vlPlColabTempo.Align := alBottom;
        vlPlColabTempo.Height := 15;
        vlPlColabTempo.ParentBackground := false;
        vlPlColabTempo.Color := vlCor;
        vlPlColabTempo.Font.Size := 10;
        vlPlColabTempo.Font.Color := vlCorLetra;
        vlPlColabTempo.Caption := TimeToStr(vlDifTempo);
        vlPlColabTempo.BevelOuter := bvNone;

      end

    end;

    clbcax.Next;
  end;

end;

end.
