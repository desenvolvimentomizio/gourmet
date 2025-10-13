unit ufgrrdc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uFuncoes, System.ImageList, Vcl.ImgList, PngImageList;

type
  Tfgrrdc = class(Tfrmbase)
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
    bdc: TUniQuery;
    bdcbdccodigo: TIntegerField;
    bdcbdcidentificacao: TStringField;
    registrobdccodigo: TIntegerField;
    registrobdcidentificacao: TStringField;
    bdccodigo: TDBEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure rdcparcelasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // Início ID do Módulo frardc
const
  vPlIdMd = '02.02.80.001-02';

  // Fim ID do Módulo frardc

var
  fgrrdc: Tfgrrdc;

implementation

{$R *.dfm}

procedure Tfgrrdc.FormShow(Sender: TObject);
begin
  Self.Height := 250;
  Self.Width := 390;

  IdModulo := vPlIdMd;

  dtl.Close;
  dtl.Params[0].AsString := vChaveMestre;
  dtl.Open;

  vChaveMestre := '';

  inherited;

  if dtlmdacodigo.AsInteger = mdaCartaoDebito then
  begin
    rdcparcelas.Enabled := False;
    Self.Caption := Self.Caption + ' de Débito'
  end
  else
    Self.Caption := Self.Caption + ' de Crédito';
end;

procedure Tfgrrdc.rdcparcelasExit(Sender: TObject);
begin
  if TDBEdit(Sender).Field.Asfloat <= 0 then
  begin
    Application.MessageBox(PChar('Valor inválido!'), 'Atenção', MB_ICONWARNING + MB_OK);
    TDBEdit(Sender).SetFocus;
    Exit;
  end;

  ValidaSaida(Sender);
end;

procedure Tfgrrdc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if adc.RecordCount = 1 then
    registroadccodigo.AsInteger := adcadccodigo.AsInteger;

  // registrordcvalor.AsFloat := dtldtlsaldo.AsFloat;
  registrordcparcelas.AsInteger := 1;
end;

procedure Tfgrrdc.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registrordcdata.Asfloat := Date;
end;

end.
