unit uftpp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftpp = class(Tfrmbase)
    registrotppchave: TIntegerField;
    registrotppiniciovalidade: TDateField;
    registrotppfinalvalidade: TDateField;
    registrotpppercorigem: TFloatField;
    registrotpppercdestino: TFloatField;
    Label1: TLabel;
    tppchave: TDBEdit;
    Label2: TLabel;
    tppiniciovalidade: TDBEdit;
    Label3: TLabel;
    tppfinalvalidade: TDBEdit;
    Label4: TLabel;
    tpppercorigem: TDBEdit;
    Label5: TLabel;
    tpppercdestino: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftpp: Tftpp;

implementation

{$R *.dfm}

end.
