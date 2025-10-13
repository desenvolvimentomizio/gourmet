unit ufsms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, ufuncoes,
  ACBrSMSClass, ACBrBase, ACBrSMS, Vcl.OleCtrls, SHDocVw;

type
  Tfsms = class(Tfrmbase)
    etf: TUniQuery;
    etfetfcodigo: TIntegerField;
    etfetftelefone: TStringField;
    etfetdidentificacao: TStringField;
    Detf: TDataSource;
    DBGridClientes: TDBGrid;
    etfenvio: TUniQuery;
    Detfenvio: TDataSource;
    DBGridSMS: TDBGrid;
    SBIncluirUm: TSpeedButton;
    SBIncluirTodos: TSpeedButton;
    SBExcluirUn: TSpeedButton;
    SBExcluirTodos: TSpeedButton;
    sms: TUniQuery;
    smssmschave: TIntegerField;
    smspsmchave: TIntegerField;
    smsetfcodigo: TIntegerField;
    smssmstexto: TStringField;
    smssmsregistro: TDateTimeField;
    psm: TUniQuery;
    psmpsmchave: TIntegerField;
    etfenvioetfcodigo: TIntegerField;
    etfenvioetftelefone: TStringField;
    etfenvioetdidentificacao: TStringField;
    psmpsmtexto01: TStringField;
    plquantidades: TPanel;
    plDisponivel: TPanel;
    plEnviar: TPanel;
    etfenviosmsenvio: TDateTimeField;
    ACBrSMS1: TACBrSMS;
    trm: TUniQuery;
    trmtrmcodigo: TIntegerField;
    trmtrmmodemmodelo: TStringField;
    trmtrmmodemporta: TStringField;
    trmtrmmodemvelocidade: TStringField;
    smsenvio: TUniQuery;
    smsenviosmschave: TIntegerField;
    smsenviopsmchave: TIntegerField;
    smsenvioetfcodigo: TIntegerField;
    smsenviosmstexto: TStringField;
    smsenviosmsregistro: TDateTimeField;
    smsenviosmsenvio: TDateTimeField;
    ProgressBar: TProgressBar;
    rbMetodoEnvio: TRadioGroup;
    WebBrowser: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure SBIncluirUmClick(Sender: TObject);
    procedure SBExcluirUnClick(Sender: TObject);
    procedure SBIncluirTodosClick(Sender: TObject);
    procedure SBExcluirTodosClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure ACBrSMS1AntesEnvio(const ATelefone, AMensagem: string; ADataHora: TDateTime);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsms: Tfsms;

implementation

{$R *.dfm}

procedure Tfsms.ACBrSMS1AntesEnvio(const ATelefone, AMensagem: string; ADataHora: TDateTime);
begin
  inherited;
  // consulta.Close;
  // consulta.SQL.Text:='update sms set smsenvio='+QuotedStr( datetimetostr(ADataHora) )+ ' where smsetfcodigo
end;

procedure Tfsms.bconfirmaClick(Sender: TObject);
var
  IndiceMsgEnviada: String;
  vlsql: string;
  i: integer;
  vlLinha: string;
  vlDestinos: String;
begin

  if rbMetodoEnvio.ItemIndex = 1 then
  begin

    ProgressBar.Max := etfenvio.RecordCount;
    application.ProcessMessages;
    etfenvio.First;
    i := 0;
    vlDestinos := '';
    while not etfenvio.Eof do
    begin

      // enviar o sms
      try
        if i > 99 then
        begin
          vlLinha := StringReplace(semacento(psmpsmtexto01.AsString), ' ', '%20', [rfReplaceAll, rfIgnoreCase]);
          vlLinha := 'http://54.173.24.177/painel/api.ashx?action=sendsms&lgn=66999223319&pwd=485138&msg=' + vlLinha + '&numbers=' + vlDestinos;
          WebBrowser.Navigate(vlLinha);
          sleep(10000);
          vlDestinos := '';
          i := 0;
        end;
      finally

      end;

      if etfenviosmsenvio.AsString = '' then
      begin
        vlDestinos := vlDestinos + etfenvioetftelefone.AsString + ',';

        smsenvio.Close;
        smsenvio.ParamByName('etfcodigo').AsString := etfenvioetfcodigo.AsString;
        smsenvio.ParamByName('psmchave').AsString := psmpsmchave.AsString;
        smsenvio.Open;
        smsenvio.Edit;
        smsenviosmsenvio.AsString := agora(application, ZCone);
        smsenvio.Post;
        i := i + 1;
        ProgressBar.Position := ProgressBar.Position + 1;
        application.ProcessMessages;
      end;

      etfenvio.Next;
    end;

    if vlDestinos <> '' then
    begin
      vlLinha := StringReplace(semacento(psmpsmtexto01.AsString), ' ', '%20', [rfReplaceAll, rfIgnoreCase]);
      vlLinha := 'http://54.173.24.177/painel/api.ashx?action=sendsms&lgn=66999223319&pwd=485138&msg=' + vlLinha + '&numbers=' + vlDestinos;
      WebBrowser.Navigate(vlLinha);
      vlDestinos := '';
      sleep(10000);

    end;

  end
  else
  begin

    // inherited;
    trm.Close;
    trm.ParamByName('trmcodigo').AsInteger := acesso.Terminal;
    trm.Open;

    if trmtrmmodemmodelo.AsString <> '' then
    begin

      if trmtrmmodemmodelo.AsString = 'Generico' then
        ACBrSMS1.Modelo := modGenerico;

      if trmtrmmodemmodelo.AsString = 'Daruma' then
        ACBrSMS1.Modelo := modDaruma;

      if trmtrmmodemmodelo.AsString = 'ZTE' then
        ACBrSMS1.Modelo := modZTE;

      ACBrSMS1.Device.Porta := trmtrmmodemporta.AsString;
      ACBrSMS1.Device.Baud := trmtrmmodemvelocidade.AsInteger;
      try
        ACBrSMS1.Ativar;
        ACBrSMS1.TrocarBandeja(simCard1)
      except
        ShowMessage('Falha ao ativer o Modem 3G, favor verificar!');
        exit

      end;
      ProgressBar.Max := etfenvio.RecordCount;
      application.ProcessMessages;
      if ACBrSMS1.Ativo then
      begin
        etfenvio.First;
        while not etfenvio.Eof do
        begin
          if etfenviosmsenvio.AsString = '' then
          begin
            // enviar o sms
            try

              ACBrSMS1.EnviarSMS(etfenvioetftelefone.AsString, semacento(psmpsmtexto01.AsString), IndiceMsgEnviada);

              smsenvio.Close;
              smsenvio.ParamByName('etfcodigo').AsString := etfenvioetfcodigo.AsString;
              smsenvio.ParamByName('psmchave').AsString := psmpsmchave.AsString;
              smsenvio.Open;
              smsenvio.Edit;
              smsenviosmsenvio.AsString := agora(application, ZCone);
              smsenvio.Post;
            except
            end;
          end;

          ProgressBar.Position := ProgressBar.Position + 1;
          application.ProcessMessages;

          etfenvio.Next;
        end;

      end;

    end;

  end;
  // Close;

