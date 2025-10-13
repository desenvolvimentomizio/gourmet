unit ufbca;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, ufuncoes,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Buttons, Data.DB, MemDS, DBAccess,
  DAScript, UniScript;

type
  Tfbca = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    PlSelecao: TPanel;
    GBPlSelecao: TGroupBox;
    Image1: TImage;
    DBLista: TDBGrid;
    PlBotoesFiltros: TPanel;
    BFiltroIncluir: TBitBtn;
    BFiltroExcluir: TBitBtn;
    BFiltroAlterar: TBitBtn;
    PlFiltros: TPanel;
    PlEdTextoBusca: TPanel;
    GrBTextoProcurar: TGroupBox;
    PlGbEdtBusca: TPanel;
    edbusca: TEdit;
    SpFilter: TSplitter;
    DBGLista: TDBGrid;
    consulta: tuniquery;
    cls: tuniquery;
    clsclscodigo: TIntegerField;
    clsclsnomeform: TStringField;
    clsclslargura: TIntegerField;
    clsclsaltura: TIntegerField;
    clsclscolunas: TBlobField;
    clsusrcodigo: TIntegerField;
    clsclsmodo: TIntegerField;
    clsclsrodape: TIntegerField;
    clsclsbotoes: TIntegerField;
    clsclsselecao: TIntegerField;
    clsclspositopo: TIntegerField;
    clsclsposiesquerda: TIntegerField;
    dcl: tuniquery;
    dcldclcodigo: TIntegerField;
    dclclscodigo: TIntegerField;
    dclclbcodigo: TIntegerField;
    dcldclvisivel: TIntegerField;
    dcldclpesquisavel: TIntegerField;
    dcldclpesquisa: TIntegerField;
    dcldclnomecampo: TStringField;
    dcldcltitulo: TStringField;
    fil: tuniquery;
    filfilcodigo: TIntegerField;
    filclscodigo: TIntegerField;
    filclbcodigo: TIntegerField;
    filfilsqloriginal: TStringField;
    ifi: tuniquery;
    ifiifichave: TIntegerField;
    ififilcodigo: TIntegerField;
    ifiifitipocampo: TIntegerField;
    ifiififiltro: TStringField;
    ifiifidescricao: TStringField;
    ifiificampo: TStringField;
    ifiifimetodo: TIntegerField;
    ifiifititulo: TStringField;
    Difi: tunidatasource;
    DSTabela: tunidatasource;
    uqtabela: tuniquery;
    PlTitulo: TPanel;
    plid: TPanel;
    bconfigurar: TBitBtn;
    procedure edbuscaEnter(Sender: TObject);
    procedure edbuscaKeyPress(Sender: TObject; var Key: Char);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BFiltroIncluirClick(Sender: TObject);
    procedure BFiltroAlterarClick(Sender: TObject);
    procedure BFiltroExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaColEnter(Sender: TObject);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGListaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGListaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGListaTitleClick(Column: TColumn);
  private
    { Private declarations }
    vpalavra: String;
    vtitucol: String;
    vnomecol: String;
    vtipocol: TFieldType;
    Fzcone: tuniconnection;
    ftitulo: string;
    fmodulo: string;
    fmodo: string;
    ftxtfiltro: string;
    procedure ajustafiltro;
    procedure Atualizar;
    function montafiltro: string;
    procedure MostraQuantiRecno;
    procedure chamafiltro(chave: string);
    procedure ajustaordem(Key: Integer);
    procedure carregacolunas;
    procedure montacolunas;
    procedure salvacolunas;

  published
    property zcone: tuniconnection read Fzcone write Fzcone;
    property titulo: string read ftitulo write ftitulo;

  public
    { Public declarations }
    pack: cardinal;
    vchave: string;
    vChaveMestre: string;
    vusrcodigo: string;
    vmodo: string;
    vordem: string;
    xordem: Integer;
    vgrupo: string;
    vsubgrupo: string;
    vretorno: string;

  end;

var
  fbca: Tfbca;

implementation

{$R *.dfm}

uses uffiltro;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function Tfbca.montafiltro: string;
var
  filtro: string;
  vcampoatual: string;
  vmetodo: Integer;
  i: Integer;
