unit ufivt;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, ufrmbase, VirtualTable, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, uFuncoes, System.ImageList;

type
  Tfivt = class(Tfrmbase)
    pro: tuniquery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    pun: tuniquery;
    punpuncusto: TFloatField;
    spd: tuniquery;
    spdspdchave: TIntegerField;
    spdspdexercicio: TIntegerField;
    spdspddatainicial: TDateField;
    spdspddatafinal: TDateField;
    spdspddatabalanco: TDateField;
    spdpcccodigo: TStringField;
    registroivtchave: TIntegerField;
    registrospdchave: TIntegerField;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registropcccodigo: TStringField;
    registroivtquantidade: TFloatField;
    registroivtvalor: TFloatField;
    registroivttotal: TFloatField;
    registroivtproprietario: TStringField;
    registroivtdescricao: TStringField;
    registroetdcodigo: TIntegerField;
    Label2: TLabel;
    ivtchave: TDBEdit;
    procodigo: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    ivtquantidade: TDBEdit;
    ivtvalor: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    ivttotal: TDBEdit;
    ivtproprietario: TDBRadioGroup;
    vtVrpIvv: TVirtualTable;
    vtVrpIvvvrpcodigo: TIntegerField;
    vtVrpIvvivtchave: TIntegerField;
    vtVrpIvvprocodigo: TIntegerField;
    vtVrpIvvpronome: TStringField;
    vtVrpIvvivvquantidade: TFloatField;
    DSVrpIvv: TUniDataSource;
    vrp: tuniquery;
    vrpvrpcodigo: TIntegerField;
    vrpivtchave: TIntegerField;
    vrpprocodigo: TIntegerField;
    vrppronome: TStringField;
    vrpivvquantidade: TFloatField;
    PnlVariacoes: TPanel;
    PlObsdetalhe: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    DBListaVar: TDBGrid;
    SpDetalhe: TSplitter;
    ivv: tuniquery;
    ivvivvchave: TIntegerField;
    ivvivtchave: TIntegerField;
    ivvvrpcodigo: TIntegerField;
    ivvivvquantidade: TFloatField;
    bValidar: TBitBtn;
    PnlTotalVar: TPanel;
    cfgcfgusagrade: TIntegerField;
    cfgcfgetdempresa: TIntegerField;
    edBarra: TEdit;
    procedure ivtquantidadeChange(Sender: TObject);
    procedure ivttotalEnter(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ivttotalExit(Sender: TObject);
    procedure procodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bValidarClick(Sender: TObject);
    procedure DBListaVarColEnter(Sender: TObject);
    procedure DBListaVarDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBListaVarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBListaVarKeyPress(Sender: TObject; var Key: Char);
    procedure vtVrpIvvAfterInsert(DataSet: TDataSet);
    procedure vtVrpIvvivvquantidadeSetText(Sender: TField; const Text: string);
    procedure edBarraKeyPress(Sender: TObject; var Key: Char);
  private
    FTotalVariacao: Double;

    function ProdutoComGrade: Boolean;

    procedure AjustaGridVariacoes;
    procedure CalculaQuantidade(vQuantAnterior, vQuantNova: Double);
    procedure CarregaVariacoes;
    procedure ProcessaVariacoes;
    procedure SetTotalVariacao(const Value: Double);
    procedure VerificaGrade;
  published
    property TotalVariacao: Double read FTotalVariacao write SetTotalVariacao;
  public
    { Public declarations }
  end;

var
  fivt: Tfivt;

  // Início ID do Módulo fraivt
const
  vPlIdMd = '02.04.12.001-02';

  // Fim ID do Módulo fraivt

implementation

{$R *.dfm}

procedure Tfivt.AjustaGridVariacoes;
var
  I: Integer;
begin
  for I := 0 to DBListaVar.Columns.Count - 1 do
    case I of
      0 .. 2:
        DBListaVar.Columns[I].ReadOnly := True;
    end;
end;

procedure Tfivt.bconfirmaClick(Sender: TObject);
begin
  if PnlVariacoes.Visible then
  begin
    ProcessaVariacoes;
    Exit;
  end;

  Self.ivttotal.Field.AsCurrency := Self.ivtquantidade.Field.AsFloat * Self.ivtvalor.Field.AsCurrency;
  inherited;
end;

procedure Tfivt.bValidarClick(Sender: TObject);
var
  I: Integer;
begin
  if not ValidaCamposRequeridos then
    Exit;

  Self.ivttotal.Field.AsCurrency := Self.ivtquantidade.Field.AsFloat * Self.ivtvalor.Field.AsCurrency;

  if registro.State in [dsEdit, dsInsert] then
    registro.Post;

  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TDBEdit then
      TDBEdit(Self.Components[I]).Enabled := False;

  ivtproprietario.Enabled := False;

  bconfirma.Enabled := True;
  bcancela.Enabled := False;
  bValidar.Enabled := False;

  if Self.Height < 650 then
    Self.Height := 650;

  CarregaVariacoes;
end;

procedure Tfivt.CalculaQuantidade(vQuantAnterior, vQuantNova: Double);
var
  vlAjuste: Double;
begin
  vlAjuste := vQuantNova - vQuantAnterior;

  TotalVariacao := TotalVariacao + vlAjuste;
end;

procedure Tfivt.CarregaVariacoes;
var
  I: Integer;
  vlTotalVariacoes: Double;
begin
  vlTotalVariacoes := 0;

  AjustaGridVariacoes;

  (* Carrega as variações de cada produto de Grade de uma NF de Entrada (meschave) *)
  vrp.Close;
  vrp.Params[0].AsInteger := registroivtchave.AsInteger;
  vrp.Open;

  if not vtVrpIvv.Active then
    vtVrpIvv.Open;

  (* Insere todos os registros de Variações na virtual *)
  while not vrp.Eof do
  begin
    vtVrpIvv.Append;
    for I := 0 to vrp.Fields.Count - 1 do
      vtVrpIvv.Fields[I].AsString := vrp.Fields[I].AsString;
    vlTotalVariacoes := vlTotalVariacoes + vtVrpIvvivvquantidade.AsFloat;
    vtVrpIvv.Post;

    vrp.Next;
  end;

  TotalVariacao := vlTotalVariacoes;

  (* Define o MasterSource como DSRegistro para mostrar no detalhe apenas as variações do item selecionado *)
  vtVrpIvv.MasterSource := DSRegistro;
  vtVrpIvv.MasterFields := 'ivtchave';
  vtVrpIvv.DetailFields := 'ivtchave';

  (* Ajustes de usabilidade *)
  vtVrpIvv.First;

  PnlVariacoes.Visible := True;

  DBListaVar.ReadOnly := False;
  DBListaVar.SelectedIndex := 3;
  DBListaVar.SetFocus;
end;

procedure Tfivt.DBListaVarColEnter(Sender: TObject);
begin
  inherited;
  if DBListaVar.Columns[DBListaVar.SelectedIndex].ReadOnly then
    DBListaVar.SelectedIndex := DBListaVar.SelectedIndex + 1;
end;

procedure Tfivt.DBListaVarDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  If Odd(DSVrpIvv.DataSet.RecNo) Then
  Begin
    If Column.ReadOnly Then
      DBListaVar.Canvas.Brush.Color := clBtnFace
    Else
      DBListaVar.Canvas.Brush.Color := PEG_COR_BASE;
  End
  Else
  Begin
    If Column.ReadOnly Then
      DBListaVar.Canvas.Brush.Color := clBtnFace
    Else
      DBListaVar.Canvas.Brush.Color := CLWHITE;
  End;

  TDBGrid(Sender).Canvas.Font.Color := clBlack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfivt.DBListaVarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // Cancela a inclusão de nova linha
  if (Key = VK_DOWN) then
    if vtVrpIvv.RecordCount = vtVrpIvv.RecNo then
      Key := 0;
end;

procedure Tfivt.DBListaVarKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if vtVrpIvv.RecordCount = vtVrpIvv.RecNo then
    begin
      bconfirma.SetFocus;
      Exit;
    end;

    DBListaVar.DataSource.DataSet.Next;
  end;
end;

procedure Tfivt.edBarraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if length(edBarra.Text) >= 7 then
    begin

      Consulta.Close;
      Consulta.SQL.Text := 'select procodigo from pun where punbarra=' + QuotedStr(formatfloat('00000000000000', strtofloat(edBarra.Text)));
      Consulta.Open;
      if not Consulta.IsEmpty then
      begin
        procodigo.Field.AsString := Consulta.Fields[0].AsString;
        edBarra.Visible := False;
        ivtquantidade.SetFocus;
      end;

    end
    else if length(edBarra.Text) = 0 then
    begin
      edBarra.Visible := False;
      procodigo.SetFocus;
    end
    else
    begin
      Consulta.Close;
      Consulta.SQL.Text := 'select procodigo from pun where procodigo=' + edBarra.Text;
      Consulta.Open;

      if not Consulta.IsEmpty then
      begin
        procodigo.Field.AsString := Consulta.Fields[0].AsString;
        edBarra.Visible := False;
        ivtquantidade.SetFocus;
      end;
    end;

  end;
  if Key = #27 then
  begin
    edBarra.Visible := False;
    procodigo.SetFocus;

  end;
end;

procedure Tfivt.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

  if Situacao = 'Incluindo' then
    Exit;

  edBarra.Visible := True;
  edBarra.SetFocus;

  VerificaGrade;
end;

procedure Tfivt.ivtquantidadeChange(Sender: TObject);
begin
  inherited;
  try
    Self.ivttotal.Field.AsFloat := Self.ivtvalor.Field.AsFloat * Self.ivtquantidade.Field.AsFloat;
  except
  end;
end;

procedure Tfivt.ivttotalEnter(Sender: TObject);
begin
  inherited;
  Self.ivttotal.Field.AsCurrency := Self.ivtquantidade.Field.AsFloat * Self.ivtvalor.Field.AsCurrency;
end;

procedure Tfivt.ivttotalExit(Sender: TObject);
begin
  inherited;
  Self.bconfirma.SetFocus;
end;

procedure Tfivt.ProcessaVariacoes;
begin
  vtVrpIvv.DisableControls;
  try
    if registroivtquantidade.AsFloat <> TotalVariacao then
    begin
      Application.MessageBox(PChar('Total das Variações está diferente da Quantidade!!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;

    ivv.Close;
    ivv.ParamByName('ivtchave').AsInteger := vtVrpIvvivtchave.AsInteger;
    ivv.Open;

    while not ivv.Eof do
      if not vtVrpIvv.Locate('vrpcodigo', ivvvrpcodigo.AsInteger, []) then
        ivv.Delete
      else
        ivv.Next;

    vtVrpIvv.First;
    while not vtVrpIvv.Eof do
    begin
      if vtVrpIvvivvquantidade.AsFloat = 0 then
      begin
        if ivv.Locate('vrpcodigo', vtVrpIvvvrpcodigo.AsInteger, []) then
          ivv.Delete;
      end
      else
      begin
        if ivv.Locate('vrpcodigo', vtVrpIvvvrpcodigo.AsInteger, []) then
          ivv.Edit
        else
          ivv.Append;

        ivvivtchave.AsInteger := vtVrpIvvivtchave.AsInteger;
        ivvvrpcodigo.AsInteger := vtVrpIvvvrpcodigo.AsInteger;
        ivvivvquantidade.AsFloat := vtVrpIvvivvquantidade.AsFloat;
        ivv.Post;
      end;

      vtVrpIvv.Next;
    end;

    ModalResult := mrOk;
  finally
    vtVrpIvv.EnableControls;
  end;
end;

procedure Tfivt.procodigoExit(Sender: TObject);
begin

  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if Self.procodigo.Field.AsString <> '' then
  begin
    Consulta.Close;
    Consulta.SQL.Text := 'SELECT i.ivtchave , p.procodigo , p.pronome ';
    Consulta.SQL.Add('FROM ivt i ');
    Consulta.SQL.Add('JOIN pro p ON i.procodigo = p.procodigo ');
    Consulta.SQL.Add('WHERE i.procodigo = ' + procodigo.Field.AsString + ' ');
    Consulta.SQL.Add('AND i.spdchave = ' + registrospdchave.AsString + ' ');

    if Situacao = 'Alterando' then
      Consulta.SQL.Add('AND i.ivtchave <> ' + registroivtchave.AsString);

    Consulta.Open;

    if not Consulta.IsEmpty then
    begin
      Application.MessageBox(PChar('Este produto já está registrado neste inventário!!' + #13 + #13 + 'Nr. Registro: ' + Consulta.Fields[0].AsString),
        'Atenção', MB_ICONEXCLAMATION + MB_OK);
      procodigo.SetFocus;
      Exit;
    end;

    Consulta.Close;
    Consulta.SQL.Text := 'SELECT pun.puncusto FROM pun ';
    Consulta.SQL.Add('INNER JOIN pro ON pun.procodigo = pro.procodigo AND pun.unicodigobase = pro.unicodigo ');
    Consulta.SQL.Add('where pro.procodigo=' + Self.procodigo.Field.AsString);
    Consulta.Open;
    Self.ivtvalor.Field.AsString := Consulta.Fields[0].AsString;
    Consulta.Close;

    VerificaGrade;
  end;
end;

function Tfivt.ProdutoComGrade: Boolean;
begin
  Consulta.Close;
  Consulta.SQL.Text := 'SELECT vv.procodigo FROM v_vrp vv WHERE vv.procodigo = ' + registroprocodigo.AsString;
  Consulta.Open;

  Result := Consulta.IsEmpty = False;
  Consulta.Close;
end;

procedure Tfivt.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  spd.Close;
  spd.Open;

  Self.registrospdchave.AsInteger := Self.spdspdchave.AsInteger;
  Self.registropcccodigo.AsString := Self.spdpcccodigo.AsString;
  Self.registroivtproprietario.AsInteger := 0;
  Self.registroetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
end;

procedure Tfivt.SetTotalVariacao(const Value: Double);
begin
  FTotalVariacao := Value;

  PnlTotalVar.Caption := 'Total Variações: ' + FloatToStr(FTotalVariacao);
end;

procedure Tfivt.VerificaGrade;
begin
  if cfgcfgusagrade.AsInteger = 0 then
    Exit;

  if ProdutoComGrade then
  begin
    bValidar.Visible := True;
    bconfirma.Enabled := False;
  end
  else
  begin
    bValidar.Visible := False;
    bconfirma.Enabled := True;
  end;
end;

procedure Tfivt.vtVrpIvvAfterInsert(DataSet: TDataSet);
begin
  inherited;
  vtVrpIvvivvquantidade.AsFloat := 0;
end;

procedure Tfivt.vtVrpIvvivvquantidadeSetText(Sender: TField; const Text: string);
var
  vlQuantAnterior: Double;
  vlValidaQuanti: Double;
begin
  (* Ajusta registro em branco para 0 ou valida negativos *)
  try
    vlQuantAnterior := Sender.AsFloat;

    if Text = '' then
      Sender.AsFloat := 0
    else
    begin
      vlValidaQuanti := strtofloat(Text);
      if vlValidaQuanti < 0 then
      begin
        Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
        Sender.AsFloat := 0;
        Exit;
      end;

      Sender.AsString := Text;
    end;
  finally
    // Chama rotina para atualizar as quantidades
    CalculaQuantidade(vlQuantAnterior, Sender.AsFloat);
  end;
end;

end.
