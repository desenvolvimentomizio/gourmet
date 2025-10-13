unit uDMDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageJSON,Data.FireDACJSONReflect, FireDAC.Stan.StorageBin;

type
  TDMDados = class(TDataModule)
    pedidos: TFDMemTable;
    pedidosimmchave: TIntegerField;
    pedidoshorapedido: TStringField;
    pedidospronome: TStringField;
    pedidosclbidentificacao: TStringField;
    pedidospdgnumero: TStringField;
    pedidosmarca: TLargeintField;
    pedidostempo: TStringField;
    pedidosoricodigo: TIntegerField;
    pedidosmitidentificacao: TStringField;
    pedidoscznchave: TIntegerField;
    json: TFDStanStorageJSONLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
  private

    { Private declarations }
  public
    { Public declarations }
    procedure CarregaPedidos;
  end;

var
  DMDados: TDMDados;

implementation

uses
  uClientModule;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


procedure TDMDados.CarregaPedidos;
var
  dpedidos: TFDJsonDataSets;

begin
  dpedidos := ClientModule.ServerMethods1Client.pedidos('');

  if TFDJSONDataSetsReader.GetListCount(dpedidos) = 1 then
  begin
    pedidos.Active := false;
    pedidos.AppendData(TFDJSONDataSetsReader.GetListValue(dpedidos, 0));
  end;
end;


end.
