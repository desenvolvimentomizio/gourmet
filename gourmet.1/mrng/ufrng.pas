unit ufrng;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, VirtualTable, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.SysUtils, uFuncoes, uPegaBase,
  System.ImageList, Vcl.Dialogs;

type
  Tfrng = class(Tfrmbase)
    PlParcelas: TPanel;
    DBGLista: TDBGrid;
    PlDetalhe: TPanel;
    registrorngchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    rngchave: TDBEdit;
    LbEntidade: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    clbcodigo: TDBEdit;
    bBuscaParcelas: TBitBtn;
    vbaixa: TVirtualTable;
    vbaixarfichave: TIntegerField;
    vbaixarfinumero: TStringField;
    vbaixarfiemissao: TDateField;
    vbaixarfivencimento: TDateField;
    vbaixarfisaldocapital: TFloatField;
    vbaixarfijuros: TFloatField;
    vbaixarfimulta: TFloatField;
    vbaixarfidescontos: TFloatField;
    vbaixarfisaldogeral: TFloatField;
    vbaixarfibaixado: TFloatField;
    vbaixarfipgtocapital: TFloatField;
    Dvbaixa: TUniDataSource;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdetdapelido: TStringField;
    GroupBox1: TGroupBox;
    PlTot: TPanel;
    GroupBox2: TGroupBox;
    PlJuros: TPanel;
    GroupBox7: TGroupBox;
    PlMultas: TPanel;
    GroupBox3: TGroupBox;
    PlDescont: TPanel;
    GroupBox4: TGroupBox;
    PlPrincipal: TPanel;
    GroupBox6: TGroupBox;
    PlQtdeRest: TPanel;
    registroltechave: TIntegerField;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    mlt: TUniQuery;
    mltmltchave: TIntegerField;
    mltmfichave: TIntegerField;
    mltltechave: TIntegerField;
    registrotitcodigo: TIntegerField;
    vrn: TUniQuery;
    vrnrfichave: TIntegerField;
    vrnrfinumero: TStringField;
    vrnrfiemissao: TDateField;
    vrnrfivencimento: TDateField;
    vrnrfibaixadocapital: TFloatField;
    vrnrfimulta: TFloatField;
    vrnrfijuros: TFloatField;
    vrnrfidesconto: TFloatField;
    vrnrfisaldogeral: TFloatField;
    OpenDialog1: TOpenDialog;
    procedure bBuscaParcelasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    SLTituloColunas: TStringList;
    FTotalGeral: Double;
    FTfdCodigo: Integer;
    procedure BuscaParcelas(modulo, vtfdcodigo: string);
    procedure AtualizaTituloColunas;
    procedure SalvaTituloColunas;
    procedure AtualizaTotais;
    function GeraNovasParcelas: Boolean;
    procedure SetTotalGeral(const Value: Double);
    procedure LimpaRegistros(pLteChave: String);
    procedure SetTfdCodigo(const Value: Integer);
    procedure AtualizaRFI;
    { Private declarations }
  published
    property TfdCodigo: Integer read FTfdCodigo write SetTfdCodigo;
    property TotalGeral: Double read FTotalGeral write SetTotalGeral;
  public
    { Public declarations }
  end;

  TBuscaParcelas = function(AOwner: TComponent; Conexao: TUniConnection; vusuario: string; vtfdcodigo: string; vetdchave: string; vVTable: TVirtualTable; Acesso: TAcesso): String;
  TGeraParcelasRenegociacao = function(AOwner: TComponent; Conexao: TUniConnection; vtotal: string; vchave: string; ltechave: String; vtfdcodigo: Integer; var titcodigo: Integer;
    Acesso: TAcesso): Boolean;

var
  frng: Tfrng;

implementation

{$R *.dfm}

