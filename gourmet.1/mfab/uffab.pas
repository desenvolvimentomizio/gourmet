unit uffab;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tffab = class(Tfrmbase)
    registrofabcodigo: TIntegerField;
    registrofabidentificacao: TStringField;
    Label1: TLabel;
    fabcodigo: TDBEdit;
    Label2: TLabel;
    fabidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffab: Tffab;

  // Início ID do Módulo frafab
const
  vPlIdMd = '01.01.05.011-02';

  // Fim ID do Módulo frafab

implementation

{$R *.dfm}

procedure Tffab.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT fab.fabcodigo FROM fab ';
  consulta.SQL.Add('WHERE fab.fabidentificacao = ''' + registrofabidentificacao.AsString + ''' ');
  if Situacao = 'Alterando' then
    consulta.SQL.Add('AND fab.fabcodigo <> ' + registrofabcodigo.AsString);
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Application.MessageBox(PChar('Este Fabricante já está cadastrado!' + #13 + 'Código: ' + consulta.Fields[0].AsString), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;
end;

procedure Tffab.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
