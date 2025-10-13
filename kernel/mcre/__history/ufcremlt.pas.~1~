unit ufcremlt;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrfimlt, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Dialogs, uFuncoes, System.ImageList, uPegaBase, System.SysUtils;

type
  Tfcremlt = class(Tfrfimlt)
    cfgcfgportadorpadrao: TIntegerField;
    v_rfi: TUniQuery;
    v_rfirfinumero: TStringField;
    v_rfirfihistorico: TStringField;
    v_rfirfichave: TIntegerField;
    v_rfirfivencimento: TDateField;
    ajustarfi: TUniQuery;
    registrocctchave: TIntegerField;
    v_rficctchave: TIntegerField;
    mcg: TUniQuery;
    mcgmcgchave: TIntegerField;
    mcgccgcodigo: TIntegerField;
    mcgmcgvalor: TFloatField;
    mcgmcgdata: TDateField;
    mcgmcgtabela: TStringField;
    mcgmcgchaveorigem: TIntegerField;
    mcgmcgsituacao: TIntegerField;
    mcgclbcodigo: TIntegerField;
    mcgmcgregistro: TDateTimeField;
    mcgmcgcompetencia: TStringField;
    mcgrfichave: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure titvalorparcelaExit(Sender: TObject);
    procedure carcodigoExit(Sender: TObject);
    procedure titvalorparcelaEnter(Sender: TObject);
    procedure titvctoinicialEnter(Sender: TObject);
    procedure titvalorExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);

  private
    function GerarBoleto(vTitCodigo: Integer): Integer;
    procedure ModuloBoleto(vRotina: TRotinasBoletos; vGebCodigo, vBolChave: Integer);
    procedure faturacontrato;
    { Private declarations }

  public
    { Public declarations }
    vpcctchave: string;

    vpetdcodigo: Integer;
    vpcctregistro: tdate;
    vpcctvalor: Double;
    vpcctdatainicio: tdate;
    vpcctdatafinal: tdate;
    vpcctperiodicidade: Integer;
    vptcccodigo: Integer;
    vpctrdiavencto: Integer;
    vpbcocodigo: String;
    vpcarcodigo: Integer;

  end;

var
  fcremlt: Tfcremlt;

implementation

{$R *.dfm}

// Início ID do Módulo fcpamlt
const
  vPlIdMd = '02.02.15.005-03';

  // Fim ID do Módulo fcpamlt

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcremlt := Tfcremlt.Create(pCargaFrame);
  fcremlt.vpcctchave := pCargaFrame.ChaveMestre;
  fcremlt.faturacontrato;
  fcremlt.ShowModal;
  fcremlt.Free;
end;

exports formulario;

procedure Tfcremlt.bconfirmaClick(Sender: TObject);
var
  i: Integer;
  Confirma: Integer;
  vlGebChave: Integer;
  VNumero: string;
  vlEndereco: Integer;
  vlTxtFiltro: string;
  vlRetorno: string;
