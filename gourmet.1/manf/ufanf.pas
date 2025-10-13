unit ufanf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfanf = class(Tfrmbase)
    registroanfcodigo: TIntegerField;
    registroanfidentificacao: TStringField;
    registroanfpercentual: TFloatField;
    registroevfcodigo: TIntegerField;
    Label1: TLabel;
    anfcodigo: TDBEdit;
    Label2: TLabel;
    anfidentificacao: TDBEdit;
    Label3: TLabel;
    anfpercentual: TDBEdit;
    Label4: TLabel;
    evfcodigo: TDBEdit;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    registroevfidentificacao: TStringField;
    registrophgcodigo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    Label5: TLabel;
    phgcodigo: TDBEdit;
    ColorDialog: TColorDialog;
    Label10: TLabel;
    plcor: TPanel;
    Label6: TLabel;
    plcortitulo: TPanel;
    registroanfcor: TStringField;
    registroanfcortitulo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure plcorClick(Sender: TObject);
    procedure plcortituloClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fanf: Tfanf;

implementation

{$R *.dfm}

procedure Tfanf.bconfirmaClick(Sender: TObject);
begin

  if plcor.Color <> clBtnFace then
    registroanfcor.AsString := ColorToString(plcor.Color);

  if plcortitulo.Color <> clBtnFace then
    registroanfcortitulo.AsString := ColorToString(plcortitulo.Color);

  inherited;
end;

procedure Tfanf.FormShow(Sender: TObject);
begin
  inherited;
  if registroanfcor.AsString <> '' then
    plcor.Color := StringToColor(registroanfcor.AsString);

  if registroanfcortitulo.AsString <> '' then
    plcortitulo.Color := StringToColor(registroanfcortitulo.AsString);

end;

procedure Tfanf.plcorClick(Sender: TObject);
begin
  inherited;
 if ColorDialog.Execute then
  begin
    plcor.Color := ColorDialog.Color;
  end;
end;

procedure Tfanf.plcortituloClick(Sender: TObject);
begin
  inherited;
 if ColorDialog.Execute then
  begin
    plcortitulo.Color := ColorDialog.Color;
  end;
end;

end.
