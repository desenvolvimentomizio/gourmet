unit ufprinciTablet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, Vcl.ExtCtrls, Inifiles;

type
  TfPrinciTablet = class(TForm)
    Navegador: TWebBrowser;
    plTopo: TPanel;
    btFechar: TButton;
    btAtualizar: TButton;
    plTablet: TPanel;
    procedure btFecharClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpUrl: string;
  end;

var
  fPrinciTablet: TfPrinciTablet;

implementation

{$R *.dfm}

procedure TfPrinciTablet.btAtualizarClick(Sender: TObject);
begin
  Navegador.Refresh;
end;

procedure TfPrinciTablet.btFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfPrinciTablet.FormCreate(Sender: TObject);
var
  arquini: TIniFile;
begin
  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vpUrl := ReadString('gourmet', 'url', '');
  End;
  arquini.Free;

  if vpUrl <> '' then
    Navegador.Navigate(vpUrl)
  else
  begin
    showmessage('Configure a URL no arquivo ini do Pégasus!');
    Application.Terminate;
  end;

end;

end.
