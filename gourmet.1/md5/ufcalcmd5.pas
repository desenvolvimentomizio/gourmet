unit ufcalcmd5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,IdHashMessageDigest,idHash, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tfcalcmd5 = class(TForm)
    Button1: TButton;
    txtMD5: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    arquivo: TPanel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcalcmd5: Tfcalcmd5;

implementation

{$R *.dfm}


function MD5(const fileName : string) : string;
var
  idmd5 : TIdHashMessageDigest5;
  fs : TFileStream;
begin
  idmd5 := TIdHashMessageDigest5.Create;

  fs := TFileStream.Create(fileName, fmOpenRead OR fmShareDenyWrite) ;
  try
    result := idmd5.HashStreamAsHex(fs);
  finally
    fs.Free;
    idmd5.Free;
  end;
end;

procedure Tfcalcmd5.Button1Click(Sender: TObject);
begin
  txtmd5.Text:=md5(arquivo.Caption);
end;

procedure Tfcalcmd5.Button2Click(Sender: TObject);
begin
OpenDialog1.Execute;
arquivo.Caption:=self.OpenDialog1.FileName;
end;

end.
