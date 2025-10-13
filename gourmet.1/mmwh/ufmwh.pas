unit ufmwh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfmwh = class(Tfrmbase)
    registromwhchave: TIntegerField;
    registromwhtexto: TStringField;
    registromwhsegunda: TIntegerField;
    registromwhterca: TIntegerField;
    registromwhquarta: TIntegerField;
    registromwhquinta: TIntegerField;
    registromwhsexta: TIntegerField;
    registromwhsabado: TIntegerField;
    registromwhdomingo: TIntegerField;
    registromwhimagem: TBlobField;
    Label1: TLabel;
    mwhchave: TDBEdit;
    registromwhtipo: TIntegerField;
    mwhtexto: TDBMemo;
    Label2: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosensegunda: TStringField;
    registrosenterca: TStringField;
    registrosenquarta: TStringField;
    registrosenquinta: TStringField;
    registrosensexta: TStringField;
    registrosensabado: TStringField;
    registrosendomingo: TStringField;
    Label3: TLabel;
    mwhsegunda: TDBEdit;
    Label4: TLabel;
    mwhterca: TDBEdit;
    Label5: TLabel;
    mwhquarta: TDBEdit;
    Label6: TLabel;
    mwhquinta: TDBEdit;
    Label7: TLabel;
    mwhsexta: TDBEdit;
    Label8: TLabel;
    mwhsabado: TDBEdit;
    Label9: TLabel;
    mwhdomingo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmwh: Tfmwh;

implementation

{$R *.dfm}

end.
