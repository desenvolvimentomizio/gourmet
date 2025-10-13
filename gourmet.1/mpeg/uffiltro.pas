unit uffiltro;

interface

uses
  Winapi.Windows, Vcl.Forms, ufuncoes, Data.DB, DBAccess, Uni, MemDS,
  Vcl.Imaging.jpeg,
  Vcl.Controls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  System.Classes, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Dialogs, System.SysUtils,
  Vcl.Graphics, Winapi.Messages;

type
  Tffiltro = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    DBLista: TDBGrid;
    fil: tuniquery;
    filfilcodigo: TIntegerField;
    filclscodigo: TIntegerField;
    filclbcodigo: TIntegerField;
    filfilsqloriginal: TStringField;
    ifi: tuniquery;
    dfi: tuniquery;
    Difi: tunidatasource;
    vfi: tuniquery;
    dfidfichave: TIntegerField;
    dfiifichave: TIntegerField;
    dfidfidatainicial: TDateField;
    dfidfidatafinal: TDateField;
    vfivfichave: TIntegerField;
    vfiifichave: TIntegerField;
    vfivfivlrinicial: TFloatField;
    vfivfivlrfinal: TFloatField;
    ifiifichave: TIntegerField;
    ifiifitipocampo: TIntegerField;
    ifiififiltro: TStringField;
    ifiifidescricao: TStringField;
    ifiificampo: TStringField;
    ifiifimetodo: TIntegerField;
    sfi: tuniquery;
    sfisfichave: TIntegerField;
    sfiifichave: TIntegerField;
    sfisfitexto: TStringField;
    Plifi: TPanel;
    Ddfi: tunidatasource;
    Dvfi: tunidatasource;
    Dsfi: tunidatasource;
    ififilcodigo: TIntegerField;
    Panel2: TPanel;
    blimpatodo: TBitBtn;
    bexcluiitem: TBitBtn;
    bmostrar: TBitBtn;
    bocultar: TBitBtn;
    Panel1: TPanel;
    Image1: TImage;
    ifiifititulo: TStringField;
    cfi: tuniquery;
    cficfichave: TIntegerField;
    cfiifichave: TIntegerField;
    cficficodinicial: TIntegerField;
    cficficodfinal: TIntegerField;
    Dcfi: tunidatasource;
    mpf: tuniquery;
    Dmpf: tunidatasource;
    ific: TIntegerField;
    mpfifichave: TIntegerField;
    mpfmpftipo: TIntegerField;
    mpfmpftitulo: TStringField;
    mpfmpfmarca: TIntegerField;
    consulta: tuniquery;
    mpfmpfcampo: TStringField;
    qrySugestao: tuniquery;
    DSSugestao: TDataSource;
    DBGSugestao: TDBGrid;
    ifiifiexato: TIntegerField;
    ifiexato: TDBCheckBox;
    procedure bfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bocultarClick(Sender: TObject);
    procedure blimpatodoClick(Sender: TObject);
    procedure bexcluiitemClick(Sender: TObject);
    procedure bmostrarClick(Sender: TObject);
    procedure DBListaColEnter(Sender: TObject);
    procedure DBListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGSugestaoCellClick(Column: TColumn);
    procedure DBGSugestaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Fzcone: tuniconnection;
    procedure OnSairdoTexto(Sender: TObject);
    procedure limpafiltro;
    procedure carregartabelaaux;
    procedure CriarListaFiltro(lista: tListView);
    procedure ajustarmarcaclf(lista: tListView);
    function montafiltromultiplo: string;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  public
    { Public declarations }

    vordem: string;

    vTabSugestao: string;
    vCamSugestao: string;

    vclscodigo: string;
    vclbcodigo: string;
    vifichave: string;

    vtipcons: string;
    vtitucol: string;
    vAliasTabela: String;
    vnomecol: string;
    vtipocol: TFieldType;
    vpalavra: string;
    vsqloriginal: string;
    vfiltrosql: string;
    texto: tdbedit;
    val1: tdbedit;
    val2: tdbedit;
    cod1: tdbedit;
    cod2: tdbedit;
    dia1: tdbedit;
    dia2: tdbedit;
    eti1: tlabel;
    eti2: tlabel;

    lis1: tListView;

  end;

var
  ffiltro: Tffiltro;

implementation

{$R *.dfm}

procedure Tffiltro.bfecharClick(Sender: TObject);
begin
  limpafiltro;
  ModalResult := mrCancel;
END;

procedure Tffiltro.bmostrarClick(Sender: TObject);
var
  pode: Boolean;
  vval1: string;
  vval2: string;
  i: Integer;
