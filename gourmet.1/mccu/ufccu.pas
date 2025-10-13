unit ufccu;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfccu = class(Tfrmbase)
    registroccucodigo: TStringField;
    registroccuidentificacao: TStringField;
    registroccudtinicio: TDateField;
    Label1: TLabel;
    ccucodigo: TDBEdit;
    ccuidentificacao: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    ccudtinicio: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fccu: Tfccu;

  // Início ID do Módulo fraccu
const
  vPlIdMd = '02.02.16.002-02';

  // Fim ID do Módulo fraccu

implementation

{$R *.dfm}

procedure Tfccu.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
