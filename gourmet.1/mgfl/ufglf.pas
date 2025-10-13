unit ufglf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfglf = class(Tfrmbase)
    registrogflchave: TIntegerField;
    registrogfldatainicial: TDateField;
    registrogfldatafinal: TDateField;
    registrogflagrupamento: TIntegerField;
    Label1: TLabel;
    gflchave: TDBEdit;
    Label2: TLabel;
    gfldatainicial: TDBEdit;
    Label3: TLabel;
    gfldatafinal: TDBEdit;
    gflagrupamento: TDBRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fglf: Tfglf;

implementation

{$R *.dfm}

end.
