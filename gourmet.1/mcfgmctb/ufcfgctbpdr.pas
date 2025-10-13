unit ufcfgctbpdr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList,
  System.ImageList;

type
  Tfcfgctbpdr = class(Tfrmbase)
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrocfgcodigo: TIntegerField;
    registrocfgctbcli: TIntegerField;
    registrocfgctbfor: TIntegerField;
    registrocfgctbpcgrectaprodu: TIntegerField;
    registrocfgctbpcgrectamerca: TIntegerField;
    registrocfgctbpcgrectaservi: TIntegerField;
    Label28: TLabel;
    cfgctbpcgrectaprodu: TDBEdit;
    cfgctbpcgrectamerca: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    cfgctbpcgrectaservi: TDBEdit;
    registrocfgctbclb: TIntegerField;
    registrocfgctbtrn: TIntegerField;
    registrocfgctbpcgcartao: TIntegerField;
    registrocfgctbpcgcheque: TIntegerField;
    registrocfgctbpcgconvenio: TIntegerField;
    registrocfgctbpcgchequedevol: TIntegerField;
    Label4: TLabel;
    cfgctbpcgconvenio: TDBEdit;
    Label6: TLabel;
    cfgctbpcgcheque: TDBEdit;
    cfgctbpcgcartao: TDBEdit;
    Label7: TLabel;
    cfgctbpcgchequedevol: TDBEdit;
    Label8: TLabel;
    registroctbpcgrectaproduap: TIntegerField;
    registrocfgctbpcgrectamercaap: TIntegerField;
    registrocfgctbpcgrectaserviap: TIntegerField;
    registrocfgctbpcgdevolmerca: TIntegerField;
    registrocfgctbpcgdevolmercaap: TIntegerField;
    Label9: TLabel;
    ctbpcgrectaproduap: TDBEdit;
    Label10: TLabel;
    cfgctbpcgrectamercaap: TDBEdit;
    Label11: TLabel;
    cfgctbpcgrectaserviap: TDBEdit;
    Label12: TLabel;
    cfgctbpcgdevolmerca: TDBEdit;
    Label13: TLabel;
    cfgctbpcgdevolmercaap: TDBEdit;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgcfgctbcli: TStringField;
    registroccgcfgctbfor: TStringField;
    registroccgcfgctbpcgrectaprodu: TStringField;
    registroccgcfgctbpcgrectamerca: TStringField;
    registroccgcfgctbpcgrectaservi: TStringField;
    registroccgcfgctbclb: TStringField;
    registroccgcfgctbtrn: TStringField;
    registroccgcfgctbpcgcartao: TStringField;
    registroccgcfgctbpcgcheque: TStringField;
    registroccgcfgctbpcgconvenio: TStringField;
    registroccgcfgctbpcgchequedevol: TStringField;
    registroccgctbpcgrectaproduap: TStringField;
    registroccgcfgctbpcgrectamercaap: TStringField;
    registroccgcfgctbpcgrectaserviap: TStringField;
    registroccgcfgctbpcgdevolmerca: TStringField;
    registroccgcfgctbpcgdevolmercaap: TStringField;
    registrocfgctbpcgcartaod: TIntegerField;
    registroccgcfgctbpcgcartaod: TStringField;
    Label1: TLabel;
    cfgctbpcgcartaod: TDBEdit;
    registrocfgctbpcgafaturar: TIntegerField;
    registroccgcfgctbpcgafaturar: TStringField;
    Label2: TLabel;
    cfgctbpcgafaturar: TDBEdit;
    Label3: TLabel;
    cfgctbpcgdoacao: TDBEdit;
    registrocfgctbpcgdoacao: TIntegerField;
    registroccgcfgctbpcgdoacao: TStringField;
    cfgctbpcgdinheiro: TDBEdit;
    Label5: TLabel;
    registrocfgctbpcgdinheiro: TIntegerField;
    registroccgcfgctbpcgdinheiro: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgctbpdr: Tfcfgctbpdr;

  // Início ID do Módulo fcfgctbpdr
const
  vPlIdMd = '03.10.81.001-07';

implementation

{$R *.dfm}

procedure Tfcfgctbpdr.FormShow(Sender: TObject);
begin
  cfg.Connection := zcone;
  cfg.Open;


  IdModulo := vPlIdMd;
  inherited;

end;

end.
