unit ufcre;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrfi, VirtualTable, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, Vcl.Graphics, System.SysUtils, uFuncoes,
  System.ImageList;

type
  Tfcre = class(Tfrfi)
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
    vrfitfdcodigo: TIntegerField;
    vrfiflacodigo: TIntegerField;
    vrfitficodigo: TIntegerField;
    vrfibcocodigo: TStringField;
    vrfibconome: TStringField;
    vrficarcodigo: TIntegerField;
    vrfirfiemissao: TDateField;
    vrfirfivencimento: TDateField;
    vrfirfinumero: TStringField;
    vrfirfihistorico: TStringField;
    vrfisrfcodigo: TIntegerField;
    vrfirfipercmesmora: TFloatField;
    vrfirfirepetir: TIntegerField;
    vrfirfidatadesc: TDateField;
    vrfirfivalodesc: TFloatField;
    vrfirfidatamulta: TDateField;
    vrfirfiprevisao: TIntegerField;
    vrfirfivalor: TFloatField;
    vrfifrrcodigo: TIntegerField;
    vrfirfivalorparcela: TFloatField;
    vrfimoecodigo: TIntegerField;
    vrfirfipercmesmulta: TFloatField;
    vrfirfivalomulta: TFloatField;
    vrfititcodigo: TIntegerField;
    v_rfi: tuniquery;
    v_rfirfinumero: TStringField;
    v_rfirfihistorico: TStringField;
    v_rfirfichave: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure rfivalorExit(Sender: TObject);
    procedure rfiemissaoExit(Sender: TObject);
    procedure rfiemissaoEnter(Sender: TObject);
    procedure tficodigoExit(Sender: TObject);
  private
    procedure ajustamfi(vrfichave: integer; vrfivalor: double; vrfiemissao: tdate);
    function AjustaTit(valortotal: double; dataemissao: tdate; numero, historico: string): integer;
    procedure BGerarRepeticoesClick(Sender: TObject);
    procedure carregaparcelasrfi(tabela: TVirtualTable);
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fcre: Tfcre;

implementation

{$R *.dfm}

procedure Tfcre.bconfirmaClick(Sender: TObject);
Var
  I: integer;
  qtdReg: integer;
  vTitCodigo: integer;
  vTitValor: double;
  vDataEmissao: tdate;
  VNumero: string;
  VHistorico: string;

Begin
  vTitValor := 0;
  { * Gerando o registro para Titulo }
  vDataEmissao := Self.rfiemissao.Field.AsFloat;
  vTitValor := Self.registrorfivalor.AsCurrency;
  VNumero := Self.registrorfinumero.AsString;
  VHistorico := Self.registrorfihistorico.AsString;

  vTitCodigo := AjustaTit(vTitValor, vDataEmissao, VNumero, VHistorico);

  { * * }

  registro.Edit;
  Self.registrotitcodigo.asinteger := vTitCodigo;
  registro.post;
  Inherited;



  v_rfi.Close;
  v_rfi.ParamByName('rfichave').asinteger := registrorfichave.asinteger;
  v_rfi.Open;

  v_rfi.Edit;
  v_rfirfinumero.AsString := rfinumero.Field.AsString;
  v_rfirfihistorico.AsString := rfihistorico.Field.AsString;
  v_rfi.post;

  ajustamfi(registrorfichave.asinteger, registrorfivalor.AsCurrency, registrorfiemissao.AsFloat);

  consulta.SQL.Text := 'select CalcMovimentoFinanceiro(' + registrorfichave.AsString + ')';
  consulta.ExecSQL;

  consulta.SQL.Text := 'select CalcRegistroFinanceiro(' + registrorfichave.AsString + ')';
  consulta.ExecSQL;

end;

