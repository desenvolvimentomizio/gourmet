unit ufpesqesp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess,     
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfpesqesp = class(TForm)
    dcl: tuniquery;
    RGCampos: TRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    txtPesquisa: TEdit;
    consulta: tuniquery;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure txtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RGCamposClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vchave: string;
  end;

var
  fpesqesp: Tfpesqesp;

implementation

{$R *.dfm}

procedure Tfpesqesp.FormKeyPress(Sender: TObject; var Key: Char);
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
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);

  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    modalresult := mrcancel;
  End;

end;

procedure Tfpesqesp.FormShow(Sender: TObject);
var
  vcamposelect: string;
  i: integer;
begin
  self.dcl.First;
  while not self.dcl.Eof do
  begin
    if self.dcl.Fields[5].AsInteger = 1 then
    begin
      vcamposelect := self.dcl.Fields[7].AsString;
      break;
    end;
    self.dcl.Next;
  end;

  for i := 0 to self.RGCampos.Items.Count - 1 do
  begin
    if self.RGCampos.Items[i] = vcamposelect then
    begin
      self.RGCampos.ItemIndex := i;
      break;
    end;
  end;

end;

procedure Tfpesqesp.RGCamposClick(Sender: TObject);
begin
self.txtPesquisa.SetFocus;
end;

procedure Tfpesqesp.txtPesquisaKeyPress(Sender: TObject; var Key: Char);
var
  i: integer;
  vcampochave: string;
begin

  If Key = #13 Then
  Begin
    Key := #0;
    self.dcl.First;
    vcampochave := self.dcl.Fields[6].AsString;
    while not self.dcl.Eof do
    begin
      self.dcl.Edit;
      self.dcl.Fields[5].AsInteger := 0;
      self.dcl.Post;

      self.dcl.Next;
    end;

    { for i := 0 to self.RGCampos.Items.Count - 1 do
      begin }

    if self.dcl.Locate('dcltitulo', RGCampos.Items[RGCampos.ItemIndex], []) then

    begin
      self.dcl.Edit;
      self.dcl.Fields[5].AsInteger := 1;
      self.dcl.Post;

      consulta.Close;
      consulta.SQL.Text := 'select ' + vcampochave + ' from ' + copy(vcampochave, 1, 3) + ' where upper(' + self.dcl.Fields[6]
        .AsString + ')=' + chr(39) + uppercase(self.txtPesquisa.Text) + chr(39);
      consulta.Open;
      if consulta.RecordCount = 1 then
      begin
        vchave := self.consulta.Fields[0].AsString;
        modalresult := mrok;

      end
      else
      begin
        vchave := '';
        modalresult := mrcancel;

      end;

    end;

    { end; }
  End;
  If Key = #27 Then
  Begin
    Key := #0;

    vchave := '';
    modalresult := mrcancel;

  End;
end;

end.
