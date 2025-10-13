unit ufrue;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfrue = class(Tfrmbase)
    registroruecodigo: TIntegerField;
    registrorueidentificacao: TStringField;
    Label1: TLabel;
    ruecodigo: TDBEdit;
    Label2: TLabel;
    rueidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frue: Tfrue;

  // Início ID do Módulo frarue
const
  vPlIdMd = '01.01.05.014-02';

  // Fim ID do Módulo frarue

implementation

{$R *.dfm}

procedure Tfrue.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT rue.ruecodigo FROM rue ';
  consulta.SQL.Add('WHERE rue.rueidentificacao = ''' + registrorueidentificacao.AsString + ''' ');

  if Self.Situacao = 'Alterando' then
    consulta.SQL.Add('AND rue.ruecodigo <> ' + registroruecodigo.AsString);

  consulta.Open;

  if consulta.IsEmpty then
    inherited
  else
    Application.MessageBox(PChar('Esta Rua já está cadastrado!!' + #13 + #13 + 'Código: ' + consulta.FieldByName('ruecodigo').AsString), 'Duplicidade de Rua',
      MB_ICONWARNING + MB_OK);
end;

procedure Tfrue.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
