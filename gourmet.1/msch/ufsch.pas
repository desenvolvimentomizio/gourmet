unit ufsch;

interface

uses
  Winapi.Windows, Vcl.Forms, Datasnap.DBClient, Data.DB, DBAccess, Uni, MemDS,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, System.Classes,
  Vcl.Controls, Vcl.ExtCtrls, Vcl.Graphics, System.SysUtils, uFuncoes;

type
  Tfsch = class(TForm)
    PlTitulo: TPanel;
    plid: TPanel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    DBGLista: TDBGrid;
    uqtabela: tuniquery;
    uqtabelachechave: TIntegerField;
    uqtabelacheemissao: TDateField;
    uqtabelachevencimento: TDateField;
    uqtabelachenumero: TStringField;
    uqtabelacheagencia: TStringField;
    uqtabelacheconta: TStringField;
    uqtabelabcocodigo: TStringField;
    uqtabelachenome: TStringField;
    uqtabelachedocumento: TStringField;
    uqtabelachetelefone: TStringField;
    uqtabelachevalor: TFloatField;
    DSTabela: tunidatasource;
    pltotal: TPanel;
    PlFiltros: TPanel;
    PlEdTextoBusca: TPanel;
    GrBTextoProcurar: TGroupBox;
    PlGbEdtBusca: TPanel;
    edbusca: TEdit;
    plaselecionar: TPanel;
    GBaselecionar: TGroupBox;
    pttotasele: TPanel;
    plselecionado: TPanel;
    GBselecionado: TGroupBox;
    pttotsele: TPanel;
    consulta: tuniquery;
    tmp: TClientDataSet;
    ltc: tuniquery;
    ltcltcchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcdtlchave: TIntegerField;
    ltcschcodigo: TIntegerField;
    uqtabelaschcodigo: TIntegerField;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    ptqtdsele: TPanel;
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGListaTitleClick(Column: TColumn);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGListaCellClick(Column: TColumn);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    vordem: string;
    xordem: Integer;
    vpalavra: String;
    vtitucol: String;
    vnomecol: String;
    vtipocol: TFieldType;
    Fzcone: tuniconnection;
    procedure ajustaordem(Key: Integer);
    procedure recalculatotais;
    procedure criacampostmp(nome: string; tipo: TFieldType; etiqueta: string = ''; tamanho: Integer = 0);

    { Private declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  public
    { Public declarations }
    vdtlchave: string;
    vretorno: string;
    vvalortroco: string;
    vschcodigo: Integer;
  end;

var
  fsch: Tfsch;

implementation

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function selecionacheques(AOwner: TComponent; conexao: tuniconnection; vdtlchave: string; vvalor: string; vschcodigo: Integer; vctacodigo: string = ''): string;
var
  vch: string;
  hWindow: HWND;
  i: Integer;
  valor: string;
  vlValor: double;
  vLteChave: string;
begin
  try
    if vvalor = '' then
    begin
      valor := '0';
      vlValor := 0;

    end
    else
    begin
      vlValor := strtofloat(vvalor);
      if vlValor < 0 then
      begin
        valor := floattostr(vlValor * -1);
      end
      else
      begin
        valor := vvalor
      end;
    end;

    fsch := Tfsch.create(AOwner);
    fsch.zcone := conexao;
    fsch.uqtabela.Connection := fsch.zcone;
    fsch.consulta.Connection := fsch.zcone;

    fsch.vvalortroco := vvalor;
    fsch.pttotasele.Caption := formatfloat('###0.00', strtofloat(valor));
    fsch.uqtabela.Close;
    { daniel TRF 100
      28/10/2014 se o painel seelecionar estiver zedado mostra o botao
      confirma ativado, se o valor do painel for maior que zero
      significa que deve ser controlado a quantidade de cheques a
      selecionar
    }
    if fsch.pttotasele.Caption = '0,00' then
    begin
      fsch.bconfirma.Enabled := true;
    end
    else
    begin
      fsch.bconfirma.Enabled := false;
    end;
    { *daniel TRF 100 * }

    if vctacodigo <> '' then
    begin
      fsch.uqtabela.Filter := 'ctacodigo=' + vctacodigo;
      fsch.uqtabela.Filtered := true;
    end
    else
    begin
      fsch.uqtabela.Filter := 'schcodigo=1';
      fsch.uqtabela.Filtered := true;

    end;
    fsch.consulta.Close;
    fsch.consulta.SQL.Text := 'select ltechave from dtl where dtlchave=' + vdtlchave;
    fsch.consulta.Open;
    vLteChave := fsch.consulta.Fields[0].AsString;

    fsch.uqtabela.Params[0].AsString := vLteChave;
    fsch.uqtabela.Open;

    fsch.tmp.Close;
    fsch.tmp.FieldDefs.Clear;
    fsch.criacampostmp('chechave', ftinteger, 'Registro');
    fsch.criacampostmp('cheemissao', ftdate, 'Emissão');
    fsch.criacampostmp('chevencimento', ftdate, 'Vencimento');
    fsch.criacampostmp('chenumero', ftstring, 'Número', 10);
    fsch.criacampostmp('checonta', ftstring, 'Nr.Conta', 15);
    fsch.criacampostmp('cheagencia', ftstring, 'Agência', 10);
    fsch.criacampostmp('bcocodigo', ftstring, 'Bco', 3);
    fsch.criacampostmp('chenome', ftstring, 'Nome - Emitente', 50);
    fsch.criacampostmp('chedocumento', ftstring, 'Nr.Doc.Emitente', 30);
    fsch.criacampostmp('chetelefone', ftstring, 'Telefone', 20);
    fsch.criacampostmp('chevalor', ftfloat, 'Valor R$');
    fsch.criacampostmp('schcodigo', ftinteger, 'Sit');
    fsch.criacampostmp('dtlchave', ftinteger, 'Lte');
    fsch.criacampostmp('cheselecionar', ftstring, 'M', 1);
    fsch.criacampostmp('ctacodigo', ftinteger, 'Conta');
    fsch.tmp.CreateDataSet;
    fsch.tmp.Open;

    fsch.uqtabela.First;
    while not fsch.uqtabela.Eof do
    begin
      fsch.tmp.Append;
      for i := 0 to fsch.uqtabela.Fields.Count - 1 do
      begin
        fsch.tmp.Fieldbyname(fsch.uqtabela.Fields[i].FieldName).AsString := fsch.uqtabela.Fieldbyname(fsch.uqtabela.Fields[i].FieldName).AsString;
      end;

      if fsch.uqtabelaschcodigo.AsInteger = 7 then
        fsch.tmp.Fieldbyname('cheselecionar').AsString := '1'
      else
        fsch.tmp.Fieldbyname('cheselecionar').AsString := '0';

      fsch.tmp.Post;
      fsch.uqtabela.Next;
    end;

    fsch.recalculatotais;
    if fsch.pttotsele.Caption <> ',00' then
    begin
      fsch.pttotasele.Caption := formatfloat('###0.00', strtofloat(valor) + strtofloat(fsch.pttotsele.Caption));
    end;
    fsch.recalculatotais;
    fsch.vschcodigo := vschcodigo;
    fsch.vdtlchave := vdtlchave;
    fsch.ShowModal;
    result := fsch.vretorno;
  finally
    freeandnil(fsch);
  end;

end;

exports selecionacheques;

procedure Tfsch.criacampostmp(nome: string; tipo: TFieldType; etiqueta: string = ''; tamanho: Integer = 0);
begin
  with tmp do
  begin
    if tipo = ftinteger then
    begin
      with TIntegerField.create(Self) do
      begin
        Name := 'tmp' + nome;
        FieldKind := fkData;
        FieldName := nome;
        displaylabel := etiqueta;
        DataSet := tmp;
        Tag := 0;
      end; // FieldName
    end
    else if tipo = ftfloat then
    begin

      with TFloatField.create(Self) do
      begin
        Name := 'tmp' + nome;
        FieldKind := fkData;
        FieldName := nome;
        DataSet := tmp;
        displaylabel := etiqueta;
        Tag := 0;
        EditFormat := '#,##0.00';
        DisplayFormat := '#,##0.00';
      end; // FieldName
    end
    else if tipo = ftdate then
    begin

      with TDateField.create(Self) do
      begin
        Name := 'tmp' + nome;
        FieldKind := fkData;
        FieldName := nome;
        DataSet := tmp;
        displaylabel := etiqueta;
        Tag := 0;
      end; // FieldName
    end
    else if tipo = ftstring then
    begin

      with TStringField.create(Self) do
      begin
        Name := 'tmp' + nome;
        FieldKind := fkData;
        FieldName := nome;
        DataSet := tmp;
        displaylabel := etiqueta;
        size := tamanho;
        Tag := 0;
      end; // FieldName
    end;
  end;
end;

procedure Tfsch.bcancelaClick(Sender: TObject);
begin
  vretorno := '0';
  Close;
end;

procedure Tfsch.bconfirmaClick(Sender: TObject);
var
  i: Integer;
  vdtlvalor: string;
begin

  ltc.Connection := Self.Fzcone;

  ltc.Close;
  ltc.SQL.Text := 'SELECT ltcchave, chechave, dtlchave, schcodigo FROM ltc WHERE ltc.dtlchave = ' + Self.vdtlchave;
  ltc.Open;

  tmp.First;
  tmp.DisableControls;
  while not tmp.Eof do
  begin
    if tmp.Fieldbyname('cheselecionar').AsString = '1' then
    begin
      if not ltc.Locate('chechave', tmp.Fieldbyname('chechave').AsInteger, []) then
        ltc.Append
      else
        ltc.Edit;

      ltcchechave.AsInteger := Self.tmp.Fieldbyname('chechave').AsInteger;
      ltcdtlchave.AsString := Self.vdtlchave;

      ltcschcodigo.AsInteger := Self.vschcodigo;

      ltc.Post;
    end;

    tmp.Next;
  end;

  (* Remove os cheques desmarcados *)
  tmp.First;
  tmp.DisableControls;
  while not tmp.Eof do
  begin

    if ltc.Locate('chechave', tmp.Fieldbyname('chechave').AsInteger, []) then
    begin
      if tmp.Fieldbyname('cheselecionar').AsString = '0' then
        ltc.Delete
      else
        tmp.Next;
    end
    else
      tmp.Next;
  end;

  vdtlvalor := '0';
  vdtlvalor := pttotsele.Caption;
  vdtlvalor := buscatroca(vdtlvalor, '.', '');
  vdtlvalor := buscatroca(vdtlvalor, '.', '');
  vdtlvalor := buscatroca(vdtlvalor, '.', '');
  vdtlvalor := buscatroca(vdtlvalor, '.', '');
  vdtlvalor := buscatroca(vdtlvalor, ',', '.');

  consulta.Close;
  consulta.SQL.Text := 'update dtl set dtlvalor=' + vdtlvalor + ' where dtlchave=' + Self.vdtlchave;
  consulta.ExecSQL;

  tmp.EnableControls;

  vretorno := Self.pttotsele.Caption;
  Close;
end;

procedure Tfsch.DBGListaCellClick(Column: TColumn);
begin

  if Column.FieldName = 'cheselecionar' then
  begin
    (* Pode fazer assim - Gabriel - 2014-02-06 1323 *)
    tmp.Edit;
    if tmp.Fieldbyname('cheselecionar').AsString = '1' then
      tmp.Fieldbyname('cheselecionar').AsString := '0'
    else
      tmp.Fieldbyname('cheselecionar').AsString := '1';
    tmp.Post;

    recalculatotais;
  end
  else
  begin
    inherited;
  end;

  vtitucol := Column.Title.Caption;
  vnomecol := Column.FieldName;

end;

procedure Tfsch.DBGListaDblClick(Sender: TObject);
begin
  if Self.tmp.Fieldbyname('cheselecionar').AsString = '0' then
  begin
    Self.tmp.Edit;
    Self.tmp.Fieldbyname('cheselecionar').AsString := '1';
    Self.tmp.Fieldbyname('dtlchave').AsString := vdtlchave;
    Self.tmp.Post;
  end
  else
  begin
    Self.tmp.Edit;
    Self.tmp.Fieldbyname('cheselecionar').AsString := '0';
    Self.tmp.Fieldbyname('dtlchave').AsString := '0';
    Self.tmp.Post;
  end;
  recalculatotais;
end;

procedure Tfsch.recalculatotais;
var
  reg: Integer;
  vtot: double;
  vqtd: double;

begin
  reg := Self.tmp.RecNo;
  vtot := 0;
  vqtd := 0;
  tmp.First;
  tmp.DisableControls;
  while not tmp.Eof do
  begin
    if Self.tmp.Fieldbyname('cheselecionar').AsString <> '0' then
    begin
      vtot := vtot + Self.tmp.Fieldbyname('chevalor').AsFloat;
      vqtd := vqtd + 1;

    end;

    tmp.Next;
  end;

  pttotsele.Caption := formatfloat('###0.00', vtot);
  ptqtdsele.Caption := formatfloat('###000', vqtd);
  { daniel TRF 100
    28/10/2014 se o painel seelecionar estiver zedado mostra o botao
    confirma ativado, se o valor do painel for maior que zero
    significa que deve ser controlado a quantidade de cheques a
    selecionar
  }
  if (strtofloat(pttotsele.Caption) <= strtofloat(pttotasele.Caption)) then
    bconfirma.Enabled := true
  else
    bconfirma.Enabled := false;
  { TRF 100 }

  Self.tmp.RecNo := reg;
  tmp.EnableControls;
end;

procedure Tfsch.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  Check: Integer;
  R: TRect;
  i: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DSTabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
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
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
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

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'cheselecionar' then
  begin

    // Desenha um checkbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    Check := 0;
    if Self.tmp.Fieldbyname('cheselecionar').AsString = '1' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

procedure Tfsch.DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure Tfsch.DBGListaTitleClick(Column: TColumn);
Var
  i: Integer;
Begin

  uqtabela.IndexFieldNames := Column.FieldName;

  vtitucol := DBGLista.Columns[Column.Index].Title.Caption;
  vnomecol := Column.Field.FieldName;
  vtipocol := Column.Field.DataType;

  If (vtipocol = ftstring) Then
  Begin
    vpalavra := Self.DSTabela.DataSet.Fieldbyname(vnomecol).AsString;
  End
  Else
  Begin
    vpalavra := '';
  End;

  For i := 0 To DBGLista.Columns.Count - 1 Do
  Begin
    DBGLista.Columns[i].Title.Font.Color := clblack;
    DBGLista.Columns[i].Title.Font.Style := [];
  End;

  DBGLista.Columns[Column.Index].Title.Font.Color := clred;
  DBGLista.Columns[Column.Index].Title.Font.Style := [fsbold];
  GrBTextoProcurar.Caption := ' [+] Muda Ordem  ' + 'Buscar por ' + DBGLista.Columns[Column.Index].Title.Caption;

  vordem := Self.DSTabela.DataSet.Fields[Column.Index].FieldName;
  DBGLista.SelectedIndex := Column.Index;
  xordem := Column.Index;

end;

procedure Tfsch.edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  tecla: Word;
  i: Integer;
  rgatu: Integer;
Begin

  tecla := Key;

  If tecla = 40 Then
  Begin
    Self.DBGLista.SetFocus;
  End;

  If (Key = 187) Or (Key = 107) Or (Key = 118) Then
  Begin
    If edbusca.Text = '' Then
    Begin

      rgatu := Self.uqtabela.Fields[0].AsInteger;
    End;
    If (Key = 187) Or (Key = 107) then
    begin
      ajustaordem(Key);
    end;
    If edbusca.Text = '' Then
    Begin
      uqtabela.Locate(Self.uqtabela.Fields[0].FieldName, rgatu, []);
    End;
  End;

  If edbusca.Text = '' Then
  Begin

    // DSTabela.DataSet.First;

    If tecla = 40 Then
    Begin
      DBGLista.SetFocus;
    End;
  End
  Else
  Begin
    If tecla = 40 Then
    Begin
      DBGLista.SetFocus;
    End
    Else
    Begin
      // ajustafiltro;
    End;
  End;
  if (Key = 118) then
  begin
    edbusca.SelectAll;
  end;

end;

Procedure Tfsch.ajustaordem(Key: Integer);
Var
  i, x, p: Integer;
Begin
  If (Key = 187) Or (Key = 107) Or (Key = 118) Then
  Begin

    edbusca.Text := '';
    Key := 0;

    For i := 0 To Self.DBGLista.Columns.Count - 1 Do
    Begin

      Try
        If Self.DBGLista.Columns[i].FieldName = vordem Then
        Begin

          p := (Self.DBGLista.Columns.Count - 1);

          If i = p Then
          Begin

            xordem := -1;

          End;

          while true do
          begin
            xordem := xordem + 1;
            if Self.DBGLista.Columns[xordem].visible then
            begin
              break;
            end;

            If xordem = p Then
            Begin
              xordem := 0;
              break;
            End;

          end;

          vordem := Self.DBGLista.Columns[xordem].FieldName;

          vpalavra := Self.DSTabela.DataSet.Fieldbyname(vordem).AsString;

          For x := 0 To DBGLista.Columns.Count - 1 Do
          Begin
            DBGLista.Columns[x].Title.Font.Color := clblack;
            DBGLista.Columns[x].Title.Font.Style := [];
          End;

          DBGLista.Columns[xordem].Title.Font.Color := clred;
          DBGLista.Columns[xordem].Title.Font.Style := [fsbold];

          GrBTextoProcurar.Caption := 'Buscar por ' + DBGLista.Columns[xordem].Title.Caption + ' [+] Muda Ordem ';

          uqtabela.IndexFieldNames := vordem;
          DBGLista.SelectedIndex := xordem;
          Self.edbusca.SetFocus;
          break;
        End;
      Except
      End;
    End;
  End;
End;

end.
