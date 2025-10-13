unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Response.Adapter,REST.Types,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client, IPPeerClient,System.JSON,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure UploadtoDriveMyGolden2File;
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
UploadtoDriveMyGolden2File;
end;

procedure TForm1.UploadtoDriveMyGolden2File;
var
 upload_stream:TFileStream;
 local_filename : string;
 ttt: TJSONObject;
begin
{$IF DEFINED(MsWindows)}
  local_filename :=  'c:\mizio\pega.exe' ;
{$ENDIF}
RESTResponseDataSetAdapter1.AutoUpdate := false;
RESTRequest1.Params.Clear;
RESTRequest1.ClearBody;
RESTRequest1.Method:=rmpost;
RESTClient1.BaseURL :=     'https://www.googleapis.com/upload/drive/v2/files?uploadType=multipart';
  upload_stream := TFileStream.Create(local_filename,fmOpenRead);
  upload_stream.Position := 0;

  //Here I'm Trying to change title of uploaded file, but its doesnt work
  //ttt:= TJSONObject.create;
  //ttt.AddPair(TJSONPair.Create('Title', 'MyFile'));
  //form2.RESTRequest1.AddBody(ttt);
  //form2.RESTRequest1.AddParameter('Title','MyFile',TRESTRequestParameterKind.pkREQUESTBODY);

RESTRequest1.AddBody(upload_stream,  TRESTContentType.ctAPPLICATION_OCTET_STREAM);
try
RESTRequest1.Execute;
except
on e: Exception do
begin
  ShowMessage(e.Message);
   end;
   end;
  upload_stream.Free;
 //ttt.Free;
   end;

end.
