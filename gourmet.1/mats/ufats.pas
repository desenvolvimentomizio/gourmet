unit ufats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfats = class(Tfrmbase)
    registroatscodigo: TIntegerField;
    registroatsidentificacao: TStringField;
    registroatsmeses: TIntegerField;
    registroatspercentual: TFloatField;
    registroevfcodigo: TIntegerField;
    Label1: TLabel;
    atscodigo: TDBEdit;
    Label2: TLabel;
    atsidentificacao: TDBEdit;
    Label3: TLabel;
    atsmeses: TDBEdit;
    Label4: TLabel;
    atspercentual: TDBEdit;
    Label5: TLabel;
    evfcodigo: TDBEdit;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    registroevfidentificacao: TStringField;
    registroatsmesesinicial: TIntegerField;
    Label6: TLabel;
    atsmesesinicial: TDBEdit;
    registrophgcodigo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    Label7: TLabel;
    phgcodigo: TDBEdit;
    registroatscor: TStringField;
    registroatscortitulo: TStringField;
    Label10: TLabel;
    plcor: TPanel;
    plcortitulo: TPanel;
    Label8: TLabel;
    ColorDialog: TColorDialog;
    procedure plcorClick(Sender: TObject);
    procedure plcortituloClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fats: Tfats;

implementation

{$R *.dfm}

procedure Tfats.bconfirmaClick(Sender: TObject);
begin

  if plcor.Color <> clBtnFace then
    registroatscor.AsString := ColorToString(plcor.Color);

  if plcortitulo.Color <> clBtnFace then
    registroatscortitulo.AsString := ColorToString(plcortitulo.Color);

  inherited;
end;

procedure Tfats.FormShow(Sender: TObject);
begin
  inherited;
 if registroatscor.AsString <> '' then
    plcor.Color := StringToColor(registroatscor.AsString);

  if registroatscortitulo.AsString <> '' then
    plcortitulo.Color := StringToColor(registroatscortitulo.AsString);

end;

procedure Tfats.plcorClick(Sender: TObject);
begin
  inherited;
  if ColorDialog.Execute then
  begin
    plcor.Color := ColorDialog.Color;
  end;
end;

procedure Tfats.plcortituloClick(Sender: TObject);
begin
  inherited;
  if ColorDialog.Execute then
  begin
    plcortitulo.Color := ColorDialog.Color;
  end;
end;

end.
