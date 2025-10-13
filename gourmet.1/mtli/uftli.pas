unit uftli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftli = class(Tfrmbase)
    registrotlicodigo: TIntegerField;
    registrotliidentificacao: TStringField;
    registrotlicor: TStringField;
    Label1: TLabel;
    tlicodigo: TDBEdit;
    Label2: TLabel;
    tliidentificacao: TDBEdit;
    Label10: TLabel;
    plcor: TPanel;
    ColorDialog: TColorDialog;
    procedure FormShow(Sender: TObject);
    procedure plcorClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftli: Tftli;

implementation

{$R *.dfm}

procedure Tftli.bconfirmaClick(Sender: TObject);
begin

 if plcor.Color <> clBtnFace then
    registrotlicor.AsString := ColorToString(plcor.Color);

  inherited;

end;

procedure Tftli.FormShow(Sender: TObject);
begin
  inherited;

  if registrotlicor.AsString <> '' then
    plcor.Color := StringToColor(registrotlicor.AsString);

end;

procedure Tftli.plcorClick(Sender: TObject);
begin
  inherited;
  if ColorDialog.Execute then
  begin
    plcor.Color := ColorDialog.Color;
  end;
end;

end.
