unit ufflhpagar;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, ACBrBase, ACBrExtenso, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Dialogs,
  System.SysUtils, System.Math, uFuncoes, uPegaBase, System.ImageList;

type
  Tfflhpagar = class(Tfrmbase)
    efl: TUniQuery;
    e: TIntegerField;
    efleflidentificacao: TStringField;
    tfl: TUniQuery;
    tfltflcodigo: TIntegerField;
    tfltflidentificacao: TStringField;
    registroflhchave: TIntegerField;
    registrotflcodigo: TIntegerField;
    registrotflidentificacao: TStringField;
    registroeflcodigo: TIntegerField;
    registroeflidentificacao: TStringField;
    registroflhIdentificacao: TStringField;
    registroflhmes: TStringField;
    registroflhano: TStringField;
    registroflhdtinicial: TDateField;
    registroflhdtfinal: TDateField;
    registroflhdtpgto: TDateField;
    registroflhcriacao: TDateTimeField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    flhchave: TDBEdit;
    tflcodigo: TDBEdit;
    Label9: TLabel;
    Label4: TLabel;
    flhmes: TDBEdit;
    Label5: TLabel;
    flhano: TDBEdit;
    Label3: TLabel;
    flhIdentificacao: TDBEdit;
    Label6: TLabel;
    flhdtinicial: TDBEdit;
    flhdtfinal: TDBEdit;
    Label8: TLabel;
    flhdtpgto: TDBEdit;
    Defg: TDataSource;
    efg: TUniQuery;
    efgefgchave: TIntegerField;
    efgflhchave: TIntegerField;
    efgetdcodigo: TIntegerField;
    efgetdidentificacao: TStringField;
    efgeflcodigo: TIntegerField;
    efgevavalor: TFloatField;
    plDetalhes: TPanel;
    plTitColaboradores: TPanel;
    DBGListaEtd: TDBGrid;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    plTotalFlh: TPanel;
    cco: TUniQuery;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccotoccodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccoclbcodigo: TIntegerField;
    ccotficodigo: TIntegerField;
    ccomoecodigo: TIntegerField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccochaveorig: TIntegerField;
    ccoccochavedest: TIntegerField;
    ccoccoconciliado: TIntegerField;
    ccoccoextenso: TStringField;
    ccoetdcodigo: TIntegerField;
    ccoccodatamov: TDateField;
    ccoccodataregistro: TDateField;
    ccoccohoraregistro: TTimeField;
    ccoccofavorecido: TStringField;
    ccophgcodigo: TIntegerField;
    efc: TUniQuery;
    efcefcchave: TIntegerField;
    efcccochave: TIntegerField;
    efcevachave: TIntegerField;
    cfgcfgcodigo: TIntegerField;
    cfgcfgevfpagto: TIntegerField;
    eva: TUniQuery;
    evaevachave: TIntegerField;
    evaflhchave: TIntegerField;
    evaevfcodigo: TIntegerField;
    evaetdcodigo: TIntegerField;
    evaevavalor: TFloatField;
    evaphgcodigo: TIntegerField;
    evaclbcodigo: TIntegerField;
    evaevacriacao: TDateTimeField;
    evatevcodigo: TIntegerField;
    evaevahistorico: TStringField;
    evaeflcodigo: TIntegerField;
    ACBrExtenso: TACBrExtenso;
    cfgcfgphgpagto: TIntegerField;
    GroupBox1: TGroupBox;
    plQtdItens: TPanel;
    mostra: TProgressBar;
    mcgatu: TUniQuery;
    mcgatumcgchave: TIntegerField;
    mcgatuccgcodigo: TIntegerField;
    mcgatumcgvalor: TFloatField;
    mcgatumcgtabela: TStringField;
    mcgatumcgchaveorigem: TIntegerField;
    mcgatumcgsituacao: TIntegerField;
    mcgatuclbcodigo: TIntegerField;
    mcgatumcgregistro: TDateTimeField;
    mcgaturfichave: TIntegerField;
    mcgatumcgdata: TDateField;
    cfgcfgctbusaccg: TIntegerField;
    cfgcfgccgcodigo: TIntegerField;
    mcgatumcgcompetencia: TStringField;
    btMarcarTodos: TButton;
    btDesmarcarTodos: TButton;
    procedure DBGListaEtdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGListaEtdCellClick(Column: TColumn);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure btMarcarTodosClick(Sender: TObject);
    procedure btDesmarcarTodosClick(Sender: TObject);
  private
    FSelecionados: Integer;
    FTotSelecionados: Double;
    function RegistraCco(vValor: Double; vEtdCodigo: Integer): string;
    function finaliza(vchave: string; vlTeclaFinalizador: Integer = 0; vlValorFinalizador: Double = 0): string;

    procedure AjusteFlhLiquidada;
    procedure CalculaTotais;
    procedure ProcessaPagamentos;
    procedure SetSelecionados(const Value: Integer);
    procedure SetTotSelecionados(const Value: Double);
    { Private declarations }
  published
    property Selecionados: Integer read FSelecionados write SetSelecionados;
    property TotSelecionados: Double read FTotSelecionados write SetTotSelecionados;
  public
    { Public declarations }
    vpCtaCodigo: string;
  end;