begin

  fil.Close;
  fil.Params[0].AsString := self.clsclscodigo.AsString;
  fil.Params[1].AsString := self.vusrcodigo;
  fil.Open;

  ifi.Close;
  ifi.Params[0].AsString := self.filfilcodigo.AsString;
  ifi.Open;

  filtro := '';
  if not ifi.Eof then
  begin

    vcampoatual := self.ifiificampo.AsString;

    while not ifi.Eof do
    begin

      if trim(self.ifiififiltro.AsString) <> '' then
      begin
        filtro := filtro + ' ' + self.ifiififiltro.AsString;
        vmetodo := self.ifiifimetodo.AsInteger;
      end;

      ifi.Next;

      if trim(self.ifiififiltro.AsString) <> '' then
      begin

        if not ifi.Eof then
        begin

          if vcampoatual = self.ifiificampo.AsString then
          begin

            if pos('(', filtro) = 0 then
            begin
              if pos(' not like ', self.ifiififiltro.AsString) > 0 then
              begin
                filtro := '(' + filtro + ' and ';
              end
              else
              begin
                if vmetodo = 2 then
                begin
                  filtro := '(' + filtro + ' and ';
                end
                else
                begin
                  if (self.ifiifitipocampo.AsInteger = 1) or (self.ifiifitipocampo.AsInteger = 2) then
                  begin
                    filtro := '(' + filtro + ' or ';
                  end
                  else
                  begin
                    filtro := filtro + ' and ';
                  end;
                end;
              end;
            end
            else
            begin
              if pos(' not like ', self.ifiififiltro.AsString) > 0 then
              begin
                filtro := filtro + ' and ';
              end
              else
              begin
                if vmetodo = 2 then
                begin
                  filtro := filtro + ' and ';
                end
                else
                begin
                  filtro := filtro + ' or ';
                end;
              end;
            end;

          end
          else
          begin
            if pos('(', filtro) > 0 then
            begin

              if (self.ifiifitipocampo.AsInteger = 1) then
              begin

                if funCountChar(filtro, '(') > funCountChar(filtro, ')') then
                begin
                  filtro := filtro + ')'; { + filtro }
                end;
              end
              else
              begin
                filtro := filtro;
              end;

            end;

            filtro := filtro + ' and ';
            vcampoatual := self.ifiificampo.AsString;
          end;
        end;

      end;
      if ifi.Eof then
      begin
        if pos('(', filtro) > 0 then
        begin
          if pos(')', filtro) = 0 then
          begin

            filtro := filtro + ')';
          end;
        end;

        break;
      end;

    end;
  end;

  { for I :=0 to funCountChar(filtro, '.') do
    begin
    filtro:=buscatroca(filtro,'.','');
    end; }

  for i := 0 to funCountChar(filtro, ',') do
  begin
    filtro := buscatroca(filtro, ',', '.');
  end;

  result := filtro;

end;

Procedure Tfbca.MostraQuantiRecno;
Begin
  self.PlTitulo.Caption := self.titulo;
End;

procedure Tfbca.chamafiltro(chave: string);
var
  i: Integer;
begin
  { definições de filtros }

  try
    application.CreateForm(tffiltro, ffiltro);
    ffiltro.vclscodigo := self.clsclscodigo.AsString;
    ffiltro.vclbcodigo := self.vusrcodigo;

    if chave = '' then
    begin
      ffiltro.vnomecol := self.vnomecol;
      ffiltro.vtipocol := self.vtipocol;
      ffiltro.vtitucol := self.vtitucol;
    end
    else
    begin
      ffiltro.ifi.Connection := self.zcone;
      ffiltro.fil.Connection := self.zcone;

      ffiltro.fil.Close;
      ffiltro.fil.Params[0].AsInteger := self.clsclscodigo.AsInteger;
      ffiltro.fil.Params[1].AsString := self.vusrcodigo;
      ffiltro.fil.Open;

      ffiltro.ifi.Close;
      ffiltro.ifi.Params[0].AsString := ffiltro.filfilcodigo.AsString;
      ffiltro.ifi.Open;

      ffiltro.vnomecol := ffiltro.ifiificampo.AsString;

      if ffiltro.ifiifitipocampo.AsInteger = 1 then
      begin
        vtipocol := ftstring;
      end
      else if ffiltro.ifiifitipocampo.AsInteger = 2 then
      begin
        vtipocol := ftInteger;
      end
      else if ffiltro.ifiifitipocampo.AsInteger = 3 then
      begin
        vtipocol := ftFloat;
      end
      else if ffiltro.ifiifitipocampo.AsInteger = 4 then
      begin
        vtipocol := ftdate;
      end;

      ffiltro.vtitucol := ffiltro.ifiifititulo.AsString;

    end;

    ffiltro.vifichave := chave;
    ffiltro.vpalavra := self.vpalavra;
    ffiltro.vsqloriginal := self.uqtabela.SQL.Text;

    ffiltro.zcone := self.zcone;

    if ffiltro.ShowModal = mrok then
    begin
      Atualizar;
    end;
  finally
    freeandnil(ffiltro);
  end;