begin

  vpetdcodigo := etdcodigo.Field.AsInteger;

  vlEndereco := 0; // orcedrcodigo.AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'SELECT edr.edrcodigo FROM edr WHERE edr.tedcodigo IN (1,2, 3, 4,5,6) AND edr.etdcodigo = ' + Inttostr(vpetdcodigo);
  consulta.Open;

  if not consulta.Locate('edrcodigo', vlEndereco, []) then
  begin
    vlEndereco := consulta.Fields[0].AsInteger;

    if consulta.RecordCount > 1 then
    begin
      vlTxtFiltro := 'etdcodigo = ' + Inttostr(vpetdcodigo);
      vlRetorno := MostraLista('medr', vlTxtFiltro);

      if vlRetorno <> '' then
        vlEndereco := StrToInt(vlRetorno)
    end;
  end;

  if vlEndereco <> 0 then
  begin
    if registro.State = dsbrowse then
    begin
      registro.Edit;

    end;
    registroedrcodigo.AsInteger := vlEndereco;
  end;

  if titnumero.Field.AsString = '' then
  begin
    titnumero.Field.AsString := titcodigo.Field.AsString;
  end;

  if registro.State = dsbrowse then
    registro.Edit;

  inherited;

  ajustarfi.Close;
  ajustarfi.SQL.Text := 'select rfichave from rfi where titcodigo=' + registrotitcodigo.AsString;
  ajustarfi.Open;
  while not ajustarfi.Eof do
  begin

    consulta.SQL.Text := 'select CalcMovimentoFinanceiro(' + ajustarfi.FieldByName('rfichave').AsString + ')';
    consulta.ExecSQL;
    consulta.SQL.Text := 'select CalcRegistroFinanceiro(' + ajustarfi.FieldByName('rfichave').AsString + ')';
    consulta.ExecSQL;

    ajustarfi.Next;
  end;

  if (psituacao.Caption = 'Incluindo') and (titparcelas.Field.AsInteger = 1) then
  begin

    if titparcelas.Field.AsInteger = 1 then
    begin
      RegistraRFI;
    end;

    rfi.Close;
    rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
    rfi.Open;

    rfi.Edit;
    rfirfinumero.AsString := titnumero.Field.AsString;
    rfirfihistorico.AsString := tithistorico.Field.AsString;
    rfirfivencimento.AsFloat := titvctoinicial.Field.AsFloat;
    rficctchave.AsString := vpcctchave;
    rfiedrcodigo.AsInteger := edrcodigo.Field.AsInteger;
    rfi.Post;

    VNumero := self.registrotitnumero.AsString;

    v_rfi.Close;
    v_rfi.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
    v_rfi.Open;

    v_rfi.Edit;
    v_rfirfinumero.AsString := titnumero.Field.AsString;
    v_rfirfihistorico.AsString := tithistorico.Field.AsString;
    v_rfirfivencimento.AsFloat := titvctoinicial.Field.AsFloat;
    v_rficctchave.AsString := vpcctchave;
    v_rfi.Post;

  end
  else
  begin
    if titparcelas.Field.AsInteger = 1 then
    begin
      RegistraRFI;
    end;

    rfi.Close;
    rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
    rfi.Open;
    rfi.Edit;

    rfirfihistorico.AsString := tithistorico.Field.AsString;
    rfirfivencimento.AsFloat := titvctoinicial.Field.AsFloat;

    rfi.Post;

    VNumero := self.registrotitnumero.AsString;

    v_rfi.Close;
    v_rfi.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
    v_rfi.Open;

    v_rfi.Edit;
    v_rfirfihistorico.AsString := tithistorico.Field.AsString;
    v_rfirfivencimento.AsFloat := titvctoinicial.Field.AsFloat;
    v_rfi.Post;
  end;

  if vpcctchave <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select ccgcodigo from cct where cctchave=' + vpcctchave;
    consulta.Open;

    ajustarfi.Close;
    ajustarfi.SQL.Text := 'select rfichave,rfivalor, rfivencimento,titcodigo from rfi where titcodigo=' + registrotitcodigo.AsString;
    ajustarfi.Open;

    mcg.Open;

    while not ajustarfi.Eof do
    begin

      if consulta.FieldByName('ccgcodigo').AsString <> '' then
      begin
        mcg.Append;
        mcgccgcodigo.AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
        mcgmcgvalor.AsCurrency := ajustarfi.FieldByName('rfivalor').AsCurrency;
        mcgmcgdata.AsString := ajustarfi.FieldByName('rfivencimento').AsString;
        mcgmcgtabela.AsString := 'rfi';
        mcgmcgchaveorigem.AsString := ajustarfi.FieldByName('titcodigo').AsString;
        mcgrfichave.AsString := ajustarfi.FieldByName('rfichave').AsString;
        mcgmcgsituacao.AsInteger := 0;
        mcgclbcodigo.AsInteger := Acesso.Usuario;
        mcgmcgregistro.AsString := agora(Application, ZCone);
        mcgmcgcompetencia.AsString := copy(mcgmcgdata.AsString, 9, 2) + '-' + copy(mcgmcgdata.AsString, 4, 2);
        mcg.Post;
      end;
      ajustarfi.Next;
    end;

  end;

  consulta.Close;
  consulta.SQL.Text := 'select cargeraboleto from car where carcodigo=' + self.carcodigo.Field.AsString;
  consulta.Open;

  if (consulta.FieldByName('cargeraboleto').AsInteger = 1) AND (self.bcocodigo.Field.AsString <> '000') then
  begin
    Confirma := Application.MessageBox(PChar('Deseja gerar o Boleto ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);
    If (Confirma = Idyes) Then
    Begin
      vlGebChave := GerarBoleto(self.registrotitcodigo.AsInteger);
      ModuloBoleto(rblGeracao, vlGebChave, 0);
    End;
  end;

end;

function Tfcremlt.GerarBoleto(vTitCodigo: Integer): Integer;
type
  TGeraBoletoVenda = function(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso; vUsrCodigo, vTrmCodigo: Integer; vTitCodigo: Integer): Integer;
var
  Exec: TGeraBoletoVenda;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('GeraBoletoVenda'));

      if not Assigned(Exec) then
        exit;

      result := Exec(Application, ZCone, Acesso, Acesso.Usuario, Acesso.Terminal, vTitCodigo);
    finally
      DoUnLoadPackage(Pack);
    end;
end;

procedure Tfcremlt.ModuloBoleto(vRotina: TRotinasBoletos; vGebCodigo, vBolChave: Integer);
type

  TModuloBoleto = function(AOwner: TComponent; Conexao: TUniConnection; vRotina: TRotinasBoletos; Acesso: TAcesso; vGebCodigo: Integer = 0; vBolChave: Integer = 0;
    vRmbCodigo: Integer = 0): Boolean;
var
  Exec: TModuloBoleto;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('ModuloBoleto'));

      if not Assigned(Exec) then
        exit;

      Exec(Application, ZCone, vRotina, Acesso, vGebCodigo, vBolChave);
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

