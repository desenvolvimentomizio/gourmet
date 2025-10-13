unit ufajtbase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, upegabase, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfajtbase = class(Tfrmbase)
    registropuncodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registropunbase: TFloatField;
    registropunidentificacao: TStringField;
    registropuncusto: TFloatField;
    Label5: TLabel;
    punidentificacao: TDBEdit;
    Label7: TLabel;
    puncusto: TDBEdit;
    punbase: TDBEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fajtbase: Tfajtbase;

implementation

{$R *.dfm}


function formulariocustobase(pCargaFrame: TCargaFrame): string;
begin
  fajtbase := Tfajtbase.Create(pCargaFrame);
  fajtbase.ShowModal;
  fajtbase.Free;
end;

exports formulariocustobase;



end.