end;

procedure Tfbca.DBGListaCellClick(Column: TColumn);
begin
  vtitucol := Column.Title.Caption;
  vnomecol := Column.FieldName;
  vtipocol := Column.Field.DataType;

  If (vtipocol = ftstring) Then
  Begin
    vpalavra := self.DBGLista.DataSource.DataSet.FieldByName(self.vnomecol).AsString;
  End
  Else
  Begin
    vpalavra := '';
  End;

end;

procedure Tfbca.DBGListaColEnter(Sender: TObject);
begin

  vtitucol := DBGLista.Columns[DBGLista.SelectedIndex].Title.Caption;
  vnomecol := DBGLista.Columns[DBGLista.SelectedIndex].FieldName;
  vtipocol := DBGLista.Columns[DBGLista.SelectedIndex].Field.DataType;

  If (vtipocol = ftstring) Then
  Begin
    vpalavra := self.DBGLista.DataSource.DataSet.FieldByName(self.vnomecol).AsString;
  End
  Else
  Begin
    vpalavra := '';
  End;

end;

procedure Tfbca.DBGListaDblClick(Sender: TObject);
begin
  self.bconfirma.Click;
end;

procedure Tfbca.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
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
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
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
        Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfbca.DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If ((Shift = [ssCtrl]) And (Key = 46)) Then
    Abort;
end;

procedure Tfbca.DBGListaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    self.bconfirma.Click;
  End
  else If Key = #27 Then
  Begin
    self.bcancela.Click;
  End;
end;

procedure Tfbca.DBGListaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = 38 Then
  Begin
    If self.DSTabela.DataSet.Bof Then
    Begin
      If self.PlFiltros.Visible Then
      Begin
        edbusca.SetFocus;
      End;
    End;
  End;

end;

procedure Tfbca.DBGListaTitleClick(Column: TColumn);
Var
  i: Integer;
Begin

  uqtabela.IndexFieldNames := Column.FieldName;

  vtitucol := DBGLista.Columns[Column.Index].Title.Caption;
  vnomecol := Column.Field.FieldName;
  vtipocol := Column.Field.DataType;

  If (vtipocol = ftstring) Then
  Begin
    vpalavra := self.DSTabela.DataSet.FieldByName(vnomecol).AsString;
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

  vordem := self.DSTabela.DataSet.fields[Column.Index].FieldName;
  DBGLista.SelectedIndex := Column.Index;
  xordem := Column.Index;

end;

procedure Tfbca.carregacolunas;
Var
  AStream: TMemoryStream;
  i: Integer;
  nomedll: String;
  vnomeform: string;
  vHeight: Integer;
  vWidth: Integer;
  vtop: Integer;
  vleft: Integer;

  vPlRodaPe: Integer;
  vPlBotoes: Integer;
  vPlselecao: Integer;
