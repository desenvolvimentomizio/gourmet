unit uffcb;

interface

uses
  Vcl.Forms, Vcl.ImgList, PngImageList, ufrmbase, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Controls, System.Classes, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  ufuncoes, Winapi.Windows;

type
  Tffcb = class(Tfrmbase)
    Label1: TLabel;
    clbcodigo: TDBEdit;
    flacodigo: TDBEdit;
    Label2: TLabel;
    registroclbcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    registrofcbchave: TIntegerField;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    fla: tuniquery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    registroflaidentificacao: TStringField;
    fcb: tuniquery;
    procedure FormShow(Sender: TObject);
    procedure flacodigoExit(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ffcb: Tffcb;

  // Início ID do Módulo frafcb
const
  vPlIdMd = '01.01.06.001-02';

  // Fim ID do Módulo frafcb

implementation

{$R *.dfm}

procedure Tffcb.flacodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if flacodigo.Field.IsNull then
    Exit;

  if fcb.Locate('flacodigo', flacodigo.Field.AsInteger, []) then
  begin
    Application.MessageBox(PChar('Este colaborador já possui vínculo com esta filial.'), 'Atenção', MB_ICONWARNING + MB_OK);
    flacodigo.Field.AsString := '';
    flacodigo.SetFocus;
  end;
end;

procedure Tffcb.FormShow(Sender: TObject);
begin
  Self.Height := 220;
  Self.Width := 600;

  IdModulo := vPlIdMd;

  inherited;

  clbcodigo.Color := PEG_COR_VALORPADRAO;
  clbcodigo.ReadOnly := True;

  if Self.Situacao = 'Alterando' then
  begin
    fcb.Filter := 'flacodigo <> ' + flacodigo.Field.AsString;
    fcb.Filtered := True;
  end;

  fcb.Params[0].AsInteger := clbcodigo.Field.AsInteger;
  fcb.Open;
end;

end.
