unit uferf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Uni,
  uFuncoes, Data.DB, Vcl.ExtCtrls, MemDS, DBAccess;

type
  Tferf = class(TForm)
    clts: TUniQuery;
    cltsccochave: TIntegerField;
    cltsltechave: TIntegerField;
    ccov: TUniQuery;
    ccovccochave: TIntegerField;
    ccovctacodigo: TIntegerField;
    ccovccoemissao: TDateField;
    ccovccovencimento: TDateField;
    ccovtoccodigo: TIntegerField;
    ccovcedcodigo: TIntegerField;
    ccovclbcodigo: TIntegerField;
    ccovtficodigo: TIntegerField;
    ccovmoecodigo: TIntegerField;
    ccovcconumero: TStringField;
    ccovccohistorico: TStringField;
    ccovccovalor: TFloatField;
    ccovccochaveorig: TIntegerField;
    ccovccochavedest: TIntegerField;
    ccovccoconciliado: TIntegerField;
    ccovccoextenso: TStringField;
    ccovetdcodigo: TIntegerField;
    ccovccodatamov: TDateField;
    ccovccodataregistro: TDateField;
    ccovccohoraregistro: TTimeField;
    ccovccofavorecido: TStringField;
    rfiv: TUniQuery;
    rfivrfichave: TIntegerField;
    rfivetdcodigo: TIntegerField;
    rfivetdidentificacao: TStringField;
    rfivrfiemissao: TDateField;
    rfivrfivencimento: TDateField;
    rfivrfinumero: TStringField;
    rfivrfivalor: TFloatField;
    rfivrfihistorico: TStringField;
    rfivsrfcodigo: TIntegerField;
    rfivsrfidentificacao: TStringField;
    rfivltechave: TIntegerField;
    ltev: TUniQuery;
    ltevltechave: TIntegerField;
    ltevtfdcodigo: TIntegerField;
    ltevltedata: TDateField;
    ltevlteprincipal: TFloatField;
    ltevltejuros: TFloatField;
    ltevltedesconto: TFloatField;
    ltevltetotal: TFloatField;
    ltevlteextenso: TStringField;
    ccm: TUniQuery;
    ccmmeacodigo: TIntegerField;
    ccmccochave: TIntegerField;
    consulta: TUniQuery;
    clt: TUniQuery;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    ltc: TUniQuery;
    ltcltcchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcdtlchave: TIntegerField;
    ltcschcodigo: TIntegerField;
    rcr: TUniQuery;
    rcrrcrchave: TIntegerField;
    rcretdcodigo: TIntegerField;
    rcrcedcodigo: TIntegerField;
    rcrrcrvalor: TFloatField;
    rcrrcrdata: TDateField;
    rcrrcrhistorico: TStringField;
    rcrtcrcodigo: TIntegerField;
    erc: TUniQuery;
    ercercchave: TIntegerField;
    ercrcrchave: TIntegerField;
    ercerfchave: TIntegerField;
    dcd: TUniQuery;
    dcdrcrchave: TIntegerField;
    dcddcdvalor: TFloatField;
    dcddcdsituacao: TIntegerField;
    dtlv: TUniQuery;
    dtlvdtlchave: TIntegerField;
    dtlvltechave: TIntegerField;
    dtlvdtlvalor: TFloatField;
    dtlvcedcodigo: TIntegerField;
    dtlvmdacodigo: TIntegerField;
    che: TUniQuery;
    chechechave: TIntegerField;
    checheemissao: TDateField;
    chechevencimento: TDateField;
    chechenumero: TStringField;
    chechenome: TStringField;
    chebcocodigo: TStringField;
    chechevalor: TFloatField;
    cheschcodigo: TIntegerField;
    cheschidentificacao: TStringField;
    chetescodigo: TIntegerField;
    erf: TUniQuery;
    erferfchave: TIntegerField;
    erferfdata: TDateField;
    erferfhora: TTimeField;
    erfclbcodigo: TIntegerField;
    erferfvalorlote: TFloatField;
    erferfvalorcredito: TFloatField;
    erfltechave: TIntegerField;
    erfetdcodigo: TIntegerField;
    totdtl: TUniQuery;
    totdtldtlvalor: TFloatField;
    rdc: TUniQuery;
    rdcrdcchave: TIntegerField;
    rdcetdapelido: TStringField;
    rdcrdcdata: TDateField;
    rdcrdcvalor: TFloatField;
    rdcrdcnrauto: TStringField;
    rdcadccodigo: TIntegerField;
    rdctescodigo: TIntegerField;
    totrfi: TUniQuery;
    totrfietdcodigo: TIntegerField;
    Dcco: TDataSource;
    cco: TUniQuery;
    ccoltechave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccoctaidentificacao: TStringField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccochave: TIntegerField;
    ccoccovalor: TFloatField;
    dtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    dtltfdcodigo: TIntegerField;
    dtlmdacodigo: TIntegerField;
    rfi: TUniQuery;
    rfirfichave: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfietdidentificacao: TStringField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfivalor: TFloatField;
    rfirfihistorico: TStringField;
    rfisrfcodigo: TIntegerField;
    rfisrfidentificacao: TStringField;
    rfiltechave: TIntegerField;
    Processar: TTimer;
    rfm: TUniQuery;
    rfmrfichave: TIntegerField;
    rfmmeschave: TIntegerField;
    vrfi: TUniQuery;
    rfitit: TUniQuery;
    ccmtitcodigo: TIntegerField;
    rfivtitcodigo: TIntegerField;
    ccmccmmotivo: TStringField;
    ccmmeschave: TIntegerField;
    ccmerfchave: TIntegerField;
    ccmccmchave: TIntegerField;
    accm: TUniQuery;
    erferftipo: TIntegerField;
    ccmrfichave: TIntegerField;
    rcrtnccodigo: TIntegerField;
    rcrtsccodigo: TIntegerField;
    rcrrcrhora: TTimeField;
    mce: TUniQuery;
    mcercrchave: TIntegerField;
    mcemcechave: TIntegerField;
    mcetmccodigo: TIntegerField;
    mceclbcodigo: TIntegerField;
    mcemcemotivo: TStringField;
    mcemecregistro: TDateTimeField;
    let: TUniQuery;
    letletchave: TIntegerField;
    letltechave: TIntegerField;
    letetdcodigo: TIntegerField;
    mceltechave: TIntegerField;
    Drfiv: TDataSource;
    cfg: TUniQuery;
    cfgcfgformacancelamento: TIntegerField;
    procedure DccoDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure ProcessarTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fzcone: tuniconnection;
    function ProcessaEstorno(LteChave: string; vvlrEstorno: double = 0): boolean;
    procedure EstornarRfi;
    procedure IniciaProcessoEstorno;
    procedure IniciaProcessoCancelamento;
    procedure RegistraCredido(vLteChave: String);
    { Private declarations }
  public
    { Public declarations }
    vpLteChave: string;
    vpMesChave: string;
    vpTncCodigo: string;
    vpDtlChave: String;

    vpMeaMotivo: string;
    vpMeaCodigo: string;
    vpClbCodigo: string;
    vpResultado: string;

  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  end;

