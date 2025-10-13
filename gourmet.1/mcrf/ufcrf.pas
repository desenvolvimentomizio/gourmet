unit ufcrf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, Data.DB, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfcrf = class(Tfrmbase)
    registrocrfcodigo: TIntegerField;
    registrocrfidentificacao: TStringField;
    registrocrfsigla: TStringField;
    Label1: TLabel;
    crfcodigo: TDBEdit;
    Label2: TLabel;
    crfidentificacao: TDBEdit;
    Label3: TLabel;
    crfsigla: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcrf: Tfcrf;

implementation

{$R *.dfm}

end.
