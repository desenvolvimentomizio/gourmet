unit uffct;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tffct = class(Tfrmbase)
    registrofctchave: TIntegerField;
    registroctacodigo: TIntegerField;
    cta: TUniQuery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    registroctaidentificacao: TStringField;
    Label1: TLabel;
    fctchave: TDBEdit;
    Label2: TLabel;
    ctacodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffct: Tffct;

const
  vPlIdMd = '03.06.81.011-02';

implementation

{$R *.dfm}

procedure Tffct.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
