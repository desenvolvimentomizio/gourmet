unit ufprinci;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}





procedure TForm1.Button1Click(Sender: TObject);
begin

{idSMTP1 configurações:
----------------------
AuthType--: atDefault
Host------: smtp.live.com
IOHandler-: IdSSLIOHandlerSocketOpenSSL1
Port------: 587
Password--: 123456
Username--: meuemail@hotmail.com
-------------------------------------------------


IdSSLIOHandlerSocketOpenSSL1 configurações:
-------------------------------------------
Destination-: smtp.live.com:587
Host--------: smtp.live.com
Port--------: 587
-------------------------------------------------}

IdSMTP1.AuthType:= satDefault;
IdSMTP1.Host:='smtp.srs.terra.com.br';
IdSMTP1.Port:=587;
IdSMTP1.Password:='sorriso';
IdSMTP1.Username:='papelariaconfianca@terra.com.br';


IdSSLIOHandlerSocketOpenSSL1.Destination:='smtp.srs.terra.com.br:587';
IdSSLIOHandlerSocketOpenSSL1.Host:='smtp.srs.terra.com.br';
IdSSLIOHandlerSocketOpenSSL1.Port:=587;

IdSMTP1.Connect;
if IdSMTP1.Connected then
begin
  Button2.Enabled:=true;
end;

end;

end.
