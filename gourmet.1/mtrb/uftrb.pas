unit uftrb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tftrb = class(Tfrmbase)
    registrotrbcodigo: TIntegerField;
    registrotrbidentificacao: TStringField;
    Label1: TLabel;
    trbCodigo: TDBEdit;
    Label2: TLabel;
    trbidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ftrb: Tftrb;

  // Início ID do Módulo fratrb
const
  vPlIdMd = '01.01.05.010-01';

  // Fim ID do Módulo fratrb

implementation

{$R *.dfm}

procedure Tftrb.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
