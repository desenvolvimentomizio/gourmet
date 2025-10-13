unit ufcfgmcre;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, uPegaBase, System.ImageList;

type
  Tfcfgmcre = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgportadorpadrao: TIntegerField;
    Label1: TLabel;
    cfgportadorpadrao: TDBEdit;
    car: tuniquery;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    registrocaridentificacao: TStringField;
    registrocfgtipodocpadrao: TIntegerField;
    tfi: tuniquery;
    tfitficodigo: TIntegerField;
    tfitfiidentificacao: TStringField;
    Label2: TLabel;
    cfgtipodocpadrao: TDBEdit;
    registrotfiidentificacao: TStringField;
    registrocfgviaassinar: TIntegerField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenassinar: TStringField;
    Label3: TLabel;
    cfgviaassinar: TDBEdit;
    registrocfgcontrolalimite: TIntegerField;
    Label4: TLabel;
    cfgcontrolalimite: TDBEdit;
    registrosencontrolalimite: TStringField;
    registrocfgfiltrarrec: TIntegerField;
    registrosencfgfiltrarrec: TStringField;
    Label5: TLabel;
    cfgfiltrarrec: TDBEdit;
    registrocfgphgpadrao: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    cfgphgpadrao: TDBEdit;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    FCfgCodigo: Integer;
    { Private declarations }

  published
    property CfgCodigo: Integer read FCfgCodigo write FCfgCodigo;

  public
    { Public declarations }
  end;

var
  fcfgmcre: Tfcfgmcre;

  // Início ID do Módulo fracfgment
const
  vPlIdMd = '03.06.81.005-01';
  vPlTitMdl = 'Configurações Contas a Receber';

  // Fim ID do Módulo fracfgment

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfgmcre := Tfcfgmcre.Create(pCargaFrame);
  fcfgmcre.ShowModal;
  fcfgmcre.Free;
end;

exports formulario;

procedure Tfcfgmcre.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  CfgCodigo := StrToInt(vChaveMestre);
  registro.Params[0].AsInteger := CfgCodigo;

  inherited;

  car.Open;
end;

procedure Tfcfgmcre.registroAfterInsert(DataSet: TDataSet);
begin
  registrocfgcodigo.AsInteger := CfgCodigo;
end;

end.

