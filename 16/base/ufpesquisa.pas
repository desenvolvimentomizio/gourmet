unit ufpesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, DAScript, UniScript, DBAccess;

type
  Tfpesquisa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    texto: TEdit;
    DSTabela: tunidatasource;
    ptexto: TPanel;
    listacampos: TComboBox;
    pbotoes: TPanel;
    psituacao: TPanel;
    bcancela: TBitBtn;
    blocalizar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure blocalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure textoEnter(Sender: TObject);
    procedure listacamposEnter(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcampo:string;
    vpalavra:string;
    vcampos:tstringlist;
  end;

var
  fpesquisa: Tfpesquisa;

implementation

{$R *.dfm}

procedure Tfpesquisa.bcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfpesquisa.blocalizarClick(Sender: TObject);
var
  campo: string;
begin
if ptexto.caption<>'' then
begin
  campo := vcampo;
  self.dstabela.DataSet.Locate(campo, texto.Text, [lopartialkey, loCaseInsensitive]);
  close;
end
else
begin
 //  showmessage('Favor selecionar o campo para pesquisa!');
end;

end;

procedure Tfpesquisa.FormCreate(Sender: TObject);
begin
 vcampos:=tstringlist.create;

end;

procedure Tfpesquisa.FormKeyPress(Sender: TObject; var Key: Char);
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
    close;
  End;
end;

procedure Tfpesquisa.listacamposEnter(Sender: TObject);
begin
 listacampos.DroppedDown:=true;
end;

procedure Tfpesquisa.textoEnter(Sender: TObject);
var
 campo:string;
begin
  campo := vcampos[self.listacampos.ItemIndex];

  vcampo:=campo;

  If (Dstabela.DataSet Is tuniquery) Then
  Begin
    (Dstabela.DataSet As tuniquery).IndexFieldNames := campo;
  End;
  ptexto.Caption := listacampos.text;
end;

end.
