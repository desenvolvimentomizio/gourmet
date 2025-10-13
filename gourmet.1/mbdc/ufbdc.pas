unit ufbdc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfbdc = class(Tfrmbase)
    registrobdccodigo: TIntegerField;
    registrobdcidentificacao: TStringField;
    Label1: TLabel;
    bdccodigo: TDBEdit;
    Label2: TLabel;
    bdcidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbdc: Tfbdc;

implementation

{$R *.dfm}

end.
