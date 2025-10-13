unit ufori;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfori = class(Tfrmbase)
    registrooricodigo: TIntegerField;
    registrooriidentificacao: TStringField;
    registroetdcodigo: TIntegerField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    Label1: TLabel;
    oricodigo: TDBEdit;
    Label2: TLabel;
    oriidentificacao: TDBEdit;
    Label3: TLabel;
    etdcodigo: TDBEdit;
    registroetdidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fori: Tfori;

implementation

{$R *.dfm}

end.