var
  ferf: Tferf;

implementation

{$R *.dfm}

function Creditar(AOwner: TComponent; conexao: tuniconnection; vLteChave: string; vmotivo: string; vusrcodigo: string; vMesChave: string; vmeacodigo: string; vtnccodigo: string;
  vdtlchave: string): string;
begin
  try
    ferf := Tferf.Create(AOwner);
    ferf.vpResultado := '0';
    ferf.zcone := conexao;
    ferf.vpLteChave := vLteChave;
    ferf.vpMeaMotivo := vmotivo;
    ferf.vpClbCodigo := vusrcodigo;
    ferf.vpMeaCodigo := vmeacodigo;
    ferf.vpMesChave := vMesChave;
    ferf.vpTncCodigo := vtnccodigo;
    ferf.vpClbCodigo := vusrcodigo;
    ferf.vpDtlChave := vdtlchave;

    ferf.RegistraCredido(vLteChave);
  finally
    result := ferf.vpResultado;
    FreeAndNil(ferf);
  end;
end;

function Cancelar(AOwner: TComponent; conexao: tuniconnection; vLteChave: string; vmotivo: string; vusrcodigo: string; vMesChave: string; vmeacodigo: string;
  vtnccodigo: string): string;
begin
  try
    ferf := Tferf.Create(AOwner);
    ferf.vpResultado := '0';
    ferf.zcone := conexao;
    ferf.vpLteChave := vLteChave;
    ferf.vpMeaMotivo := vmotivo;
    ferf.vpClbCodigo := vusrcodigo;
    ferf.vpMeaCodigo := vmeacodigo;
    ferf.vpMesChave := vMesChave;
    ferf.vpTncCodigo := vtnccodigo;
    ferf.vpClbCodigo := vusrcodigo;

    ferf.IniciaProcessoCancelamento;
  finally
    result := ferf.vpResultado;
    FreeAndNil(ferf);
  end;
end;

function estornar(AOwner: TComponent; conexao: tuniconnection; vLteChave: string; vmotivo: string; vusrcodigo: string; vmeacodigo: string; vtnccodigo: string): string;
begin
  try
    ferf := Tferf.Create(AOwner);
    ferf.vpResultado := '0';
    ferf.zcone := conexao;
    ferf.vpLteChave := vLteChave;
    ferf.vpMeaMotivo := '';
    ferf.vpClbCodigo := vusrcodigo;
    ferf.vpMeaCodigo := vmeacodigo;
    ferf.vpTncCodigo := vtnccodigo;

    ferf.IniciaProcessoEstorno;
  finally
    result := ferf.vpResultado;
    FreeAndNil(ferf);
  end;
end;

exports estornar, Cancelar, Creditar;

procedure Tferf.RegistraCredido(vLteChave: String);
var
  vlDtlValor: Currency;
  vetdCodigo: String;

begin
  consulta.Connection := zcone;
  consulta.Close;
  consulta.SQL.Text := 'select dtlvalor, ltechave from dtl where dtlchave=' + vpDtlChave;
  consulta.Open;

  vlDtlValor := consulta.FieldByName('dtlvalor').AsCurrency;
  vpLteChave := consulta.FieldByName('ltechave').AsString;
  consulta.Close;

  consulta.Close;
  consulta.SQL.Text := 'select etdcodigo from mes where meschave=' + vpMesChave;
  consulta.Open;
  vetdCodigo := consulta.FieldByName('etdcodigo').AsString;
  rcr.Connection := zcone;
  rcr.Open;
  rcr.Append;
  rcretdcodigo.AsString := vetdCodigo;
  rcrcedcodigo.AsInteger := 1;
  rcrrcrvalor.AsFloat := vlDtlValor;
  rcrrcrdata.AsFloat := StrToDate(hoje(application, zcone));

  if vpMesChave <> '' then
  begin
    rcrrcrhistorico.AsString := 'Crédito ref. a troco da vda. nr. ' + formatfloat('00000', strtoint(vpMesChave));
  end;

  rcrtcrcodigo.AsString := '1';
  rcrtnccodigo.AsInteger := 1;
  rcrtsccodigo.AsInteger := 1;
  rcrrcrhora.AsFloat := now;
  rcr.Post;
  mce.Connection := zcone;
  mce.Open;
  mce.Append;
  mcercrchave.AsInteger := rcrrcrchave.AsInteger;
  mcetmccodigo.AsString := '1';
  mceclbcodigo.AsString := vpClbCodigo;
  mcemcemotivo.AsString := rcrrcrhistorico.AsString;
  mcemecregistro.AsString := Agora(application, zcone);
  mceltechave.AsString := vpLteChave;
  mce.Post;

  { erc.Open;
    erc.Append;
    ercrcrchave.AsInteger := rcrrcrchave.AsInteger;
    ercerfchave.AsInteger := erferfchave.AsInteger;
    erc.Post; }
  dcd.Connection := zcone;
  dcd.Open;
  dcd.Append;
  dcdrcrchave.AsInteger := rcrrcrchave.AsInteger;
  dcddcdvalor.AsFloat := dtlvdtlvalor.AsFloat;
  dcddcdsituacao.AsInteger := 0;
  dcd.Post;

end;

procedure Tferf.IniciaProcessoCancelamento;
var
  i, t: integer;
  pode: boolean;
