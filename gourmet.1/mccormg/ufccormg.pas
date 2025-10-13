unit ufccormg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfccormg = class(Tfrmbase)
    registrormgchave: TIntegerField;
    registrophgcodigo: TIntegerField;
    registropcgcodigo: TIntegerField;
    registrormgcomplemento: TStringField;
    registrormgvalor: TFloatField;
    Label1: TLabel;
    rmgchave: TDBEdit;
    Label2: TLabel;
    pcgcodigo: TDBEdit;
    Label3: TLabel;
    phgcodigo: TDBEdit;
    Label4: TLabel;
    rmgcomplemento: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fccormg: Tfccormg;

implementation

{$R *.dfm}

end.
