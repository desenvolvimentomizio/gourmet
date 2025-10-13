unit ufane;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfane = class(Tfrmbase)
    registroanecodigo: TIntegerField;
    registroaneidentificacao: TStringField;
    Label1: TLabel;
    anecodigo: TDBEdit;
    Label2: TLabel;
    aneidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fane: Tfane;

  // In�cio ID do M�dulo fraane
const
  vPlIdMd = '01.01.05.016-02';

  // Fim ID do M�dulo fraane

implementation

{$R *.dfm}

procedure Tfane.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT ane.anecodigo FROM ane ';
  consulta.SQL.Add('WHERE ane.aneidentificacao = ''' + registroaneidentificacao.AsString + ''' ');

  if Self.Situacao = 'Alterando' then
    consulta.SQL.Add('AND ane.anecodigo <> ' + registroanecodigo.AsString);

  consulta.Open;

  if consulta.IsEmpty then
    inherited
  else
    Application.MessageBox(PChar('Esta Andar j� est� cadastrado!!' + #13 + #13 + 'C�digo: ' + consulta.FieldByName('anecodigo').AsString),
      'Duplicidade de Andar', MB_ICONWARNING + MB_OK);
end;

procedure Tfane.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
