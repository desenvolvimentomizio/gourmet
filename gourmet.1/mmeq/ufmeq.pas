unit ufmeq;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfmeq = class(Tfrmbase)
    registromeqcodigo: TIntegerField;
    registromeqidentificacao: TStringField;
    Label1: TLabel;
    meqcodigo: TDBEdit;
    Label2: TLabel;
    meqidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure meqidentificacaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmeq: Tfmeq;

  // Início ID do Módulo frameq
const
  vPlIdMd = '01.03.80.004-02';

  // Fim ID do Módulo frameq

implementation

{$R *.dfm}

procedure Tfmeq.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;
end;

procedure Tfmeq.meqidentificacaoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if meqidentificacao.Field.AsString = '' then
    Exit;

  consulta.Close;
  consulta.SQL.Text := 'SELECT m.meqcodigo, m.meqidentificacao FROM meq m ';
  consulta.SQL.Add('WHERE meqidentificacao = :meqidentificacao ');

  if Situacao = 'Alterando' then
  begin
    consulta.SQL.Add('AND m.meqcodigo <> :meqcodigo');
    consulta.Params[1].AsInteger := meqcodigo.Field.AsInteger;
  end;

  consulta.Params[0].AsString := meqidentificacao.Field.AsString;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Application.MessageBox(PChar('Essa Marca de Equipamento já está cadastrado.' + #13 + #13 + 'Verifique o código ' + consulta.Fields[0].AsString + ' - ' +
      consulta.Fields[1].AsString + '.'), '', MB_ICONWARNING + MB_OK);
    meqidentificacao.SetFocus;
    Exit;
  end;
end;

end.