procedure Tfcremlt.carcodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  self.titdiasmulta.Field.AsInteger := carcardiasmulta.AsInteger;
  self.titpercmulta.Field.AsFloat := carcarpercmulta.AsFloat;
  self.titpercmesmora.Field.AsFloat := carcarpercmorames.AsFloat;
  self.titdiasdesc.Field.AsInteger := carcardiasdesc.AsInteger;

end;

procedure Tfcremlt.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;
  if vpcctchave <> '' then
  begin
    fcremlt.registroetdcodigo.AsInteger := fcremlt.vpetdcodigo;
    fcremlt.registrotitemissao.AsString := hoje(Application, fcremlt.ZCone);
    fcremlt.registrotitvalorparcela.AsFloat := fcremlt.vpcctvalor;
    fcremlt.registrotitnumero.AsString := 'CCT: ' + fcremlt.vpcctchave;
    fcremlt.registrotitvalor.AsFloat := fcremlt.vpcctvalor * 12;
    fcremlt.registrotitvctoinicial.AsString := hoje(Application, fcremlt.ZCone);
    fcremlt.registrotitvctoinicial.AsString := formatfloat('00', fcremlt.vpctrdiavencto) + copy(fcremlt.registrotitvctoinicial.AsString, 3, 10);
    fcremlt.registrotitparcelas.AsInteger := 12;
    fcremlt.registrocarcodigo.AsInteger := vpcarcodigo;
    fcremlt.registrobcocodigo.AsString := vpbcocodigo;
    fcremlt.registrotficodigo.AsInteger := tfiBoleto;
    fcremlt.registrocctchave.AsString := fcremlt.vpcctchave;
  end;

end;

