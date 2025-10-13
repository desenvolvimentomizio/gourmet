unit ufcpa;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrfi, VirtualTable, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Graphics, System.SysUtils, uFuncoes, System.ImageList;

type
  Tfcpa = class(Tfrfi)
    mfi: tuniquery;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfimfiparcela: TIntegerField;
    vrfi: TVirtualTable;
    vrfietdcodigo: TIntegerField;
    vrfirfiemissao: TDateField;
    vrfirfivencimento: TDateField;
    vrfirfinumero: TStringField;
    vrfirfihistorico: TStringField;
    vrfirfirepetir: TIntegerField;
    vrfirfivalor: TFloatField;
    tng: tuniquery;
    tngtngcodigo: TIntegerField;
    tngtngidentificacao: TStringField;
    registrotngcodigo: TIntegerField;
    registrotngidentificacao: TStringField;
    lptngcodigo: TLabel;
    tngcodigo: TDBEdit;
    cfgcfgctbusanucleosgeren: TIntegerField;
    rfitngcodigo: TIntegerField;
    vrfitngcodigo: TIntegerField;
    tittngcodigo: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
    cfgcfgusactb: TIntegerField;
    tittotal: tuniquery;
    v_rfi: tuniquery;
    v_rfirfinumero: TStringField;
    v_rfirfihistorico: TStringField;
    v_rfirfichave: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure tficodigoExit(Sender: TObject);
    procedure rfipercmesmoraExit(Sender: TObject);
    procedure rfimoradiaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ajustamfi(vrfichave: integer; vrfivalor: double; vrfiemissao: tdate);
    function AjustaTit(valortotal: double; dataemissao: tdate; numero, historico: string): integer;
    procedure carregaparcelasrfi(tabela: TVirtualTable);
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fcpa: Tfcpa;

  // Início ID do Módulo fracpa
const
  vPlIdMd = '02.02.15.004-02';

  // Fim ID do Módulo fracpa

implementation

{$R *.dfm}

procedure Tfcpa.bconfirmaClick(Sender: TObject);
Var
  I: integer;
  qtdReg: integer;
  vTitCodigo: integer;
  vTitValor: double;
  vDataEmissao: tdate;
  VNumero: string;
  VHistorico: string;

Begin

  if registro.State = dsbrowse then
    registro.Edit;

  vTitValor := 0;

  if psituacao.Caption = 'Alterando' then
  begin
    Inherited;
    vDataEmissao := Self.rfiemissao.Field.AsFloat;
    vTitValor := Self.registrorfivalor.AsCurrency;
    VNumero := Self.registrorfinumero.AsString;
    VHistorico := Self.registrorfihistorico.AsString;

    vTitCodigo := AjustaTit(vTitValor, vDataEmissao, VNumero, VHistorico);
    ajustamfi(registrorfichave.asinteger, registrorfivalor.AsCurrency, registrorfiemissao.AsFloat);

    v_rfi.Close;
    v_rfi.ParamByName('rfichave').asinteger := registrorfichave.asinteger;
    v_rfi.Open;

    v_rfi.Edit;
    v_rfirfihistorico.AsString := rfihistorico.Field.AsString;
    v_rfirfinumero.AsString := rfinumero.Field.AsString;
    v_rfi.Post;

  end
  else
  begin

    { * Gerando o registro para Titulo }
    vDataEmissao := Self.rfiemissao.Field.AsFloat;
    vTitValor := Self.registrorfivalor.AsCurrency;

    VNumero := Self.registrorfinumero.AsString;
    VHistorico := Self.registrorfihistorico.AsString;

    vTitCodigo := AjustaTit(vTitValor, vDataEmissao, VNumero, VHistorico);

    { * * }

    registro.Edit;
    Self.registrotitcodigo.asinteger := vTitCodigo;
    registro.Post;

    Inherited;

    ajustamfi(registrorfichave.asinteger, registrorfivalor.AsCurrency, registrorfiemissao.AsFloat);

    if tngcodigo.Field.AsString <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'update v_rfi set tngcodigo=' + tngcodigo.Field.AsString + ' where titcodigo=' + registrotitcodigo.AsString;
      consulta.ExecSQL;
    end;

  end;

  consulta.Close;
  consulta.SQL.Text := 'update mcg set mcgdata=' + QuotedStr(ajustadata(rfivencimento.Field.AsString)) + ' where mcgtabela=' + QuotedStr('rfi') + ' and rfichave=' +
    registrorfichave.AsString;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'update mfi set mfisituacao=0 where rfichave=' + registrorfichave.AsString;
  consulta.ExecSQL;

