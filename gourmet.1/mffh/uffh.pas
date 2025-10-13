unit uffh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tffh = class(Tfrmbase)
    registroffhcodigo: TIntegerField;
    registroffhidentificacao: TStringField;
    Label1: TLabel;
    ffhcodigo: TDBEdit;
    Label2: TLabel;
    ffhidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffh: Tffh;

implementation

{$R *.dfm}

end.