begin
  pode := True;

  if ifi.State = dsBrowse then
  begin
    ifi.Edit;
  end;

  (* Filtro STRING *)
  if (sfi.State <> dsBrowse) and (sfi.State <> dsInactive) then
  begin
    if Self.texto.Text <> '' then
    begin
      if Self.vtipcons = 'view' then
      begin
        if ifiexato.Visible then
        begin
          if ifiexato.Field.AsInteger = 2 then
            ifiififiltro.AsString := Self.vnomecol + ' like ' + Chr(39) + '' + Self.texto.Text + '' + Chr(39)
          else
            ifiififiltro.AsString := Self.vnomecol + ' like ' + Chr(39) + '%' + Self.texto.Text + '%' + Chr(39)
        end
        else
          ifiififiltro.AsString := Self.vnomecol + ' like ' + Chr(39) + '%' + Self.texto.Text + '%' + Chr(39);
      end
      else
      begin
        if ifiexato.Visible then
        begin
          if ifiexato.Field.AsInteger = 2 then
            ifiififiltro.AsString := Self.vnomecol + ' like ' + Chr(39) + '' + Self.texto.Text + '' + Chr(39)
          else
            ifiififiltro.AsString := Self.vnomecol + ' like ' + Chr(39) + '%' + Self.texto.Text + '%' + Chr(39);

        end
        else
          ifiififiltro.AsString := Self.vnomecol + ' like ' + Chr(39) + '%' + Self.texto.Text + '%' + Chr(39);
      end;

      ifiifidescricao.AsString := Self.vtitucol + ' contendo ' + Self.texto.Text;
      Self.ifiifimetodo.AsInteger := 1;
      sfi.Post;
    end
    else
    begin
      sfi.Cancel;
    end;
  end;

  (* Filtro valores reais - incial e final - FLOAT *)
  if (vfi.State <> dsBrowse) and (vfi.State <> dsInactive) then
  begin
    if (Self.val1.Text <> '') and (Self.val2.Text = '') then
    begin
      Self.val2.Text := Self.val1.Text;
    end;
    if (Self.val1.Text <> '') and (Self.val2.Text <> '') then
    begin

      if Self.val1.Field.AsFloat > Self.val2.Field.AsFloat then
      begin
        pode := false;
        showmessage('Valor inferior não pode ser maior que o superior!');

      end
      else
      begin

        vval1 := Self.val1.Text;
        for i := 0 to funCountChar(vval1, '.') do
        begin
          vval1 := BuscaTroca(vval1, '.', '');
        end;

        vval2 := Self.val2.Text;
        for i := 0 to funCountChar(vval2, '.') do
        begin
          vval2 := BuscaTroca(vval2, '.', '');
        end;
        if Self.vtipcons = 'view' then
        begin
          ifiififiltro.AsString := Self.vnomecol + '>=' + vval1 + ' and ' + Self.vnomecol + '<=' + vval2;
        end
        else
        begin
          ifiififiltro.AsString := Self.vnomecol + '>=' + vval1 + ' and ' + Self.vnomecol + '<=' + vval2;
        end;

        ifiifidescricao.AsString := 'Mostrar ' + Self.vtitucol + ' de ' + Self.val1.Text + ' até ' + Self.val2.Text;
        ifiifimetodo.AsInteger := 1;
        vfi.Post;
      end;
    end
    else
    begin
      vfi.Cancel;
    end;
  end;

  (* Filtro valores Inteiros - incial e final - INTEGER *)
  if (cfi.State <> dsBrowse) and (cfi.State <> dsInactive) then
  begin
    if (Self.cod1.Text <> '') then
    begin
      if Self.vtipcons = 'view' then
      begin
        ifiififiltro.AsString := Self.vnomecol + '=' + Self.cod1.Text;
      end
      else
      begin
        ifiififiltro.AsString := Self.vnomecol + '=' + Self.cod1.Text;
      end;
      ifiifidescricao.AsString := 'Mostrar ' + Self.vtitucol + ' ' + Self.cod1.Text;
      ifiifimetodo.AsInteger := 1;
      cfi.Post;
    end
    else
    begin
      cfi.Cancel;
    end;
  end;

  (* Filtro de Datas - incial e final - DATE *)
  if (dfi.State <> dsBrowse) and (dfi.State <> dsInactive) then
  begin
    if (Self.dia1.Text <> '  /  /    ') and (Self.dia2.Text = '  /  /    ') then
    begin
      Self.dia2.Text := Self.dia1.Text;
    end;

    if (Self.dia1.Text <> '  /  /    ') and (Self.dia2.Text <> '  /  /    ') then
    begin

      if Self.dia1.Field.AsFloat > Self.dia2.Field.AsFloat then
      begin
        pode := false;
        showmessage('Data final não pode ser anterior a data inicial!');
        Self.dia2.SetFocus;
      end
      else
      begin
        if Self.vtipcons = 'view' then
        begin
          ifiififiltro.AsString := Self.vnomecol + '>=' + Chr(39) + ajustadata(Self.dia1.Text) + Chr(39) + ' and ' + Self.vnomecol + '<=' + Chr(39) + ajustadata(Self.dia2.Text)
            + Chr(39);
        end
        else
        begin
          ifiififiltro.AsString := Self.vnomecol + '>=' + Chr(39) + ajustadata(Self.dia1.Text) + Chr(39) + ' and ' + Self.vnomecol + '<=' + Chr(39) + ajustadata(Self.dia2.Text)
            + Chr(39);
        end;
        ifiifidescricao.AsString := 'Mostrar ' + Self.vtitucol + ' do dia ' + Self.dia1.Text + ' até dia ' + Self.dia2.Text;
        ifiifimetodo.AsInteger := 1;
        dfi.Post;
      end;
    end
    else
    begin
      dfi.Cancel;
    end;
  end;

  (* Filtro de Multiplas Seleções - ARRAY *)
  if (mpf.State <> dsInactive) then
  begin
    ajustarmarcaclf(Self.FindComponent('listaitenssele') as tListView);

    ifiififiltro.AsString := montafiltromultiplo;
    ifiifidescricao.AsString := 'Mostrar ' + Self.vtitucol;
    ifiifimetodo.AsInteger := 5;

    if ifiififiltro.AsString = '' then
    begin
      if (ifi.State = dsinsert) or (ifi.State = dsedit) then
      begin
        ifi.Post;
      end;
      ifi.Delete;
    end;
  end;

  if pode then
  begin

    if (ifi.State = dsinsert) or (ifi.State = dsedit) then
    begin
      ifi.Post;
    end;

    limpafiltro;
    ModalResult := mrok;
  end;

