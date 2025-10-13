unit ufumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, Data.DB, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfumo = class(Tfrmbase)
    registroumocodigo: TIntegerField;
    registroumoidentificacao: TStringField;
    registroumosigla: TStringField;
    Label1: TLabel;
    umocodigo: TDBEdit;
    Label2: TLabel;
    umoidentificacao: TDBEdit;
    Label3: TLabel;
    umosigla: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fumo: Tfumo;

implementation

{$R *.dfm}

end.
