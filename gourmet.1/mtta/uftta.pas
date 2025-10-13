unit uftta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftta = class(Tfrmbase)
    registrottacodigo: TIntegerField;
    registrottaidentificacao: TStringField;
    registroevfcodigo: TIntegerField;
    registrophgcodigo: TIntegerField;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    Label1: TLabel;
    ttacodigo: TDBEdit;
    Label2: TLabel;
    ttaidentificacao: TDBEdit;
    Label3: TLabel;
    evfcodigo: TDBEdit;
    Label4: TLabel;
    phgcodigo: TDBEdit;
    registroevfidentificacao: TStringField;
    registrophgidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftta: Tftta;

implementation

{$R *.dfm}

end.
