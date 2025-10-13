unit ufitmimv;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, VirtualTable,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Graphics, System.SysUtils,
  uFuncoes, uPegaBase, System.ImageList;

type
  Tfitmimv = class(Tfrmbase)
    SpDetalhe: TSplitter;
    PlDetalhe: TPanel;
    PlItens: TPanel;
    PlObs: TPanel;
    PlObsdetalhe: TPanel;
    listaitens: TDBGrid;
    plbotoesitens: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    DBListaVar: TDBGrid;
    registroitmchave: TIntegerField;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registrounisimbolo: TStringField;
    registroitmquantidade: TFloatField;
    registroitmvalor: TFloatField;
    registroitmtotal: TFloatField;
    registroitmdesconto: TFloatField;
    registroitmsaldo: TFloatField;
    vtVrpImv: TVirtualTable;
    vtVrpImvitmchave: TIntegerField;
    vtVrpImvprocodigo: TIntegerField;
    vtVrpImvpronome: TStringField;
    vtVrpImvvrpcodigo: TIntegerField;
    vtVrpImvimvquantidade: TFloatField;
    DSVrpImv: TUniDataSource;
    vrp: TUniQuery;
    vrpvrpcodigo: TIntegerField;
    vrpitmchave: TIntegerField;
    vrpprocodigo: TIntegerField;
    vrppronome: TStringField;
    registroDiferenca: TFloatField;
    vtImvTotal: TVirtualTable;
    vtImvTotalitmchave: TIntegerField;
    vtImvTotalimvquantidade: TFloatField;
    imv: TUniQuery;
    imvimvchave: TIntegerField;
    imvitmchave: TIntegerField;
    imvvrpcodigo: TIntegerField;
    imvimvquantidade: TFloatField;
    vrpimvquantidade: TFloatField;
    registroprocodigoori: TStringField;
    registropronomeori: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBListaVarDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure vtVrpImvAfterInsert(DataSet: TDataSet);
    procedure DBListaVarKeyPress(Sender: TObject; var Key: Char);
    procedure DBListaVarColEnter(Sender: TObject);
    procedure DBListaVarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure vtVrpImvimvquantidadeSetText(Sender: TField; const Text: string);
    procedure registroCalcFields(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private
    procedure CalculaQuantidade;
    procedure AjustaGridVariacoes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fitmimv: Tfitmimv;

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fitmimv := Tfitmimv.Create(pCargaFrame);
  fitmimv.ShowModal;
  fitmimv.Free;
end;

exports formulario;

procedure Tfitmimv.DBListaVarColEnter(Sender: TObject);
begin
  inherited;
  if DBListaVar.Columns[DBListaVar.SelectedIndex].ReadOnly then
    DBListaVar.SelectedIndex := DBListaVar.SelectedIndex + 1;
end;

procedure Tfitmimv.DBListaVarDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(DSVrpImv.DataSet.RecNo) Then
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

procedure Tfitmimv.DBListaVarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // Cancela a inclusão de nova linha
  if (Key = VK_DOWN) then
    if vtVrpImv.RecordCount = vtVrpImv.RecNo then
      Key := 0;
end;

procedure Tfitmimv.DBListaVarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBListaVar.DataSource.DataSet.Next;
end;

procedure Tfitmimv.FormShow(Sender: TObject);
var
  I: Integer;
begin
  inherited;

  carregacolunas(listaitens);
  carregacolunas(DBListaVar);
  AjustaGridVariacoes;

  (* Carrega as variações de cada produto de Grade de uma NF de Entrada (meschave) *)
  vrp.Close;
  vrp.Params[0].AsInteger := registro.Params[0].AsInteger;
  vrp.Open;

  if not vtImvTotal.Active then
    vtImvTotal.Open;

  if not vtVrpImv.Active then
    vtVrpImv.Open;

  (* Insere todos os registros de Variações na virtual *)
  while not vrp.Eof do
  begin
    vtImvTotal.Append;
    vtImvTotalitmchave.AsInteger := vrpitmchave.AsInteger;
    vtImvTotal.Post;

    vtVrpImv.Append;
    for I := 0 to vrp.Fields.Count - 1 do
      vtVrpImv.Fields[I].AsString := vrp.Fields[I].AsString;
    vtVrpImv.Post;

    vrp.Next;
  end;

  (* Define o MasterSource como DSRegistro para mostrar no detalhe apenas as variações do item selecionado *)
  vtVrpImv.MasterSource := DSRegistro;
  vtVrpImv.MasterFields := 'itmchave';
  vtVrpImv.DetailFields := 'itmchave';

  (* Calcula a Quantidade Total de cada item *)
  while not registro.Eof do
  begin
    CalculaQuantidade;
    registro.Next;
  end;

  (* Ajustes de usabilidade *)
  registro.First;
  vtVrpImv.First;

  DBListaVar.ReadOnly := False;
  DBListaVar.SelectedIndex := 3;
end;

procedure Tfitmimv.listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(DSRegistro.DataSet.RecNo) then
    listaitens.Canvas.Brush.Color := PEG_COR_BASE
  else
    listaitens.Canvas.Brush.Color := CLWHITE;

  TDBGrid(Sender).Canvas.Font.Color := clBlack;

  if Column.FieldName = 'Diferenca' then
    if registroDiferenca.AsFloat <> 0 then
    begin
      TDBGrid(Sender).Canvas.Font.Color := clRed;
      TDBGrid(Sender).Canvas.Font.Style := [fsBold];
    end
    else
    begin
      TDBGrid(Sender).Canvas.Font.Color := clBlack;
      TDBGrid(Sender).Canvas.Font.Style := [];
    end;

  if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
      Brush.Color := PEG_COR_SELCGRID;
      Font.Style:=[fsbold];
      FillRect(Rect);
    end;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfitmimv.registroCalcFields(DataSet: TDataSet);
begin
  (*
    * Diferenca é atualizada de acordo com a Virtual vtImvTotal
    * que é atualizada a cada alteração de quantidade nas Variações
  *)
  if not vtImvTotal.Active then
  begin
    registroDiferenca.AsFloat := 0;
    Exit;
  end;

  vtImvTotal.Locate('itmchave', registroitmchave.AsInteger, []);
  registroDiferenca.AsFloat := registroitmquantidade.AsFloat - vtImvTotalimvquantidade.AsFloat;
end;

procedure Tfitmimv.vtVrpImvAfterInsert(DataSet: TDataSet);
begin
  inherited;
  vtVrpImvimvquantidade.AsFloat := 0;
end;

procedure Tfitmimv.vtVrpImvimvquantidadeSetText(Sender: TField; const Text: string);
var
  vlValidaQuanti: Double;
begin
  (* Ajusta registro em branco para 0 ou valida negativas *)
  if Text = '' then
    Sender.AsFloat := 0
  else
  begin
    vlValidaQuanti := StrToFloat(Text);
    if vlValidaQuanti < 0 then
    begin
      Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Sender.AsFloat := 0;
      Exit;
    end;

    Sender.AsString := Text;
  end;

  // Chama rotina para atualizar as quantidades
  CalculaQuantidade;
end;

procedure Tfitmimv.bconfirmaClick(Sender: TObject);
begin
  registro.DisableControls;
  vtVrpImv.DisableControls;
  try
    registro.First;
    while not registro.Eof do
    begin
      if registroDiferenca.AsFloat <> 0 then
      begin
        Application.MessageBox(PChar('Diferenças dos Itens da Nota Fiscal devem ser corrigidas!!'), 'Atenção', MB_ICONWARNING + MB_OK);
        Exit;
      end;

      registro.Next;
    end;

    vtVrpImv.MasterSource := nil; // Desliga MasterSource para passar por todas as Variações

    vtVrpImv.First;
    while not vtVrpImv.Eof do
    begin
      if imv.ParamByName('itmchave').AsInteger <> vtVrpImvitmchave.AsInteger then
      begin
        imv.Close;
        imv.ParamByName('itmchave').AsInteger := vtVrpImvitmchave.AsInteger;
        imv.Open;
      end;

      if vtVrpImvimvquantidade.AsFloat = 0 then
      begin
        if imv.Locate('vrpcodigo', vtVrpImvvrpcodigo.AsInteger, []) then
          imv.Delete;
      end
      else
      begin
        if imv.Locate('vrpcodigo', vtVrpImvvrpcodigo.AsInteger, []) then
          imv.Edit
        else
          imv.Append;

        imvitmchave.AsInteger := vtVrpImvitmchave.AsInteger;
        imvvrpcodigo.AsInteger := vtVrpImvvrpcodigo.AsInteger;
        imvimvquantidade.AsFloat := vtVrpImvimvquantidade.AsFloat;
        imv.Post;
      end;

      vtVrpImv.Next;
    end;

    salvacolunas(listaitens);
    salvacolunas(DBListaVar);

    ModalResult := mrOk;
  finally
    registro.EnableControls;
    vtVrpImv.EnableControls;
  end;
end;

procedure Tfitmimv.CalculaQuantidade;
var
  vlRegistro: Integer;
  vlTotalVariacao: Double;
begin
  vtVrpImv.DisableControls;
  try
    vlRegistro := vtVrpImv.RecNo;
    vlTotalVariacao := 0;

    (* Calcula quantidade total da Variação *)
    vtVrpImv.First;
    while not vtVrpImv.Eof do
    begin
      vlTotalVariacao := vlTotalVariacao + vtVrpImvimvquantidade.AsFloat;
      vtVrpImv.Next;
    end;

    (* Localiza a variação na virtaul e atualiza a quantidade *)
    vtImvTotal.Locate('itmchave', vtVrpImvitmchave.AsInteger, []);

    vtImvTotal.Edit;
    vtImvTotalimvquantidade.AsFloat := vlTotalVariacao;
    vtImvTotal.Post;

    registro.Refresh; // Força o OnCalcFields de Registro
    vtVrpImv.RecNo := vlRegistro;
  finally
    vtVrpImv.EnableControls;
  end;
end;

procedure Tfitmimv.AjustaGridVariacoes;
var
  I: Integer;
begin
  for I := 0 to DBListaVar.Columns.Count - 1 do
    case I of
      0 .. 2:
        DBListaVar.Columns[I].ReadOnly := True;
    end;
end;

end.