end;

function Tffiltro.montafiltromultiplo: string;
var
  vfil: string;
  vult: string;
begin

  vfil := '(';

  mpf.First;
  while not mpf.Eof do
  begin
    if Self.mpfmpfmarca.AsInteger = 1 then
    begin
      vfil := vfil + Self.mpfmpfcampo.AsString + '=' + Chr(39) + Self.mpfmpftitulo.AsString + Chr(39);

      mpf.Next;
      if mpf.Eof then
      begin
        vfil := vfil + ')';
        break;
      end
      else
      begin
        vfil := vfil + ' or ';
      end;
    end
    else
    begin
      mpf.Next;
    end;
  end;

  vfil := trim(vfil);
  vult := trim(Copy(vfil, length(vfil) - 2, 3));
  if vult = 'or' then
  begin
    vfil := Copy(vfil, 1, length(vfil) - 2) + ')';
  end;

  if trim(vfil) = '(' then
  begin
    vfil := '';
  end;
  result := vfil;
end;

Procedure Tffiltro.ajustarmarcaclf(lista: tListView);
Var
  i: Integer;
  cd: String;
  listItem: TListItem;

Begin
  For i := 0 To lista.Items.Count - 1 Do
  Begin

    listItem := lista.Items[i];
    cd := listItem.Caption;

    If mpf.Locate('mpftitulo', cd, []) Then
    Begin
      mpf.Edit;
      If lista.Items[i].Checked Then
      Begin
        mpfmpfmarca.AsInteger := 1;
      End
      Else
      Begin
        mpfmpfmarca.AsInteger := 0;
      End;
      mpf.Post;
    End;
  End;
End;

procedure Tffiltro.bexcluiitemClick(Sender: TObject);
begin
  if not ifi.IsEmpty then
  begin

    if ifi.State <> dsBrowse then
    begin
      ifi.Cancel;
      ifi.Delete;
    end;

    ifi.Delete;

  end;

  if ifi.IsEmpty then
  begin
    // self.fil.Delete;
    ModalResult := mrok;
  end;
end;

procedure Tffiltro.blimpatodoClick(Sender: TObject);
begin
  ifi.First;
  while not ifi.Eof do
  begin
    ifi.Delete;
  end;
  ModalResult := mrok;
end;

procedure Tffiltro.bocultarClick(Sender: TObject);
var
  vval1: string;
  vval2: string;
  i: Integer;
var
  pode: Boolean;
