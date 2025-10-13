unit ufape;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfape = class(Tfrmbase)
    registroapecodigo: TIntegerField;
    registroapeidentificacao: TStringField;
    Label1: TLabel;
    apecodigo: TDBEdit;
    Label2: TLabel;
    apeidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fape: Tfape;

  // Início ID do Módulo fraape
const
  vPlIdMd = '01.01.05.017-02';

  // Fim ID do Módulo fraape

implementation

{$R *.dfm}

procedure Tfape.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT ape.apecodigo FROM ape ';
  consulta.SQL.Add('WHERE ape.apeidentificacao = ''' + registroapeidentificacao.AsString + ''' ');

  if Self.Situacao = 'Alterando' then
    consulta.SQL.Add('AND ape.apecodigo <> ' + registroapecodigo.AsString);

  consulta.Open;

  if consulta.IsEmpty then
    inherited
  else
    Application.MessageBox(PChar('Esta Apartamento já está cadastrado!!' + #13 + #13 + 'Código: ' + consulta.FieldByName('apecodigo').AsString),
      'Duplicidade de Apartamento', MB_ICONWARNING + MB_OK);
end;

procedure Tfape.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
