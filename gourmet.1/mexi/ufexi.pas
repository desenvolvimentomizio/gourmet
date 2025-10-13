unit ufexi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  ufuncoes,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfexi = class(Tfrmbase)
    registroexicodigo: TIntegerField;
    registroexbcodigo: TIntegerField;
    registroimscodigo: TIntegerField;
    lbcodigo: TLabel;
    exicodigo: TDBEdit;
    lbevento: TLabel;
    exbcodigo: TDBEdit;
    lbimagem: TLabel;
    imscodigo: TDBEdit;
    exb: TUniQuery;
    ims: TUniQuery;
    imsimscodigo: TIntegerField;
    imsimsidentificacao: TStringField;
    exbexbcodigo: TIntegerField;
    registroexhcodigo: TIntegerField;
    registroexiregistro: TDateField;
    exh: TUniQuery;
    exhexhcodigo: TIntegerField;
    lbsegundos: TLabel;
    registroexbidentificacao: TStringField;
    registroimsidentificacao: TStringField;
    registroexiinicio: TDateField;
    registroexifinal: TDateField;
    Label1: TLabel;
    exiinicio: TDBEdit;
    Label2: TLabel;
    exifinal: TDBEdit;
    exbexbidentificacao: TStringField;
    exhexhidentificacao: TStringField;
    Label3: TLabel;
    exhidentificacao: TDBEdit;
    registroexifra: TStringField;
    Label4: TLabel;
    exifra: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fexi: Tfexi;

implementation

{$R *.dfm}

procedure Tfexi.bconfirmaClick(Sender: TObject);
begin

  if exiinicio.Text < DateTimeToStr(date) then
  begin
    beep;
    ShowMessage('Data inicial deve ser a partir de hoje em diante');
  end
  else if exifinal.Text < exiinicio.Text then
  begin
    beep;
    ShowMessage('Data Final não deve ser menor que a inicial');
  end
  else if exiinicio.Text = exifinal.Text then
  begin
    beep;
    ShowMessage('Data Inicial e final não podem ser iguais');
  end
  else
  begin
    inherited;
  end;
end;

procedure Tfexi.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroexiregistro.AsString := hoje(application, ZCone);
end;

end.
