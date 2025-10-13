unit ufcfgctbpgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList, PngImageList;

type
  Tfcfgctbpgto = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgctbpcgpgtodesc: TIntegerField;
    registrocfgctbpcgpgtomulta: TIntegerField;
    registrocfgctbpcgpgtojuros: TIntegerField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    Label13: TLabel;
    cfgctbpcgpgtodesc: TDBEdit;
    Label14: TLabel;
    cfgctbpcgpgtomulta: TDBEdit;
    Label15: TLabel;
    cfgctbpcgpgtojuros: TDBEdit;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgcfgctbpcgpgtodesc: TStringField;
    registroccgcfgctbpcgpgtomulta: TStringField;
    registroccgcfgctbpcgpgtojuros: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgctbpgto: Tfcfgctbpgto;

  // Início ID do Módulo fcfgctbpgto
const
  vPlIdMd = '03.10.81.001-05';



implementation

{$R *.dfm}

procedure Tfcfgctbpgto.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

end.
