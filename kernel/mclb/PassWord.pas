unit PASSWORD;

interface

uses midaslib,Winapi.Windows, System.SysUtils, System.Classes, Inifiles, Vcl.Graphics,
  Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Dialogs;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    PASSWORD: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}



procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
        modalresult:=mrcancel;

end;


procedure TPasswordDlg.OKBtnClick(Sender: TObject);
begin
  if PASSWORD.Text <> 'Peg973sus' then
  begin
    ShowMessage('Chave incorreta');
        modalresult:=mrcancel;
  end
  else
  modalresult:=mrok;

end;

end.
