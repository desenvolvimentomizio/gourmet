unit GourmetAIQ.DataModulo.PedidoAIQ;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  REST.Authenticator.OAuth, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Types, REST.Authenticator.Basic;

type
  TDMPedidoAIQ = class(TDataModule)
    RESTClientAIQ: TRESTClient;
    RESTRequestAIQ: TRESTRequest;
    RESTResponseAIQ: TRESTResponse;
    OAuth2AuthenticatorAIQ: TOAuth2Authenticator;
    HTTPBasicAuthenticatorAIQ: THTTPBasicAuthenticator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPedidoAIQ: TDMPedidoAIQ;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
