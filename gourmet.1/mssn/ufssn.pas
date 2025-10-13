unit ufssn;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfssn = class(Tfrmbase)
    registrossncodigo: TIntegerField;
    registrossnfaturamento: TStringField;
    registrossnaliquota: TFloatField;
    registrossnirpj: TFloatField;
    registrossncsll: TFloatField;
    registrossncofins: TFloatField;
    registrossnpis: TFloatField;
    registrossncpp: TFloatField;
    registrossnicms: TFloatField;
    Label1: TLabel;
    ssncodigo: TDBEdit;
    Label2: TLabel;
    ssnfaturamento: TDBEdit;
    Label3: TLabel;
    ssnaliquota: TDBEdit;
    Label4: TLabel;
    ssnirpj: TDBEdit;
    Label5: TLabel;
    ssncsll: TDBEdit;
    ssncpp: TDBEdit;
    Label8: TLabel;
    ssnpis: TDBEdit;
    Label7: TLabel;
    ssncofins: TDBEdit;
    Label6: TLabel;
    Label9: TLabel;
    ssnicms: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fssn: Tfssn;

  // Início ID do Módulo frassn
const
  vPlIdMd = '03.08.20.006-02';

  // Fim ID do Módulo frassn

implementation

{$R *.dfm}

procedure Tfssn.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
