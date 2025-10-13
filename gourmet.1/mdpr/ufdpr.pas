unit ufdpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, System.ImageList;

type
  Tfdpr = class(Tfrmbase)
    registrodprcodigo: TIntegerField;
    registrodpridentificacao: TStringField;
    Label1: TLabel;
    dprcodigo: TDBEdit;
    Label2: TLabel;
    dpridentificacao: TDBEdit;
    dprVerif: TUniQuery;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgcodigo: TIntegerField;
    registroccgidentificacao: TStringField;
    labccgcodigo: TLabel;
    ccgcodigo: TDBEdit;
    cfgcfgctbusaccg: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure dpridentificacaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdpr: Tfdpr;

implementation

{$R *.dfm}

procedure Tfdpr.dpridentificacaoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if Trim(dpridentificacao.Field.AsString) = '' then
    Exit;

  dprVerif.Close;
  dprVerif.Params[0].AsString := dpridentificacao.Field.AsString;
  dprVerif.Params[1].AsBoolean := Situacao = 'Alterando';
  dprVerif.Params[2].AsInteger := dprcodigo.Field.AsInteger;
  dprVerif.Open;

  if not dprVerif.IsEmpty then
  begin
    Application.MessageBox(PChar('Esta Divisão já está cadastrada.' + #13 + #13 + 'Verifique o registro ' + dprVerif.Fields[0].AsString + ' - ' + dprVerif.Fields[1].AsString),
      'Atenção', MB_ICONWARNING + MB_OK);
    dpridentificacao.SetFocus;
  end;
end;

procedure Tfdpr.FormShow(Sender: TObject);
begin
  Self.Height := 210;
  Self.Width := 540;

  cfg.Connection:=ZCone;
  cfg.ParamByName('cfgcodigo').AsInteger:=acesso.Filial;
  cfg.Open;

    if cfgcfgctbusaccg.AsInteger = 1 then
  begin
    labccgcodigo.Visible := true;
    ccgcodigo.Visible := true;
  end
  else
  begin
    labccgcodigo.Visible := false;
    ccgcodigo.Visible := false;
  end;



  inherited;


end;

END.
