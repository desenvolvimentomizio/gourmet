unit ufbai;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList, Dialogs, System.SysUtils;

type
  Tfbai = class(Tfrmbase)
    registrobaicodigo: TIntegerField;
    registrobaiidentificacao: TStringField;
    registroprocodigo: TIntegerField;
    Label1: TLabel;
    baicodigo: TDBEdit;
    Label2: TLabel;
    baiidentificacao: TDBEdit;
    Label3: TLabel;
    procodigo: TDBEdit;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    procedure baiidentificacaoExit(Sender: TObject);
    procedure procodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbai: Tfbai;

  // Início ID do Módulo fbai
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo fbai

implementation

{$R *.dfm}

procedure Tfbai.baiidentificacaoExit(Sender: TObject);
begin
  inherited;
  if Self.ActiveControl = bcancela then
    Exit;

  Self.ValidaSaida(Sender);

  if psituacao.Caption = 'Incluindo' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select baicodigo, baiidentificacao from bai where baiidentificacao=' + QuotedStr(baiidentificacao.Field.AsString);
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      ShowMessage('Este bairro já esta cadastrado com o código: ' + consulta.FieldByName('baicodigo').AsString);
      baiidentificacao.Field.AsString := '';
      baiidentificacao.SetFocus;
    end;
  end;

end;

procedure Tfbai.procodigoExit(Sender: TObject);
begin

  if Self.ActiveControl = bcancela then
    Exit;

  Self.ValidaSaida(Sender);

  if procodigo.Field.AsString = '' then
    Exit;

  consulta.Close;
  consulta.SQL.Text := 'select procodigo from pro where procodigo=' + procodigo.Field.AsString;
  consulta.Open;

  if consulta.IsEmpty then
  begin
    ShowMessage('Código de taxa não localizado!');
    procodigo.Field.AsString := '';
    procodigo.SetFocus;

  end;

  inherited;

end;

end.
