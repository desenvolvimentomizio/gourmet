unit ufgrt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfgrt = class(Tfrmbase)
    registrogrtcodigo: TIntegerField;
    registrogrtidentificacao: TStringField;
    Label1: TLabel;
    grtcodigo: TDBEdit;
    Label2: TLabel;
    grtidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgrt: Tfgrt;

implementation

{$R *.dfm}

end.