end;

function Tfcpa.AjustaTit(valortotal: double; dataemissao: tdate; numero: string; historico: string): integer;
var
  vlMcgValor: double;
  vlTItValor: double;
begin
  tit.Close;
  tit.SQL.Text := 'SELECT tit.titcodigo, tit.etdcodigo,  tit.titvalor,  tit.titnumero,';
  tit.SQL.Add('tit.titemissao,  ');
  tit.SQL.Add('tit.tfdcodigo,  tit.srfcodigo,  tit.tficodigo,  tit.tithora,  tit.clbcodigo,');
  tit.SQL.Add('tit.tithistorico, tit.tngcodigo ');
  if Self.psituacao.Caption = 'Incluindo' then
  begin
    tit.SQL.Add('from tit limit 1 ');
    tit.Open;
    tit.append;
    tittitvalor.AsFloat := valortotal;
    vlMcgValor := valortotal;
  end
  else
  begin
    tit.SQL.Add('from tit where titcodigo=' + Self.registrotitcodigo.AsString);
    tit.Open;
    tit.Edit;

    tittotal.Close;
    tittotal.SQL.Add('select rfivalor from rfi where titcodigo=' + Self.registrotitcodigo.AsString);
    tittotal.Open;

    vlTItValor := 0;
    while not tittotal.Eof do
    begin
      vlTItValor := vlTItValor + tittotal.FieldByName('rfivalor').AsCurrency;
      tittotal.Next;
    end;

    consulta.Close;
    consulta.SQL.Text := 'select rfivalor titvalor from rfi where rfichave=' + Self.registrorfichave.AsString;
    consulta.Open;

    vlMcgValor := consulta.FieldByName('titvalor').AsCurrency;
    tittitvalor.AsCurrency := vlTItValor;
  end;
  titetdcodigo.asinteger := Self.etdcodigo.Field.asinteger;
  tittitnumero.AsString := numero;

  tittitemissao.AsFloat := dataemissao;
  tittfdcodigo.asinteger := registrotfdcodigo.asinteger;
  titsrfcodigo.asinteger := registrosrfcodigo.asinteger;
  tittficodigo.asinteger := registrotficodigo.asinteger;
  tittithora.AsFloat := Time;
  tittithistorico.AsString := historico;
  titclbcodigo.asinteger := Acesso.Usuario;
  tittngcodigo.asinteger := rfitngcodigo.asinteger;
  tit.Post;

  if (cfgcfgusactb.asinteger = 0) and (cfgcfgctbusaccg.asinteger = 1) then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select mcgchave, mcgvalor  from mcg where mcgchaveorigem=' + Self.registrotitcodigo.AsString + ' and mcgtabela=' + QuotedStr('rfi') + ' and rfichave=' +
      registrorfichave.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      if registrorfirepetir.asinteger = 1 then
      begin
        consulta.Edit;
        consulta.FieldByName('mcgvalor').AsCurrency := vlMcgValor;
        consulta.Post;
      end;
    end;
  end;

  result := Self.tittitcodigo.asinteger;

end;

procedure Tfcpa.carregaparcelasrfi(tabela: TVirtualTable);
var
  I: integer;
begin
  if not vrfi.Active then
    vrfi.Open;

  while not vrfi.Eof do
    vrfi.Delete;

  tabela.First;
  while not tabela.Eof do
  begin
    vrfi.append;
    for I := 0 to vrfi.FieldCount - 1 do
    begin
      vrfi.FieldByName(vrfi.fields[I].FieldName).AsString := tabela.FieldByName(vrfi.fields[I].FieldName).AsString;
    end;

    vrfi.Post;
    tabela.Next;
  end;

end;

