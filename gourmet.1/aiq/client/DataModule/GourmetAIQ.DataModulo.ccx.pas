unit GourmetAIQ.DataModulo.ccx;

interface

uses
  System.SysUtils,
  System.Classes,
  Vcl.Forms,
  REST.Types,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope;


type
  TDMccx = class(TDataModule)
    RESTClientGourmet: TRESTClient;
    RESTRequestGourmet: TRESTRequest;
    RESTResponseGourmet: TRESTResponse;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMccx: TDMccx;

implementation

uses
  GourmetAIQ.DataModulo.Connection;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMccx.DataModuleCreate(Sender: TObject);
begin

  RESTClientGourmet.BaseURL := GourmetBaseURL;
  RESTRequestGourmet.Resource := '/v1/situacaocaixa';

end;

end.
