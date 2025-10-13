unit ufatc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.ImageList, Vcl.ImgList, PngImageList, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfrmbase1 = class(Tfrmbase)
    registrovtcchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotpvcodigo: TIntegerField;
    registrovtcinicio: TDateField;
    registrovtcfinal: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbase1: Tfrmbase1;

implementation

{$R *.dfm}

end.