function Tfcre.AjustaTit(valortotal: double; dataemissao: tdate; numero: string; historico: string): integer;
begin
  tit.Close;
  tit.SQL.Text := 'SELECT tit.titcodigo, tit.etdcodigo,  tit.titvalor,  tit.titnumero,';
  tit.SQL.Add('tit.titemissao,  ');
  tit.SQL.Add('tit.tfdcodigo,  tit.srfcodigo,  tit.tficodigo,  tit.tithora,  tit.clbcodigo,');
  tit.SQL.Add('tit.tithistorico ');
  if Self.psituacao.Caption = 'Incluindo' then
  begin
    tit.SQL.Add('from tit limit 1 ');
    tit.Open;
    tit.append;
  end
  else
  begin
    tit.SQL.Add('from tit where titcodigo=' + Self.registrotitcodigo.AsString);
    tit.Open;
    tit.Edit;
  end;
  titetdcodigo.asinteger := Self.etdcodigo.Field.asinteger;
  tittitnumero.AsString := numero;
  tittitvalor.AsFloat := valortotal;
  tittitemissao.AsFloat := dataemissao;
  tittfdcodigo.asinteger := registrotfdcodigo.asinteger;
  titsrfcodigo.asinteger := registrosrfcodigo.asinteger;
  tittficodigo.asinteger := registrotficodigo.asinteger;
  tittithora.AsFloat := Time;
  tittithistorico.AsString := historico;
  titclbcodigo.asinteger := Acesso.Usuario;
  tit.post;

  result := Self.tittitcodigo.asinteger;

end;

procedure Tfcre.BGerarRepeticoesClick(Sender: TObject);
Var
  I: integer;
Begin

  { vrfi.Close;
    vrfi.Open;

    application.CreateForm(tlmulcre, lmulcre);
    lmulcre.vetdcodigo := Self.etdcodigo.Field.asinteger;
    lmulcre.vrfiemissao := Self.rfiemissao.Field.AsFloat;
    lmulcre.vrfivencimento := Self.rfivencimento.Field.AsFloat;
    lmulcre.vrfinumero := Self.rfinumero.Field.AsString;
    lmulcre.vrfihistorico := Self.rfihistorico.Field.AsString;
    lmulcre.vrfivalor := Self.rfivalor.Field.AsFloat;
    lmulcre.vrfirepetir := Self.rfirepetir.Field.asinteger;

    If lmulcre.ShowModal = mrok Then
    Begin

    carregaparcelasrfi(lmulcre.vrfi);
    jaajustou := true;
    End;

    Self.bconfirma.SetFocus; }

  Inherited;

end;

procedure Tfcre.carregaparcelasrfi(tabela: TVirtualTable);
var
  I: integer;
begin
  if not vrfi.Active then
    vrfi.Open;

  while not vrfi.eof do
    vrfi.Delete;

  tabela.First;
  while not tabela.eof do
  begin
    vrfi.append;
    for I := 0 to vrfi.FieldCount - 1 do
    begin
      vrfi.FieldByName(vrfi.fields[I].FieldName).AsString := tabela.FieldByName(vrfi.fields[I].FieldName).AsString;
    end;

    vrfi.post;
    tabela.Next;
  end;

end;

procedure Tfcre.ajustamfi(vrfichave: integer; vrfivalor: double; vrfiemissao: tdate);
begin
  mfi.Close;
  mfi.Params[0].asinteger := Self.registrorfichave.asinteger;
  mfi.Params[1].asinteger := tmfAReceber;
  mfi.Open;
  if mfi.RecordCount = 0 then
  begin
    mfi.append;
  end
  else
  begin
    mfi.Edit;
  end;
  mfirfichave.asinteger := vrfichave;
  mfitmfcodigo.asinteger := tmfAReceber;
  mfimoecodigo.asinteger := 1;
  mfimfivalor.AsCurrency := vrfivalor;
  mfimfidata.AsFloat := vrfiemissao;
  mfimfihistorico.AsString := '';
  mfimfivalorori.AsCurrency := mfimfivalor.AsCurrency;
  mfimfiparcela.asinteger := 1;
  mfi.post;
end;

procedure Tfcre.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registrotfdcodigo.asinteger := tfdreceber;
  registroflacodigo.asinteger := 1;
  registrosrfcodigo.asinteger := 0;
  registrorfirepetir.asinteger := 1;
  registrorfiprevisao.asinteger := 0;
  registromoecodigo.asinteger := 1;
  registrofrrcodigo.asinteger := 1;
  registrorfimoradia.AsFloat := 0;
  registrorfipercmesmora.AsFloat := 0;
  Self.registrorfiemissao.AsFloat := date;

