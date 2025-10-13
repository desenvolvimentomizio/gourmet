unit uftct;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tftct = class(Tfrmbase)
    registrotctcodigo: TIntegerField;
    registrotctidentificacao: TStringField;
    Label1: TLabel;
    tctcodigo: TDBEdit;
    tctidentificacao: TDBEdit;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ftct: Tftct;

  // Início ID do Módulo frapro
const
  vPlIdMd = '01.02.07.003-02';

  // Fim ID do Módulo frapro

implementation

{$R *.dfm}

procedure Tftct.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
