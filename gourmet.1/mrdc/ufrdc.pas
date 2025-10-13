unit ufrdc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uFuncoes, System.ImageList, Vcl.ImgList,
  PngImageList;

type
  Tfrdc = class(Tfrmbase)
    registrordcchave: TIntegerField;
    registrordcvalor: TFloatField;
    registrordcnrauto: TStringField;
    registrordcdata: TDateField;
    registroadccodigo: TIntegerField;
    registrordcparcelas: TIntegerField;
    Label1: TLabel;
    rdcvalor: TDBEdit;
    Label2: TLabel;
    rdcnrauto: TDBEdit;
    Label4: TLabel;
    rdcparcelas: TDBEdit;
    adc: TUniQuery;
    adcadccodigo: TIntegerField;
    adcadcidentificacao: TStringField;
    registroadcidentificacao: TStringField;
    Label3: TLabel;
    adccodigo: TDBEdit;
    dtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtldtlsaldo: TFloatField;
    dtlmdacodigo: TIntegerField;
    adcadcliquidaautomatico: TIntegerField;
    registrobdccodigo: TIntegerField;
    bdc: TUniQuery;
    bdcbdccodigo: TIntegerField;
    bdcbdcidentificacao: TStringField;
    registrobdcidentificacao: TStringField;
    Label5: TLabel;
    bdccodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure rdcparcelasExit(Sender: TObject);
    procedure bdccodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpDtlChave: string;
  end;

  // Início ID do Módulo frardc
const
  vPlIdMd = '02.02.80.001-02';

  // Fim ID do Módulo frardc

var
  frdc: Tfrdc;

implementation

{$R *.dfm}

procedure Tfrdc.bconfirmaClick(Sender: TObject);
begin

  inherited;

  consulta.Close;
  consulta.SQL.Text := 'update dtl set rdcnrauto=' +QuotedStr(rdcnrauto.Field.AsString) + ' where dtlchave=' + vpDtlChave;
  consulta.ExecSQL;

end;

procedure Tfrdc.bdccodigoExit(Sender: TObject);
begin
  inherited;

  if Self.ActiveControl = bcancela then
  begin
    Exit;
  end;

  ValidaSaida(Sender);

  consulta.Close;
  consulta.SQL.Text := 'select adccodigo from adc where bdccodigo=' + bdccodigo.Field.AsString;
  consulta.Open;
  if not consulta.IsEmpty then
  begin
    if consulta.FieldByName('adccodigo').AsString <> '' then
    begin
      adccodigo.Field.AsString := consulta.FieldByName('adccodigo').AsString;
    end;
  end;

end;

procedure Tfrdc.FormShow(Sender: TObject);
begin
  Self.Height := 250;
  Self.Width := 390;

  IdModulo := vPlIdMd;

  dtl.Close;
  dtl.Params[0].AsString := vChaveMestre;
  dtl.Open;

  vpDtlChave := vChaveMestre;

  adc.Connection := ZCone;
  adc.Open;

  if adc.RecordCount = 1 then
  begin
    adccodigo.Visible := False;
    Label3.Visible := False;
  end
  else
  begin
    adccodigo.Visible := true;
    Label3.Visible := true;
    adccodigo.SetFocus;
  end;

  vChaveMestre := '';

  inherited;

  if dtlmdacodigo.AsInteger = mdaCartaoDebito then
  begin
    rdcparcelas.Enabled := False;
    Self.Caption := Self.Caption + ' de Débito'
  end
  else
    Self.Caption := Self.Caption + ' de Crédito';

  if adc.RecordCount = 1 then
  begin
    adccodigo.Visible := False;
    Label3.Visible := False;
    registroadccodigo.AsInteger := adcadccodigo.AsInteger;
    bdccodigo.SetFocus;
  end
  else
  begin
    adccodigo.Visible := true;
    Label3.Visible := true;
    adccodigo.SetFocus;
  end;

end;

procedure Tfrdc.rdcparcelasExit(Sender: TObject);
begin
  if Self.ActiveControl = bcancela then
    Exit;

  if TDBEdit(Sender).Field.AsFloat <= 0.10 then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    TDBEdit(Sender).SetFocus;
    Exit;
  end;

  ValidaSaida(Sender);
end;

procedure Tfrdc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if adc.RecordCount = 1 then
    registroadccodigo.AsInteger := adcadccodigo.AsInteger;

  registrordcvalor.AsFloat := dtldtlsaldo.AsFloat;
  registrordcparcelas.AsInteger := 1;
end;

procedure Tfrdc.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registrordcdata.AsFloat := Date;
end;

end.
