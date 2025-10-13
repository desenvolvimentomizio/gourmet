unit ufcfgctbrcto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList, PngImageList;

type
  Tfcfgctbrcto = class(Tfrmbase)
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrocfgcodigo: TIntegerField;
    registrocfgctbpcgrctodesc: TIntegerField;
    registrocfgctbpcgrctomulta: TIntegerField;
    registrocfgctbpcgrctojuros: TIntegerField;
    Label16: TLabel;
    cfgctbpcgrctodesc: TDBEdit;
    Label17: TLabel;
    cfgctbpcgrctomulta: TDBEdit;
    Label18: TLabel;
    cfgctbpcgrctojuros: TDBEdit;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgcfgctbpcgrctodesc: TStringField;
    registroccgcfgctbpcgrctomulta: TStringField;
    registroccgcfgctbpcgrctojuros: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgctbrcto: Tfcfgctbrcto;

  // Início ID do Módulo fcfgctbrcto
const
  vPlIdMd = '03.10.81.001-06';


implementation

{$R *.dfm}

procedure Tfcfgctbrcto.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

end.