Begin

  vHeight := 350;
  vWidth := 550;
  vPlRodaPe := 25;
  vPlBotoes := 140;
  vPlselecao := 80;
  vtop := 10;
  vleft := 10;

  vnomeform := self.Name;
  cls.Connection := self.zcone;

  cls.Close;
  cls.Params[0].AsString := self.vusrcodigo;
  cls.Params[1].AsString := vnomeform;
  cls.Open;

  If Not cls.IsEmpty Then
  Begin

    self.PlSelecao.Height := self.clsclsselecao.AsInteger;

    AStream := TMemoryStream.Create;
    Try
      If cls.Active Then
      Begin
        TBlobField(cls.FieldByName('clscolunas')).SaveToStream(AStream);
        AStream.Position := 0;
        If AStream <> Nil Then
        Begin
          self.DBGLista.Columns.LoadFromStream(AStream);
        End;
      End;
    Finally
      AStream.Free;
    End;
  End
  Else
  Begin
    // se não houve seleção de coluna, coloca a 2 coluna como default

    uqtabela.IndexFieldNames := DBGLista.DataSource.DataSet.fields[1].FieldName;

    vtitucol := DBGLista.Columns[1].Title.Caption;
    vnomecol := DBGLista.DataSource.DataSet.fields[1].FieldName;
    vtipocol := DBGLista.DataSource.DataSet.fields[1].DataType;

    If (vtipocol = ftstring) Then
    Begin
      vpalavra := self.DSTabela.DataSet.FieldByName(vnomecol).AsString;
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

    DBGLista.Columns[1].Title.Font.Color := clred;
    DBGLista.Columns[1].Title.Font.Style := [fsbold];
    GrBTextoProcurar.Caption := 'Buscar por ' + DBGLista.Columns[1].Title.Caption + ' [+] Muda Ordem ';

    vordem := self.DSTabela.DataSet.fields[1].FieldName;
    xordem := 1;

    self.PlSelecao.Height := vPlselecao;

    vPlRodaPe := 0;
    vPlBotoes := 0;
    vPlselecao := self.PlSelecao.Height;

    AStream := TMemoryStream.Create;
    self.DBGLista.Columns.SaveToStream(AStream);

    cls.Close;
    cls.Connection := self.zcone;
    cls.Params[0].AsString := self.vusrcodigo;
    cls.Params[1].AsString := vnomeform;
    cls.Open;

    cls.Append;
    clsusrcodigo.AsString := self.vusrcodigo;
    clsclsnomeform.AsString := vnomeform;

    self.clsclsaltura.AsInteger := vHeight;
    self.clsclslargura.AsInteger := vWidth;
    self.clsclsposiesquerda.AsInteger := vleft;
    self.clsclspositopo.AsInteger := vtop;

    self.clsclsrodape.AsInteger := vPlRodaPe;

    self.clsclsbotoes.AsInteger := vPlBotoes;
    self.clsclsselecao.AsInteger := vPlselecao;

    self.clsclsmodo.AsInteger := 1;

    clsclscolunas.LoadFromStream(AStream);
    cls.Post;
    //

  End;

  For i := 0 To DBGLista.Columns.Count - 1 Do
  Begin
    If DBGLista.Columns[i].Title.Font.Color = clred Then
    Begin
      uqtabela.IndexFieldNames := DBGLista.Columns[i].FieldName;
      GrBTextoProcurar.Caption := 'Buscar por ' + DBGLista.Columns[i].Title.Caption + ' [+] Muda Ordem ';
      vordem := DBGLista.Columns[i].FieldName;
      DBGLista.SelectedIndex := i;
      xordem := i;
      break;
    End;
  End;

  // carrega filtros

  Atualizar;

  montacolunas;

end;

Procedure Tfbca.montacolunas;
var
  i: Integer;
begin

  dcl.Close;
  dcl.Params[0].AsInteger := clsclscodigo.AsInteger;
  dcl.Params[1].AsString := self.vusrcodigo;
  dcl.Open;

  if dcl.IsEmpty then
  begin
    For i := 0 To DBGLista.Columns.Count - 1 Do
    Begin
      dcl.Append;
      dclclscodigo.AsInteger := clsclscodigo.AsInteger;
      dclclbcodigo.AsString := self.vusrcodigo;
      dcldclvisivel.AsInteger := 1;
      dcldclpesquisavel.AsInteger := 1;
      dcldclpesquisa.AsInteger := 0;
      dcldclnomecampo.AsString := self.DBGLista.Columns[i].FieldName;
      dcldcltitulo.AsString := self.DBGLista.Columns[i].Title.Caption;
      dcl.Post;
    end;
  end
  else
  begin

    For i := 0 To DBGLista.Columns.Count - 1 Do
    Begin
      if dcl.Locate('dclnomecampo', self.DBGLista.Columns[i].FieldName, []) then
      begin
        if dcldclvisivel.AsInteger = 1 then
        begin
          self.DBGLista.Columns[i].Visible := true;
        end
        else
        begin
          self.DBGLista.Columns[i].Visible := false;
        end;
      end;
    End;
  end;
end;

procedure Tfbca.edbuscaEnter(Sender: TObject);
var
  i: Integer;
