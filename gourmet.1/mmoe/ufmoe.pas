unit ufmoe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfmoe = class(Tfrmbase)
    registromoecodigo: TIntegerField;
    registromoeidentificacao: TStringField;
    registromoesimbolo: TStringField;
    Label1: TLabel;
    moecodigo: TDBEdit;
    Label2: TLabel;
    moeidentificacao: TDBEdit;
    Label3: TLabel;
    moesimbolo: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fmoe: Tfmoe;

  // Início ID do Módulo framoe
const
  vPlIdMd = '03.06.80.005-02';

  // Fim ID do Módulo framoe

implementation

{$R *.dfm}

procedure Tfmoe.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
