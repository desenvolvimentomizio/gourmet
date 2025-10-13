unit uftng;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftng = class(Tfrmbase)
    registrotngcodigo: TIntegerField;
    registrotngidentificacao: TStringField;
    Label1: TLabel;
    tngcodigo: TDBEdit;
    Label2: TLabel;
    tngidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftng: Tftng;

implementation

{$R *.dfm}

end.