begin

  if uqtabela.IndexFieldNames <> vnomecol then
  begin

    uqtabela.IndexFieldNames := vnomecol;

    For i := 0 To DBGLista.Columns.Count - 1 Do
    Begin
      If DBGLista.Columns[i].FieldName = uqtabela.IndexFieldNames Then
      Begin
        DBGLista.Columns[i].Title.Font.Color := clred;
        DBGLista.Columns[i].Title.Font.Style := [fsbold];
        if PlFiltros.Visible then
        begin
          GrBTextoProcurar.Caption := 'Buscar por ' + vtitucol + ' [+] Muda Ordem ';
        end;
        xordem := i;
      End
      else
      begin
        DBGLista.Columns[i].Title.Font.Color := clblack;
        DBGLista.Columns[i].Title.Font.Style := [];
      end;
    End;

  end;
  edbusca.SelectAll;

end;

procedure Tfbca.edbuscaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    Key := #0;
    bconfirma.Click;
  End
  else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End

end;

procedure Tfbca.edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  tecla: Word;
  i: Integer;
  rgatu: Integer;
Begin

  tecla := Key;

  If tecla = 40 Then
  Begin
    self.DBGLista.SetFocus;
  End;

  If (Key = 187) Or (Key = 107) Or (Key = 118) Then
  Begin
    If edbusca.Text = '' Then
    Begin

      rgatu := self.uqtabela.fields[0].AsInteger;
    End;
    If (Key = 187) Or (Key = 107) then
    begin
      ajustaordem(Key);
    end;
    If edbusca.Text = '' Then
    Begin
      uqtabela.Locate(self.uqtabela.fields[0].FieldName, rgatu, []);
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
      ajustafiltro;
    End;
  End;
  if (Key = 118) then
  begin
    edbusca.SelectAll;
  end;

end;

procedure Tfbca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  salvacolunas;
  Action := cafree;
end;

procedure Tfbca.FormShow(Sender: TObject);
var
  i: Integer;
begin

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is tuniquery then
    begin
      (self.Components[i] as tuniquery).Connection := self.zcone;
    end;
  end;

  cls.Close;
  cls.Params[0].AsString := vusrcodigo;
  cls.Params[1].AsString := self.Name;
  cls.Open;

  carregacolunas;

  vtitucol := self.DBGLista.Columns[self.DBGLista.SelectedIndex].Title.Caption;
  vnomecol := self.DBGLista.Columns[self.DBGLista.SelectedIndex].FieldName;
  vtipocol := self.DBGLista.Columns[self.DBGLista.SelectedIndex].Field.DataType;

  // chamafiltro('');

end;

Procedure Tfbca.salvacolunas;
Var
  AStream: TMemoryStream;
  VStream: TMemoryStream;

  vAStream: string;
  vVStream: string;

  vsalvar: boolean;

Begin
  vsalvar := false;
  If Not self.uqtabela.IsEmpty Then
  Begin
    self.vchave := self.uqtabela.fields[0].AsString;
  End
  Else
  Begin
    self.vchave := '0';
  End;

  cls.Close;
  cls.Params[0].AsString := vusrcodigo;
  cls.Params[1].AsString := self.Name;
  cls.Open;

  Try
    AStream := TMemoryStream.Create;
    self.DBGLista.Columns.SaveToStream(AStream);
    VStream := TMemoryStream.Create;

    TBlobField(cls.FieldByName('clscolunas')).SaveToStream(VStream);
    VStream.Position := 0;
    AStream.Position := 0;

    vAStream := MemoryStreamToString(AStream);
    vVStream := MemoryStreamToString(VStream);

    If cls.IsEmpty Then
    Begin
      vsalvar := true;
    End
    else
    begin

      if (vAStream <> vVStream) or (self.clsclsaltura.AsInteger <> self.Height) or (self.clsclslargura.AsInteger <> self.Width) or
        (self.clsclsposiesquerda.AsInteger <> self.left) or (self.clsclspositopo.AsInteger <> self.top) or
        (self.clsclsselecao.AsInteger <> self.PlSelecao.Height) then
      begin
        vsalvar := true;
      end;

    end;

    if vsalvar then
    begin

      If cls.IsEmpty Then
      Begin
        cls.Append;
        clsusrcodigo.AsString := self.vusrcodigo;
        clsclsnomeform.AsString := self.Name;
      End
      Else
      Begin
        cls.Edit;
      End;
      self.clsclsposiesquerda.AsInteger := self.left;
      self.clsclspositopo.AsInteger := self.top;
      self.clsclsaltura.AsInteger := self.Height;
      self.clsclslargura.AsInteger := self.Width;
      self.clsclsrodape.AsInteger := 0;
      self.clsclsbotoes.AsInteger := 0;
      self.clsclsselecao.AsInteger := self.PlSelecao.Height;
      self.clsclsmodo.AsInteger := 1;
      clsclscolunas.LoadFromStream(AStream);
      cls.Post;
    end;
  Finally
    AStream.Free;
    VStream.Free;
  End;

