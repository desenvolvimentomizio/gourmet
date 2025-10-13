unit GourmetAIQ.DataModulo.cfgaiq;

interface

uses
  System.SysUtils,
  System.Classes,
  Vcl.Forms,
  IPPeerClient,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  REST.Response.Adapter,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Types;

type
  TDMcfgaiq = class(TDataModule)
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
  DMcfgaiq: TDMcfgaiq;

implementation

uses
  GourmetAIQ.DataModulo.Connection, uFormGourmetAIQ;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDMcfgaiq.DataModuleCreate(Sender: TObject);
var
  vlUrl: string;
begin

  vlUrl := CarregaIni(extractfilepath(application.exename) + 'gourmeterp.ini');
  RESTClientGourmet.BaseURL := 'http://' + vlUrl ;
  RESTRequestGourmet.Resource:='/v1/cfgaiq';

  FormGourmetAIQ.logs.Lines.Add('linha 57: '+ RESTClientGourmet.BaseURL+'/'+RESTRequestGourmet.Resource);

end;

end.
