unit uftpr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftpr = class(Tfrmbase)
    registrotprcodigo: TIntegerField;
    registrotpridentificacao: TStringField;
    registrotprcor: TStringField;
    Label1: TLabel;
    tprcodigo: TDBEdit;
    Label2: TLabel;
    tpridentificacao: TDBEdit;
    plcor: TPanel;
    Label5: TLabel;
    ColorDialog: TColorDialog;
    procedure FormShow(Sender: TObject);
    procedure plcorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftpr: Tftpr;

implementation

{$R *.dfm}

procedure Tftpr.FormShow(Sender: TObject);
begin
  inherited;
  if self.registrotprcor.AsString<>'' then
  plcor.Font.Color := StringToColor(self.registrotprcor.AsString);
end;

procedure Tftpr.plcorClick(Sender: TObject);
begin
  inherited;
  ColorDialog.Execute;
  plcor.Font.Color := ColorDialog.Color;
  self.registrotprcor.AsString := ColorToString(plcor.Font.Color);
end;

end.
