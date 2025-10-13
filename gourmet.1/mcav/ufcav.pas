unit ufcav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, Data.DB, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  uFuncoes;

type
  Tfcav = class(Tfrmbase)
    registrocavchave: TIntegerField;
    registrocavpasta: TStringField;
    registroacocodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrocavregistro: TDateField;
    registroumocodigo: TIntegerField;
    registrocrfcodigo: TIntegerField;
    registrocavvaloracao: TFloatField;
    registrocavdiavcto: TIntegerField;
    registrocavpercentualmes: TFloatField;
    registrocavvalormes: TFloatField;
    aco: TUniQuery;
    acoacocodigo: TIntegerField;
    acoacosigla: TStringField;
    registroacosigla: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    umo: TUniQuery;
    umoumocodigo: TIntegerField;
    umoumosigla: TStringField;
    registroumosigla: TStringField;
    crf: TUniQuery;
    crfcrfcodigo: TIntegerField;
    registrocrfsigla: TStringField;
    Label1: TLabel;
    cavchave: TDBEdit;
    Label2: TLabel;
    cavpasta: TDBEdit;
    Label3: TLabel;
    acocodigo: TDBEdit;
    Label4: TLabel;
    etdcodigo: TDBEdit;
    Label5: TLabel;
    umocodigo: TDBEdit;
    Label6: TLabel;
    crfcodigo: TDBEdit;
    lbcavvaloracao: TLabel;
    cavvaloracao: TDBEdit;
    Label8: TLabel;
    cavdiavcto: TDBEdit;
    lbcavpercentualmes: TLabel;
    cavpercentualmes: TDBEdit;
    vlcavvalormes: TLabel;
    cavvalormes: TDBEdit;
    crfcrfsigla: TStringField;
    registrocavpercentualmulta: TFloatField;
    registrocavpercentualjuros: TFloatField;
    Label11: TLabel;
    cavpercentualmulta: TDBEdit;
    Label12: TLabel;
    cavpercentualjuros: TDBEdit;
    procedure umocodigoExit(Sender: TObject);
  private
    procedure AjustaCampoValores;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcav: Tfcav;

implementation

{$R *.dfm}

procedure Tfcav.umocodigoExit(Sender: TObject);
begin
  inherited;

  if Self.ActiveControl = bcancela then
    Exit;

  Self.ValidaSaida(Sender);
  AjustaCampoValores;

end;

procedure Tfcav.AjustaCampoValores;
begin
  if registro.Active then
    if registro.State <> dsbrowse then
      if umocodigo.Field.AsString <> '' then
        if umocodigo.Field.AsInteger = 1 then
        begin
          vlcavvalormes.Enabled := True;
          cavvalormes.Enabled := True;
          cavvaloracao.Enabled := True;
          lbcavvaloracao.Enabled := True;
          lbcavpercentualmes.Enabled := False;
          cavpercentualmes.Enabled := False;
          registrocavpercentualmes.Required := False;
          registrocavvalormes.Required := True;
          cavvalormes.color := PEG_COR_VALORREQUERIDO;
          cavpercentualmes.color := clWhite;
          registrocavpercentualmes.AsFloat := 0;
        end
        else
        begin
          vlcavvalormes.Enabled := False;
          cavvalormes.Enabled := False;
          cavvaloracao.Enabled := False;
          lbcavvaloracao.Enabled := False;
          lbcavpercentualmes.Enabled := True;
          cavpercentualmes.Enabled := True;
          registrocavpercentualmes.Required := True;
          registrocavvalormes.Required := False;
          cavvalormes.color := clWhite;
          cavpercentualmes.color := PEG_COR_VALORREQUERIDO;

          registrocavvalormes.AsFloat := 0;
          registrocavvaloracao.AsFloat := 0;
        end;
end;

end.
