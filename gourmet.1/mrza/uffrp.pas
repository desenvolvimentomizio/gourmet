unit uffrp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,    
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, PngImageList;

type
  Tffrp = class(Tfrmbase)
    registrofrcchave: TIntegerField;
    registrofrpchave: TIntegerField;
    registropcgcodigo: TIntegerField;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registropcgidentificacao: TStringField;
    Label1: TLabel;
    pcgcodigo: TDBEdit;
    procedure pcgcodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffrp: Tffrp;

  // Início ID do Módulo frarza
const
  vPlIdMd = '02.02.16.011-02';

  // Fim ID do Módulo frarza

implementation

{$R *.dfm}

procedure Tffrp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;
end;

procedure Tffrp.pcgcodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  consulta.Close;
  consulta.SQL.Text := 'select pcgcodigo from frp where pcgcodigo=' + self.pcgcodigo.Field.AsString + ' and frcchave=' + self.vChaveMestre;
  consulta.Open;

  if consulta.RecordCount = 1 then
  begin
    showmessage('Atenção esta conta ja esta na lista!');
    pcgcodigo.Field.AsString := '';
    pcgcodigo.SetFocus;
  end;

end;

end.