begin
  pode := True;

  if ifi.State = dsBrowse then
  begin
    ifi.Edit;
  end;

  if (sfi.State <> dsBrowse) and (sfi.State <> dsInactive) then
  begin
    if sfi.State <> dsBrowse then
    begin
      if Self.texto.Text <> '' then
      begin
        ifiififiltro.AsString := Self.vnomecol + ' not like ' + Chr(39) + '%' + Self.texto.Text + '%' + Chr(39);
        ifiifidescricao.AsString := Self.vtitucol + ' que não contenha ' + Self.texto.Text;
        Self.ifiifimetodo.AsInteger := 2;
      end;
      sfi.Post;
    end;
  end;

  if (vfi.State <> dsBrowse) and (vfi.State <> dsInactive) then
  begin
    if (Self.val1.Text <> '') and (Self.val2.Text = '') then
    begin
      Self.val2.Text := Self.val1.Text;
    end;
    if (Self.val1.Text <> '') and (Self.val2.Text <> '') then
    begin

      if Self.val1.Field.AsFloat > Self.val2.Field.AsFloat then
      begin
        pode := false;
        showmessage('Valor inferior não pode ser maior que o superior!');
      end
      else
      begin

        vval1 := Self.val1.Text;
        for i := 0 to funCountChar(vval1, '.') do
        begin
          vval1 := BuscaTroca(vval1, '.', '');
        end;

        vval2 := Self.val2.Text;
        for i := 0 to funCountChar(vval2, '.') do
        begin
          vval2 := BuscaTroca(vval2, '.', '');
        end;

        if Self.vtipcons = 'view' then
        begin
          ifiififiltro.AsString := '(' + Self.vnomecol + '<' + vval1 + ' or ' + Self.vnomecol + '>' + vval2 + ')';

        end
        else
        begin
          ifiififiltro.AsString := '(' + Self.vnomecol + '<' + vval1 + ' or ' + Self.vnomecol + '>' + vval2 + ')';

        end;
        ifiifidescricao.AsString := 'Não mostrar ' + Self.vtitucol + ' entre ' + Self.val1.Text + ' e ' + Self.val2.Text;
        ifiifimetodo.AsInteger := 2;
        vfi.Post;
      end;
    end
    else
    begin
      vfi.Cancel;
    end;
  end;

  if (cfi.State <> dsBrowse) and (cfi.State <> dsInactive) then
  begin
    if (Self.cod1.Text <> '') then
    begin
      if Self.vtipcons = 'view' then
      begin
        ifiififiltro.AsString := '(' + Self.vnomecol + '<>' + Self.cod1.Text + ')';
      end
      else
      begin
        ifiififiltro.AsString := '(' + Self.vnomecol + '<>' + Self.cod1.Text + ')';
      end;
      ifiifidescricao.AsString := 'Não mostrar ' + Self.vtitucol + ' ' + Self.cod1.Text;
      ifiifimetodo.AsInteger := 2;
      cfi.Post;
    end
    else
    begin
      cfi.Cancel;
    end;
  end;

  { if (cfi.State <> dsbrowse) and (cfi.State <> dsinactive) then
    begin
    if (self.cod1.Text <> '') and (self.cod2.Text = '') then
    begin
    self.cod2.Text := self.cod1.Text;
    end;
    if (self.cod1.Text <> '') and (self.cod2.Text <> '') then
    begin

    if self.cod1.Field.AsFloat > self.cod2.Field.AsFloat then
    begin
    pode := false;
    showmessage('Codigo inferior não pode ser maior que o superior!');
    end
    else
    begin
    ifiififiltro.AsString := '(' + self.vnomecol + '<' + self.cod1.Text + ' or ' +
    self.vnomecol + '>' + self.cod2.Text + ')';

    ifiifidescricao.AsString := 'Não mostrar ' + self.vtitucol + ' entre ' + self.cod1.Text + ' e '+ self.cod2.Text;
    ifiifimetodo.AsInteger := 2;
    cfi.Post;
    end;
    end
    else
    begin
    cfi.Cancel;
    end;
    end; }

  if (dfi.State <> dsBrowse) and (dfi.State <> dsInactive) then
  begin
    if (Self.dia1.Text <> '  /  /    ') and (Self.dia2.Text = '  /  /    ') then
    begin
      Self.dia2.Text := Self.dia1.Text;
    end;

    if (Self.dia1.Text <> '  /  /    ') and (Self.dia2.Text <> '  /  /    ') then
    begin

      if Self.dia1.Field.AsFloat > Self.dia2.Field.AsFloat then
      begin
        pode := false;
        showmessage('Data final não pode ser anterior a data inicial!');
        Self.dia2.SetFocus;
      end
      else
      begin

        if Self.vtipcons = 'view' then
        begin
          ifiififiltro.AsString := '(' + Self.vnomecol + '<' + Chr(39) + ajustadata(Self.dia1.Text) + Chr(39) + ' or ' + Self.vnomecol + '>' + Chr(39) + ajustadata(Self.dia2.Text)
            + Chr(39) + ')';

        end
        else
        begin
          ifiififiltro.AsString := '(' + Self.vnomecol + '<' + Chr(39) + ajustadata(Self.dia1.Text) + Chr(39) + ' or ' + Self.vnomecol + '>' + Chr(39) + ajustadata(Self.dia2.Text)
            + Chr(39) + ')';

        end;
        ifiifidescricao.AsString := 'Não mostrar ' + Self.vtitucol + ' entre ' + Self.dia1.Text + ' e ' + Self.dia2.Text;
        ifiifimetodo.AsInteger := 2;
        dfi.Post;
      end;
    end
    else
    begin
      dfi.Cancel;
    end;
  end;

  if pode then
  begin

    ifi.Post;
    limpafiltro;

    ModalResult := mrok;
  end;
end;

procedure Tffiltro.DBGSugestaoCellClick(Column: TColumn);
begin
  if Self.FindComponent('texto') <> nil then
    tdbedit(Self.FindComponent('texto')).Field.Text := qrySugestao.Fields[0].AsString;
end;

procedure Tffiltro.DBGSugestaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if Self.FindComponent('texto') <> nil then
      tdbedit(Self.FindComponent('texto')).Field.Text := qrySugestao.Fields[0].AsString;

    bmostrar.SetFocus;
  end;
end;

procedure Tffiltro.DBListaColEnter(Sender: TObject);
begin
  if ifi.State <> dsBrowse then
  begin
    ifi.Cancel;
  end;
end;

procedure Tffiltro.DBListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If odd(Difi.DataSet.RecNo) Then
    DBLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBLista.Canvas.Brush.Color := CLWHITE;

  TDBGrid(Sender).Canvas.Font.Color := clblack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(Rect);
      Font.Style := [fsbold];
      Font.Color := clnavy;

    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tffiltro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin
    If (Sender Is TDBGrid) Then
    Begin
      Key := #0;
      (Sender As TDBGrid).SelectedIndex := (Sender As TDBGrid).SelectedIndex + 1;
      If (Sender As TDBGrid).SelectedIndex = ((Sender As TDBGrid).Columns.Count) Then
      Begin
        (Sender As TDBGrid).SelectedIndex := 1;
        (Sender As TDBGrid).DataSource.DataSet.Next;
        If (Sender As TDBGrid).DataSource.DataSet.Eof Then
        Begin
          Perform(WM_NEXTDLGCTL, 0, 0);
        End;
      End;
    End
    Else
    Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    End;

  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bfechar.Click;
  End;