end;

procedure Tfcre.rfiemissaoEnter(Sender: TObject);
begin
  inherited;
  if psituacao.Caption = 'Incluindo' then
  begin
    Self.rfiemissao.Field.AsFloat := Self.cfgcfgdatapadrao.AsFloat;
  end;
end;

procedure Tfcre.rfiemissaoExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);
  if psituacao.Caption = 'Incluindo' then
  begin
    Self.rfivencimento.Field.AsFloat := Self.rfiemissao.Field.AsFloat + 30;
  end;
end;

procedure Tfcre.rfivalorExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);

  if Self.carcarpercmorames.AsFloat > 0 then
  begin
    rfipercmesmora.Field.AsFloat := Self.carcarpercmorames.AsFloat;
    rfimoradia.Field.AsCurrency := (Self.rfivalor.Field.AsCurrency * (Self.carcarpercmorames.AsFloat / 100)) / 30;
  end;

  if tficodigo.Field.asinteger = tfiboleto then
  begin

    if Self.carcardiasmulta.asinteger > 0 then
    begin
      rfidatadesc.Field.AsFloat := Self.rfivencimento.Field.AsFloat - Self.carcardiasmulta.asinteger;
      rfivalodesc.Field.AsCurrency := Self.rfivalor.Field.AsCurrency * (Self.carcarpercdesc.AsFloat / 100);
    end;

    if Self.carcardiasmulta.asinteger > 0 then
    begin
      rfidatamulta.Field.AsFloat := Self.rfivencimento.Field.AsFloat + Self.carcardiasmulta.asinteger;
      rfivalomulta.Field.AsCurrency := Self.rfivalor.Field.AsCurrency * (Self.carcarpercmulta.AsFloat / 100);
      rfipercmulta.Field.AsFloat := Self.carcarpercmulta.AsFloat;
    end;

    rfimoradia.Enabled := false;
    rfipercmesmora.Enabled := false;
    rfimoradia.Color := PEG_COR_VALORPADRAO;
    rfipercmesmora.Color := PEG_COR_VALORPADRAO;
    rfimoradia.visible := true;
    rfipercmesmora.visible := true;

    rfidatadesc.Enabled := false;
    rfivalodesc.Enabled := false;
    rfidatamulta.Enabled := false;
    rfivalomulta.Enabled := false;
    rfipercmulta.Enabled := false;
    rfidatadesc.Color := PEG_COR_VALORPADRAO;
    rfivalodesc.Color := PEG_COR_VALORPADRAO;
    rfidatamulta.Color := PEG_COR_VALORPADRAO;
    rfivalomulta.Color := PEG_COR_VALORPADRAO;
    rfipercmulta.Color := PEG_COR_VALORPADRAO;

    rfidatadesc.visible := true;
    rfivalodesc.visible := true;
    rfidatamulta.visible := true;
    rfivalomulta.visible := true;
    rfipercmulta.visible := true;

    Self.rfihistorico.SetFocus;
  end
  else
  begin

    rfimoradia.Enabled := true;
    rfipercmesmora.Enabled := true;
    rfimoradia.Color := clyellow;
    rfipercmesmora.Color := clyellow;
    rfimoradia.visible := true;
    rfipercmesmora.visible := true;
    rfimoradia.SetFocus;

  end;

end;

procedure Tfcre.tficodigoExit(Sender: TObject);
begin
  inherited;
  if Self.psituacao.Caption = 'Incluindo' then
  begin
    Self.ValidaSaida(Sender);
    if tficodigo.Field.asinteger = tfiboleto then
    begin
      Self.bcocodigo.Field.AsString := '000';
      Self.bcocodigo.Enabled := false;
      Self.bcocodigo.Color := PEG_COR_VALORPADRAO;
    end
    else
    begin

      Self.bcocodigo.Field.AsString := '';
      Self.bcocodigo.Enabled := true;
      Self.bcocodigo.Color := clyellow;
    end;
  end;
end;

end.
