unit ufbrd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfbrd = class(Tfrmbase)
    registrobrdcodigo: TIntegerField;
    registrobrdidentificacao: TStringField;
    Label1: TLabel;
    brdcodigo: TDBEdit;
    Label2: TLabel;
    brdidentificacao: TDBEdit;
    registroprocodigo: TIntegerField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    Label3: TLabel;
    procodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbrd: Tfbrd;

  // Início ID do Módulo fbrd
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo fbrd

implementation

{$R *.dfm}

procedure Tfbrd.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