end;

procedure Tffiltro.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  query: String;
  filtro: String;
  linha: String;
  i: Integer;
  pala1: String;
  pala2: String;
  pala3: String;
  pala4: String;
  pala5: String;

  vlsqlbase: string;
  vlInicio: Integer;
  vlNomeChave: string;
  vlCampos: String;
  vlTabela: String;
  vlSqlOriginal: string;
Begin
  if tdbedit(Sender).Text = '' then
  begin
    qrySugestao.FilterSQL := '';

    if (Key = 38) then
    begin
      if DBGSugestao.Visible then
        Self.bmostrar.SetFocus;

      Exit;
    end;

  end
  else
  begin
    if (Key = 40) then
    begin
      if DBGSugestao.Visible then
      begin

        if DBGSugestao.Visible then
        begin
          DBGSugestao.SetFocus;
          qrySugestao.Next;
        end;

      end;

      Exit;
    end;

    linha := trim(tdbedit(Sender).Text);
    filtro := trim(tdbedit(Sender).Text);
    i := pos(' ', linha) - 1;
    If i > 0 Then
    Begin
      pala1 := Copy(linha, 1, i);
      linha := trim(Copy(linha, i + 1, length(linha)));
      i := pos(' ', linha) - 1;
      If i > 0 Then
      Begin
        pala2 := trim(Copy(linha, 1, i));
        linha := trim(Copy(linha, i + 1, length(linha)));

        i := pos(' ', linha) - 1;
        If i > 0 Then
        Begin
          pala3 := Copy(linha, 1, i);
          linha := trim(Copy(linha, i + 1, length(linha)));

          If i > 0 Then
          Begin
            pala4 := Copy(linha, 1, i);
            linha := trim(Copy(linha, i + 1, length(linha)));

            If i > 0 Then
            Begin
              pala5 := Copy(linha, 1, i);
              linha := trim(Copy(linha, i + 1, length(linha)));
            End
            Else
            Begin
              pala5 := trim(Copy(linha, 1, length(linha)));
            End;

          End
          Else
          Begin
            pala4 := trim(Copy(linha, 1, length(linha)));
          End;

        End
        Else
        Begin
          pala3 := trim(Copy(linha, 1, length(linha)));
        End;

      End
      Else
      Begin
        pala2 := trim(Copy(linha, 1, length(linha)));

      End;

    End
    Else
    Begin
      filtro := 'lower(' + vordem + ') like ' + Chr(39) + '%' + lowercase(linha) + '%' + Chr(39);
    End;

    If pala1 <> '' Then
    Begin
      filtro := ' lower(' + vordem + ') like ' + Chr(39) + '%' + lowercase(pala1) + '%' + Chr(39);
    End;

    If pala2 <> '' Then
    Begin
      filtro := filtro + ' and lower(' + vordem + ') like ' + Chr(39) + '%' + lowercase(pala2) + '%' + Chr(39);
    End;

    If pala3 <> '' Then
    Begin
      filtro := filtro + ' and lower(' + vordem + ') like ' + Chr(39) + '%' + lowercase(pala3) + '%' + Chr(39);
    End;

    If pala4 <> '' Then
    Begin
      filtro := filtro + ' and lower(' + vordem + ') like ' + Chr(39) + '%' + lowercase(pala4) + '%' + Chr(39);
    End;

    If pala5 <> '' Then
    Begin
      filtro := filtro + ' and lower(' + vordem + ') like ' + Chr(39) + '%' + lowercase(pala5) + '%' + Chr(39);
    End;

    vlsqlbase := lowercase(qrySugestao.sql.Text);

    vlNomeChave := trim(Copy(vlsqlbase, pos(' ', vlsqlbase), 50));
    vlNomeChave := trim(Copy(vlNomeChave, 1, pos(',', vlNomeChave) - 1));

    vlInicio := pos('from', vlsqlbase);
    vlsqlbase := Copy(vlsqlbase, vlInicio, length(vlsqlbase));

    if pos('order by', vlsqlbase) > 0 then
    begin
      vlInicio := pos('order by', vlsqlbase);
      vlsqlbase := Copy(vlsqlbase, 1, vlInicio - 1);
    end;

    if pos('.', vlNomeChave) > 0 then
    begin
      vlTabela := Copy(vlNomeChave, 1, pos('.', vlNomeChave) - 1);
      vlNomeChave := Copy(vlNomeChave, pos('.', vlNomeChave) + 1);
      if uppercase(trim(vlNomeChave)) = uppercase(trim(vordem)) then
      begin
        vlCampos := vlTabela + '.' + vlNomeChave;
        filtro := StringReplace(filtro, vordem, vlCampos, [rfReplaceAll]);
      end
      else
      begin
        vlCampos := vlTabela + '.' + vlNomeChave + ', ' + vordem;
      end;

    end
    else
      vlCampos := vlTabela + '.' + vlNomeChave + ', ' + vordem;

    if uppercase(trim(vlNomeChave)) <> uppercase(trim(vordem)) then
    begin

      if pos('where', vlsqlbase) > 0 then
        query := 'select distinct ' + vlCampos + ' ' + vlsqlbase + ' ' + 'and ' + filtro + ' order by ' + vlCampos + ' limit 100'
      else
        query := 'select distinct ' + vlCampos + ' ' + vlsqlbase + ' ' + 'where ' + filtro + ' order by ' + vlCampos + ' limit 100';

      vlSqlOriginal := qrySugestao.sql.Text;

      if filtro <> '' then
      begin

        if pos(' limit 100', qrySugestao.sql.Text) = 0 then
          qrySugestao.sql.Text := qrySugestao.sql.Text + ' limit 100';

        If tdbedit(Sender).Text <> '' Then
        Begin
          if pos(' limit 100', qrySugestao.sql.Text) = 0 then
            qrySugestao.sql.Text := qrySugestao.sql.Text + ' limit 100';
        End
        else
        begin
          qrySugestao.sql.Text := StringReplace(qrySugestao.sql.Text, ' limit 100', '', [rfReplaceAll, rfIgnoreCase]);
        end;

        qrySugestao.FilterSQL := filtro;

        if not qrySugestao.Active then
          qrySugestao.Open;

      end
      else
      begin

      end;

      inherited;
    end
    else
    begin
      inherited;
    end;

  end;
