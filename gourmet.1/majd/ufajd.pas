unit ufajd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, MemDS, DBAccess, System.Actions,
  Vcl.ActnList, Vcl.ImgList, PngImageList;

type
  Tfajd = class(Tfrmbase)
    registrocfgdtinictb: TDateField;
    Label1: TLabel;
    cfgdtinictb: TDBEdit;
    Label2: TLabel;
    cfgdtfinctb: TDBEdit;
    registrocfgdtfinctb: TDateField;
    cfgmsai: tuniquery;
    cfgmsaicfgcodigo: TIntegerField;
    cfgmsaicfgnumepedido: TIntegerField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vdia: string;
  end;

var
  fajd: Tfajd;

  // Início ID do Módulo fraajd
const
  vPlIdMd = '03.06.81.006-01';
  vPlTitMdl = 'Ajuste do Período Ativo';

  // Fim ID do Módulo fraajd

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vdata: string): string;
var
  vch: string;
begin
  try
    fajd := Tfajd.Create(AOwner);
    fajd.vusrcodigo := vusuario;
    fajd.vchave := '1';
    fajd.zcone := conexao;
    fajd.vdia := vdata;
    fajd.ShowModal;
    Result := vch;
  finally
    FreeAndNil(fajd);
  end;
end;

exports formu;

procedure Tfajd.FormShow(Sender: TObject);
var
 i:integer;
begin
  for i := 0 to self.ComponentCount-1 do
    begin
      if self.Components[i] is tuniquery then
          (self.Components[i] as tuniquery).Connection:=self.zcone;

      if self.Components[i] is tunitable then
          (self.Components[i] as tunitable).Connection:=self.zcone;

    end;

  IdModulo:= vPlIdMd;
  inherited;
  fajd.registrocfgdtinictb.AsString := vdia;
  fajd.registrocfgdtfinctb.AsString := vdia;

  cfgmsai.Open;
  cfgmsai.Edit;
  self.cfgmsaicfgnumepedido.AsInteger:=0;
  cfgmsai.Post;

end;

end.