procedure Tfcpa.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  consulta.Close;
  consulta.SQL.Text := 'select fla.flacodigo, flaidentificacao from fla,fcb WHERE fla.flacodigo=fcb.flacodigo and fcb.clbcodigo=' + Inttostr(Acesso.Usuario);
  consulta.Open;

  if consulta.RecordCount > 1 then
  begin
    lflacodigo.Visible := True;
    flacodigo.Visible := True;
  end
  else
  begin
    lflacodigo.Visible := False;
    flacodigo.Visible := False;
  end;

  inherited;

  if Self.cfgcfgctbusanucleosgeren.asinteger = 1 then
  begin
    tngcodigo.Visible := True;
    lptngcodigo.Visible := True;
  end
  else
  begin
    tngcodigo.Visible := False;
    lptngcodigo.Visible := False;
  end;

end;

procedure Tfcpa.ajustamfi(vrfichave: integer; vrfivalor: double; vrfiemissao: tdate);
var
  vTitCodigo: string;
begin
  consulta.Close;
  consulta.SQL.Text := 'select titcodigo from rfi where rfichave=' + Inttostr(vrfichave);
  consulta.Open;

  vTitCodigo := consulta.fields[0].AsString;

  consulta.Close;
  consulta.SQL.Text := 'select rfichave from rfi where titcodigo=' + vTitCodigo;
  consulta.Open;

  while not consulta.Eof do
  begin

    mfi.Close;
    mfi.Params[0].asinteger := consulta.fields[0].asinteger;
    mfi.Params[1].asinteger := tmfAPagar;
    mfi.Open;
    if mfi.RecordCount = 0 then
    begin
      mfi.append;
    end
    else
    begin
      mfi.Edit;
    end;
    mfirfichave.asinteger := consulta.fields[0].asinteger;
    mfitmfcodigo.asinteger := tmfAPagar;
    mfimoecodigo.asinteger := 1;
    mfimfivalor.AsCurrency := vrfivalor;
    mfimfidata.AsFloat := vrfiemissao;
    mfimfihistorico.AsString := '';
    mfimfivalorori.AsCurrency := mfimfivalor.AsCurrency;
    mfimfiparcela.asinteger := 1;
    mfi.Post;
    consulta.Next;
  end;
end;

procedure Tfcpa.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registrotfdcodigo.asinteger := tfdpagar;
  registroflacodigo.asinteger := 1;
  registrosrfcodigo.asinteger := 0;
  registrorfirepetir.asinteger := 1;
  registrocarcodigo.asinteger := 1;
  registrorfiprevisao.asinteger := 0;
  registromoecodigo.asinteger := 1;
  registrofrrcodigo.asinteger := 1;
  registrorfimoradia.AsFloat := 0;
  registrorfipercmesmora.AsFloat := 0;
  Self.registrorfiemissao.AsFloat := date;

end;

procedure Tfcpa.rfimoradiaExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);
  if rfimoradia.Field.AsFloat > 0 then
  begin
    if rfivalor.Field.AsFloat > 0 then
    begin
      rfipercmesmora.Field.AsFloat := ((rfimoradia.Field.AsFloat * 30) / rfivalor.Field.AsFloat) * 100;
    end;
  end;
end;

procedure Tfcpa.rfipercmesmoraExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);

  if rfipercmesmora.Field.AsFloat > 0 then
  begin
    if rfimoradia.Field.AsFloat = 0 then
    begin
      if rfivalor.Field.AsFloat > 0 then
      begin
        rfimoradia.Field.AsFloat := rfivalor.Field.AsFloat * ((rfipercmesmora.Field.AsFloat / 100) / 30)
      end;
    end;
  end;

end;

procedure Tfcpa.tficodigoExit(Sender: TObject);
begin
  inherited;
  if Self.psituacao.Caption = 'Incluindo' then
  begin
    Self.ValidaSaida(Sender);
    if tficodigo.Field.asinteger = tfiOutros then
    begin
      Self.bcocodigo.Field.AsString := '000';
      Self.bcocodigo.Enabled := False;
      Self.bcocodigo.Color := PEG_COR_VALORPADRAO;
    end
    else
    begin

      Self.bcocodigo.Field.AsString := '';
      Self.bcocodigo.Enabled := True;
      Self.bcocodigo.Color := clyellow;
    end;
  end;

end;

end.
