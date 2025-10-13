unit ufListaItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfListaItens = class(TForm)
    plRodaPe: TPanel;
    Panel9: TPanel;
    BtnConfirmar: TButton;
    bcancela: TButton;
    Dlito: TDataSource;
    lista: TDBGrid;
    procedure bcancelaClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaItens: TfListaItens;

implementation

uses
  uFprinciEnt;

{$R *.dfm}

procedure TfListaItens.bcancelaClick(Sender: TObject);
begin
modalresult:=mrcancel;
end;

procedure TfListaItens.BtnConfirmarClick(Sender: TObject);
begin
modalresult:=mrok;
end;

end.
