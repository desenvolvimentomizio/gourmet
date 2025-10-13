unit ufiat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfiat = class(Tfrmbase)
    registroiatcodigo: TIntegerField;
    registroiatidentificacao: TStringField;
    Label1: TLabel;
    iatcodigo: TDBEdit;
    Label2: TLabel;
    iatidentificacao: TDBEdit;
    registroatrcodigo: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fiat: Tfiat;

  // Início ID do Módulo fraiat
const
  vPlIdMd = '01.04.05.002-02';

  // Fim ID do Módulo fraiat

implementation

{$R *.dfm}

procedure Tfiat.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT iat.iatcodigo FROM iat ';
  consulta.SQL.Add('WHERE iat.iatidentificacao = ' + QuotedStr(registroiatidentificacao.AsString) + ' ');
  consulta.SQL.Add('AND iat.atrcodigo = ' + registroatrcodigo.AsString + ' ');

  if Self.Situacao = 'Alterando' then
    consulta.SQL.Add('AND iat.iatcodigo <> ' + registroiatcodigo.AsString);
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Application.MessageBox(PChar('Este atributo já está cadastrado!!' + #13 + #13 + 'Registro: ' + consulta.Fields[0].AsString + '.'), 'Atenção',
      MB_ICONWARNING + MB_OK);
    iatidentificacao.SetFocus;
    Exit;
  end;

  inherited;
end;

procedure Tfiat.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
