unit uftja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftja = class(Tfrmbase)
    registrotjacodigo: TIntegerField;
    registrotjaidentificacao: TStringField;
    registrotjausaquantidade: TIntegerField;
    registrotjausanumero: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosentjausaquantidade: TStringField;
    registrosentjausanumero: TStringField;
    Label1: TLabel;
    tjacodigo: TDBEdit;
    Label2: TLabel;
    tjaidentificacao: TDBEdit;
    Label3: TLabel;
    tjausaquantidade: TDBEdit;
    Label4: TLabel;
    tjausanumero: TDBEdit;
    registroevfcodigo: TIntegerField;
    registrophgcodigo: TIntegerField;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    phg: TUniQuery;
    registroevfidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    Label5: TLabel;
    evfcodigo: TDBEdit;
    Label6: TLabel;
    phgcodigo: TDBEdit;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftja: Tftja;

implementation

{$R *.dfm}

end.