end;

procedure Tffiltro.OnSairdoTexto(Sender: TObject);
begin

end;

procedure Tffiltro.limpafiltro;
begin
  ifi.First;
  while not ifi.Eof do
  begin
    if trim(Self.ifiifidescricao.AsString) = '' then
    begin
      Self.ifi.Delete;
    end
    else
    begin
      Self.ifi.Next;
    end;
  end;
end;

procedure Tffiltro.carregartabelaaux;
var
  vtabnome: string;
begin
  vtabnome := Self.vnomecol;
  if Self.vifichave = '' then
  begin
    consulta.close;
    consulta.sql.Clear;
    consulta.sql.Text := 'select ' + Copy(vtabnome, 1, 3) + 'codigo' + ',' + vtabnome + ' from ' + Copy(vtabnome, 1, 3) + ' order by ' + vtabnome;
    consulta.Open;
    consulta.First;
    while not consulta.Eof do
    begin
      mpf.Append;
      mpfifichave.AsInteger := Self.ifiifichave.AsInteger;
      mpfmpfmarca.AsInteger := 0;
      if consulta.Fields[0].DataType = ftInteger then
      begin
        Self.mpfmpftipo.AsInteger := 1;
      end
      else
      begin
        Self.mpfmpftipo.AsInteger := 2;
      end;
      mpfmpftitulo.AsString := Self.consulta.Fields[1].AsString;
      mpfmpfcampo.AsString := vtabnome;
      mpf.Post;
      consulta.Next;
    end;
    consulta.close;
  end;
end;

procedure Tffiltro.FormShow(Sender: TObject);
var
  i: Integer;
  vlNomeColuna: String;
