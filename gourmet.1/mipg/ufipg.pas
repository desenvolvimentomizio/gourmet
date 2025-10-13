unit ufipg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfipg = class(Tfrmbase)
    registroipgchave: TIntegerField;
    registroppgchave: TIntegerField;
    registrorfichave: TIntegerField;
    registrorfivalor: TFloatField;
    registroipgnumerocheque: TStringField;
    registroclbcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    Label1: TLabel;
    ipgchave: TDBEdit;
    Label3: TLabel;
    rfichave: TDBEdit;
    Label4: TLabel;
    tficodigo: TDBEdit;
    lbtfinumerocheque: TLabel;
    ipgnumerocheque: TDBEdit;
    Label6: TLabel;
    rfivalor: TDBEdit;
    v_rfi: TUniQuery;
    v_rfietdcodigo: TIntegerField;
    v_rfirfiemissao: TDateField;
    v_rfirfivencimento: TDateField;
    v_rfirfinumero: TStringField;
    v_rfirfihistorico: TStringField;
    v_rfietdidentificacao: TStringField;
    v_rfirfidias: TIntegerField;
    v_rfirfijuros: TFloatField;
    v_rfirfisaldogeral: TFloatField;
    v_rfirfichave: TIntegerField;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Dv_rfi: TDataSource;
    etdidentificacao: TDBEdit;
    Label7: TLabel;
    rfiemissao: TDBEdit;
    Label8: TLabel;
    rfivencimento: TDBEdit;
    Label9: TLabel;
    rfihistorico: TDBEdit;
    Label10: TLabel;
    rfinumero: TDBEdit;
    Label11: TLabel;
    rfidias: TDBEdit;
    Label12: TLabel;
    rfijuros: TDBEdit;
    Label13: TLabel;
    rfisaldogeral: TDBEdit;
    tfi: TUniQuery;
    tfitficodigo: TIntegerField;
    tfitfiidentificacao: TStringField;
    registrotfiidenticacao: TStringField;
    registrotficodigo: TIntegerField;
    cpa: TUniQuery;
    cparfichave: TIntegerField;
    cpaetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    v_rfitficodigo: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure rfichaveExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tficodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fipg: Tfipg;

implementation

{$R *.dfm}

procedure Tfipg.FormShow(Sender: TObject);
begin
  inherited;
  txtFiltro := 'rfisaldogeral>0';
end;

procedure Tfipg.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registroflacodigo.AsInteger := acesso.Filial;
  registroppgchave.AsString := vChaveMestre;
end;

procedure Tfipg.rfichaveExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;
  if rfichave.Field.AsString <> '' then
  begin
    v_rfi.Close;
    v_rfi.ParamByName('rfichave').AsInteger := rfichave.Field.AsInteger;
    v_rfi.Open;

    if v_rfirfisaldogeral.AsCurrency <= 0 then
    begin
      ShowMessage('Registro já liquidado!');
      rfichave.Field.AsString := '';
      rfichave.SetFocus;
    end
    else
    begin
      tficodigo.SetFocus;
      rfivalor.Field.AsCurrency:=v_rfirfisaldogeral.AsCurrency;
      tficodigo.Field.AsInteger:=v_rfitficodigo.asinteger;
      bconfirma.Enabled := True;
    end;
  end
  else
    bconfirma.Enabled := False;

end;

procedure Tfipg.tficodigoExit(Sender: TObject);
begin
  inherited;

  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;
  if tficodigo.Field.AsString = '1' then
  begin
    ipgnumerocheque.Visible := True;
    lbtfinumerocheque.Visible := True;
    ipgnumerocheque.SetFocus;
  end
  else
  begin
    ipgnumerocheque.Visible := False;
    lbtfinumerocheque.Visible := False;
    rfivalor.SetFocus;
  end;

end;

end.
