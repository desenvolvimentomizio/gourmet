unit ufdsr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfdsr = class(Tfrmbase)
    registrodsrcodigo: TIntegerField;
    registrodsridentificacao: TStringField;
    registroevfcodigo: TIntegerField;
    registrophgcodigo: TIntegerField;
    dsrcodigo: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsridentificacao: TDBEdit;
    Label3: TLabel;
    evfcodigo: TDBEdit;
    phgcodigo: TDBEdit;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdsr: Tfdsr;

implementation

{$R *.dfm}

end.