end;

procedure Tfsms.FormShow(Sender: TObject);
begin
  inherited;
  registro.Cancel;

  etf.Close;
  etf.ParamByName('psmchave').AsString := vChaveMestre;
  etf.Open;

  psm.Close;
  psm.ParamByName('psmchave').AsString := vChaveMestre;
  psm.Open;

  etfenvio.Close;
  etfenvio.ParamByName('psmchave').AsString := vChaveMestre;
  etfenvio.Open;

  plDisponivel.Caption := 'Qtd:' + Inttostr(etf.RecordCount);
  plEnviar.Caption := 'Qtd:' + Inttostr(etfenvio.RecordCount);
  application.ProcessMessages;

end;

procedure Tfsms.SBExcluirTodosClick(Sender: TObject);
begin
  inherited;
  etfenvio.First;
  while not etfenvio.Eof do
  begin

    consulta.Close;
    consulta.SQL.Text := 'delete from sms where etfcodigo=' + etfenvioetfcodigo.AsString;
    consulta.ExecSQL;
    etfenvio.Next;
  end;

  etfenvio.Close;
  etfenvio.ParamByName('psmchave').AsString := vChaveMestre;
  etfenvio.Open;

  etf.Close;
  etf.ParamByName('psmchave').AsString := vChaveMestre;
  etf.Open;
  plDisponivel.Caption := 'Qtd:' + Inttostr(etf.RecordCount);
  plEnviar.Caption := 'Qtd:' + Inttostr(etfenvio.RecordCount);
  application.ProcessMessages;

end;

procedure Tfsms.SBExcluirUnClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'delete from sms where etfcodigo=' + etfenvioetfcodigo.AsString;
  consulta.ExecSQL;

  etfenvio.Close;
  etfenvio.ParamByName('psmchave').AsString := vChaveMestre;
  etfenvio.Open;

  etf.Close;
  etf.ParamByName('psmchave').AsString := vChaveMestre;
  etf.Open;
  plDisponivel.Caption := 'Qtd:' + Inttostr(etf.RecordCount);
  plEnviar.Caption := 'Qtd:' + Inttostr(etfenvio.RecordCount);
  application.ProcessMessages;

end;

procedure Tfsms.SBIncluirTodosClick(Sender: TObject);
begin
  inherited;
  sms.Close;
  sms.Open;
  etf.First;
  while not etf.Eof do
  begin

    sms.Append;
    smspsmchave.AsString := vChaveMestre;
    smsetfcodigo.AsInteger := etfetfcodigo.AsInteger;
    smssmstexto.AsString := psmpsmtexto01.AsString;
    smssmsregistro.AsString := agora(application, ZCone);
    sms.Post;

    etf.Next;
  end;

  etfenvio.Close;
  etfenvio.ParamByName('psmchave').AsString := vChaveMestre;
  etfenvio.Open;

  etf.Close;
  etf.ParamByName('psmchave').AsString := vChaveMestre;
  etf.Open;
  plDisponivel.Caption := 'Qtd:' + Inttostr(etf.RecordCount);
  plEnviar.Caption := 'Qtd:' + Inttostr(etfenvio.RecordCount);
  application.ProcessMessages;

end;

procedure Tfsms.SBIncluirUmClick(Sender: TObject);
begin
  inherited;
  sms.Close;
  sms.Open;
  sms.Append;

  smspsmchave.AsString := vChaveMestre;
  smsetfcodigo.AsInteger := etfetfcodigo.AsInteger;
  smssmstexto.AsString := psmpsmtexto01.AsString;
  smssmsregistro.AsString := agora(application, ZCone);
  sms.Post;

  etfenvio.Close;
  etfenvio.ParamByName('psmchave').AsString := vChaveMestre;
  etfenvio.Open;

  etf.Close;
  etf.ParamByName('psmchave').AsString := vChaveMestre;
  etf.Open;

  plDisponivel.Caption := 'Qtd:' + Inttostr(etf.RecordCount);
  plEnviar.Caption := 'Qtd:' + Inttostr(etfenvio.RecordCount);
  application.ProcessMessages;

end;

end.
