unit uftec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftec = class(Tfrmbase)
    registroteccodigo: TIntegerField;
    registrotecidentificacao: TStringField;
    registrottccodigo: TIntegerField;
    ttc: TUniQuery;
    ttcttccodigo: TIntegerField;
    ttcttcidentificacao: TStringField;
    registrottcidentificacao: TStringField;
    Label1: TLabel;
    teccodigo: TDBEdit;
    Label2: TLabel;
    tecidentificacao: TDBEdit;
    Label3: TLabel;
    ttccodigo: TDBEdit;
    registrotecposicao: TIntegerField;
    Label4: TLabel;
    tecposicao: TDBEdit;
    registroteccor: TStringField;
    Label5: TLabel;
    plcor: TPanel;
    ColorDialog: TColorDialog;
    procedure plcorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftec: Tftec;

implementation

{$R *.dfm}

procedure Tftec.FormShow(Sender: TObject);
begin
  inherited;
  if self.registroteccor.AsString<>'' then
  plcor.Font.Color := StringToColor(self.registroteccor.AsString);

end;

procedure Tftec.plcorClick(Sender: TObject);
begin
  inherited;
  ColorDialog.Execute;
  plcor.Font.Color := ColorDialog.Color;
  self.registroteccor.AsString := ColorToString(plcor.Font.Color);
end;

end.
