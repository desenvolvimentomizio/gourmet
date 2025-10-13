unit ufuis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfuis = class(Tfrmbase)
    registrouiscodigo: TStringField;
    registrouispercentual: TFloatField;
    Label1: TLabel;
    uiscodigo: TDBEdit;
    Label2: TLabel;
    ufscodigo: TDBEdit;
    Label3: TLabel;
    uispercentual: TDBEdit;
    ufs: TUniQuery;
    ufsufsnome: TStringField;
    registroufsnome: TStringField;
    ufsufscodigo: TStringField;
    registroufscodigo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fuis: Tfuis;

implementation

{$R *.dfm}

end.
