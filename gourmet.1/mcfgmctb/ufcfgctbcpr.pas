unit ufcfgctbcpr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList,
  System.ImageList;

type
  Tfcfgctbcpr = class(Tfrmbase)
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrocfgcodigo: TIntegerField;
    Label32: TLabel;
    cfgctbpcgcprdesccom: TDBEdit;
    registrocfgctbpcgcprdesccom: TIntegerField;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgctbcpr: Tfcfgctbcpr;


  // Início ID do Módulo fcfgctbcpr
const
  vPlIdMd = '03.10.81.001-02';


implementation

{$R *.dfm}

procedure Tfcfgctbcpr.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

end;

end.