begin

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is tuniquery then
    begin
      (Self.Components[i] as tuniquery).Connection := Self.zcone;
    end;
  end;

  if (pos('.', vnomecol) = 0) then
    if vAliasTabela <> '' then
      vnomecol := vAliasTabela + '.' + vnomecol
    else
      vnomecol := Copy(vnomecol, 1, 3) + '.' + vnomecol;

  fil.close;
  fil.Params[0].AsString := Self.vclscodigo;
  fil.Params[1].AsString := Self.vclbcodigo;
  fil.Open;

  if not fil.IsEmpty then
    if filfilsqloriginal.AsString <> Self.vsqloriginal then
      fil.Delete;

  if fil.IsEmpty then
  begin
    fil.Append;
    filclscodigo.AsString := Self.vclscodigo;
    filclbcodigo.AsString := Self.vclbcodigo;
    filfilsqloriginal.AsString := Self.vsqloriginal;
    fil.Post;
  end;

  ifi.close;
  ifi.Params[0].AsString := Self.filfilcodigo.AsString;
  ifi.Open;

  if Self.vifichave = '' then
  begin
    ifi.Append;
    ififilcodigo.AsString := Self.filfilcodigo.AsString;
    ifiifitipocampo.AsInteger := 1;
    ifiififiltro.AsString := '';
    ifiifidescricao.AsString := '';
    ifiificampo.AsString := Self.vnomecol;
    ifiifititulo.AsString := Self.vtitucol;
    ifiifimetodo.AsInteger := 1;
    ifi.Post;
  end
  else
  begin
    ifi.Filter := 'ifichave=' + vifichave;
    ifi.Filtered := True;
    // ifi.Edit;

    vtitucol := ifiifititulo.AsString;

    case Self.ifiifitipocampo.AsInteger of
      1:
        vtipocol := ftString;
      2:
        vtipocol := ftInteger;
      3:
        vtipocol := ftFloat;
      4:
        vtipocol := ftDate;
      5:
        vtipocol := ftArray;
    end;
  end;

  if Self.vtipocol = ftString then
  begin
    ifi.Edit;
    ifiifitipocampo.AsInteger := 1;
    ifi.Post;

    sfi.close;
    sfi.Params[0].AsString := Self.ifiifichave.AsString;
    sfi.Open;

    if Self.vifichave = '' then
    begin
      sfi.Append;
      sfiifichave.AsInteger := Self.ifiifichave.AsInteger;
      sfisfitexto.AsString := Self.vpalavra;
      sfi.Post;
    end;
    sfi.Edit;

    eti1 := tlabel.Create(Self);
    eti1.Caption := 'Filtrar ' + Self.vtitucol + ' com:';
    eti1.Parent := Plifi;
    eti1.Left := 216;
    eti1.Top := 33;

    texto := tdbedit.Create(Self);
    texto.Parent := Plifi;
    texto.Name := 'texto';
    if (vpalavra <> '') then
    begin
      texto.Text := vpalavra;
    end
    else
    begin
      if Self.vifichave = '' then
      begin
        texto.Text := '';
      end;
    end;
    texto.DataSource := Dsfi;
    texto.DataField := 'sfitexto';
    texto.Left := 216;
    texto.Top := 52;
    texto.Width := 280;
    texto.CharCase := ecUpperCase;
    texto.SetFocus;
    texto.OnKeyPress := Self.OnKeyPress;
    texto.OnKeyUp := Self.OnKeyUp;
    texto.OnExit := OnSairdoTexto;
    Self.ActiveControl := texto;

    DBGSugestao.Visible := True;
    DBGSugestao.Left := texto.Left;
    DBGSugestao.Top := texto.Top + texto.Height + 2;
    DBGSugestao.Width := texto.Width;
    DBGSugestao.Columns.Add;
    DBGSugestao.Columns[0].Width := DBGSugestao.Width - 22;
    if pos('.', vnomecol) = 0 then
      vlNomeColuna := vnomecol
    else
      vlNomeColuna := Copy(vnomecol, pos('.', vnomecol) + 1, 100);

    DBGSugestao.Columns[0].FieldName := vlNomeColuna;

    ifiexato.Visible := True;

    vordem := vlNomeColuna;

    vTabSugestao := Copy(vlNomeColuna, 1, 3);
    vCamSugestao := vlNomeColuna;

    qrySugestao.close;
    qrySugestao.sql.Text := 'select ' + vlNomeColuna + ' from ' + Copy(vlNomeColuna, 1, 3);
    qrySugestao.Open;

  end
  else if Self.vtipocol in [ftInteger, ftLargeint] then
  begin

    ifi.Edit;
    ifiifitipocampo.AsInteger := 2;
    ifi.Post;

    cfi.close;
    cfi.Params[0].AsString := Self.ifiifichave.AsString;
    cfi.Open;

    if Self.vifichave = '' then
    begin
      cfi.Append;
      cfiifichave.AsInteger := Self.ifiifichave.AsInteger;
      cfi.Post;
    end;

    cfi.Edit;

    eti1 := tlabel.Create(Self);
    eti1.Caption := 'Filtrar ' + Self.vtitucol + ' de:';
    eti1.Parent := Plifi;
    eti1.Left := 216;
    eti1.Top := 33;

    { eti2 := tlabel.Create(self);
      eti2.Caption := 'até:';
      eti2.Parent := Plifi;
      eti2.Left := 216;
      eti2.Top := 92; }

    cod1 := tdbedit.Create(Self);
    cod1.DataSource := Dcfi;
    cod1.DataField := 'cficodinicial';

    cod1.Parent := Plifi;
    cod1.Name := 'cod1';
    cod1.Left := 216;
    cod1.Top := 52;

    if Self.vifichave = '' then
    begin
      cod1.Text := '';
    end;

    cod1.OnKeyPress := Self.OnKeyPress;
    cod1.SetFocus;
    Self.ActiveControl := cod1;

    { cod2 := tdbedit.Create(self);
      cod2.DataSource := Dcfi;
      cod2.DataField := 'cficodfinal';
      cod2.Parent := Plifi;
      cod2.Name := 'cod2';
      cod2.Left := 216;
      cod2.Top := 116;
      cod2.OnKeyPress := self.OnKeyPress;
      if self.vifichave = '' then
      begin
      cod2.Text := '';
      end; }

  end
  else if Self.vtipocol = ftFloat then
  begin

    ifi.Edit;
    ifiifitipocampo.AsInteger := 3;
    ifi.Post;

    vfi.close;
    vfi.Params[0].AsString := Self.ifiifichave.AsString;
    vfi.Open;

    if Self.vifichave = '' then
    begin
      vfi.Append;
      vfiifichave.AsInteger := Self.ifiifichave.AsInteger;
      vfi.Post;
    end;

    vfi.Edit;

    eti1 := tlabel.Create(Self);
    eti1.Caption := 'Filtrar ' + Self.vtitucol + ' de:';
    eti1.Parent := Plifi;
    eti1.Left := 216;
    eti1.Top := 33;

    eti2 := tlabel.Create(Self);
    eti2.Caption := 'até:';
    eti2.Parent := Plifi;
    eti2.Left := 216;
    eti2.Top := 92;

    val1 := tdbedit.Create(Self);
    val1.DataSource := Dvfi;
    val1.DataField := 'vfivlrinicial';

    val1.Parent := Plifi;
    val1.Name := 'val1';
    val1.Left := 216;
    val1.Top := 52;

    val1.Text := '';

    val1.OnKeyPress := Self.OnKeyPress;
    val1.SetFocus;
    Self.ActiveControl := val1;

    val2 := tdbedit.Create(Self);
    val2.DataSource := Dvfi;
    val2.DataField := 'vfivlrfinal';
    val2.Parent := Plifi;
    val2.Name := 'val2';
    val2.Left := 216;
    val2.Top := 116;
    val2.OnKeyPress := Self.OnKeyPress;
    if Self.vifichave = '' then
    begin
      val2.Text := '';
    end;

  end
  else if Self.vtipocol = ftDate then
  begin

    ifi.Edit;
    ifiifitipocampo.AsInteger := 4;
    ifi.Post;

    dfi.close;
    dfi.Params[0].AsString := Self.ifiifichave.AsString;
    dfi.Open;

    if Self.vifichave = '' then
    begin
      dfi.Append;
      dfiifichave.AsInteger := Self.ifiifichave.AsInteger;
      dfi.Post;
    end;
    dfi.Edit;

    eti1 := tlabel.Create(Self);
    eti1.Caption := 'Filtrar ' + Self.vtitucol + ' de:';
    eti1.Parent := Plifi;
    eti1.Left := 216;
    eti1.Top := 33;

    eti2 := tlabel.Create(Self);
    eti2.Caption := 'até:';
    eti2.Parent := Plifi;
    eti2.Left := 216;
    eti2.Top := 92;

    dia1 := tdbedit.Create(Self);
    dia1.DataSource := Ddfi;
    dia1.DataField := 'dfidatainicial';

    dia1.Parent := Plifi;
    dia1.Name := 'dia1';
    dia1.Left := 216;
    dia1.Top := 52;
    dia1.Text := '';
    dia1.OnKeyPress := Self.OnKeyPress;
    dia1.SetFocus;
    Self.ActiveControl := dia1;

    dia2 := tdbedit.Create(Self);
    dia2.DataSource := Ddfi;
    dia2.DataField := 'dfidatafinal';
    dia2.Parent := Plifi;
    dia2.Name := 'dia2';
    dia2.Left := 216;
    dia2.Top := 116;
    dia2.OnKeyPress := Self.OnKeyPress;
    if Self.vifichave = '' then
    begin
      dia2.Text := '';
    end;

  end
  else if Self.vtipocol = ftArray then
  begin
    Self.bocultar.Visible := false;

    ifi.Edit;
    ifiifitipocampo.AsInteger := 5;
    ifi.Post;

    mpf.close;
    mpf.Params[0].AsString := Self.ifiifichave.AsString;
    mpf.Open;

    carregartabelaaux;

    eti1 := tlabel.Create(Self);
    eti1.Caption := 'Filtrar ' + Self.vtitucol + ' por seleção:';
    eti1.Parent := Plifi;
    eti1.Left := 216;
    eti1.Top := 33;

    lis1 := tListView.Create(Self);
    lis1.Name := 'listaitenssele';
    lis1.ViewStyle := vsReport;
    lis1.FullDrag := True;
    lis1.Parent := Plifi;
    lis1.Left := 216;
    lis1.Top := 60;
    lis1.Height := 110;
    lis1.Width := 350;
    lis1.Checkboxes := True;
    lis1.Columns.Add.Caption := 'Seleção';
    lis1.Columns[0].Width := 320;

    // Limpa o Conteudo Existente no ListView
    lis1.Clear;
    CriarListaFiltro(lis1);

  end;

