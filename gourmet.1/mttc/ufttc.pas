unit ufttc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfttc = class(Tfrmbase)
    registrottccodigo: TIntegerField;
    registrottcidentificacao: TStringField;
    Label1: TLabel;
    ttccodigo: TDBEdit;
    Label2: TLabel;
    ttcidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fttc: Tfttc;

implementation

{$R *.dfm}

end.
