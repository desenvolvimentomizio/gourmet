unit ufprocessacsm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess,
  Uni, ufuncoes;

type
  Tfprocessacsm = class(TForm)
    Processar: TTimer;
    registro: TUniQuery;
    registromeschave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registromesemissao: TDateField;
    registromesregistro: TDateField;
    registrotdfcodigo: TStringField;
    registrosdecodigo: TStringField;
    registromesserie: TStringField;
    registromesnumero: TIntegerField;
    registromeschavenfe: TStringField;
    registrotoecodigo: TIntegerField;
    registromesvalor: TFloatField;
    registromesdesconto: TFloatField;
    registromestotal: TFloatField;
    registrotfpcodigo: TIntegerField;
    registrorefcodigo: TIntegerField;
    registromesfrete: TFloatField;
    registromesseguro: TFloatField;
    registromesoutras: TFloatField;
    registromesbicm: TFloatField;
    registromesicm: TFloatField;
    registromesbicms: TFloatField;
    registromesicms: TFloatField;
    registromesipi: TFloatField;
    registromespis: TFloatField;
    registromescofins: TFloatField;
    registromespiss: TFloatField;
    registromescofinss: TFloatField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registromesprotocolo: TStringField;
    registrotrfcodigo: TStringField;
    registrotemcodigo: TIntegerField;
    registroedritem: TIntegerField;
    registromesprodutos: TFloatField;
    registromesservicos: TFloatField;
    registrotdecodigo: TIntegerField;
    cfg: TUniQuery;
    cfgufssigla: TStringField;
    cfgetddoc1: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgnumecertif: TStringField;
    cfgcfgtoeconsumointerno: TIntegerField;
    consulta: TUniQuery;
    itm: TUniQuery;
    itmprocodigo: TIntegerField;
    itmitmquantidade: TFloatField;
    pco: TUniQuery;
    pcopcocodigo: TIntegerField;
    pcoprocodigo: TIntegerField;
    pcopcosubproduto: TIntegerField;
    pcounicodigo: TIntegerField;
    pcopcoquantidade: TFloatField;
    itmpco: TUniQuery;
    itmpcoitmchave: TIntegerField;
    itmpcomeschave: TIntegerField;
    itmpcoitmitem: TIntegerField;
    itmpcotoecodigo: TIntegerField;
    itmpcoprocodigo: TIntegerField;
    itmpcocfocfop: TStringField;
    itmpcocstcodigo: TStringField;
    itmpcopuncodigo: TIntegerField;
    itmpcoitmquantidade: TFloatField;
    itmpcoitmvalor: TFloatField;
    itmpcoitmtotal: TFloatField;
    itmpcoitmdesconto: TFloatField;
    itmpcoitmfrete: TFloatField;
    itmpcoitmseguro: TFloatField;
    itmpcoitmoutras: TFloatField;
    itmpcoitmtotalgeral: TFloatField;
    itmpcoitmbicm: TFloatField;
    itmpcoicmcodigo: TStringField;
    itmpcoitmicm: TFloatField;
    itmpcoitmbicms: TFloatField;
    itmpcoitmaliqicms: TFloatField;
    itmpcoitmicms: TFloatField;
    itmpcoitmaliqipi: TFloatField;
    itmpcoitmipi: TFloatField;
    itmpcoitmapuipi: TStringField;
    itmpcocsicodigo: TStringField;
    itmpcounicodigo: TIntegerField;
    itmpcoitmmovifisico: TStringField;
    itmpcoitmaliqicm: TStringField;
    itmpcoitmdesccomple: TStringField;
    itmpcoceicodigo: TStringField;
    itmpcoitmbipi: TFloatField;
    itmpcocspcodigo: TStringField;
    itmpcoitmpis: TFloatField;
    itmpcoitmbpis: TFloatField;
    itmpcoitmaliqpis: TFloatField;
    itmpcoitmquantpis: TFloatField;
    itmpcoitmaliqpisvalor: TFloatField;
    itmpcocsfcodigo: TStringField;
    itmpcoitmbcofins: TFloatField;
    itmpcoitmaliqcofins: TFloatField;
    itmpcoitmquantcofins: TFloatField;
    itmpcoitmaliqcofinsvalor: TFloatField;
    itmpcoitmcofins: TFloatField;
    itmpcopcccodigo: TStringField;
    itmpcounicodigobase: TIntegerField;
    itmpcocfocfopdestinacao: TStringField;
    itmpcoitmcontendo: TFloatField;
    pun: TUniQuery;
    punpuncodigo: TIntegerField;
    punpunidentificacao: TStringField;
    punprocodigo: TIntegerField;
    pununicodigo: TIntegerField;
    puntuncodigo: TIntegerField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    punpunmultiplicador: TFloatField;
    toe: TUniQuery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    toetoecfopsaida: TStringField;
    toettocodigo: TIntegerField;
    Panel1: TPanel;
    cfgcfgcompro: TIntegerField;
    cfgcstcodigo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure ProcessarTimer(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure itmpcoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    Fzcone: TUniConnection;
    procedure Setzcone(const Value: TUniConnection);
    procedure IncluirRegistros;
  public
    { Public declarations }
  published
    property zcone: TUniConnection read Fzcone write Setzcone;
  end;

var
  fprocessacsm: Tfprocessacsm;

implementation

{$R *.dfm}

function ProcessaConsumoInterno(pAOwner: TApplication; pConexao: TUniConnection): Integer;
begin
  Result := 0;
  fprocessacsm := Tfprocessacsm.Create(pAOwner);
  try
    fprocessacsm.zcone := pConexao;
    fprocessacsm.ShowModal;
  finally
    fprocessacsm.Free;
  end;
end;

exports ProcessaConsumoInterno;

procedure Tfprocessacsm.Setzcone(const Value: TUniConnection);
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

procedure Tfprocessacsm.FormShow(Sender: TObject);
begin
  Processar.Enabled := true;

end;

procedure Tfprocessacsm.ProcessarTimer(Sender: TObject);
begin
  Processar.Enabled := false;
  Setzcone(zcone);

  IncluirRegistros;
  close;
end;

procedure Tfprocessacsm.IncluirRegistros;
begin
  cfg.Connection := zcone;
  cfg.Open;

  IF cfgcfgcompro.AsInteger = 0 THEN
    exit;

  if cfgcfgtoeconsumointerno.AsInteger = 0 then
    exit;

  if not registro.Active then
    registro.Open;

  consulta.close;
  consulta.Connection := zcone;
  consulta.SQL.Text := 'delete from mes where temcodigo=3 and toecodigo=' + cfgcfgtoeconsumointerno.AsString + ' and etdcodigo=' + cfgcfgetdempresa.AsString + ' and mesemissao=' +
    QuotedStr(ajustadata(DatetoStr(date)));
  consulta.ExecSQL;

  registro.Append;
  registro.Post;

  itm.close;
  itm.ParamByName('mesemissao').AsDate := StrtoDate(hoje(application, zcone));
  itm.Open;

  itmpco.close;
  itmpco.ParamByName('meschave').AsInteger := registromeschave.AsInteger;
  itmpco.Open;

  while not itm.Eof do
  begin
    pco.close;
    pco.ParamByName('procodigo').AsInteger := itmprocodigo.AsInteger;
    pco.Open;

    while not pco.Eof do
    begin

      itmpco.Append;
      itmpcoprocodigo.AsInteger := pcopcosubproduto.AsInteger;
      itmpcoitmquantidade.AsFloat := itmitmquantidade.AsFloat * pcopcoquantidade.AsFloat;
      itmpcounicodigo.AsInteger := pcounicodigo.AsInteger;
      itmpcounicodigobase.AsInteger := pcounicodigo.AsInteger;
      itmpco.Post;

      pco.Next;
    end;

    itm.Next;
  end;

end;

procedure Tfprocessacsm.itmpcoAfterInsert(DataSet: TDataSet);
begin
  toe.Connection := zcone;
  pun.Connection := zcone;

  toe.Open;
  pun.Open;

  consulta.close;
  consulta.SQL.Text := 'select toecodigo from mes where meschave=' + registromeschave.AsString;
  consulta.Open;

  itmpcotoecodigo.AsString := Self.consulta.Fields[0].AsString;

  toe.Locate('toecodigo', registrotoecodigo.AsInteger, []);

  itmpcocfocfop.AsString := toetoecfopsaida.AsString;
  itmpcocfocfopdestinacao.AsString := toetoecfopsaida.AsString;

  consulta.close;
  consulta.SQL.Text := 'select count(itmchave) from itm where meschave=' + registromeschave.AsString;
  consulta.Open;

  itmpcoitmitem.AsInteger := Self.consulta.Fields[0].AsInteger + 1;

  itmpcoitmmovifisico.AsInteger := 1;
  itmpcoitmaliqicms.AsFloat := 0;
  itmpcoitmicms.AsFloat := 0;
  itmpcoitmaliqipi.AsFloat := 0;
  itmpcoitmipi.AsFloat := 0;
  itmpcoitmdesconto.AsFloat := 0;
  itmpcoitmbicm.AsFloat := 0;
  itmpcoitmbicms.AsFloat := 0;

  cfg.close;
  cfg.Connection := Self.zcone;
  // cfg.ParamByName('flacodigo').AsInteger := 1;
  cfg.Open;

  itmpcocstcodigo.AsString := cfgcstcodigo.AsString;
  itmpcocsfcodigo.AsString := '99';
  itmpcocspcodigo.AsString := '99';
  itmpcocsicodigo.AsString := '99';
  itmpcopcccodigo.AsString := '1.01.03.01.01';

  itmpcoicmcodigo.AsString := '01';
  itmpcoitmbicm.AsFloat := 0;
  itmpcoitmicm.AsFloat := 0;
  itmpcoitmbicms.AsFloat := 0;
  itmpcoitmaliqicms.AsFloat := 0;
  itmpcoitmicms.AsFloat := 0;
  itmpcoitmaliqipi.AsFloat := 0;
  itmpcoitmipi.AsFloat := 0;
  itmpcoitmfrete.AsFloat := 0;
  itmpcoitmseguro.AsFloat := 0;
  itmpcoitmoutras.AsFloat := 0;
  itmpcoitmcontendo.AsFloat := 1;

  consulta.close;
  consulta.SQL.Text := 'select puncodigo from pun where procodigo=' + pcoprocodigo.AsString + ' and unicodigo=' + pcounicodigo.AsString;
  consulta.Open;

  itmpcopuncodigo.AsInteger := consulta.FieldByName('puncodigo').AsInteger;
  itmpcoitmvalor.AsCurrency := 0;
  itmpcoitmtotal.AsCurrency := 0;
  itmpcomeschave.AsString := registromeschave.AsString;

end;

procedure Tfprocessacsm.registroAfterInsert(DataSet: TDataSet);
begin
  registrosdecodigo.AsString := '00';
  registromesvalor.AsFloat := 0;
  registromesdesconto.AsFloat := 0;
  registromestotal.AsFloat := 0;
  registromesprodutos.AsFloat := 0;
  registromesservicos.AsFloat := 0;
  registromesfrete.AsFloat := 0;
  registromesseguro.AsFloat := 0;
  registromesoutras.AsFloat := 0;
  registromesbicm.AsFloat := 0;
  registromesicm.AsFloat := 0;
  registromesbicms.AsFloat := 0;
  registromesicms.AsFloat := 0;
  registromesipi.AsFloat := 0;
  registromespis.AsFloat := 0;
  registromescofins.AsFloat := 0;
  registromespiss.AsFloat := 0;
  registromescofinss.AsFloat := 0;
  registrorefcodigo.AsInteger := 1;
  registrotfpcodigo.AsInteger := 0;
  registroclbcodigo.AsInteger := 1;
  registrotrmcodigo.AsInteger := 1;
  registromesregistro.AsFloat := date;
  registrotemcodigo.AsInteger := 3;
  registrotrfcodigo.AsInteger := 0;
  registromeschavenfe.AsString := '0';
  registrotdfcodigo.AsString := 'CI';
  registromesnumero.AsInteger := 0;
  registroetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
  registrotoecodigo.AsInteger := cfgcfgtoeconsumointerno.AsInteger;
  registromesregistro.AsString := hoje(application, zcone);
  registromesemissao.AsString := hoje(application, zcone);

end;

end.
