unit ufrlg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufuncoes;

type
  Tfrlg = class(Tfrmbase)
    registrorlgchave: TIntegerField;
    registrorlgdescricao: TStringField;
    Label1: TLabel;
    rlgchave: TDBEdit;
    Label2: TLabel;
    rlgdescricao: TDBMemo;
    registroetdcodigo: TIntegerField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdcodigo: TDBText;
    detd: TDataSource;
    lbetdcodigo: TLabel;
    etdidentificacao: TDBText;
    chd: TUniQuery;
    chdchdchave: TIntegerField;
    chdchdregistro: TDateTimeField;
    chdtcmcodigo: TIntegerField;
    chdchdidentificacao: TStringField;
    chdttccodigo: TIntegerField;
    chdtprcodigo: TIntegerField;
    chdetdcodigo: TIntegerField;
    chdtsoemail: TStringField;
    chdchddescricao: TStringField;
    chdchdidtela: TStringField;
    bchamado: TButton;
    tec: TUniQuery;
    tecteccodigo: TIntegerField;
    ech: TUniQuery;
    echechchave: TIntegerField;
    echchdchave: TIntegerField;
    echechregistro: TDateTimeField;
    echclbcodigo: TIntegerField;
    echteccodigo: TIntegerField;
    rch: TUniQuery;
    rchrchchave: TIntegerField;
    rchchdchave: TIntegerField;
    rchrchregistro: TDateTimeField;
    rchclbcodigo: TIntegerField;
    rchrchatribuinte: TIntegerField;
    cfgcfgetdempresa: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure rlgdescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure rlgdescricaoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rlgdescricaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bchamadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpNumeroBinado: string;
  end;

var
  frlg: Tfrlg;

implementation

uses
  ufchd;

{$R *.dfm}

procedure Tfrlg.bchamadoClick(Sender: TObject);
begin
  inherited;

  registro.Post;
  chd.Close;
  chd.Open;
  chd.Append;

  chdchdregistro.AsString := agora(Application, zcone);
  chdtcmcodigo.AsInteger := 3;
  chdchdidentificacao.AsString := rlgdescricao.Field.AsString;
  chdttccodigo.AsInteger := 2;
  chdtprcodigo.AsInteger := 0;
  if etdcodigo.Visible then
  begin
    if etdcodigo.Field.AsString<>'' then
      chdetdcodigo.AsInteger := etdcodigo.Field.AsInteger;
  end
  else
  begin
    cfg.Close;
    cfg.ParamByName('flacodigo').AsInteger:=acesso.Filial;
    cfg.Open;
    chdetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
  end;



  chdtsoemail.AsString := '';
  chdchddescricao.AsString := rlgdescricao.Field.AsString;
  chd.Post;

  CriaFormulario(tfchd, chdchdchave.AsString, '');

  consulta.Close;
  consulta.SQL.Text := 'update rlg set rlgtipo=2, chdchave=' + chdchdchave.AsString + ' where rlgchave=' + registrorlgchave.AsString;
  consulta.ExecSQL;

  tec.Close;
  tec.ParamByName('ttccodigo').AsInteger := chdttccodigo.AsInteger;
  tec.Open;
  ech.Close;
  ech.ParamByName('chdchave').AsInteger := chdchdchave.AsInteger;
  ech.ParamByName('teccodigo').AsInteger := tecteccodigo.AsInteger;
  ech.Open;

  if ech.IsEmpty then
    ech.Append
  else
    ech.Edit;

  echchdchave.AsInteger := chdchdchave.AsInteger;
  echechregistro.AsString := agora(Application, zcone);
  echclbcodigo.AsInteger := acesso.Usuario;
  echteccodigo.AsInteger := tecteccodigo.AsInteger;
  ech.Post;

  rch.Close;
  rch.ParamByName('chdchave').AsInteger := chdchdchave.AsInteger;
  rch.Open;

  if rch.IsEmpty then
    rch.Append
  else
    rch.Edit;
  rchchdchave.AsInteger := chdchdchave.AsInteger;
  rchrchregistro.AsString := agora(Application, zcone);
  rchclbcodigo.AsInteger := acesso.Usuario;
  rchrchatribuinte.AsInteger := acesso.Usuario;

  rch.Post;

  Close;

end;

procedure Tfrlg.FormShow(Sender: TObject);
var
  i: integer;
  n: string;
begin
  inherited;

  if registroetdcodigo.AsString <> '' then
  begin
    etd.Close;
    etd.ParamByName('etdcodigo').AsInteger := registroetdcodigo.AsInteger;
    etd.Open;
    etdidentificacao.Visible := true;
    lbetdcodigo.Visible := true;
    etdcodigo.Visible := true;

  end
  else
  begin
    etdidentificacao.Visible := false;
    lbetdcodigo.Visible := false;
    etdcodigo.Visible := false;
  end;

end;

procedure Tfrlg.rlgdescricaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  { inherited; }

end;

procedure Tfrlg.rlgdescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  { inherited; }

end;

procedure Tfrlg.rlgdescricaoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  { inherited; }

end;

end.
