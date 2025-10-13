unit ufraflh;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, System.SysUtils,
  uFuncoes, uPegaBase, System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.Graphics,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfraflh = class(Tfrabase)
    uqtabelaflhchave: TIntegerField;
    uqtabelaeflcodigo: TIntegerField;
    uqtabelaflhidentificacao: TStringField;
    uqtabelaflhmes: TStringField;
    uqtabelaflhano: TStringField;
    uqtabelaflhdtinicial: TDateField;
    uqtabelaflhdtfinal: TDateField;
    uqtabelaflhdtpgto: TDateField;
    uqtabelatflidentificacao: TStringField;
    uqtabelaeflidentificacao: TStringField;
    ActCalcular: TAction;
    ActEstornar: TAction;
    ActFechar: TAction;
    uqtabelatflcodigo: TIntegerField;
    ActReabrir: TAction;
    efg: TUniQuery;
    efgefgchave: TIntegerField;
    efgflhchave: TIntegerField;
    efgetdcodigo: TIntegerField;
    efgetdidentificacao: TStringField;
    efgeflcodigo: TIntegerField;
    efgevavalor: TFloatField;
    Defg: TDataSource;
    plColaboradores: TPanel;
    plTitColaboradores: TPanel;
    DBGListaEtd: TDBGrid;
    Devaetd: TDataSource;
    evaetd: TUniQuery;
    evaetdevachave: TIntegerField;
    evaetdflhchave: TIntegerField;
    evaetdevfcodigo: TIntegerField;
    evaetdetdcodigo: TIntegerField;
    evaetdtevcodigo: TIntegerField;
    evaetdevavalor: TFloatField;
    evaetdevahistorico: TStringField;
    evaetdclbcodigo: TIntegerField;
    evaetdevacriacao: TDateTimeField;
    evaetdevfidentificacao: TStringField;
    evaetdcedidentificacao: TStringField;
    evaetdcedcodigo: TIntegerField;
    plEventos: TPanel;
    plTitEventos: TPanel;
    plTotalLanca: TPanel;
    GBTotal: TGroupBox;
    plDebitos: TPanel;
    GBRecebidos: TGroupBox;
    plCreditos: TPanel;
    GBEmAberto: TGroupBox;
    plSaldo: TPanel;
    DBGListaEva: TDBGrid;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    plTotalFlh: TPanel;
    etdidentificacao: TDBText;
    efgeflidentificacao: TStringField;
    ActResumo: TAction;
    ActObservacoes: TAction;
    GroupBox1: TGroupBox;
    plCreditoTotal: TPanel;
    GroupBox2: TGroupBox;
    plDebitoTotal: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActCalcularExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActEstornarExecute(Sender: TObject);
    procedure ActReabrirExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DefgDataChange(Sender: TObject; Field: TField);
    procedure DBGListaEtdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaEvaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaEtdTitleClick(Column: TColumn);
    procedure ActResumoExecute(Sender: TObject);
    procedure ActObservacoesExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraflh: Tfraflh;

const
  vplidmd = '02.12.90.001-01';
  vPlTitMdl = 'Folha Gerencial';

implementation

{$R *.dfm}

uses ufflh, ufflhcalcular, ufflhencerrar;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vplidmd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraflh := Tfraflh.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraflh := Tfraflh.Create(pCargaFrame);
  try
    fraflh.CriaAcoesDeAcesso;
  finally
    fraflh.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraflh.ActAlterarExecute(Sender: TObject);
