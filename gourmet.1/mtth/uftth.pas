unit uftth;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftth = class(Tfrmbase)
    registrotthcodigo: TIntegerField;
    registrotthidentificacao: TStringField;
    registrotthpercentual: TFloatField;
    registrotthnatureza: TIntegerField;
    ced: TUniQuery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrocedidentificacao: TStringField;
    Label1: TLabel;
    tthcodigo: TDBEdit;
    Label2: TLabel;
    tthidentificacao: TDBEdit;
    Label3: TLabel;
    tthnatureza: TDBEdit;
    Label4: TLabel;
    tthpercentual: TDBEdit;
    registroevfcodigo: TIntegerField;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    registroevfidentificacao: TStringField;
    Label5: TLabel;
    evfcodigo: TDBEdit;
    registrodsrcodigo: TIntegerField;
    dsr: TUniQuery;
    dsrdsrcodigo: TIntegerField;
    dsrdsridentificacao: TStringField;
    registrodsridentificacao: TStringField;
    Label6: TLabel;
    dsrcodigo: TDBEdit;
    registrotthconsideraats: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosentthconsideraats: TStringField;
    tthconsideraats: TDBEdit;
    Label7: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftth: Tftth;

implementation

{$R *.dfm}

end.
