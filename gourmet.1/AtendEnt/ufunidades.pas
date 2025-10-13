unit ufunidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfunidades = class(TForm)
    plRodaPe: TPanel;
    Panel9: TPanel;
    BtnConfirmar: TButton;
    bcancela: TButton;
    PnSabores: TPanel;
    Label2: TLabel;
    IImagem: TImage;
    itounidades: TDBEdit;
    Dito: TDataSource;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  funidades: Tfunidades;

implementation

uses
  uFprinciEnt;

{$R *.dfm}

procedure Tfunidades.BtnConfirmarClick(Sender: TObject);
begin
if Dito.State<>dsbrowse then
Dito.DataSet.Post;
modalresult:=mrok;
end;

procedure Tfunidades.bcancelaClick(Sender: TObject);
begin
if Dito.State<>dsbrowse then
Dito.DataSet.cancel;
modalresult:=mrcancel;

end;

procedure Tfunidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Sender is TDBEdit) then
    if (Sender as TDBEdit).Field.DataType in [ftfloat, ftCurrency] then
    begin
      if not(Key in [#0, #13, #27, #8, #3, #$16, ',', '0' .. '9']) then
      begin
        Key := #0;
        Exit;
      end;
      If (Key = ',') Then
      begin
        if (Pos(',', (Sender as TDBEdit).Text) = 0) then
        begin
          Key := #0;
          Key := ',';
        end
        else
        begin
          Key := #0;
        end;
      end;
    end;

  If Key = ';' Then
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
    if bcancela.Visible then
    begin
      bcancela.SetFocus;
      Key := #0;
      bcancela.Click;
    end;
  End;
end;

end.
