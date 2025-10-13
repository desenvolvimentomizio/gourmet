unit ufcmo;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfcmo = class(Tfrmbase)
    moe: tuniquery;
    registrocmochave: TIntegerField;
    registrocmodata: TDateField;
    registrocmocotacao: TFloatField;
    registromoecodigo: TIntegerField;
    Label1: TLabel;
    cmochave: TDBEdit;
    Label2: TLabel;
    cmodata: TDBEdit;
    Label3: TLabel;
    cmocotacao: TDBEdit;
    Label4: TLabel;
    moecodigo: TDBEdit;
    moemoeidentificacao: TStringField;
    moemoecodigo: TIntegerField;
    registromoeidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fcmo: Tfcmo;

  // Início ID do Módulo fracmo
const
  vPlIdMd = '02.02.80.001-02';

  // Fim ID do Módulo fracmo

implementation

{$R *.dfm}

procedure Tfcmo.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
