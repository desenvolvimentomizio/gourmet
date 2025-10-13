unit ufare;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfare = class(Tfrmbase)
    registroarecodigo: TIntegerField;
    registroareidentificacao: TStringField;
    Label1: TLabel;
    arecodigo: TDBEdit;
    Label2: TLabel;
    areidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fare: Tfare;

  // In�cio ID do M�dulo fraare
const
  vPlIdMd = '01.01.05.014-02';

  // Fim ID do M�dulo fraare

implementation

{$R *.dfm}

procedure Tfare.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT are.arecodigo FROM are ';
  consulta.SQL.Add('WHERE are.areidentificacao = ''' + registroareidentificacao.AsString + ''' ');

  if Self.Situacao = 'Alterando' then
    consulta.SQL.Add('AND are.arecodigo <> ' + registroarecodigo.AsString);

  consulta.Open;

  if consulta.IsEmpty then
    inherited
  else
    Application.MessageBox(PChar('Esta �rea j� est� cadastrada!!' + #13 + #13 + 'C�digo: ' + consulta.FieldByName('arecodigo').AsString), 'Duplicidade de �rea',
      MB_ICONWARNING + MB_OK);
end;

procedure Tfare.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
