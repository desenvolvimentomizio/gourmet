unit ufbase;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess,     
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg;

type
  Tfbase = class(TForm)
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
    PlRodaPe: TPanel;
    PlBotoes: TPanel;
    ImageLogoBase: TImage;
    PlInfo: TPanel;
    SBBotoes: TScrollBox;
    PlSelecao: TPanel;
    GBPlSelecao: TGroupBox;
    Image1: TImage;
    DBLista: TDBGrid;
    PlBotoesFiltros: TPanel;
    BFiltroIncluir: TBitBtn;
    BFiltroExcluir: TBitBtn;
    BFiltroAlterar: TBitBtn;
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
    DBGLista: TDBGrid;
  private
    Fzcone: tuniconnection;
    procedure carregacolunas;
    { Private declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  public
    { Public declarations }
    vusrcodigo:string;
  end;

var
  fbase: Tfbase;

implementation

{$R *.dfm}

procedure Tfbase.carregacolunas;
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

    self.PlRodaPe.Height := self.clsclsrodape.AsInteger;
    self.PlBotoes.Height := self.clsclsbotoes.AsInteger;
    self.PlSelecao.Height := self.clsclsselecao.AsInteger;

    if (parent is tform) then
    begin
      if (parent as tform).BorderStyle = bsnone then
      begin
        (parent as tform).Height := screen.Height - 250;
        (parent as tform).Width := screen.Width - 10;
        (parent as tform).left := 0;
        (parent as tform).top := 0;
      end
      else
      begin
        (parent as tform).Height := self.clsclsaltura.AsInteger;
        (parent as tform).Width := self.clsclslargura.AsInteger;
        (parent as tform).left := self.clsclsposiesquerda.AsInteger;
        (parent as tform).top := self.clsclspositopo.AsInteger;
        If self.clsclsmodo.AsInteger = 1 Then
        Begin
          (parent as tform).WindowState := wsnormal;
        End
        Else
        Begin
          (parent as tform).WindowState := wsmaximized;
        End;
      end;

    end;

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
    GrBTextoProcurar.Caption := ' Buscar por ' + DBGLista.Columns[1].Title.Caption + ' [+] Muda Ordem ';

    vordem := self.DSTabela.DataSet.fields[1].FieldName;
    xordem := 1;

    self.PlRodaPe.Height := vPlRodaPe;
    self.PlBotoes.Height := vPlBotoes;
    self.PlSelecao.Height := vPlselecao;

    if (parent is tform) then
    begin

      (parent as tform).Height := vHeight;
      (parent as tform).Width := vWidth;
      (parent as tform).left := vleft;
      (parent as tform).top := vtop;

      (parent as tform).WindowState := wsnormal;

    end;

    vPlRodaPe := self.PlRodaPe.Height;
    vPlBotoes := self.PlBotoes.Height;
    vPlselecao := self.PlSelecao.Height;
    //
    // Try

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

    if (parent is tform) then
    begin
      If (parent as tform).WindowState = wsnormal Then
      Begin
        self.clsclsmodo.AsInteger := 1;
      End
      Else
      Begin
        self.clsclsmodo.AsInteger := 2;
      End;
    end
    else
    begin
      self.clsclsmodo.AsInteger := 1;
    end;

    clsclscolunas.LoadFromStream(AStream);
    cls.Post;

    { Finally
      AStream.Free;
      End; }




    //

  End;

  For i := 0 To DBGLista.Columns.Count - 1 Do
  Begin
    If DBGLista.Columns[i].Title.Font.Color = clred Then
    Begin
      uqtabela.IndexFieldNames := DBGLista.Columns[i].FieldName;
      GrBTextoProcurar.Caption := ' Buscar por ' + DBGLista.Columns[i].Title.Caption + ' [+] Muda Ordem ';
      vordem := DBGLista.Columns[i].FieldName;
      DBGLista.SelectedIndex := i;
      xordem := i;
      break;
    End;
  End;

  // carrega filtros

  self.ActAtualizar.Execute;

  If self.titulo <> '' Then
  Begin
    self.ActSair.Enabled := false;
  End;

  montacolunas;

  montamenu;

  If (parent is tform) then
  begin
    If ((parent as tform).BorderStyle = bsnone) Then
    Begin
      (parent as tform).top := 0;
      (parent as tform).left := 0;
    End;
  end;

  If (parent is tform) then
  begin
    If ((parent as tform).BorderStyle = bsnone) And (self.top = 0) Then
    Begin
      // self.PlBotoes.Visible := false;
    End;
  end;
  // mostamenurelat;

  if self.modo = 'Incluindo' then
  begin
    self.ActIncluir.Execute;
  end;

end;


end.
