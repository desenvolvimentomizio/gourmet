unit ufmostraimp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls, frxClass;

type
  Tfmostraimp = class(TForm)
    nmostra: TProgressBar;
    plmensagem: TPanel;
    bcancelar: TSpeedButton;
    textoimpresso: TMemo;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmostraimp: Tfmostraimp;

implementation

{$R *.dfm}

procedure Tfmostraimp.bcancelarClick(Sender: TObject);
begin
bcancelar.Down:=true;
bcancelar.Enabled:=false;

end;

procedure Tfmostraimp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
