unit GourmetAIQ.DataModulo.grp;

interface

uses
  System.Classes,
  REST.Types,
  REST.Client,
  System.SysUtils,
  Vcl.Forms,
  Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TDMgrp = class(TDataModule)
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
  DMgrp: TDMgrp;

implementation

uses
  GourmetAIQ.DataModulo.Connection;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDMgrp.DataModuleCreate(Sender: TObject);
var
  vlUrl: string;
begin

  vlUrl := CarregaIni(extractfilepath(application.exename) + 'gourmeterp.ini');
  RESTClientGourmet.BaseURL := 'http://' + vlUrl;
  RESTRequestGourmet.Resource := '/v1/grp';

end;

end.