End;

Procedure Tfbca.ajustaordem(Key: Integer);
Var
  i, x, p: Integer;
Begin
  If (Key = 187) Or (Key = 107) Or (Key = 118) Then
  Begin

    edbusca.Text := '';
    Key := 0;

    For i := 0 To self.DBGLista.Columns.Count - 1 Do
    Begin

      Try
        If self.DBGLista.Columns[i].FieldName = vordem Then
        Begin

          p := (self.DBGLista.Columns.Count - 1);

          If i = p Then
          Begin

            xordem := -1;

          End;

          while true do
          begin
            xordem := xordem + 1;
            if self.DBGLista.Columns[xordem].Visible then
            begin
              break;
            end;

            If xordem = p Then
            Begin
              xordem := 0;
              break;
            End;

          end;

          vordem := self.DBGLista.Columns[xordem].FieldName;

          vpalavra := self.DSTabela.DataSet.FieldByName(vordem).AsString;

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
          self.edbusca.SetFocus;
          break;
        End;
      Except
      End;
    End;
  End;
End;

procedure Tfbca.Atualizar;
Var
  rgi: string;
  t: string;
  i: Integer;
  vfiltro: string;
Begin

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is tuniquery then
    begin
      (self.Components[i] as tuniquery).Connection := self.zcone;
    end;
  end;

  If uqtabela.Active Then
  Begin
    rgi := self.uqtabela.fields[0].AsString;
  End
  Else
  Begin
    rgi := '';
  End;

  self.uqtabela.Close;

  fil.Close;
  fil.Params[0].AsString := self.clsclscodigo.AsString;
  fil.Params[1].AsString := self.vusrcodigo;
  fil.Open;

  vfiltro := montafiltro;
  if vfiltro <> '' then
  begin
    if pos('where', self.filfilsqloriginal.AsString) = 0 then
    begin
      self.uqtabela.SQL.Text := self.filfilsqloriginal.AsString + ' where ' + vfiltro;
    end
    else
    begin
      self.uqtabela.SQL.Text := self.filfilsqloriginal.AsString + ' and ' + vfiltro;
    end;
  end
  else
  begin
    if self.filfilsqloriginal.AsString <> '' then
    begin
      self.uqtabela.SQL.Text := self.filfilsqloriginal.AsString;
    end;
  end;

  If self.vChaveMestre <> '' Then
  Begin
    If self.uqtabela.Params.Count = 1 Then
    Begin
      self.uqtabela.Params[0].AsString := self.vChaveMestre;
    End;
  End;

  self.uqtabela.Open;
  MostraQuantiRecno;
  if rgi <> '' then
  begin
    self.uqtabela.Locate(uqtabela.fields[0].FieldName, rgi, []);
  end;

  PlSelecao.Visible := true;

end;

procedure Tfbca.BFiltroAlterarClick(Sender: TObject);
begin
  chamafiltro(self.ifiifichave.AsString);

end;

procedure Tfbca.BFiltroExcluirClick(Sender: TObject);
begin

  if ifi.Active then
  begin
    if not ifi.IsEmpty then
    begin
      self.ifi.Delete;
    end;
  end;

  Atualizar;

end;

procedure Tfbca.BFiltroIncluirClick(Sender: TObject);
begin

  { definições de filtros }

  vtitucol := self.DBGLista.Columns[self.DBGLista.SelectedIndex].Title.Caption;
  vnomecol := self.DBGLista.Columns[self.DBGLista.SelectedIndex].FieldName;
  vtipocol := self.DBGLista.Columns[self.DBGLista.SelectedIndex].Field.DataType;

  chamafiltro('');

end;

Procedure Tfbca.ajustafiltro;
Begin

  If edbusca.Text <> '' Then
  Begin
    DSTabela.DataSet.Locate(self.DBGLista.Columns[xordem].FieldName, edbusca.Text, [lopartialkey, loCaseInsensitive]);
  End;

End;

end.
