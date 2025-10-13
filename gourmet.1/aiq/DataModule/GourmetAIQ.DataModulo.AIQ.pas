unit GourmetAIQ.DataModulo.AIQ;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Authenticator.OAuth,
  REST.Client, REST.Authenticator.Basic, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Types;

type
  TDMAIQ = class(TDataModule)
    RESTClientAIQ: TRESTClient;
    RESTRequestAIQ: TRESTRequest;
    RESTResponseAIQ: TRESTResponse;
    HTTPBasicAuthenticatorAIQ: THTTPBasicAuthenticator;
    OAuth2AuthenticatorAIQ: TOAuth2Authenticator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAIQ: TDMAIQ;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
