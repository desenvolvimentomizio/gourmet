unit GourmetAIQ.DataModulo.PedidoAIQGourmet;

interface

uses
  vcl.forms,
  System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Types;

type
  TDMPedidoAIQGourmet = class(TDataModule)
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
  DMPedidoAIQGourmet: TDMPedidoAIQGourmet;

implementation

uses
  GourmetAIQ.DataModulo.Connection;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDMPedidoAIQGourmet.DataModuleCreate(Sender: TObject);
begin

    RESTClientGourmet.BaseURL := GourmetBaseURL + '/v1/';


end;

end.