begin
  pode := true;
  For i := 0 To self.ComponentCount - 1 Do
  begin
    If (self.Components[i] Is TUniQuery) Then
      (self.Components[i] As TUniQuery).Connection := self.zcone;
  end;

  rfm.Close;
  rfm.Params[0].AsString := vpMesChave;
  rfm.Open;

  rfm.First;
  while not rfm.Eof do
  begin

    vrfi.Close;
    vrfi.SQL.Text := 'SELECT DISTINCT rfm.meschave, rfm.rfichave, lte.ltechave, rfi.rfivalor, rfi.tfdcodigo, rfi.srfcodigo FROM rfm ';
    vrfi.SQL.Add('INNER JOIN rfi ON rfm.rfichave = rfi.rfichave ');
    vrfi.SQL.Add('INNER JOIN mfi ON mfi.rfichave = rfi.rfichave ');
    vrfi.SQL.Add('INNER JOIN mlt ON mlt.mfichave = mfi.mfichave ');
    vrfi.SQL.Add('INNER JOIN lte ON mlt.ltechave = lte.ltechave ');
    vrfi.SQL.Add('INNER JOIN tmf ON mfi.tmfcodigo = tmf.tmfcodigo ');
    vrfi.SQL.Add('WHERE rfi.srfcodigo <> 0 AND mfi.tmfcodigo > 10 ');
    vrfi.SQL.Add(' and rfm.rfichave=' + rfmrfichave.AsString);
    if vpMesChave <> '' then
      vrfi.SQL.Add(' and rfm.meschave=' + vpMesChave);
    vrfi.Open;

    if not vrfi.IsEmpty then
    begin
      vrfi.First;
      while not vrfi.Eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'update rfi set srfcodigo=9 where srfcodigo in (0,2) and rfichave=' + vrfi.Fields[1].AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update mcg set mcgsituacao=9 where mcgtabela=' + QuotedStr('rfi') + ' and mcgchaveorigem=' + vrfi.Fields[1].AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update mfi set mfisituacao=0 where rfichave=' + vrfi.Fields[1].AsString;
        consulta.ExecSQL;
        if (vrfi.FieldByName('tfdcodigo').AsInteger = tfdVenda) and (vrfi.FieldByName('srfcodigo').AsInteger <> srfCancelado) then
        begin
          ProcessaEstorno(vrfi.Fields[2].AsString, vrfi.Fields[3].AsFloat);
        end;
        vrfi.next;
      end;
      pode := false;

    end
    else
    begin

      if vpMesChave <> '' then
      begin
        vrfi.Close;
        vrfi.SQL.Text := 'SELECT DISTINCT r.meschave, r.rfichave, l.ltechave,  r1.rfivalor, r1.tfdcodigo, r1.srfcodigo FROM mes ';
        vrfi.SQL.Add('INNER JOIN rfm r ON mes.meschave = r.meschave ');
        vrfi.SQL.Add('INNER JOIN mfi m ON r.rfichave = m.rfichave ');
        vrfi.SQL.Add('INNER JOIN rfi r1 ON m.rfichave = r1.rfichave ');
        vrfi.SQL.Add('INNER JOIN mlt m1 ON m.mfichave = m1.mfichave ');
        vrfi.SQL.Add('INNER JOIN lte l ON m1.ltechave = l.ltechave ');
        vrfi.SQL.Add('WHERE  mes.meschave=' + vpMesChave + ' and l.tfdcodigo in (32,52) ');
        vrfi.Open;

      end;

      if not vrfi.IsEmpty then
      begin
        vrfi.First;
        while not vrfi.Eof do
        begin
          consulta.Close;
          consulta.SQL.Text := 'update rfi set srfcodigo=9 where srfcodigo in (0,2) and  rfichave=' + vrfi.Fields[1].AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'update mcg set mcgsituacao=9 where mcgtabela=' + QuotedStr('rfi') + ' and mcgchaveorigem=' + vrfi.Fields[1].AsString;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'update mfi set mfisituacao=0 where rfichave=' + vrfi.Fields[1].AsString;
          consulta.ExecSQL;



          if (vrfi.FieldByName('tfdcodigo').AsInteger = tfdVenda) and (vrfi.FieldByName('srfcodigo').AsInteger = srfCancelado) then
          begin
            ProcessaEstorno(vrfi.Fields[2].AsString, vrfi.Fields[3].AsFloat);
          end;

          vrfi.next;
        end;
        pode := false;
      end
      else
      begin

      end;

    end;
    rfm.next;
  end;

  rfm.First;

  t := 0;

  while not rfm.Eof do
  begin

    { consulta.Close;
      consulta.sql.Text := 'update rfi set srfcodigo=9 where rfichave=' + rfmrfichave.AsString;
      consulta.ExecSQL; }

    rfitit.Close;
    rfitit.SQL.Text := 'select titcodigo from rfi where rfichave=' + rfmrfichave.AsString;
    rfitit.Open;

    if t <> rfitit.Fields[0].AsInteger then
    begin
      ccm.Close;
      ccm.Open;

      ccm.Append;
      ccmmeacodigo.AsString := vpMeaCodigo;
      ccmccochave.AsVariant := NULL;
      ccmtitcodigo.AsInteger := rfitit.Fields[0].AsInteger;
      ccmccmmotivo.AsString := vpMeaMotivo;
      ccmerfchave.AsString := erferfchave.AsString;
      if not vrfi.IsEmpty then
        ccmmeschave.AsString := vrfi.Fields[0].AsString;

      ccm.Post;

      t := rfitit.Fields[0].AsInteger;

    end;

    { consulta.Close;
      consulta.sql.Text := 'update tit set srfcodigo=9 where titcodigo=' + rfitit.Fields[0].AsString;
      consulta.ExecSQL; }

    rfm.next;
  end;

  if pode then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select mestotal,etdcodigo from mes where meschave=' + vpMesChave;
    consulta.Open;

    if not erf.Active then
    begin
      erf.Open;
      erf.Append
    end
    else
    begin
      erf.Edit;
    end;

    erferfvalorcredito.AsString := '0';
    erfetdcodigo.AsString := consulta.Fields[1].AsString;
    erferfvalorlote.AsFloat := consulta.Fields[0].AsFloat;

    erferfdata.AsFloat := date;
    erferfhora.AsFloat := time;
    erfclbcodigo.AsString := vpClbCodigo;
    erfltechave.AsInteger := 0;
    erferftipo.AsInteger := 0;
    erf.Post;

    ccm.Close;
    ccm.Open;

    ccm.Append;
    ccmmeacodigo.AsString := vpMeaCodigo;
    // ccmccochave.Asstring := '0';
    // ccmtitcodigo.Asstring := '0';
    ccmccmmotivo.AsString := vpMeaMotivo;
    ccmmeschave.AsString := vpMesChave;
    // ccmrfichave.AsString :='0';
    ccmerfchave.AsInteger := erferfchave.AsInteger;
    ccm.Post;

  end;

