unit ufimendes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uni, Data.DB, MemDS, DBAccess,
  IPPeerClient, REST.Client, REST.Authenticator.Basic, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.StdCtrls;

type
  Tfimendes = class(TForm)
    cfg: TUniQuery;
    cfgcfgdtinictb: TDateField;
    cfgcfgdtfinctb: TDateField;
    cfgcfgdatapadrao: TDateField;
    cfgetddoc1: TStringField;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    ime: TUniQuery;
    imeimecodigo: TStringField;
    imeimeean: TStringField;
    imeimencm: TStringField;
    imeimecest: TStringField;
    imeimelista: TStringField;
    imeimetipo: TStringField;
    imeimecodano: TStringField;
    imeimepccstent: TStringField;
    imeimepccstsai: TStringField;
    imeimepcaliqpis: TFloatField;
    imeimepcaliqcofins: TFloatField;
    imeimepcnri: TStringField;
    imeimeipicstent: TStringField;
    imeimeipicstsai: TStringField;
    imeimeipialiq: TFloatField;
    imeimeipicodenq: TStringField;
    imeimeipiex: TStringField;
    rme: TUniQuery;
    rmeimecodigo: TStringField;
    rmermeuf: TStringField;
    rmermepicmspdv: TFloatField;
    rmermesimbpdv: TStringField;
    rmermecst: TStringField;
    rmermecsosn: TStringField;
    rmermealiqicms: TFloatField;
    rmermereducaobcicms: TFloatField;
    rmermereducaobcicmsst: TFloatField;
    rmermealiqicmsst: TFloatField;
    rmermeiva: TFloatField;
    rmermefcp: TFloatField;
    rmermecodbenef: TStringField;
    rmermepdifer: TFloatField;
    rmermeantecipado: TStringField;
    rmermecfopcompra: TStringField;
    rmermecfopvenda: TStringField;
    rmermedesonerado: TStringField;
    rmermeicmsdeson: TFloatField;
    rmermeicmsdesoncodbenef: TStringField;
    rmermeexcecao: TStringField;
    pun: TUniQuery;
    Button1: TButton;
  private
    { Private declarations }
    Fzcone: TUniConnection;
    procedure Setzcone(const Value: TUniConnection);
    procedure enviarprodutos;
  public
    { Public declarations }
  published
    property zcone: TUniConnection read Fzcone write Setzcone;
  end;

var
  fimendes: Tfimendes;

implementation

{$R *.dfm}

//  http://consultatributos.com.br:8080/api/v1/public/EnviaRecebeDados

{
Url do serviço: http://consultatributos.com.br:8080/api/v1/public/RegrasFiscais
Login: CNPJ do parceiro
Senha: Senha do parceiro
Content-type: application/json

}


procedure Tfimendes.enviarprodutos;
begin


end;


procedure Tfimendes.Setzcone(const Value: TUniConnection);
var
  I: Integer;
begin
  Fzcone := Value;

  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TUniQuery then
      TUniQuery(Self.Components[I]).Connection := zcone;

  (* Carrega as configurações *)
  if not cfg.Active then
    cfg.Open;



end;



end.
