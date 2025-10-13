unit ufmrv;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfmrv = class(Tfrmbase)
    registromrvcodigo: TIntegerField;
    registromrvidentificacao: TStringField;
    Label1: TLabel;
    mrvcodigo: TDBEdit;
    Label2: TLabel;
    mrvidentificacao: TDBEdit;
    procedure mrvidentificacaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmrv: Tfmrv;

implementation

{$R *.dfm}

procedure Tfmrv.mrvidentificacaoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if mrvidentificacao.Field.AsString = '' then
    Exit;

  consulta.Close;
  consulta.SQL.Text := 'SELECT m.mrvcodigo, m.mrvidentificacao FROM mrv m ';
  consulta.SQL.Add('WHERE m.mrvidentificacao = :mrvidentificacao ');

  if Situacao = 'Alterando' then
  begin
    consulta.SQL.Add('AND m.mrvcodigo <> :mrvcodigo');
    consulta.Params[1].AsInteger := mrvcodigo.Field.AsInteger;
  end;

  consulta.Params[0].AsString := mrvidentificacao.Field.AsString;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Application.MessageBox(PChar('Essa Marca de Veículo já está cadastrado.' + #13 + #13 + 'Verifique o código ' + consulta.Fields[0].AsString + ' - ' +
      consulta.Fields[1].AsString + '.'), '', MB_ICONWARNING + MB_OK);
    mrvidentificacao.SetFocus;
    Exit;
  end;
end;

end.