begin
  if not(Self.uqtabelaeflcodigo.AsInteger in [eflCriada, eflCalculada]) then
  begin
    Application.MessageBox(PChar('Somente folhas Criadas ou Calculadas podem ser alteradas!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfflh, uqtabelaflhchave.AsString, '');
end;

procedure Tfraflh.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfflh, '', '');
end;

procedure Tfraflh.ActObservacoesExecute(Sender: TObject);
begin
  inherited;
  mostralista('mofh', '', uqtabelaflhchave.AsString);

end;

procedure Tfraflh.ActReabrirExecute(Sender: TObject);
begin
  inherited;
  if Self.uqtabelaeflcodigo.AsInteger <> eflFechada then
  begin
    Application.MessageBox(PChar('Somente folhas Fechadas podem ser Reabertas!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  If Application.MessageBox(PChar('Folha já está Fechada.' + #13 + #13 + 'Deseja reabri-la ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDNO Then
    Exit;

  efg.First;
  while not efg.Eof do
  begin
    if efgeflcodigo.AsInteger <> eflLiquidada then
    begin
      efg.Edit;
      efgeflcodigo.AsInteger := eflCalculada;
      efg.Post;
    end;

    efg.Next;
  end;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE eva ';
  consulta.SQL.Add('SET eflcodigo = ' + IntToStr(eflCalculada) + ' ');
  consulta.SQL.Add('WHERE eflcodigo NOT IN (' + IntToStr(eflLiquidada) + ', ' + IntToStr(eflEstorno) + ') ');
  consulta.SQL.Add('AND flhchave = ' + Self.uqtabelaflhchave.AsString);
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE flh SET eflcodigo = ' + IntToStr(eflCalculada) + ' WHERE flhchave = ' + Self.uqtabelaflhchave.AsString;
  consulta.ExecSQL;

  ActAtualizar.Execute;
end;

procedure Tfraflh.ActResumoExecute(Sender: TObject);
begin
  inherited;
  mostralista('mrfh', '', uqtabelaflhchave.AsString);
end;

procedure Tfraflh.Carregar;
begin

  (* Parâmetro para validação da conta terminal quando for pesquisa *)

  if ModoFrame = modoPesquisa then
  begin
    if TxtFiltro <> '' then
    begin
      uqtabela.filter := TxtFiltro;
      uqtabela.filtered := True;
      PlRodaPe.Visible := False;
      SplLista.Visible := False;
    end
    else
    begin
      PlRodaPe.Visible := True;
      SplLista.Visible := True;
    end;

  end;
  inherited;

end;

procedure Tfraflh.DBGListaEtdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);

end;

procedure Tfraflh.DBGListaEtdTitleClick(Column: TColumn);
begin
  inherited;
  efg.IndexFieldNames := Column.FieldName;
end;

procedure Tfraflh.DBGListaEvaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);

end;

procedure Tfraflh.DefgDataChange(Sender: TObject; Field: TField);
var
  vlDebitos: double;
  vlCreditos: double;
  vlSaldo: double;

begin
  inherited;
  vlDebitos := 0;
  vlCreditos := 0;
  vlSaldo := 0;

  if efg.Active then
  begin

    if efgetdcodigo.AsString <> '' then
    begin
      evaetd.Close;
      evaetd.Params[0].AsInteger := uqtabelaflhchave.AsInteger;
      evaetd.Params[1].AsInteger := efgetdcodigo.AsInteger;
      evaetd.Open;
    end
    else
    begin
      evaetd.Close;
      vlSaldo := vlCreditos - vlDebitos;
      plDebitos.Caption := formatfloat('##,###,##0.00', vlDebitos);
      plCreditos.Caption := formatfloat('##,###,##0.00', vlCreditos);
      plSaldo.Caption := formatfloat('##,###,##0.00', vlSaldo);

      Exit;

    end;

    if not evaetd.IsEmpty then
    begin
      evaetd.DisableControls;
      while not evaetd.Eof do
      begin
        if Self.evaetdcedcodigo.AsInteger = 0 then
          vlDebitos := vlDebitos + Self.evaetdevavalor.AsCurrency
        else
          vlCreditos := vlCreditos + Self.evaetdevavalor.AsCurrency;

        evaetd.Next;
      end;
    end;
    if evaetd.Active then
    begin
      evaetd.First;
      evaetd.EnableControls;

    end;

  end;

  vlSaldo := vlCreditos - vlDebitos;
  plDebitos.Caption := formatfloat('##,###,##0.00', vlDebitos);
  plCreditos.Caption := formatfloat('##,###,##0.00', vlCreditos);
  plSaldo.Caption := formatfloat('##,###,##0.00', vlSaldo);

end;

procedure Tfraflh.DSTabelaDataChange(Sender: TObject; Field: TField);
var
  vlSaldoTotal: double;
  vlCreditoTotal: double;
  vlDebitoTotal: double;

begin
  inherited;
  vlSaldoTotal := 0;
  vlDebitoTotal := 0;
  vlCreditoTotal := 0;

  plTotalFlh.Caption := formatfloat('##,###,##0.00', vlSaldoTotal);

  efg.Close;
  efg.Params[0].AsInteger := Self.uqtabelaflhchave.AsInteger;
  efg.Open;

  if efg.RecordCount = 0 then
  begin
    efg.Close;
    Exit;
  end;

  efg.DisableControls;
  evaetd.DisableControls;
  efg.First;
  while not efg.Eof do
  begin
    evaetd.Close;
    evaetd.Params[0].AsInteger := uqtabelaflhchave.AsInteger;
    evaetd.Params[1].AsInteger := efgetdcodigo.AsInteger;
    evaetd.Open;

    evaetd.First;
    while NOT evaetd.Eof do
    begin

      if evaetdcedcodigo.AsInteger = 1 then
        vlCreditoTotal := vlCreditoTotal + evaetdevavalor.AsCurrency;

      if evaetdcedcodigo.AsInteger = 0 then
        vlDebitoTotal := vlDebitoTotal + evaetdevavalor.AsCurrency;

      evaetd.Next;
    end;

    vlSaldoTotal := vlSaldoTotal + efgevavalor.AsCurrency;


    efg.Next;
  end;
  plTotalFlh.Caption := formatfloat('##,###,##0.00', vlSaldoTotal);
  plCreditoTotal.Caption := formatfloat('##,###,##0.00', vlCreditoTotal);
  plDebitoTotal.Caption := formatfloat('##,###,##0.00', vlDebitoTotal);

  efg.First;
  efg.EnableControls;
  evaetd.EnableControls;

end;

procedure Tfraflh.ActCalcularExecute(Sender: TObject);
begin
  if not(Self.uqtabelaeflcodigo.AsInteger in [eflCriada, eflCalculada]) then
  begin
    Application.MessageBox(PChar('Somente folhas Criadas podem ser Calculadas!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfflhcalcular, uqtabelaflhchave.AsString, '')
end;

procedure Tfraflh.ActFecharExecute(Sender: TObject);
begin
  inherited;

  efg.DisableControls;
  efg.First;
  while not efg.Eof do
  begin
    if efgevavalor.AsFloat < 0 then
    begin
      ShowMessage('Não é possível fechar folha tendo Colaborador com saldo negativo!' + #13 + #13 + 'Colaborador: ' + Self.efgetdcodigo.AsString + ' ' +
        Self.efgetdidentificacao.AsString);

      efg.First;
      efg.EnableControls;
      Exit;
    end;
    efg.Next;
  end;
  efg.EnableControls;

  if Self.uqtabelaeflcodigo.AsInteger <> eflCalculada then
  begin
    Application.MessageBox(PChar('Somente folhas Calculadas podem ser Fechadas!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfflhencerrar, uqtabelaflhchave.AsString, '');
end;

procedure Tfraflh.ActEstornarExecute(Sender: TObject);
begin
  inherited;

  { }
end;

procedure Tfraflh.ActExcluirExecute(Sender: TObject);
var
  vlPode: boolean;
begin
  vlPode := True;
  if not(Self.uqtabelaeflcodigo.AsInteger in [eflCriada, eflCalculada]) then
  begin
    Application.MessageBox(PChar('Somente folhas Criadas ou Calculadas podem ser excluidas!'), 'Atenção', MB_ICONWARNING + MB_OK);
    vlPode := False;
    Exit;
  end
  else
  begin

    if efg.Active then
    begin
      efg.First;
      while not efg.Eof do
      begin
        if efgeflcodigo.AsInteger = eflLiquidada then
        begin

          Application.MessageBox(PChar('Esta folha possui folha liquidada para: ' + #13 + efgetdidentificacao.AsString + #13 + #13 + 'Não pode ser excluida!'), 'Atenção',
            MB_ICONWARNING + MB_OK);
          vlPode := False;
          break;
        end;

        efg.Next;
      end;

    end;
  end;

  if vlPode then
  begin
    inherited;
  end;

end;

end.
