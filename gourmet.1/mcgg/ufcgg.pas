unit ufcgg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfcgg = class(Tfrmbase)
    registrocggcodigo: TIntegerField;
    registrocggidentificacao: TStringField;
    Label1: TLabel;
    cggcodigo: TDBEdit;
    Label2: TLabel;
    cggidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcgg: Tfcgg;

  // Início ID do Módulo fcgg
const
  vPlIdMd = '01.01.16.001-02';
  // Fim ID do Módulo fcgg

implementation

{$R *.dfm}

procedure Tfcgg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

end.
