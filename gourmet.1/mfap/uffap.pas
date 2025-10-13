unit uffap;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tffap = class(Tfrmbase)
    registrofapcodigo: TIntegerField;
    registrofabcodigo: TIntegerField;
    registrofapproprio: TStringField;
    fab: tuniquery;
    fabfabcodigo: TIntegerField;
    fabfabidentificacao: TStringField;
    registrofabidentificacao: TStringField;
    Label1: TLabel;
    fapcodigo: TDBEdit;
    Label2: TLabel;
    fabcodigo: TDBEdit;
    Label3: TLabel;
    fapproprio: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffap: Tffap;

  // Início ID do Módulo frafap
const
  vPlIdMd = '01.01.05.012-02';

  // Fim ID do Módulo frafap

implementation

{$R *.dfm}

procedure Tffap.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT fap.fapcodigo FROM fap ';
  consulta.SQL.Add('WHERE fap.fabcodigo = ' + registrofabcodigo.AsString + ' ');
  consulta.SQL.Add('AND fap.fapproprio = ''' + registrofapproprio.AsString + ''' ');
  if Situacao = 'Alterando' then
    consulta.SQL.Add('AND fap.fapcodigo <> ' + registrofapcodigo.AsString);
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Application.MessageBox(PChar('Esta referência já está cadastrada!' + #13 + 'Código: ' + consulta.Fields[0].AsString), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited
end;

procedure Tffap.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
