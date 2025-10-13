unit ufcfgctbvnd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList, PngImageList;

type
  Tfcfgctbvnd = class(Tfrmbase)
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrocfgcodigo: TIntegerField;
    registrocfgctbpcgvnddesccom: TIntegerField;
    Label31: TLabel;
    cfgctbpcgvnddesccom: TDBEdit;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgcfgctbpcgvnddesccom: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgctbvnd: Tfcfgctbvnd;

  // Início ID do Módulo fcfgctbvnd
const
  vPlIdMd = '03.10.81.001-03';

implementation

{$R *.dfm}

procedure Tfcfgctbvnd.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

end;

end.
