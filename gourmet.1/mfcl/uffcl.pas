unit uffcl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tffcl = class(Tfrmbase)
    registrofclcodigo: TIntegerField;
    registrofclidentificacao: TStringField;
    Label1: TLabel;
    fclcodigo: TDBEdit;
    Label2: TLabel;
    fclidentificacao: TDBEdit;
    registrofclvalorbase: TFloatField;
    registrotlocodigo: TIntegerField;
    registrofcldatainicial: TDateField;
    registrofcldatafinal: TDateField;
    tlo: TUniQuery;
    tlotlocodigo: TIntegerField;
    tlotloidentificacao: TStringField;
    registrotloidentificacao: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    fcldatainicial: TDBEdit;
    Label5: TLabel;
    fcldatafinal: TDBEdit;
    tlocodigo: TDBEdit;
    Label6: TLabel;
    fclvalorbase: TDBEdit;
    registroevfcodigo: TIntegerField;
    registrophgcodigo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    Label7: TLabel;
    phgcodigo: TDBEdit;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    registroevfidentificacao: TStringField;
    Label8: TLabel;
    evfcodigo: TDBEdit;
    registrotthcodigo: TIntegerField;
    tth: TUniQuery;
    tthtthcodigo: TIntegerField;
    tthtthidentificacao: TStringField;
    registrotthidentificacao: TStringField;
    Label9: TLabel;
    tthcodigo: TDBEdit;
    registrofclcor: TStringField;
    Label10: TLabel;
    plcor: TPanel;
    ColorDialog: TColorDialog;
    gfc: TUniQuery;
    gfcgfccodigo: TIntegerField;
    gfcgfcidentificacao: TStringField;
    registrogfccodigo: TIntegerField;
    registrogfcidentificacao: TStringField;
    Label11: TLabel;
    gfccodigo: TDBEdit;
    registrofclpagadsr: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenidentificacao: TStringField;
    Label12: TLabel;
    fclpagadsr: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure plcorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffcl: Tffcl;

implementation

{$R *.dfm}

procedure Tffcl.bconfirmaClick(Sender: TObject);
begin
  if plcor.Color <> clBtnFace then
    registrofclcor.AsString := ColorToString(plcor.Color);

  inherited;

end;

procedure Tffcl.FormShow(Sender: TObject);
begin

  inherited;

  if registrofclcor.AsString <> '' then
    plcor.Color := StringToColor(registrofclcor.AsString);

end;

procedure Tffcl.plcorClick(Sender: TObject);
begin
  inherited;
  if (plcor.Color <> clBtnFace) AND (plcor.Color <> clWhite) then
  begin
    plcor.Color := clWhite
  end
  else
  begin
    if ColorDialog.Execute then
    begin
      plcor.Color := ColorDialog.Color;
    end;
  end;
end;

end.