procedure Tfrng.bBuscaParcelasClick(Sender: TObject);
begin
  inherited;

  if not(registro.State in [dsEdit, dsInsert]) then
    registro.Edit;

  if not vbaixa.IsEmpty then
    if Application.MessageBox(PChar('As parcelas atuais desta renegociação serão removidas.' + #13 + 'Deseja prosseguir?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO) = IDNO then
      Exit
    else
      LimpaRegistros(registroltechave.AsString);

  BuscaParcelas('mrng', IntToStr(TfdCodigo));
end;

procedure Tfrng.bcancelaClick(Sender: TObject);
var
  vlLteChave: String;
begin

  vrn.Close;
  vrn.ParamByName('rngchave').AsInteger := registrorngchave.AsInteger;
  vrn.Open;

  while not vrn.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'update srfcodigo=' + IntToStr(srfEmAberto) + ' where rfichave=' + vrnrfichave.AsString;
    consulta.ExecSQL;

    vrn.Next;
  end;

  vlLteChave := registroltechave.AsString;

  inherited;

  if not ModalResult = mrCancel then
    Exit;

  LimpaRegistros(vlLteChave);
end;

procedure Tfrng.AtualizaRFI;
begin
  vbaixa.DisableControls;
  vbaixa.First;
  while not vbaixa.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'UPDATE rfi SET rfi.srfcodigo = :srfcodigo WHERE rfichave = ' + vbaixarfichave.AsString;

    consulta.Params[0].AsInteger := srfRenegociado;

    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'select CalcMovimentoFinanceiro(' + vbaixarfichave.AsString + ')';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'select CalcRegistroFinanceiro(' + vbaixarfichave.AsString + ')';
    consulta.ExecSQL;

    vbaixa.Next;
  end;
  vbaixa.EnableControls;
end;

procedure Tfrng.bconfirmaClick(Sender: TObject);
begin
  if vbaixa.IsEmpty then
  begin
    Application.MessageBox(PChar('Por favor, selecione alguma parcela para concluir o processo.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if (registro.State in [dsEdit, dsInsert]) then
    registro.Post;

  if not GeraNovasParcelas then
  begin
    Exit;
  end
  else
  begin
    vbaixa.First;
    while not vbaixa.Eof do
    begin
      if vbaixa.FieldByName('rfichave').AsString <> '' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'update rfi set srfcodigo=3 where rfichave=' + vbaixa.FieldByName('rfichave').AsString ;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update v_rfi set srfcodigo=3 where rfichave=' + vbaixa.FieldByName('rfichave').AsString ;
        consulta.ExecSQL;

      end;
      vbaixa.Next;
    end;
  end;

  inherited;
end;

Procedure Tfrng.BuscaParcelas(modulo: string; vtfdcodigo: string);
var
  exec: TBuscaParcelas;
  vlVTable: TVirtualTable;
  vlLteChave: String;
begin

  Pack := LoadPackage('modulos\' + modulo + '.bpl');
  if Pack <> 0 then
    try
      @exec := GetProcAddress(Pack, PChar('BuscaParcelas'));

      if not Assigned(exec) then
        Exit;

      vlVTable := TVirtualTable.Create(Self);
      try
        vlLteChave := exec(Application, zcone, Acesso.Usuario.ToString, vtfdcodigo, registroetdcodigo.AsString, vlVTable, Acesso);

        if Length(vlLteChave) = 0 then
          Exit;

        registroltechave.AsString := vlLteChave;

        vbaixa.Close;
        vbaixa.Assign(vlVTable);
        vbaixa.Open;

        AtualizaTituloColunas;
        AtualizaTotais;
      finally
        vlVTable.Free;
      end;
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
End;

procedure Tfrng.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrng.FormShow(Sender: TObject);
begin
  TfdCodigo := StrToInt(vChaveMestre);

  inherited;

  SLTituloColunas := TStringList.Create;
  SalvaTituloColunas;
end;

procedure Tfrng.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  clbcodigo.Enabled := False;
end;

procedure Tfrng.SalvaTituloColunas;
var
  I: Integer;
begin
  for I := 0 to DBGLista.Columns.Count - 1 do
    SLTituloColunas.Add(DBGLista.Columns[I].Title.Caption);
end;

procedure Tfrng.SetTfdCodigo(const Value: Integer);
var
  vlCaption: String;
begin
  FTfdCodigo := Value;

  if FTfdCodigo = tfdPagar then
  begin
    LbEntidade.Caption := 'Fornecedor';
    Self.Caption := Self.Caption + ' a Pagar';
  end
  else
    Self.Caption := Self.Caption + ' a Receber';
end;

procedure Tfrng.SetTotalGeral(const Value: Double);
begin
  FTotalGeral := Value;
end;

procedure Tfrng.AtualizaTituloColunas;
var
  I: Integer;
begin
  for I := 0 to DBGLista.Columns.Count - 1 do
  begin
    DBGLista.Columns[I].Title.Caption := SLTituloColunas[I];
    if vbaixa.FieldByName(DBGLista.Columns[I].FieldName).DataType = ftFloat then
    begin
      TFloatField(vbaixa.FieldByName(DBGLista.Columns[I].FieldName)).DisplayFormat := '#,##0.00';
      TFloatField(vbaixa.FieldByName(DBGLista.Columns[I].FieldName)).EditFormat := '#,##0.00';
    end;
  end;
end;

procedure Tfrng.AtualizaTotais;
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT l.ltechave, l.lteprincipal, l.ltemulta, l.ltejuros, l.ltedesconto, l.ltetotal FROM lte l WHERE l.ltechave = ' + registroltechave.AsString;
  consulta.Open;

  PlPrincipal.Caption := FormatFloat('#,###,##0.00', consulta.Fields[1].AsFloat);
  PlMultas.Caption := FormatFloat('#,###,##0.00', consulta.Fields[2].AsFloat);
  PlJuros.Caption := FormatFloat('#,###,##0.00', consulta.Fields[3].AsFloat);
  PlDescont.Caption := FormatFloat('#,###,##0.00', consulta.Fields[4].AsFloat);
  PlTot.Caption := FormatFloat('#,###,##0.00', consulta.Fields[5].AsFloat);
  TotalGeral := consulta.Fields[5].AsFloat;

  PlQtdeRest.Caption := IntToStr(vbaixa.RecordCount);
end;

function Tfrng.GeraNovasParcelas: Boolean;
var
  exec: TGeraParcelasRenegociacao;
  vlTitCodigo: Integer;
begin

  Pack := LoadPackage('modulos\mdfc.bpl');
  if Pack <> 0 then
    try
      @exec := GetProcAddress(Pack, PChar('GeraParcelasRenegociacao'));

      if not Assigned(exec) then
        Exit;

      Result := exec(Application, zcone, BuscaTroca(FloatToStr(TotalGeral), ',', '.'), registrorngchave.AsString, registroltechave.AsString, TfdCodigo, vlTitCodigo, Acesso);

      if Result = False then
        Exit;

      if not(registro.State in [dsEdit, dsInsert]) then
        registro.Edit;

      registrotitcodigo.AsInteger := vlTitCodigo;

    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

procedure Tfrng.LimpaRegistros(pLteChave: String);
begin
  if pLteChave = '' then
    Exit;

  zcone.StartTransaction;

  try

    mlt.Close;
    mlt.SQL.Text := 'SELECT mltchave, mfichave, ltechave FROM mlt WHERE ltechave=' + pLteChave;
    mlt.Open;

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Text := 'set @disable_triggers=1';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Clear;
    while not mlt.Eof do
    begin
      consulta.SQL.Add('DELETE FROM mfi WHERE mfichave = ' + mlt.FieldByName('mfichave').AsString + ';');
      consulta.SQL.Add('');

      mlt.Next;
    end;
    if consulta.SQL.Text <> '' then
      consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'DELETE FROM mlt WHERE ltechave = ' + pLteChave;
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'DELETE FROM lte WHERE ltechave = ' + pLteChave;
    consulta.ExecSQL;

    vbaixa.DisableControls;
    vbaixa.First;

    consulta.Close;
    consulta.SQL.Clear;
    while not vbaixa.Eof do
    begin
      consulta.SQL.Add('UPDATE rfi r ');
      consulta.SQL.Add('  JOIN v_mfi vm ON r.rfichave = vm.rfichave ');
      consulta.SQL.Add('   SET r.srfcodigo = IF(vm.PagamentosCapital = 0, 0, 1) ');
      consulta.SQL.Add(' WHERE r.rfichave = ' + vbaixa.FieldByName('rfichave').AsString + ';');
      consulta.SQL.Add('');

      vbaixa.Next;
    end;

    if consulta.SQL.Text <> '' then
      consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Text := 'set @disable_triggers=NULL';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Text := 'set @disable_triggers=NULL';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Text := 'UPDATE mfi SET mfisituacao=DAY(CURDATE()) WHERE rfichave IN(SELECT rfichave FROM rfi WHERE srfcodigo in (0,1)) AND mfisituacao<>DAY(CURDATE())';
    consulta.ExecSQL;

    if zcone.TransactionCount > 0 then
      if zcone.Transactions[0].Active then
        zcone.Commit;
  except
    if zcone.TransactionCount > 0 then
      if zcone.Transactions[0].Active then
        zcone.Rollback;

    Application.MessageBox(PChar('Falha ao limpar os dados da Renegociação.'), 'Falha', MB_ICONERROR + MB_OK);
  end;

  vbaixa.EnableControls;
end;

end.