var
  fflhpagar: Tfflhpagar;

  // Início ID do Módulo fflhpagar
const
  vplidmd = '02.12.90.001-05';
  // Fim ID do Módulo fflhpagar

implementation

{$R *.dfm}

function FormuPgtoFlh(AOwner: TComponent; conexao: tuniconnection; acesso: Tacesso; vtipolista: Integer; vmodulo: string; vfiltro: string; vmodo: string; vchave: string): string;
var
  vch: string;
begin
  try
    fflhpagar := Tfflhpagar.Create(AOwner);
    fflhpagar.acesso.Usuario := acesso.Usuario;
    fflhpagar.vchave := vchave;
    fflhpagar.vpCtaCodigo := vfiltro;
    fflhpagar.zcone := conexao;
    fflhpagar.acesso := acesso;
    fflhpagar.psituacao.Caption := vmodo;

    if fflhpagar.ShowModal = mrOk then
      Result := vch
    else
      Result := '';

  finally
    FreeAndNil(fflhpagar);
  end;

end;

exports FormuPgtoFlh;

procedure Tfflhpagar.bcancelaClick(Sender: TObject);
begin
  efg.First;
  while not efg.Eof do
  begin
    if efgeflcodigo.AsInteger = eflAPagar then
    begin
      efg.Edit;
      efgeflcodigo.AsInteger := eflFechada;
      efg.Post;
    end;

    efg.Next;
  end;

  inherited;
end;

