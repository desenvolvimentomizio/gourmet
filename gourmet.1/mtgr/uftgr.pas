unit uftgr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftgr = class(Tfrmbase)
    registrotgrcodigo: TIntegerField;
    registrotgridentificacao: TStringField;
    Label1: TLabel;
    tgrcodigo: TDBEdit;
    Label2: TLabel;
    tgridentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftgr: Tftgr;

implementation

{$R *.dfm}

end.
