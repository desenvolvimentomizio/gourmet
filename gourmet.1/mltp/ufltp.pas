unit ufltp;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs;

type
  Tfltp = class(Tfrmbase)
    registroltpcodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registroltplote: TStringField;
    registroltpvencimento: TDateField;
    registrosltcodigo: TIntegerField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    Label1: TLabel;
    ltpcodigo: TDBEdit;
    Label2: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    ltplote: TDBEdit;
    Label4: TLabel;
    ltpvencimento: TDBEdit;
    cd: TEdit;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure cdKeyPress(Sender: TObject; var Key: Char);
    procedure cdExit(Sender: TObject);
  private
    procedure BuscaPro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fltp: Tfltp;

  // Início ID do Módulo fltp
const
  vPlIdMd = '02.04.05.001-02';
  // Fim ID do Módulo fltp

implementation

{$R *.dfm}

uses uBuscaProduto;

procedure Tfltp.cdExit(Sender: TObject);
begin
  inherited;
  BuscaPro;
end;

procedure Tfltp.cdKeyPress(Sender: TObject; var Key: Char);

begin
  { inherited; }
  if Key = #27 then
  begin
    Key := #0;
    cd.Text := '';
    cd.Visible := false;
    procodigo.setfocus;
  end
  else if Key = #13 then
  begin

    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure Tfltp.BuscaPro;
var
  cdbr: Integer;
  vEmbalagem: Integer;
  vVariacao: Integer;
begin
  if cd.Text = '' then
  begin
    cd.Text := '';
    cd.Visible := false;
    procodigo.setfocus;
  end
  else
  begin
    cdbr := BuscaProdutoBarra(Application, Self.zcone, cd.Text, vEmbalagem, vVariacao);
    if cdbr = -1 then
    begin
      showmessage('Produto não localizado!');
      cd.Text := '';
      cd.setfocus;

    end
    else
    begin
      cd.Text := '';
      cd.Visible := false;
      procodigo.Field.AsInteger := cdbr;
      Self.ValidaSaida(procodigo);
      Self.ltplote.setfocus;
    end;
  end;
end;

procedure Tfltp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
  if psituacao.Caption = 'Alterando' then
  begin
    procodigo.setfocus;
    cd.Visible := false;
  end;

end;

procedure Tfltp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrosltcodigo.AsInteger := 0;
end;

end.
