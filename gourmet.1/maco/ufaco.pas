unit ufaco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, Data.DB, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfaco = class(Tfrmbase)
    registroacocodigo: TIntegerField;
    registroacoidentificacao: TStringField;
    registroacosigla: TStringField;
    Label1: TLabel;
    acocodigo: TDBEdit;
    Label2: TLabel;
    acoidentificacao: TDBEdit;
    Label3: TLabel;
    acosigla: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  faco: Tfaco;

implementation

{$R *.dfm}

end.