end;

Procedure Tffiltro.CriarListaFiltro(lista: tListView);
Var
  listItem: TListItem; // Criamos uma variável para guarda os itens do Listview
  x: Integer;
Begin

  // Limpa o Conteudo Existente no ListView
  lista.Clear;

  // Posicionamos no Primeiro Registro
  mpf.First;
  x := 0;
  While Not mpf.Eof Do
  Begin

    // Adicionamos um Item ao ListView
    listItem := lista.Items.Add;

    // Verifica qual o Icone deve ser apresentado
    { if Dm.SqUsersnivel.Value = 'A' then
      ListItem.ImageIndex := 0
      else
      ListItem.ImageIndex := 1; }

    // Adicionamos dados a Coluna Login
    listItem.Caption := Self.mpfmpftitulo.AsString;

    // Adicionamos a Coluna Nome do Usuario
    // listItem.SubItems.Add(self.ctactanome.AsString);

    // Adicionamos a coluna Nivel
    // ListItem.SubItems.Add(self.ctactamarca.AsString);

    // Mudamos para o proximo registro
    If Self.mpfmpfmarca.AsInteger = 1 Then
    Begin
      lista.Items[x].Checked := True;
    End
    Else
    Begin
      lista.Items[x].Checked := false;
    End;
    mpf.Next;
    x := x + 1;
  End;
End;

end.
