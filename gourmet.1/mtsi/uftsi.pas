unit uftsi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tftsi = class(Tfrmbase)
    registrotsicodigo: TIntegerField;
    registrotsiidentificacao: TStringField;
    Label1: TLabel;
    tsicodigo: TDBEdit;
    Label2: TLabel;
    tsiidentificacao: TDBEdit;
    registrottscodigo: TIntegerField;
    tts: TUniQuery;
    ttsttscodigo: TIntegerField;
    ttsttsidentificacao: TStringField;
    registrottsidentificacao: TStringField;
    Label3: TLabel;
    ttscodigo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftsi: Tftsi;

implementation

{$R *.dfm}

end.
