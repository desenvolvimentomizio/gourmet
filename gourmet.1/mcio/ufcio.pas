unit ufcio;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfcio = class(Tfrmbase)
    registrociocodigo: TIntegerField;
    registrocioidentificacao: TStringField;
    Label1: TLabel;
    ciocodigo: TDBEdit;
    Label2: TLabel;
    cioidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcio: Tfcio;

  // Início ID do Módulo fcio
const
  vPlIdMd = '01.11.20.003-03';

implementation

{$R *.dfm}

end.
