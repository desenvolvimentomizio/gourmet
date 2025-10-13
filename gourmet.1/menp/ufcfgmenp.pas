unit ufcfgmenp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfcfgmenp = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgmenpnivel1: TStringField;
    registrocfgmenpnivel2: TStringField;
    registrocfgmenpnivel3: TStringField;
    registrocfgmenpnivel4: TStringField;
    Label1: TLabel;
    cfgmenpnivel1: TDBEdit;
    Label2: TLabel;
    cfgmenpnivel2: TDBEdit;
    Label3: TLabel;
    cfgmenpnivel3: TDBEdit;
    Label4: TLabel;
    cfgmenpnivel4: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgmenp: Tfcfgmenp;

implementation

{$R *.dfm}

end.
