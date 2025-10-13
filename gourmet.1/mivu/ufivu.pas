unit ufivu;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, uBuscaProduto;

type
  Tfivu = class(Tfrmbase)
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    spd: TUniQuery;
    spdspdchave: TIntegerField;
    spdspdexercicio: TIntegerField;
    spdspddatainicial: TDateField;
    spdspddatafinal: TDateField;
    spdspddatabalanco: TDateField;
    spdpcccodigo: TStringField;
    registroivtchave: TIntegerField;
    registrospdchave: TIntegerField;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registropcccodigo: TStringField;
    registroivtquantidade: TFloatField;
    registroivtvalor: TFloatField;
    registroivttotal: TFloatField;
    registroivtproprietario: TStringField;
    registroivtdescricao: TStringField;
    registroetdcodigo: TIntegerField;
    Label2: TLabel;
    ivtchave: TDBEdit;
    Label1: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    ivtquantidade: TDBEdit;
    Label4: TLabel;
    ivtvalor: TDBEdit;
    Label5: TLabel;
    ivttotal: TDBEdit;
    cd: TEdit;
    ivt: TUniQuery;
    ivtivtchave: TIntegerField;
    ivtspdexercicio: TIntegerField;
    ivtspdchave: TIntegerField;
    ivtprocodigo: TIntegerField;
    ivtpronome: TStringField;
    ivtivtquantidade: TFloatField;
    ivtivtvalor: TFloatField;
    ivtivttotal: TFloatField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ivtquantidadeChange(Sender: TObject);
    procedure ivttotalEnter(Sender: TObject);
    procedure ivttotalExit(Sender: TObject);
    procedure procodigoExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure cdExit(Sender: TObject);
    procedure cdKeyPress(Sender: TObject; var Key: Char);
  private
    procedure BuscaPro;
    procedure AjustaValor;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fivu: Tfivu;

  // Início ID do Módulo fraivu
const
  vPlIdMd = '02.04.12.002-02';

  // Fim ID do Módulo fraivu

implementation

{$R *.dfm}

procedure Tfivu.bconfirmaClick(Sender: TObject);
var
  vlIvtChave: integer;
  smsg: string;
  vlQtda: double;
begin
  Self.ivttotal.Field.AsCurrency := Self.ivtquantidade.Field.AsFloat * Self.ivtvalor.Field.AsCurrency;
  ivt.Close;
  ivt.Open;
  if ivt.Locate('procodigo', procodigo.Field.AsInteger, []) then
  begin
    vlIvtChave := ivtivtchave.AsInteger;
    smsg := 'Este produto já faz parte deste inventário.' + #13 + 'Deseja SOMAR esta quantidade a já contada anteriormente ?';
    If Application.MessageBox(PChar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin
      vlQtda := Self.registroivtquantidade.AsFloat;

      registro.Cancel;
      registro.Close;
      registro.Params[0].AsInteger := vlIvtChave;
      registro.Open;
      registro.Edit;
      registroivtquantidade.AsFloat := registroivtquantidade.AsFloat + vlQtda;
      registroivttotal.AsFloat := registroivtquantidade.AsFloat * Self.registroivtvalor.AsFloat;
      registro.Post;
      Close;
    End
    else
    begin
      Self.bcancela.Click;
    end;

  end
  else
  begin
    inherited;

  end;

end;

procedure Tfivu.cdExit(Sender: TObject);
begin
  inherited;
  BuscaPro;
end;

procedure Tfivu.cdKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
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

procedure Tfivu.BuscaPro;
var
  cdbr: integer;
  vEmbalagem: integer;
  vVariacao: integer;

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

      AjustaValor;
      Self.ivtquantidade.setfocus;
    end;
  end;
end;

procedure Tfivu.AjustaValor;
begin
  if Self.procodigo.Field.AsString <> '' then
  begin
    consulta.Close;
    consulta.sql.Text := 'SELECT pun.puncusto FROM pun ';
    consulta.sql.Add('INNER JOIN pro ON pun.procodigo = pro.procodigo AND pun.unicodigobase = pro.unicodigo ');
    consulta.sql.Add('where pro.procodigo=' + Self.procodigo.Field.AsString);
    consulta.Open;
    Self.ivtvalor.Field.AsString := consulta.fields[0].AsString;
    consulta.Close;
  end;
end;

procedure Tfivu.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfivu.ivtquantidadeChange(Sender: TObject);
begin
  inherited;
  try
    Self.ivttotal.Field.AsFloat := Self.ivtvalor.Field.AsFloat * Self.ivtquantidade.Field.AsFloat;
  except
  end;
end;

procedure Tfivu.ivttotalEnter(Sender: TObject);
begin
  inherited;
  Self.ivttotal.Field.AsCurrency := Self.ivtquantidade.Field.AsFloat * Self.ivtvalor.Field.AsCurrency;
end;

procedure Tfivu.ivttotalExit(Sender: TObject);
begin
  inherited;
  Self.bconfirma.setfocus;
end;

procedure Tfivu.procodigoExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);
  AjustaValor;
end;

procedure Tfivu.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  spd.Close;
  spd.Open;

  Self.registrospdchave.AsInteger := Self.spdspdchave.AsInteger;
  Self.registropcccodigo.AsString := Self.spdpcccodigo.AsString;
  Self.registroivtproprietario.AsInteger := 0;
end;

end.