procedure Tfcremlt.registroAfterInsert(DataSet: TDataSet);
begin
  if not cfg.Active then
    cfg.Open;

  registrotfdcodigo.AsInteger := tfdReceber;
  self.registrocarcodigo.AsInteger := cfgcfgportadorpadrao.AsInteger;
  registrotitinclusao.AsString := agora(Application, ZCone);
  consulta.Close;
  consulta.SQL.Text := 'select bcocodigo from car where carcodigo=' + self.registrocarcodigo.AsString;
  consulta.Open;
  self.bcocodigo.Field.AsString := self.consulta.Fields[0].AsString;
  consulta.Close;

  inherited;

end;

procedure Tfcremlt.titvalorExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    exit;

  if titvalor.Field.AsString = '' then
    titvalor.SetFocus;

  if self.titvalor.Field.AsFloat <= 0 then
  begin
    ShowMessage('Valor inválido. Necessita valor maior que 0,00!');
    titvalor.SetFocus;
  end;

  if titparcelas.Field.AsInteger = 1 then
  begin
    if (registro.State = dsedit) or (registro.State = dsInsert) then
    begin
      registro.Post;
      registro.Edit;
    end;

    // RegistraRFI;
  end;

end;

procedure Tfcremlt.titvalorparcelaEnter(Sender: TObject);
begin
  inherited;

  self.titdiasmulta.Field.AsInteger := carcardiasmulta.AsInteger;
  self.titpercmulta.Field.AsFloat := carcarpercmulta.AsFloat;
  self.titpercmesmora.Field.AsFloat := carcarpercmorames.AsFloat;
  self.titdiasdesc.Field.AsInteger := carcardiasdesc.AsInteger;

end;

procedure Tfcremlt.titvalorparcelaExit(Sender: TObject);
begin
  inherited;

  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    exit;

  if titvalorparcela.Field.AsString = '' then
  begin
    titvalorparcela.SetFocus;
    exit;
  end;

  if self.titvalorparcela.Field.AsFloat <= 0 then
  begin
    ShowMessage('Valor inválido. Necessita valor maior que 0,00!');
    titvalorparcela.SetFocus;
    exit;
  end;

  titmoradia.Field.AsCurrency := titvalorparcela.Field.AsCurrency * ((carcarpercmorames.AsFloat / 30) / 100);
  titvalodesc.Field.AsCurrency := titvalorparcela.Field.AsCurrency * (carcarpercdesc.AsFloat / 100);
  titvalomulta.Field.AsCurrency := titvalorparcela.Field.AsCurrency * (carcarpercmulta.AsFloat / 100);

end;

procedure Tfcremlt.titvctoinicialEnter(Sender: TObject);
begin
  inherited;
  if self.psituacao.Caption = 'Incluindo' then
  begin
    if vpcctchave = '' then
      titvctoinicial.Field.AsFloat := self.titemissao.Field.AsFloat + 30;
  end;
end;

procedure Tfcremlt.faturacontrato;

begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT  cctchave,  etdcodigo,  cctregistro,  cctvalor,';
  consulta.SQL.Add('  cctdatainicio,  cctdatafinal,  cctperiodicidade,  cctrenovacaoauto,');
  consulta.SQL.Add('  ctrdiavencto,  tcccodigo,bcocodigo, carcodigo FROM cct where cctchave=:cctchave');
  consulta.ParamByName('cctchave').AsString := vpcctchave;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    vpetdcodigo := consulta.FieldByName('etdcodigo').AsInteger;
    vpcctregistro := consulta.FieldByName('cctregistro').AsFloat;
    vpcctvalor := consulta.FieldByName('cctvalor').AsFloat;
    vpcctdatainicio := consulta.FieldByName('cctdatainicio').AsFloat;
    vpcctdatafinal := consulta.FieldByName('cctdatafinal').AsFloat;
    vpcctperiodicidade := consulta.FieldByName('cctperiodicidade').AsInteger;
    vptcccodigo := consulta.FieldByName('tcccodigo').AsInteger;
    vpctrdiavencto := consulta.FieldByName('ctrdiavencto').AsInteger;
    vpcarcodigo := consulta.FieldByName('carcodigo').AsInteger;
    vpbcocodigo := consulta.FieldByName('bcocodigo').AsString;

  end;

end;

end.
