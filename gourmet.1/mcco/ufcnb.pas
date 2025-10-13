unit ufcnb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, System.ImageList,ufuncoes;

type
  Tfcnb = class(Tfrmbase)
    registrocnbchave: TIntegerField;
    registroccochave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrocnbregistro: TDateField;
    registrocnbdata: TDateField;
    registrocnbhora: TTimeField;
    Label1: TLabel;
    cnbregistro: TDBEdit;
    cbAjustar: TCheckBox;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcnb: Tfcnb;

  // Início ID do Módulo fcnb
const
  vPlIdMd = '01.02.07.007-09';

  // Fim ID do Módulo fcnb

implementation

{$R *.dfm}

procedure Tfcnb.bconfirmaClick(Sender: TObject);
begin
  inherited;

  if cbAjustar.Checked then
  begin
    consulta.Close;
    consulta.SQL.Text:='update cco set ccovencimento='+QuotedStr(ajustadata(self.cnbregistro.Field.AsString) )+' where ccochave='+vChaveMestre;
    consulta.ExecSQL;
  end;
end;

procedure Tfcnb.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfcnb.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroccochave.AsString := self.vChaveMestre;
  self.registrocnbdata.AsFloat := date;
  self.registrocnbhora.AsFloat := time;
  self.registroclbcodigo.AsInteger := Acesso.Usuario;
  self.registrocnbregistro.AsFloat := date;

end;

end.
