unit ufbpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList, dialogs;

type
  Tfbpr = class(Tfrmbase)
    registrobprchave: TIntegerField;
    registroprocodigo: TIntegerField;
    registrounicodigo: TIntegerField;
    Label1: TLabel;
    bprchave: TDBEdit;
    Label2: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    unicodigo: TDBEdit;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    Uni: TUniQuery;
    uniunicodigo: TIntegerField;
    uniuninome: TStringField;
    registropronome: TStringField;
    registrouninome: TStringField;
    registroprocodigoborda: TIntegerField;
    registropronomeborda: TStringField;
    Label4: TLabel;
    procodigoborda: TDBEdit;
    registropuncodigo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure unicodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbpr: Tfbpr;

  // Início ID do Módulo fbpr
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo fbpr

implementation

{$R *.dfm}

procedure Tfbpr.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfbpr.unicodigoExit(Sender: TObject);
begin
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select puncodigo from pun where procodigo=' + procodigo.Field.AsString + ' and unicodigo=' + unicodigo.Field.AsString;
  consulta.Open;

  if consulta.FieldByName('puncodigo').AsString<>'' then
  begin

  registropuncodigo.AsString := consulta.FieldByName('puncodigo').AsString;
  end
  else
  begin
    ShowMessage('Unidade não localizada para este produto, favor verificar!');

  end;
end;

end.