end;

procedure Tferf.IniciaProcessoEstorno;
var
  i: integer;
begin

  For i := 0 To self.ComponentCount - 1 Do
  begin
    If (self.Components[i] Is TUniQuery) Then
      (self.Components[i] As TUniQuery).Connection := self.zcone;
  end;

  self.ShowModal;

end;

procedure Tferf.DccoDataChange(Sender: TObject; Field: TField);
begin
  dtl.Close;
  dtl.Params[0].AsInteger := self.ccoccochave.AsInteger;
  dtl.Params[1].AsString := self.vpLteChave;
  dtl.Open;

  if not dtl.IsEmpty then
  begin

    che.Close;
    che.Params[0].AsInteger := self.dtlltechave.AsInteger;
    che.Open;

    rdc.Close;
    rdc.Params[0].AsInteger := self.dtlltechave.AsInteger;
    rdc.Open;

  end;

end;

procedure Tferf.EstornarRfi;
begin

  inherited;

  ProcessaEstorno(vpLteChave);

  consulta.Close;
  consulta.SQL.Text := 'update lte set ltesituacao=1 where ltechave=' + vpLteChave;
  consulta.ExecSQL;

  Close;

end;

procedure Tferf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tferf.FormShow(Sender: TObject);
begin

  rfi.Close;
  rfi.Params[0].AsString := vpLteChave;
  rfi.Open;

  cco.Close;
  cco.Params[0].AsString := vpLteChave;
  cco.Open;

  Processar.Enabled := true;

end;

function Tferf.ProcessaEstorno(LteChave: string; vvlrEstorno: double = 0): boolean;
var
  vccochaveatu: integer;
  vExtctacodigo: integer;
  vExtccoemissao: TDate;
  vExtccovencimento: TDate;
  vExttoccodigo: integer;
  vExtcedcodigo: integer;
  // vExtclbcodigo: integer;
  vExttficodigo: integer;
  vExtmoecodigo: integer;
  vExtcconumero: String;
  vExtccohistorico: String;
  vExtccovalor: double;
  vExtccochaveorig: integer;
  vExtccochavedest: integer;
  vExtccoconciliado: String;
  vExtccoextenso: String;
  vExtetdcodigo: integer;
  vExtccodatamov: TDate;
  vExtccodatavregistro: TDate;
  vExtccohoravregistro: TTime;
  vExtccofavorecido: String;

  vdtlchave: string;
  vLteChave: string;
  vLteChaveEst: string;
  vltechaveant: string;
  vmdacodigo: string;
  vlChavesLtes: TstringList;

  vlTotCheDevol: double;
  vlTotCarCance: double;
  vlTotCredGerar: double;

  vlTotCheNorm: double;
  vlTotCarNorm: double;

  vlTotEstorno: double;
  vlTotDoacao: double;

  vlTitCodigo: integer;
  vlListaCCo: TstringList;
  i: integer;
  vlLteData: string;
  vlNatAnterior: integer;

