unit ufprinci;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  DBAccess,       Vcl.OleCtrls, SHDocVw;

type
  Tfprinci = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormShow(Sender: TObject);
  private
    procedure conectabanco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprinci: Tfprinci;

implementation

{$R *.dfm}


Procedure Tfprinci.conectabanco;

Begin

End;


procedure Tfprinci.FormShow(Sender: TObject);
begin
 WebBrowser1.Navigate('http://www.miziosistemas.com.br/pegproj/index.php?logout=-1');

end;

end.
