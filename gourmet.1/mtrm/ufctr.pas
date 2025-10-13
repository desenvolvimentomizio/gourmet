unit ufctr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfctr = class(Tfrmbase)
    registroctrcodigo: TIntegerField;
    registroctacodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    Label1: TLabel;
    ctacodigo: TDBEdit;
    cta: tuniquery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    registroctaidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // Início ID do Módulo fratrm
const
  vPlIdMd = '02.03.81.001-03';

  // Fim ID do Módulo fratrm

var
  fctr: Tfctr;

implementation

{$R *.dfm}

procedure Tfctr.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;

  inherited;
end;

end.
