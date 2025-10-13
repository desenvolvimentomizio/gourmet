unit ulexp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
     Vcl.Buttons, ZStoredProcedure;

type
  Tlexp = class(Tlfrmbase)
    Dexdisp: tunidatasource;
    Bevel1: TBevel;
    Label1: TLabel;
    expchave: TDBEdit;
    procodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    expdtinicial: TDBEdit;
    Label4: TLabel;
    expdtfinal: TDBEdit;
    bvisualizar: TButton;
    registro: tuniquery;
    registroexpchave: TIntegerField;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registroclbcodigo: TIntegerField;
    registroexpdtinicial: TDateField;
    registroexpdtfinal: TDateField;
    DSRegistro: tunidatasource;
    listaDisp: TDBGrid;
    pro: tuniquery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    expdisp: tuniquery;
    expdispeprcodigo: TIntegerField;
    expdispprocodigo: TIntegerField;
    expdispetdcodigo: TIntegerField;
    expdispeprdata: TDateField;
    expdispeprorigem: TStringField;
    expdispeprchavedoc: TIntegerField;
    expdispeprtipodoc: TStringField;
    expdispeprnumero: TStringField;
    expdispunicodigo: TIntegerField;
    expdispeprquanti: TFloatField;
    expdispepracumulado: TFloatField;
    expdispeprmultiplicador: TFloatField;
    expdisptmecodigo: TIntegerField;
    expdispttecodigo: TIntegerField;
    expdispestoque: TStringField;
    procedure bvisualizarClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    Fzcone: tuniconnection;

  public
    { Public declarations }
    vChaveMestre: string;
    vusrcodigo: string;
    vchave: string;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  end;

var
  lexp: Tlexp;

constvplidmd='01.01.05.008-02';implementation

{$R *.dfm}

function formulario(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vchave: string; 
vChaveMestre: string): string;
var
  I: integer;
begin
  try
    lexp := Tlexp.Create(AOwner);
    lexp.zcone := conexao;

    For I := 0 To lexp.ComponentCount - 1 Do
    Begin
      If (lexp.Components[I] Is tuniquery) Then
      Begin
        (lexp.Components[I] As tuniquery).Connection := lexp.zcone;
      End;
    End;

    lexp.registro.Close;

    lexp.registro.Params[0].AsString := vchave;
    lexp.registro.Open;
    if lexp.registro.RecordCount = 0 then
    begin
      lexp.registro.Append;
    end
    else
    begin
      lexp.registro.Edit;
    end;

    lexp.vChaveMestre := vChaveMestre;
    lexp.vusrcodigo := vusuario;
    lexp.vchave := vchave;
    lexp.ShowModal;

  finally
    freeandnil(lexp);
  end;
end;

exports formulario;

procedure Tlexp.bconfirmaClick(Sender: TObject);
begin
  expdisp.Close;
  { inherited; }
  Close;
end;

procedure Tlexp.bvisualizarClick(Sender: TObject);
begin
  if registro.State <> dsbrowse then
  begin
    registro.post;
  end;

  expdisp.Close;
  expdisp.ParamByName('produto').Value := self.registroprocodigo.AsInteger;;
  expdisp.ParamByName('dtinicial').Value := self.registroexpdtinicial.AsFloat;
  expdisp.ParamByName('dtfinal').Value := self.registroexpdtfinal.AsFloat;
  expdisp.Open;

end;

procedure Tlexp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Sender is TDBEdit) then
  begin
    if (Sender as TDBEdit).Field.DataType = ftFloat then
    begin
      If Key = '.' Then
      Begin
        Key := #0;
      End;
    end;
  end;

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
    bcancela.Click;
  End;

end;

procedure Tlexp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroclbcodigo.AsString := self.vusrcodigo;
  self.registroexpdtinicial.AsFloat := date - 30;
  self.registroexpdtfinal.AsFloat := date;
  self.registroprocodigo.AsString := self.vChaveMestre;
end;

end.
