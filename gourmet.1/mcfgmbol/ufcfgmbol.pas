unit ufcfgmbol;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, uPegaBase, System.ImageList;

type
  Tfcfgmbol = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgcarteirapadrao: TIntegerField;
    registrocfgdiretorioboletos: TStringField;
    Label1: TLabel;
    cfgcarteirapadrao: TDBEdit;
    Label2: TLabel;
    cfgdiretorioboletos: TDBEdit;
    car: TUniQuery;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    registrocaridentificacao: TStringField;
    SPSelecionarioDiretorioNFEs: TSpeedButton;
    registrocfglayout: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure SPSelecionarioDiretorioNFEsClick(Sender: TObject);
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
  fcfgmbol: Tfcfgmbol;

  // Início ID do Módulo fracfgmbol
const
  vPlIdMd = '03.06.81.001-00';

  // Fim ID do Módulo fracfgmbol

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfgmbol := Tfcfgmbol.Create(pCargaFrame);
  fcfgmbol.ShowModal;
  fcfgmbol.Free;
end;

exports formulario;

procedure Tfcfgmbol.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  CfgCodigo := StrToInt(vChaveMestre);
  registro.Params[0].AsInteger := CfgCodigo;

  inherited;

  car.Open;
end;

procedure Tfcfgmbol.registroAfterInsert(DataSet: TDataSet);
begin
  registrocfgcodigo.AsInteger := CfgCodigo;
end;

procedure Tfcfgmbol.SPSelecionarioDiretorioNFEsClick(Sender: TObject);
begin
  inherited;
  with TFileOpenDialog.Create(nil) do
    try
      Options := [fdoPickFolders];
      if Execute then
        cfgdiretorioboletos.Field.AsString := FileName;
    finally
      Free;
    end;

end;

end.
