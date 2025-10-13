unit uffop;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess, 
    
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList;

type
  Tffop = class(Tfrmbase)
    registrofopcodigo: TIntegerField;
    registrofopidentificacao: TStringField;
    registrotfpcodigo: TIntegerField;
    registrofopdesc: TFloatField;
    registrofopjuros: TFloatField;
    registrofoppercentra: TFloatField;
    registrofopnumparc: TIntegerField;
    registrofopintervalo: TIntegerField;
    tfp: tuniquery;
    tfptfpcodigo: TIntegerField;
    Label1: TLabel;
    fopcodigo: TDBEdit;
    Label2: TLabel;
    fopidentificacao: TDBEdit;
    Label3: TLabel;
    tfpcodigo: TDBEdit;
    Label4: TLabel;
    fopjuros: TDBEdit;
    Label5: TLabel;
    fopdesc: TDBEdit;
    Label6: TLabel;
    foppercentra: TDBEdit;
    Label7: TLabel;
    fopnumparc: TDBEdit;
    Label8: TLabel;
    fopintervalo: TDBEdit;
    tfptfpidentificacao: TStringField;
    registrotfpidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ffop: Tffop;

  // Início ID do Módulo frafop
const
  vPlIdMd = '02.04.80.004-02';

  // Fim ID do Módulo frafop

implementation

{$R *.dfm}

procedure Tffop.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
