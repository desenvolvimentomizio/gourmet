unit ufctc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList;

type
  Tfctc = class(Tfrmbase)
    registroctccodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroctacodigo: TIntegerField;
    cta: TUniQuery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    registroctaidentificacao: TStringField;
    Label1: TLabel;
    ctccodigo: TDBEdit;
    Label2: TLabel;
    ctacodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fctc: Tfctc;

implementation

{$R *.dfm}

procedure Tfctc.FormShow(Sender: TObject);
begin
  Self.Height := 160;
  Self.Width := 580;

  inherited;

end;

end.
