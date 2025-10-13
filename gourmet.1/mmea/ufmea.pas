unit ufmea;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfmea = class(Tfrmbase)
    registromeacodigo: TIntegerField;
    registromeamotivo: TStringField;
    Label1: TLabel;
    meacodigo: TDBEdit;
    meamotivo: TDBMemo;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmea: Tfmea;

  // Início ID do Módulo fmea
const
  vPlIdMd = '01.02.15.001-02';

implementation

{$R *.dfm}

procedure Tfmea.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
