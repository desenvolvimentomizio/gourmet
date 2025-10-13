unit ufcfgctbsrv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList, PngImageList;

type
  Tfcfgctbsrv = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgctbpcgsrvdesccom: TIntegerField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    Label33: TLabel;
    cfgctbpcgsrvdesccom: TDBEdit;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgcfgctbpcgsrvdesccom: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgctbsrv: Tfcfgctbsrv;


  // Início ID do Módulo fcfgctbsrv
const
  vPlIdMd = '03.10.81.001-04';

implementation

{$R *.dfm}

procedure Tfcfgctbsrv.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

end.