procedure Tfflhpagar.bconfirmaClick(Sender: TObject);
begin
  if Selecionados = 0 then
  begin
    Application.MessageBox(PChar('Por favor, selecione algum pagamento!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if Selecionados > 1 then
  begin
    If Application.MessageBox(PChar('Atenção:' + #13 + #13 + 'Pagamentos multiplos serão efetuados em ' + #13 + 'dinheiro nesta conta selecionada.' + #13 + #13 + #13 +
      'Efetuar os Pagamentos ?'), PChar('ATENÇÃO'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO Then
      Exit;

    mostra.Visible := True;
  end;

  ProcessaPagamentos;

  efg.Refresh;
  if efg.IsEmpty then
  begin
    inherited;

    if not(ModalResult = mrOk) then
      Exit;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE flh ';
    consulta.SQL.Add('SET eflcodigo = ' + IntToStr(eflLiquidada) + ' ');
    consulta.SQL.Add('WHERE flhchave = ' + self.registroflhchave.AsString);
    consulta.ExecSQL;
  end
  else
    ShowMessage('Atenção:' + #13 + #13 + 'Para realizar outros pagamentos marcar o colaborador' + #13 + #13 + 'se não, clicar no botão Cancela!');

end;

procedure Tfflhpagar.btDesmarcarTodosClick(Sender: TObject);
begin
  inherited;
  try
    efg.DisableControls;

    efg.First;
    while not efg.Eof do
    begin
      self.efg.Edit;
      self.efgeflcodigo.AsInteger := eflFechada;
      self.efg.Post;
      efg.Next;
    end;
    CalculaTotais;
    efg.First;
  finally
    efg.EnableControls;
  end;

end;

procedure Tfflhpagar.btMarcarTodosClick(Sender: TObject);
begin
  inherited;

  try
    efg.DisableControls;

    efg.First;
    while not efg.Eof do
    begin
      self.efg.Edit;
      self.efgeflcodigo.AsInteger := eflAPagar;
      self.efg.Post;
      efg.Next;
    end;
    CalculaTotais;
    efg.First;
  finally
    efg.EnableControls;
  end;

end;

procedure Tfflhpagar.CalculaTotais;
var
  vlRecNo: Integer;
  vlSelecionados: Integer;
  vlTotSelecionados: Double;
begin
  efg.DisableControls;

  try
    vlSelecionados := 0;
    vlTotSelecionados := 0;

    vlRecNo := efg.RecNo;

    efg.First;
    while not efg.Eof do
    begin
      if efgeflcodigo.AsInteger = eflAPagar then
      begin
        Inc(vlSelecionados);
        vlTotSelecionados := vlTotSelecionados + efgevavalor.AsFloat;
      end;

      efg.Next;
    end;

    efg.RecNo := vlRecNo;

    Selecionados := vlSelecionados;
    TotSelecionados := vlTotSelecionados;
  finally
    efg.EnableControls;
  end;
end;

function Tfflhpagar.finaliza(vchave: string; vlTeclaFinalizador: Integer = 0; vlValorFinalizador: Double = 0): string;
type
  TRegistraLote = function(AOwner: TComponent; conexao: tuniconnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string; desconto: string;
    acesso: Tacesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: Double = 0; vPodeCartoes: Boolean = True;
    pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True; vControleEntrega: Boolean = False): string;

var
  Registra: TRegistraLote;
  Vpri: string;
  vMulta: String;
  Vjur: string;
  Vdes: string;
  vTrmCodigo: string;
  vPodeConvenio: Boolean;
begin
  vTrmCodigo := '1';

  pack := LoadPackage('modulos\mlte.bpl');
  if pack = 0 then
    Exit;

  try
    @Registra := GetProcAddress(pack, PChar('registralote'));
    if not Assigned(Registra) then
      Exit;

    if vlValorFinalizador > 0 then
      Vpri := BuscaTroca(FloatToStr(vlValorFinalizador), ',', '.')
    else
    begin
      Vpri := BuscaTroca(plTotalFlh.Caption, '.', '');
      Vpri := BuscaTroca(Vpri, ',', '.');
    end;

    Vdes := '0';
    Vjur := '0';
    vMulta := '0';
    vPodeConvenio := False;

    Result := Registra(Application, zcone, vchave, vTrmCodigo, Vpri, vMulta, Vjur, Vdes, acesso, IntToStr(tfdContaCorrente), vPodeConvenio, vlTeclaFinalizador, vlValorFinalizador);
  finally
    // DoUnLoadPackage(pack);
  end;
end;

function Tfflhpagar.RegistraCco(vValor: Double; vEtdCodigo: Integer): string;
begin
  cco.Close;
  cco.Params[0].AsString := '0';
  cco.Open;

  cco.Append;
  ccoctacodigo.AsString := vpCtaCodigo;
  ccoccoemissao.AsFloat := date;
  ccoccovencimento.AsFloat := flhdtpgto.Field.AsFloat;
  ccotoccodigo.AsInteger := tocVerba;
  ccocedcodigo.AsInteger := ceddebito;
  ccoclbcodigo.AsInteger := acesso.Usuario;
  ccotficodigo.AsInteger := tfiOutros;
  ccomoecodigo.AsInteger := 1;
  ccocconumero.AsString := '';
  ccoccohistorico.AsString := 'Pagto ref: ' + flhIdentificacao.Field.AsString;
  ccoccovalor.AsFloat := vValor;
  ccoccoconciliado.AsInteger := 0;
  ccoetdcodigo.AsInteger := vEtdCodigo;

  consulta.Close;
  consulta.SQL.Text := 'select etdidentificacao from etd where etdcodigo=' + IntToStr(vEtdCodigo);
  consulta.Open;

  ccoccofavorecido.AsString := consulta.fields[0].AsString;
  ccoccodatamov.AsFloat := date;
  ccoccodataregistro.AsFloat := date;
  ccoccohoraregistro.AsFloat := time;
  ccophgcodigo.AsInteger := cfgcfgphgpagto.AsInteger;
  ACBrExtenso.Valor := vValor;
  ccoccoextenso.AsString := ACBrExtenso.Texto;
  cco.Post;

  consulta.Close;
  consulta.SQL.Text := 'select ccovalor, ccovencimento from cco where ccochave=' + ccoccochave.AsString;
  consulta.Open;
  if (cfgcfgccgcodigo.AsString <> '0') and (cfgcfgccgcodigo.AsString <> '') then
  begin
    mcgatu.Open;
    mcgatu.Append;
    mcgatuccgcodigo.AsInteger := cfgcfgccgcodigo.AsInteger;
    mcgatumcgdata.AsDateTime := consulta.FieldByName('ccovencimento').AsDateTime;
    mcgatumcgvalor.AsCurrency := consulta.FieldByName('ccovalor').AsCurrency;
    mcgatumcgtabela.AsString := 'cco';
    mcgatumcgchaveorigem.AsString := ccoccochave.AsString;
    mcgatumcgsituacao.AsInteger := 0;
    mcgatumcgcompetencia.AsString := flhmes.Field.AsString + '-' + copy(flhano.Field.AsString, 3, 2);
    mcgatuclbcodigo.AsInteger := acesso.Usuario;
    mcgatumcgregistro.AsString := agora(Application, zcone);
    mcgaturfichave.AsInteger := 0;
    mcgatu.Post;

  end;
  eva.Close;
  eva.Open;
  eva.Append;

  evaflhchave.AsInteger := flhchave.Field.AsInteger;
  evaevfcodigo.AsInteger := cfgcfgevfpagto.AsInteger;
  evaetdcodigo.AsInteger := vEtdCodigo;
  evaevavalor.AsFloat := efgevavalor.AsFloat;
  evaphgcodigo.AsInteger := cfgcfgphgpagto.AsInteger;
  evaclbcodigo.AsInteger := acesso.Usuario;
  evaevacriacao.AsFloat := now;
  evatevcodigo.AsInteger := 2;
  evaevahistorico.AsString := 'Pagto ref: ' + flhIdentificacao.Field.AsString;
  evaeflcodigo.AsInteger := 5;
  eva.Post;

  efc.Open;
  efc.Append;
  efcccochave.AsInteger := ccoccochave.AsInteger;
  efcevachave.AsInteger := evaevachave.AsInteger;
  efc.Post;

  Result := ccoccochave.AsString;
end;

procedure Tfflhpagar.SetSelecionados(const Value: Integer);
begin
  FSelecionados := Value;

  plQtdItens.Caption := IntToStr(FSelecionados);
end;

procedure Tfflhpagar.SetTotSelecionados(const Value: Double);
begin
  FTotSelecionados := SimpleRoundTo(Value, -2);

  plTotalFlh.Caption := FormatFloat('#,###,##0.00', FTotSelecionados);
end;

procedure Tfflhpagar.DBGListaEtdCellClick(Column: TColumn);
var
  vlMultiplicador: Integer;
begin
  if efg.IsEmpty then
    Exit;

  if DBGListaEtd.SelectedField.FieldName = 'eflcodigo' then
  begin
    efg.Edit;
    if efgeflcodigo.AsInteger = eflAPagar then
      efgeflcodigo.AsInteger := eflFechada
    else
      efgeflcodigo.AsInteger := eflAPagar;
    efg.Post;

    vlMultiplicador := 1;

    if efgeflcodigo.AsInteger = eflFechada then
      vlMultiplicador := -1;

    Selecionados := Selecionados + vlMultiplicador;

    TotSelecionados := TotSelecionados + (efgevavalor.AsFloat * vlMultiplicador);
  end;
end;

procedure Tfflhpagar.AjusteFlhLiquidada;
begin
  { ajusta estagio da folha }
  efg.Edit;
  efgeflcodigo.AsInteger := eflLiquidada;
  efg.Post;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE eva ';
  consulta.SQL.Add('SET eflcodigo = ' + IntToStr(eflLiquidada) + ' ');
  consulta.SQL.Add('WHERE eflcodigo <> ' + IntToStr(eflEstorno) + ' ');
  consulta.SQL.Add('AND etdcodigo = ' + efgetdcodigo.AsString + ' ');
  consulta.SQL.Add('AND flhchave = ' + self.registroflhchave.AsString);
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE efg ';
  consulta.SQL.Add('SET efgdatapagto = ''' + AjustaData(DateToStr(date)) + ''' ');
  consulta.SQL.Add('WHERE efgchave = ' + efgefgchave.AsString);
  consulta.ExecSQL;
end;

procedure Tfflhpagar.DBGListaEtdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
  i: Integer;
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
  if Column.FieldName = 'eflcodigo' then
  begin

    // Desenha um checkbox no dbgrid

    DBGListaEtd.Canvas.FillRect(Rect);

    Check := 0;
    if self.efgeflcodigo.AsInteger = eflAPagar then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(DBGListaEtd.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

procedure Tfflhpagar.FormShow(Sender: TObject);
var
  vValor: Double;
begin
  IdModulo := vplidmd;
  vValor := self.efgevavalor.AsCurrency;

  inherited;

  efg.Close;
  efg.Params[0].AsInteger := self.registroflhchave.AsInteger;
  efg.Open;

  if efg.IsEmpty then
    bconfirma.Enabled := False
  else
    bconfirma.Enabled := True;

  Selecionados := 0;
  TotSelecionados := 0;
end;

procedure Tfflhpagar.ProcessaPagamentos;
var
  vlCcoChave: string;
  vlRetorno: string;
  vlTeclaFinalizador: Integer;
  vlValorFinalizador: Double;
begin
  zcone.StartTransaction;
  try
    mostra.Max := efg.RecordCount;
    mostra.Position := 0;

    efg.DisableControls;
    efg.First;
    while not efg.Eof do
    begin
      mostra.Position := mostra.Position + 1;
      Application.ProcessMessages;

      if efgeflcodigo.AsInteger = eflAPagar then
      begin
        { registro na conta corrente }
        vlCcoChave := RegistraCco(self.efgevavalor.AsCurrency, efgetdcodigo.AsInteger);

        { processa o registro do lote }
        vlTeclaFinalizador := 117; (* Tecla F6 - Dinheiro *)
        vlValorFinalizador := self.efgevavalor.AsCurrency;

        if Selecionados > 1 then
          vlRetorno := finaliza(vlCcoChave, vlTeclaFinalizador, vlValorFinalizador)
        else
          vlRetorno := finaliza(vlCcoChave);

        if vlRetorno = '' then
          raise Exception.Create('Cancelado pelo usuário.');

        AjusteFlhLiquidada;
      end;

      efg.Next;
    end;

    if zcone.TransactionCount > 0 then
      if zcone.Transactions[0].Active then
        zcone.Commit;
  except
    on e: Exception do
    begin
      if zcone.TransactionCount > 0 then
        if zcone.Transactions[0].Active then
          zcone.Rollback;

      if e.Message <> 'Cancelado pelo usuário.' then
        ShowMessage('Atenção falha no pagamento de ' + efgetdidentificacao.AsString);
    end;
  end;

  efg.EnableControls;
  CalculaTotais;
  mostra.Visible := False;
end;

end.