begin
  vlTotEstorno := 0;
  vlTotCheDevol := 0;
  vlTotCarCance := 0;
  vlTotDoacao := 0;

  vlTotCheNorm := 0;
  vlTotCarNorm := 0;

  vlTotCredGerar := 0;

  if LteChave='' then
  begin
    result:=true;
    exit;
  end;
  consulta.Close;
  consulta.SQL.Text := 'select ltedata, ltesituacao from lte where ltechave=' + LteChave;
  consulta.Open;

  vlLteData := consulta.Fields[0].AsString;
  consulta.Close;

  consulta.Close;
  consulta.SQL.Text := 'update lte set ltesituacao=1 where ltechave=' + LteChave;
  consulta.ExecSQL;
  consulta.Close;




  che.Close;
  che.Params[0].AsString := LteChave;
  che.Open;

  rdc.Close;
  rdc.Params[0].AsString := LteChave;
  rdc.Open;

  che.First;
  while not che.Eof do
  begin
    vlTotCheNorm := vlTotCheNorm + self.chechevalor.AsFloat;
    che.next;
  end;

  rdc.First;
  while not rdc.Eof do
  begin
    vlTotCarNorm := vlTotCarNorm + self.rdcrdcvalor.AsFloat;
    rdc.next;
  end;

  try
    zcone.StartTransaction;
    { inherited; }
    vlChavesLtes := TstringList.Create;
    // salva dados do registro atual

    clts.Close;
    clts.Params[0].AsString := LteChave;
    clts.Open;

    clts.First;
    vlListaCCo := TstringList.Create;

    while not clts.Eof do
    begin
      vccochaveatu := cltsccochave.AsInteger;

      ccov.Close;
      ccov.Params[0].AsInteger := vccochaveatu;
      ccov.Open;

      consulta.Close;
      consulta.SQL.Text := 'update mcg set mcgsituacao=9 where mcgtabela=' + QuotedStr('cco') + ' and mcgchaveorigem=' + IntToStr(vccochaveatu);
      consulta.ExecSQL;

      vExtctacodigo := ccovctacodigo.AsInteger;
      vExtccoemissao := ccovccoemissao.AsFloat;
      vExtccovencimento := ccovccovencimento.AsFloat;
      vExttoccodigo := ccovtoccodigo.AsInteger;
      vExtcedcodigo := ccovcedcodigo.AsInteger;
      // vExtclbcodigo := ccovclbcodigo.AsInteger;
      vExttficodigo := ccovtficodigo.AsInteger;
      vExtmoecodigo := ccovmoecodigo.AsInteger;
      vExtcconumero := ccovcconumero.AsString;
      vExtccohistorico := ccovccohistorico.AsString;

      { if vvlrEstorno <> 0 then
        vExtccovalor := vvlrEstorno
        else }
      vExtccovalor := ccovccovalor.AsFloat;

      vExtccochaveorig := ccovccochaveorig.AsInteger;
      vExtccochavedest := ccovccochavedest.AsInteger;
      vExtccoconciliado := ccovccoconciliado.AsString;
      vExtccoextenso := ccovccoextenso.AsString;
      vExtetdcodigo := ccovetdcodigo.AsInteger;
      vExtccodatamov := ccovccodatamov.AsFloat;
      vExtccodatavregistro := ccovccodataregistro.AsFloat;
      vExtccohoravregistro := ccovccohoraregistro.AsFloat;
      vExtccofavorecido := ccovccofavorecido.AsString;

      vExtccodatamov := date;

      ccov.Close;
      ccov.Params[0].AsInteger := 0;
      ccov.Open;

      cfg.Close;
      cfg.Open;

      // cria um novo registro com o ced ao contrario
      { if cfgcfgformacancelamento.AsInteger = 1 then
        begin }
      ccov.Append;

      ccovctacodigo.AsInteger := vExtctacodigo;
      ccovccoemissao.AsFloat := date;
      ccovccovencimento.AsFloat := date;
      ccovtoccodigo.AsInteger := tocEstorno;

      if vExtcedcodigo = 1 then
      begin
        ccovcedcodigo.AsInteger := 0;
      end
      else
      begin
        ccovcedcodigo.AsInteger := 1;
      end;
      vlNatAnterior := ccovcedcodigo.AsInteger;

      ccovclbcodigo.AsString := vpClbCodigo;
      ccovtficodigo.AsInteger := vExttficodigo;
      ccovmoecodigo.AsInteger := vExtmoecodigo;
      ccovcconumero.AsString := vExtcconumero;
      ccovccohistorico.AsString := 'Estorno Lcto. dia ' + vlLteData + ' ' + vExtccohistorico;
      if ((pos('Doação Venda', ccovccohistorico.AsString) > 0) and (pos('Estorno', ccovccohistorico.AsString) > 0)) then
        vlTotDoacao := vlTotDoacao + vExtccovalor;

      ccovccovalor.AsFloat := vExtccovalor;
      ccovccochaveorig.AsInteger := vccochaveatu;
      ccovccochavedest.AsInteger := vExtccochavedest;
      ccovccoconciliado.AsString := vExtccoconciliado;
      ccovccoextenso.AsString := vExtccoextenso;
      ccovetdcodigo.AsInteger := vExtetdcodigo;
      ccovccodatamov.AsFloat := vExtccodatamov;
      ccovccodataregistro.AsFloat := date;
      ccovccohoraregistro.AsFloat := time;
      ccovccofavorecido.AsString := vExtccofavorecido;
      ccov.Post;

      ccm.Close;
      ccm.Open;
      try
        ccm.Append;
        ccmmeacodigo.AsString := vpMeaCodigo;
        ccmccochave.AsInteger := ccovccochave.AsInteger;
        ccmtitcodigo.AsVariant := NULL;
        ccmccmmotivo.AsString := vpMeaMotivo;
        ccmerfchave.AsVariant := NULL;
        ccm.Post;
        vlListaCCo.Add(ccmccochave.AsString);
      except

      end;

      vlTotEstorno := vlTotEstorno + vExtccovalor;

      // cria um novo lote

      vLteChave := '0';

      ltev.Close;
      ltev.SQL.Text := 'select ltechave, tfdcodigo, ltedata, lteprincipal, ltejuros, ltedesconto, ltetotal, lteextenso from lte where ltechave=' + vLteChave;
      ltev.Open;

      if ltev.IsEmpty then
        ltev.Append
      else
        ltev.Edit;
      ltevtfdcodigo.AsInteger := tfdcontacorrente;
      ltevltedata.AsFloat := vExtccodatamov;
      ltevlteprincipal.AsFloat := self.ccovccovalor.AsFloat;
      ltevltejuros.AsFloat := 0;
      ltevltedesconto.AsFloat := 0;
      ltevltetotal.AsFloat := self.ccovccovalor.AsFloat;
      ltevlteextenso.AsString := '';
      ltev.Post;

      let.Close;
      let.Params[0].AsInteger := ltevltechave.AsInteger;
      let.Open;

      if let.IsEmpty then
      begin
        let.Append;
        letltechave.AsInteger := ltevltechave.AsInteger;
        letetdcodigo.AsInteger := vExtetdcodigo;
        let.Post;
      end;

      vlChavesLtes.Add(ltevltechave.AsString);

      vLteChave := self.ltevltechave.AsString;
      vLteChaveEst := vLteChave;
      // cria a ligacao do registro de conta corrente com o lote
      clt.Close;
      clt.Params[0].AsInteger := ccovccochave.AsInteger;
      clt.Params[1].AsString := vLteChave;
      clt.Open;

      if clt.IsEmpty then
        clt.Append
      else
        clt.Edit;

      self.cltccochave.AsInteger := ccovccochave.AsInteger;
      self.cltltechave.AsString := vLteChave;
      clt.Post;

      // localiza o lote original para recriar os detalhes ao inverso
      consulta.Close;
      consulta.SQL.Text := 'select ltechave from clt where ccochave=' + IntToStr(vccochaveatu);
      consulta.Open;

      vltechaveant := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := 'select dtlchave, ltechave, dtlvalor, cedcodigo, mdacodigo from dtl where ltechave=' + vltechaveant;
      consulta.Open;





      // gera detalhes do lote e vincula os cheques se houverem e outras modalidades

      che.Close;
      che.Params[0].AsInteger := vccochaveatu;
      che.Open;

      while not consulta.Eof do
      begin

        vmdacodigo := consulta.Fields[4].AsString;

        dtlv.Close;
        dtlv.Params[0].AsString := vLteChave;
        dtlv.Params[1].AsString := vmdacodigo;
        dtlv.Open;

        if dtlv.IsEmpty then
          dtlv.Append
        else
          dtlv.Edit;

        dtlvdtlvalor.AsFloat := self.ccovccovalor.AsFloat;
        dtlvcedcodigo.AsInteger := ccovcedcodigo.AsInteger;

        { if self.consulta.FieldByName('cedcodigo').AsInteger = 1 then
          dtlvcedcodigo.AsInteger := 1
          else
          dtlvcedcodigo.AsInteger := 0; }

        dtlvmdacodigo.AsInteger := self.consulta.FieldByName('mdacodigo').AsInteger;
        dtlvltechave.AsString := vLteChave;
        dtlv.Post;

        vdtlchave := self.dtlvdtlchave.AsString;

        while not che.Eof do
        begin

          ltc.Close;
          ltc.SQL.Text := 'select  ltcchave, chechave, dtlchave, schcodigo from ltc where chechave=' + self.che.FieldByName('chechave').AsString + ' and dtlchave=' + vdtlchave;
          ltc.Open;

          if ltc.IsEmpty then
            ltc.Append
          else
            ltc.Edit;

          ltcchechave.AsInteger := self.che.FieldByName('chechave').AsInteger;
          ltcdtlchave.AsString := vdtlchave;
          ltcschcodigo.AsInteger := schEstornado;

          ltc.Post;

          che.next;
        end;
        consulta.next;
      end;

      { end; }
      clts.next;
    end;

    vltechaveant := ltevltechave.AsString;
    // cria um novo lote

    vLteChave := '0';

    if ccov.Active then
    begin
      cfg.Close;
      cfg.Open;

      if (cfgcfgformacancelamento.AsInteger = 1) or ((pos('Doação Venda', ccovccohistorico.AsString) > 0) and (pos('Estorno', ccovccohistorico.AsString) > 0)) then
      begin
        ltev.Close;
        ltev.SQL.Text := 'select ltechave, tfdcodigo, ltedata, lteprincipal, ltejuros, ltedesconto, ltetotal, lteextenso from lte where ltechave=' + vLteChave;
        ltev.Open;

        if ltev.IsEmpty then
          ltev.Append
        else
          ltev.Edit;
        ltevtfdcodigo.AsInteger := tfdcontacorrente;
        ltevltedata.AsFloat := vExtccodatamov;
        ltevlteprincipal.AsFloat := self.ccovccovalor.AsFloat;
        ltevltejuros.AsFloat := 0;
        ltevltedesconto.AsFloat := 0;
        if ((pos('Doação Venda', ccovccohistorico.AsString) > 0) and (pos('Estorno', ccovccohistorico.AsString) > 0)) then
          ltevltetotal.AsFloat := vlTotDoacao
        else
          ltevltetotal.AsFloat := vlTotEstorno;
        ltevlteextenso.AsString := '';
        ltev.Post;

        let.Close;
        let.Params[0].AsInteger := ltevltechave.AsInteger;
        let.Open;

        if let.IsEmpty then
        begin
          let.Append;
          letltechave.AsInteger := ltevltechave.AsInteger;
          letetdcodigo.AsInteger := vExtetdcodigo;
          let.Post;
        end;

        vlChavesLtes.Add(ltevltechave.AsString);

        vLteChave := self.ltevltechave.AsString;

        { consulta.Close;
          consulta.sql.Text := 'select dtlchave, ltechave, dtlvalor, cedcodigo, mdacodigo from dtl where ltechave=' + vLteChaveEst;
          consulta.Open; }

        // gera registro para manter o credito no caixa do estorno
        ccov.Append;
        ccovctacodigo.AsInteger := vExtctacodigo;
        ccovccoemissao.AsFloat := date;
        ccovccovencimento.AsFloat := date;
        ccovtoccodigo.AsInteger := tocEstorno;
        if vlNatAnterior = cedcredito then
          ccovcedcodigo.AsInteger := ceddebito
        else
          ccovcedcodigo.AsInteger := cedcredito;

        ccovclbcodigo.AsString := vpClbCodigo;
        ccovtficodigo.AsInteger := vExttficodigo;
        ccovmoecodigo.AsInteger := vExtmoecodigo;
        ccovcconumero.AsString := vExtcconumero;

        if ccovcedcodigo.AsInteger = cedcredito then
        begin
          ccovccohistorico.AsString := 'Crédito Estorno Lcto. dia ' + ' ' + vlLteData + ' ' + vExtccohistorico;
        end
        else
        begin
          ccovccohistorico.AsString := 'Débito Estorno Lcto. dia ' + ' ' + vlLteData + ' ' + vExtccohistorico;
        end;

        if ((pos('Doação Venda', ccovccohistorico.AsString) > 0) and (pos('Estorno', ccovccohistorico.AsString) > 0)) then
          ccovccovalor.AsFloat := vlTotDoacao
        else
          ccovccovalor.AsFloat := vlTotEstorno;

        ccovccochaveorig.AsInteger := vccochaveatu;
        ccovccochavedest.AsInteger := vExtccochavedest;
        ccovccoconciliado.AsString := vExtccoconciliado;
        ccovccoextenso.AsString := vExtccoextenso;
        ccovetdcodigo.AsInteger := vExtetdcodigo;
        ccovccodatamov.AsFloat := vExtccodatamov;
        ccovccodataregistro.AsFloat := date;
        ccovccohoraregistro.AsFloat := time;
        ccovccofavorecido.AsString := vExtccofavorecido;
        ccov.Post;

        // cria a ligacao do registro de conta corrente com o lote
        clt.Close;
        clt.Params[0].AsInteger := ccovccochave.AsInteger;
        clt.Params[1].AsString := vLteChave;
        clt.Open;

        if clt.IsEmpty then
          clt.Append
        else
          clt.Edit;

        cltccochave.AsInteger := ccovccochave.AsInteger;
        cltltechave.AsString := vLteChave;
        clt.Post;

        if not consulta.Active then
        begin

          dtlv.Close;
          dtlv.Params[0].AsString := vLteChave;
          dtlv.Params[1].AsString := '1';
          dtlv.Open;

          if dtlv.IsEmpty then
            dtlv.Append
          else
            dtlv.Edit;

          if ((pos('Doação Venda', ccovccohistorico.AsString) > 0) and (pos('Estorno', ccovccohistorico.AsString) > 0)) then
            dtlvdtlvalor.AsFloat := vlTotDoacao
          else
            dtlvdtlvalor.AsFloat := vlTotEstorno; // self.consulta.FieldByName('dtlvalor').AsFloat;

          dtlvcedcodigo.AsInteger := ccovcedcodigo.AsInteger;
          dtlvmdacodigo.AsString := '1'; // self.consulta.FieldByName('mdacodigo').AsInteger;
          dtlvltechave.AsString := vLteChave;
          dtlv.Post;

        end
        else
        begin
          consulta.First;
          while not consulta.Eof do
          begin

            vmdacodigo := consulta.Fields[4].AsString;

            dtlv.Close;
            dtlv.Params[0].AsString := vLteChave;
            dtlv.Params[1].AsString := vmdacodigo;
            dtlv.Open;

            if dtlv.IsEmpty then
              dtlv.Append
            else
              dtlv.Edit;


          if ((pos('Doação Venda', ccovccohistorico.AsString) > 0) and (pos('Estorno', ccovccohistorico.AsString) > 0)) then
            dtlvdtlvalor.AsFloat := vlTotDoacao
          else
           dtlvdtlvalor.AsFloat := vlTotEstorno;

            dtlvcedcodigo.AsInteger := ccovcedcodigo.AsInteger;
            dtlvmdacodigo.AsString := self.consulta.FieldByName('mdacodigo').AsString;
            dtlvltechave.AsString := vLteChave;
            dtlv.Post;

            consulta.next;
          end;

        end;
        if not erf.Active then
        begin
          erf.Open;
          erf.Append
        end
        else
        begin
          erf.Edit;
        end;

          if ((pos('Doação Venda', ccovccohistorico.AsString) > 0) and (pos('Estorno', ccovccohistorico.AsString) > 0)) then
            erferfvalorcredito.AsFloat := vlTotDoacao
          else
        erferfvalorcredito.AsFloat := vlTotEstorno;

        erfetdcodigo.AsInteger := vExtetdcodigo;

        erferfdata.AsFloat := date;
        erferfhora.AsFloat := time;
        erfclbcodigo.AsString := vpClbCodigo;
        erferfvalorlote.AsFloat := dtlvdtlvalor.AsFloat - (vlTotCarCance + vlTotCheDevol);
        erfltechave.AsString := LteChave;
        erf.Post;

        for i := 0 to vlListaCCo.count - 1 do
        begin
          accm.Close;
          accm.SQL.Text := 'update ccm set erfchave=' + erferfchave.AsString + ' where ccochave=' + vlListaCCo[i];
          accm.ExecSQL;
        end;

        rcr.Open;
        rcr.Append;
        rcretdcodigo.AsInteger := self.erfetdcodigo.AsInteger;
        rcrcedcodigo.AsInteger := ccovcedcodigo.AsInteger;
        rcrrcrvalor.AsFloat := erferfvalorcredito.AsFloat;
        rcrrcrdata.AsFloat := erferfdata.AsFloat;

        if vpMesChave <> '' then
        begin
          if ccovcedcodigo.AsInteger = 1 then
          begin
            rcrrcrhistorico.AsString := 'Crédito ref. a cancelamento da vda. nr. ' + formatfloat('00000', strtoint(vpMesChave));
          end;
          if ccovcedcodigo.AsInteger = 0 then
          begin
            rcrrcrhistorico.AsString := 'Débito ref. a cancelamento da cpr. nr. ' + formatfloat('00000', strtoint(vpMesChave));
          end;
        end
        else
        begin
          rcrrcrhistorico.AsString := ccovccohistorico.AsString + ' - ' + vpMeaMotivo;
        end;

        rcrtcrcodigo.AsInteger := 1;

        if ccovcedcodigo.AsInteger = cedcredito then
          rcrtnccodigo.AsInteger := 1 // Crédito
        else
          rcrtnccodigo.AsInteger := 2; // Verba

        rcrtsccodigo.AsInteger := 1;
        rcrrcrhora.AsFloat := time;
        rcr.Post;

        mce.Open;
        mce.Append;
        mcercrchave.AsInteger := rcrrcrchave.AsInteger;
        mcetmccodigo.AsString := '1';
        mceclbcodigo.AsString := vpClbCodigo;
        mcemcemotivo.AsString := vpMeaMotivo;
        mcemecregistro.AsFloat := now;
        mceltechave.AsString := vLteChave;
        mce.Post;

        erc.Open;
        erc.Append;
        ercrcrchave.AsInteger := rcrrcrchave.AsInteger;
        ercerfchave.AsInteger := erferfchave.AsInteger;
        erc.Post;

        dcd.Open;
        dcd.Append;
        dcdrcrchave.AsInteger := rcrrcrchave.AsInteger;
        dcddcdvalor.AsFloat := dtlvdtlvalor.AsFloat - (vlTotCarCance + vlTotCheDevol);
        dcddcdsituacao.AsInteger := 0;
        dcd.Post;

        rfiv.Close;
        rfiv.Params[0].AsString := vpLteChave;
        rfiv.Open;

        vlTitCodigo := 0;
        while not rfiv.Eof do
        begin

          if rfivsrfcodigo.AsInteger = srfEmAberto then
          begin
            consulta.Close;
            consulta.SQL.Text := 'delete from rfi WHERE rfichave = ' + rfivrfichave.AsString;
            consulta.ExecSQL;
          end
          else
          begin
            consulta.Close;
            consulta.SQL.Text := 'UPDATE rfi SET rfi.srfcodigo = ' + IntToStr(srfEmAberto) + ' WHERE rfichave = ' + rfivrfichave.AsString;
            consulta.ExecSQL;

            if vlTitCodigo <> rfivtitcodigo.AsInteger then
            begin
              ccm.Close;
              ccm.Open;
              try
                ccm.Append;
                ccmmeacodigo.AsString := vpMeaCodigo;
                ccmccochave.AsVariant := ccovccochave.AsInteger;
                ccmtitcodigo.AsInteger := rfivtitcodigo.AsInteger;
                ccmccmmotivo.AsString := vpMeaMotivo;
                ccmerfchave.AsInteger := erferfchave.AsInteger;
                ccm.Post;

              except

              end;
              vlTitCodigo := rfivtitcodigo.AsInteger;

            end;

          end;

          rfiv.next;
        end;
      end;
    end
    else
    begin

      if not erf.Active then
      begin
        erf.Open;
        erf.Append
      end
      else
      begin
        erf.Edit;
      end;

      erferfvalorcredito.AsFloat := 0;
      erfetdcodigo.AsInteger := vExtetdcodigo;

      erferfdata.AsFloat := date;
      erferfhora.AsFloat := time;
      erfclbcodigo.AsString := vpClbCodigo;
      erferfvalorlote.AsFloat := 0;
      erfltechave.AsString := LteChave;
      erf.Post;

      ccm.Close;
      ccm.Open;
      try
        ccm.Append;
        ccmmeacodigo.AsString := vpMeaCodigo;
        ccmccmmotivo.AsString := vpMeaMotivo;

        if vpMesChave <> '' then
          ccmmeschave.AsString := vpMesChave;

        ccmerfchave.AsInteger := erferfchave.AsInteger;
        ccm.Post;

      except

      end;

    end;

    { * Registrar retorno de créditos * }

    dtl.Close;
    dtl.Params[0].AsInteger := self.ccoccochave.AsInteger;
    dtl.Params[1].AsString := self.vpLteChave;
    dtl.Open;

    if not dtl.IsEmpty then
    begin

      che.Close;
      che.Params[0].AsInteger := self.dtlltechave.AsInteger;
      che.Open;

      rdc.Close;
      rdc.Params[0].AsInteger := self.dtlltechave.AsInteger;
      rdc.Open;

    end;

    dtl.First;
    vlTotEstorno := 0;
    while not dtl.Eof do
    begin
      if dtlmdacodigo.AsInteger = 8 then
      begin
        vlTotEstorno := vlTotEstorno + dtldtlvalor.AsCurrency;

      end;
      dtl.next;
    end;

    if not erf.Active then
    begin
      erf.Open;
      erf.Append
    end
    else
    begin
      erf.Edit;
    end;
    erferfvalorcredito.AsFloat := erferfvalorcredito.AsFloat + vlTotEstorno;
    erfetdcodigo.AsInteger := letetdcodigo.AsInteger;
    erferfdata.AsFloat := date;
    erferfhora.AsFloat := time;
    erfclbcodigo.AsString := vpClbCodigo;
    erferfvalorlote.AsFloat := 0;
    erfltechave.AsString := LteChave;
    erf.Post;

    ccm.Close;
    ccm.Open;
    try
      ccm.Append;
      ccmmeacodigo.AsString := vpMeaCodigo;
      ccmccmmotivo.AsString := vpMeaMotivo;

      if vpMesChave <> '' then
        ccmmeschave.AsString := vpMesChave;

      ccmerfchave.AsInteger := erferfchave.AsInteger;
      ccm.Post;

    except

    end;

    dtl.First;

    while not dtl.Eof do
    begin
      if dtlmdacodigo.AsInteger = 8 then
      begin

        rcr.Open;
        rcr.Append;
        rcretdcodigo.AsInteger := self.erfetdcodigo.AsInteger;
        rcrcedcodigo.AsInteger := 1;
        rcrrcrvalor.AsFloat := dtldtlvalor.AsFloat;
        rcrrcrdata.AsFloat := erferfdata.AsFloat;

        if vpMesChave <> '' then
        begin
          if ccovcedcodigo.AsInteger = 1 then
          begin
            rcrrcrhistorico.AsString := 'Crédito ref. a cancelamento da vda. nr. ' + formatfloat('00000', strtoint(vpMesChave));
          end;
          if ccovcedcodigo.AsInteger = 0 then
          begin
            rcrrcrhistorico.AsString := 'Débito ref. a cancelamento da cpr. nr. ' + formatfloat('00000', strtoint(vpMesChave));
          end;
        end
        else
        begin
          rcrrcrhistorico.AsString := ccovccohistorico.AsString + ' - ' + vpMeaMotivo;
        end;

        rcrtcrcodigo.AsString := '1';
        rcrtnccodigo.AsInteger := 1;
        rcrtsccodigo.AsInteger := 1;
        rcrrcrhora.AsFloat := time;
        rcr.Post;

        mce.Open;
        mce.Append;
        mcercrchave.AsInteger := rcrrcrchave.AsInteger;
        mcetmccodigo.AsString := '1';
        mceclbcodigo.AsString := vpClbCodigo;
        mcemcemotivo.AsString := vpMeaMotivo;
        mcemecregistro.AsFloat := now;
        mceltechave.AsString := LteChave;
        mce.Post;

        erc.Open;
        erc.Append;
        ercrcrchave.AsInteger := rcrrcrchave.AsInteger;
        ercerfchave.AsInteger := erferfchave.AsInteger;
        erc.Post;

        dcd.Open;
        dcd.Append;
        dcdrcrchave.AsInteger := rcrrcrchave.AsInteger;
        dcddcdvalor.AsFloat := dtlvdtlvalor.AsFloat;
        dcddcdsituacao.AsInteger := 0;
        dcd.Post;

      end;

      dtl.next;
    end;

    if not rfi.IsEmpty then
    begin
      rfi.First;
      while not rfi.Eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'update rfi set srfcodigo=0 where srfcodigo<>0 and  rfichave=' + rfi.Fields[0].AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'update mfi set mfisituacao=0 where rfichave=' + rfi.Fields[0].AsString;
        consulta.ExecSQL;

        rfi.next;
      end;
    end;

    zcone.Commit;

    vpResultado := '1';
    // showmessage('Estornar da Baixa.' + #13 + #13 + #13 + #13 + 'Operação realizada com sucesso!');
  except
    on e: Exception Do
    begin
      vpResultado := '0';
      zcone.Rollback;
      showmessage('Falha ao estornar a Baixa.' + #13 + e.Message + #13 + #13 + #13 + 'Operação NÃO realizada!');
    end;
  end;
end;

procedure Tferf.ProcessarTimer(Sender: TObject);
begin
  Processar.Enabled := false;
  cfg.Open;
  EstornarRfi;
end;

end.
