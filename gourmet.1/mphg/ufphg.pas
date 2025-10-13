unit ufphg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfphg = class(Tfrmbase)
    registrophgcodigo: TIntegerField;
    registrophgidentificacao: TStringField;
    registrophgcomplemento: TStringField;
    Label1: TLabel;
    phgcodigo: TDBEdit;
    Label2: TLabel;
    phgidentificacao: TDBEdit;
    Label3: TLabel;
    phgcomplemento: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fphg: Tfphg;

  // Início ID do Módulo fraphg
const
  vPlIdMd = '02.02.16.008-02';

  // Fim ID do Módulo fraphg

implementation

{$R *.dfm}

procedure Tfphg.bconfirmaClick(Sender: TObject);
begin
  if self.registrophgcodigo.AsString = '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select max(phgcodigo) as chave from phg';
    consulta.Open;
    registrophgcodigo.AsInteger := consulta.Fields[0].AsInteger + 1;
  end;

  inherited;

end;

procedure Tfphg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
