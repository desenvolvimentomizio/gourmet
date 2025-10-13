unit dtm_xml;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, ExtCtrls, ACBrNFe,
  ACBrMail, Sqlite3DS, ACBrNFeDANFeRLClass, db, sqlite3conn, sqldb, ACBrDFe,
  ACBrDFeSSL;

type

  { Tdtmxml }

  Tdtmxml = class(TDataModule)
    ACBrMail1: TACBrMail;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    find: TSQLQuery;
    AutoExec: TTimer;
    xmldfe: TSQLQuery;
    xmlnfe: TSQLQuery;
    xmlres: TSQLQuery;
    Conn: TSQLite3Connection;
    xmlcfg: TSQLQuery;
    Trans: TSQLTransaction;
    procedure ACBrNFeTransmitError(const HttpError, InternalError: Integer;
      const URL, DadosEnviados, SoapAction: String; var Retentar: Boolean;
      var Tratado: Boolean);
    procedure AutoExecTimer(Sender: TObject);
    procedure xmlcfgAfterOpen(DataSet: TDataSet);
    procedure xmlcfgAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure SetaConfiguracoes;
  end;

var
  dtmxml: Tdtmxml;

implementation

uses frm_xml;

{$R *.lfm}

{ Tdtmxml }

procedure Tdtmxml.DataModuleCreate(Sender: TObject);
begin
  xmldfe.SQL.Text := 'select * from xmlnfe where NFe = ''F''';
  xmlnfe.SQL.Text := 'select * from xmlnfe where NFe = ''T''';
  xmlres.SQL.Text := 'select * from xmlnfe where idDFe = -1';

  Conn.DatabaseName := '.\Database\Downloadxml.db';
  Conn.Connected    := True;
  Trans.Active      := True;
  // Abertura da tabela de configuração
  xmlcfg.Open;
end;

procedure Tdtmxml.xmlcfgAfterPost(DataSet: TDataSet);
begin
  xmlcfg.ApplyUpdates;
  Trans.CommitRetaining;
  // Seta Configurações para os componentes
  SetaConfiguracoes;
end;

procedure Tdtmxml.ACBrNFeTransmitError(const HttpError, InternalError: Integer;
  const URL, DadosEnviados, SoapAction: String; var Retentar: Boolean;
  var Tratado: Boolean);
begin

end;

procedure Tdtmxml.AutoExecTimer(Sender: TObject);
begin
  frmxml.AutoExecuteProcessos;
end;

procedure Tdtmxml.xmlcfgAfterOpen(DataSet: TDataSet);
begin
  // Seta Configurações para os componentes
  SetaConfiguracoes;
end;

procedure Tdtmxml.DataModuleDestroy(Sender: TObject);
begin
  Trans.Active   := False;
  Conn.Connected := False;
  xmlcfg.Close;
end;

procedure Tdtmxml.SetaConfiguracoes;
begin
  // Atribui as configurações ao componente
  with ACBrNFe do
  begin
    with Configuracoes do
    begin
      // WebServices
      WebServices.UF := xmlcfg.FieldByName('UF').AsString;
      // Geral
      if xmlcfg.FieldByName('SSLLib').AsString = '01' then
         Geral.SSLLib := libCapicom
      else
         Geral.SSLLib := libOpenSSL;
      // Certificados
      Certificados.NumeroSerie := xmlcfg.FieldByName('NumeroSerie').AsString;
      Certificados.Senha       := xmlcfg.FieldByName('Senha').AsString;
      //
      if (Length(Certificados.NumeroSerie) > 0) or (XmlCfg.FieldByName('ArquivoPFX').AsString <> '')  then
      begin
         SSL.DadosPFX   :=  XmlCfg.FieldByName('ArquivoPFX').AsString;
         SSL.ArquivoPFX :=  XmlCfg.FieldByName('ArquivoPFX').AsString;
         SSL.CarregarCertificado;
      end;
    end;
  end;
  with AutoExec do
  begin
    Enabled  := Boolean(xmlcfg.FieldByName('AutoExecute').AsInteger);
    Interval := xmlcfg.FieldByName('AutoTimer').AsInteger * 60000;
  end;
end;

end.

