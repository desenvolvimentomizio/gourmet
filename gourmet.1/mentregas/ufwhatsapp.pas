unit ufwhatsapp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase,
  System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfwhatsapp = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgmgoumensapedido0: TStringField;
    registrocfgmgoumensasaida0: TStringField;
    registrocfgmgoumensaretorno0: TStringField;
    Label1: TLabel;
    cfgcodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    cfgmgoumensasaida0: TDBMemo;
    Label4: TLabel;
    cfgmgoumensaretorno0: TDBMemo;
    cfgmgoumensapedido0: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fwhatsapp: Tfwhatsapp;

implementation

{$R *.dfm}

end.
