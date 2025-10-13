unit ufrech;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, Vcl.Forms, ufdvch,
  Datasnap.DBClient, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, uFuncoes, UPegaBase, System.ImageList;

type
  Tfrech = class(Tfdvch)
    dchhistorico: TDBEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ctacodigodesEnter(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    function GererRegistros: boolean; Override;
    function contabiliza: boolean;
    procedure CarregaCheques;
    { Private declarations }
  public
    { Public declarations }
    vpComplmento: string;
    vRmgValor: string;
    vLteChave: String;
    vFlaCodigoOri: string;
    vFlaCodigoDes: string;
    vPcgCodigoOri: string;
    vPcgCodigoDes: string;

    function finaliza(vchave: string): string;

  end;

  TContabilizacaoTransferencia = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vFlaOrigem: string;
    vFlaDestino: string; vPcgCredito: string; vPcgDebito: string; vPhgCodigo: string; vRmgValor: string; vComplemento: string): boolean;

  TContabilizar = function(AOwner: TComponent; conexao: tuniconnection; vChaves: TstringList; vTipo: string): string;

var
  frech: Tfrech;

  // Início ID do Módulo frech
const
  vPlIdMd = '02.02.07.007-4';
  vPlTitMdl = 'Depósitos de Cheques';

  // Fim ID do Módulo frech

implementation

{$R *.dfm}

function Tfrech.contabiliza: boolean;
var
  Contab: TContabilizacaoTransferencia;
  vlLinha: string;
begin

  pack := LoadPackage('modulos\mctz.bpl');
  if pack <> 0 then
    try
      @Contab := GetProcAddress(pack, PChar('ContabilizacaoTransferencia'));
      if Assigned(Contab) then
      begin

        vlLinha := '';
        tmp.First;
        while not tmp.Eof do
        begin

          vlLinha := vlLinha + ' bc ' + tmpbcocodigo.AsString + ', ag ' + tmpcheagencia.AsString + ', cc ' + self.tmpcheconta.AsString + ', nº ' +
            self.tmpchenumero.AsString + ', ';
          tmp.Next;
        end;

        vpComplmento := 'Resgate do(s) cheque(s): ' + vlLinha;

        result := Contab(Application, zcone, Acesso.Usuario.ToString, vLteChave, vFlaCodigoOri, vFlaCodigoDes, vPcgCodigoOri, vPcgCodigoDes, '1', vRmgValor,
          vpComplmento);

      end;

    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfrech.ctacodigodesEnter(Sender: TObject);
begin
  inherited;

  cta.Filter := 'ctacodigo<>' + self.vChaveMestre + ' and tctcodigo=1';
  cta.Filtered := True;

end;

function Tfrech.finaliza(vchave: string): string;
type
  TRegistraLote = function(AOwner: TComponent; conexao: tuniconnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string;
    desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: double = 0;
    vPodeCartoes: boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True): string;
var
  registra: TRegistraLote;
  vMulta: String;
  vpri: string;
  vjur: string;
  vdes: string;
  vTrmCodigo: string;
begin

  vTrmCodigo := '1';
  pack := LoadPackage('modulos\mlte.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('registralote'));
      if Assigned(registra) then
      begin
        vpri := buscatroca(self.ccoccovalor.AsString, ',', '.');
        vdes := '0';
        vjur := '0';
        vMulta := '0';
        result := registra(Application, zcone, vchave, vTrmCodigo, vpri, vMulta, vjur, vdes, Acesso, inttostr(tfdContaCorrente), False);

      end;
    finally
      // DoUnLoadPackage(pack);
    end;

end;

function Tfrech.GererRegistros: boolean;
var
  vretorno: string;
  vlChavesLtes: TstringList;
  vlChavesCcos: TstringList;
  vlEtdCodigo: Integer;

  vlLteChave: string;
  i: Integer;
  vlTotDifCre: double;
begin
  result := True;
  vlChavesLtes := TstringList.Create;
  vlChavesCcos := TstringList.Create;
  tmp.First;

  vlTotDifCre := 0;
  while not tmp.Eof do
  begin
    if self.tmptmpselecionar.AsInteger = 1 then
    begin
      { * debito na conta do banco * }
      lte.Open;
      lte.append;
      ltetfdcodigo.AsInteger := tfdContaCorrente;
      lteltedata.AsFloat := date;
      ltelteprincipal.AsFloat := self.tmpchevalor.AsFloat;
      lteltejuros.AsFloat := 0;
      lteltedesconto.AsFloat := 0;
      lteltetotal.AsFloat := self.tmpchevalor.AsFloat;
      lteltemulta.AsFloat := 0;
      lte.post;

      let.Close;
      let.Params[0].AsInteger := lteltechave.AsInteger;
      let.Open;

      let.append;
      letltechave.AsInteger := lteltechave.AsInteger;
      letetdcodigo.AsInteger := tmpetdcodigo.AsInteger;
      let.post;
      vlEtdCodigo := tmpetdcodigo.AsInteger;

      vlChavesLtes.Add(lteltechave.AsString);
      dtl.Open;
      dtl.append;
      dtlltechave.AsString := lteltechave.AsString;
      dtlcedcodigo.AsInteger := ceddebito;
      dtlmdacodigo.AsInteger := mdaChequeTerceiros;
      dtldtlvalor.AsFloat := lteltetotal.AsFloat;
      dtl.post;

      cco.Close;
      cco.Open;
      cco.append;
      ccoctacodigo.AsInteger := self.ctacodigoori.Field.AsInteger;
      ccoccoemissao.AsFloat := date;
      ccoccovencimento.AsFloat := date;
      ccotoccodigo.AsInteger := tocTransferencia;
      ccocedcodigo.AsInteger := ceddebito;
      ccoclbcodigo.AsInteger := Acesso.Usuario;
      ccotficodigo.AsInteger := 1;
      ccomoecodigo.AsInteger := 1;
      ccocconumero.AsString := tmpchenumero.AsString;

      ccoccohistorico.AsString := 'Cheque Resgatado bc ' + tmpbcocodigo.AsString + ', ag ' + tmpcheagencia.AsString + ', cc ' + self.tmpcheconta.AsString +
        ', nº ' + self.tmpchenumero.AsString;
      vpComplmento := ccoccohistorico.AsString;
      ccoccofavorecido.AsString := 'Para: ' + self.registroctadestino.AsString;

      ccoccovalor.AsFloat := self.tmpchevalor.AsFloat;
      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccoconciliado.AsString := '0';
      ccoccoextenso.AsString := '';
      ccoetdcodigo.AsInteger := self.tmpetdcodigo.AsInteger;
      ccoccodatamov.AsFloat := date;
      ccoccodataregistro.AsFloat := date;
      ccoccohoraregistro.AsFloat := time;
      cco.post;

      ccd.Close;
      ccd.Params[0].AsInteger := dtldtlchave.AsInteger;
      ccd.Params[1].AsString := ccoccochave.AsString;
      ccd.Open;
      if ccd.IsEmpty then
      begin
        ccd.append;
        ccdccochave.AsString := ccoccochave.AsString;
        ccddtlchave.AsInteger := dtldtlchave.AsInteger;
        ccd.post;
      end;

      vlChavesCcos.Add(ccoccochave.AsString);
      clt.Close;
      clt.Open;
      clt.append;
      cltccochave.AsInteger := self.ccoccochave.AsInteger;
      cltltechave.AsInteger := self.lteltechave.AsInteger;
      clt.post;

      ltc.Close;
      ltc.Open;
      ltc.append;
      ltcdtlchave.AsInteger := dtldtlchave.AsInteger;
      ltcchechave.AsInteger := self.tmpchechave.AsInteger;
      ltcschcodigo.AsInteger := schLiquidadoResgate;
      ltcmdccodigo.AsInteger := tmpmdccodigo.AsInteger;
      ltc.post;

      vchave := self.ccoccochave.AsString;

      { vretorno := finaliza(vchave);

        if cfgcfgusactb.AsInteger = 1 then
        begin
        // contabiliza(vlChavesLtes, self.Name)
        end; }

    end;
    tmp.Next;

  end;

  { * crédito na conta de destino * }
  vlTotDifCre := 0;
  lte.Open;
  lte.append;
  ltetfdcodigo.AsInteger := tfdContaCorrente;
  lteltedata.AsFloat := date;
  ltelteprincipal.AsFloat := dchtotal.Field.AsFloat;
  lteltejuros.AsFloat := 0;
  lteltedesconto.AsFloat := 0;
  lteltetotal.AsFloat := dchtotal.Field.AsFloat;
  lteltemulta.AsFloat := 0;
  lte.post;

  vLteChave := lteltechave.AsString;
  vRmgValor := lteltetotal.AsString;

  let.Close;
  let.Params[0].AsInteger := lteltechave.AsInteger;
  let.Open;

  let.append;
  letltechave.AsInteger := lteltechave.AsInteger;
  letetdcodigo.AsInteger := vlEtdCodigo;
  let.post;

  vlChavesLtes.Add(lteltechave.AsString);

  cco.Close;
  cco.Open;
  cco.append;
  ccoctacodigo.AsInteger := self.ctacodigoori.Field.AsInteger;
  ccoccoemissao.AsFloat := date;
  ccoccovencimento.AsFloat := date;
  ccotoccodigo.AsInteger := tocTransferencia;
  ccocedcodigo.AsInteger := cedcredito;
  ccoclbcodigo.AsInteger := Acesso.Usuario;
  ccotficodigo.AsInteger := 1;
  ccomoecodigo.AsInteger := 1;
  ccocconumero.AsString := tmpchenumero.AsString;
  ccoccohistorico.AsString := 'Resgate de Cheques';
  ccoccofavorecido.AsString := 'De: ' + self.registroctaorigem.AsString;
  ccoccovalor.AsFloat := dchtotal.Field.AsFloat;
  ccoccochaveorig.AsInteger := 0;
  ccoccochavedest.AsInteger := 0;
  ccoccoconciliado.AsString := '0';
  ccoccoextenso.AsString := '';
  ccoetdcodigo.AsInteger := vlEtdCodigo;
  ccoccodatamov.AsFloat := date;
  ccoccodataregistro.AsFloat := date;
  ccoccohoraregistro.AsFloat := time;
  cco.post;

  consulta.Close;
  consulta.sql.Text := 'select tctcodigo, flacodigo, pcgcodigo from cta where ctacodigo=' + self.ctacodigoori.Field.AsString;
  consulta.Open;

  vFlaCodigoOri := consulta.Fields[1].AsString;
  vPcgCodigoOri := consulta.Fields[2].AsString;

  vFlaCodigoDes := consulta.Fields[1].AsString;
  vPcgCodigoDes := consulta.Fields[2].AsString;

  vlChavesCcos.Add(ccoccochave.AsString);

  clt.Close;
  clt.Open;
  clt.append;
  cltccochave.AsInteger := self.ccoccochave.AsInteger;
  cltltechave.AsInteger := self.lteltechave.AsInteger;
  clt.post;

  dtl.Open;
  dtl.append;
  dtlltechave.AsString := lteltechave.AsString;
  dtlcedcodigo.AsInteger := cedcredito;
  dtlmdacodigo.AsInteger := mdadinheiro;
  dtl.post;

  ccd.Close;
  ccd.Params[0].AsInteger := dtldtlchave.AsInteger;
  ccd.Params[1].AsString := ccoccochave.AsString;
  ccd.Open;
  if ccd.IsEmpty then
  begin
    ccd.append;
    ccdccochave.AsString := ccoccochave.AsString;
    ccddtlchave.AsInteger := dtldtlchave.AsInteger;
    ccd.post;
  end;

  vchave := self.ccoccochave.AsString;

  vretorno := finaliza(vchave);

  if vretorno = '' then
  begin
    for i := 0 to vlChavesLtes.count - 1 do
    begin
      consulta.Close;
      consulta.sql.Text := 'delete from lte where ltechave=' + vlChavesLtes[i];
      consulta.ExecSQL;

    end;

    for i := 0 to vlChavesCcos.count - 1 do
    begin
      consulta.Close;
      consulta.sql.Text := 'delete from cco where ccochave=' + vlChavesCcos[i];
      consulta.ExecSQL;

    end;

    result := False;
    exit;
  end;

  consulta.Close;
  consulta.sql.Text := 'select sum(dtlvalor) from dtl where mdacodigo<>' + inttostr(mdaCredito) + ' and ltechave=' + lteltechave.AsString;
  consulta.Open;

  vlTotDifCre := vlTotDifCre + consulta.Fields[0].AsCurrency;

  if vlTotDifCre = 0 then
  begin
    consulta.Close;
    consulta.sql.Text := 'delete from cco where ccochave=' + ccoccochave.AsString;
    consulta.ExecSQL;
  end
  else if (vlTotDifCre <> dchtotal.Field.AsFloat) and (vlTotDifCre > 0) then
  begin
    cco.Edit;
    ccoccovalor.AsFloat := vlTotDifCre;
    cco.post;
  end;

  if cfgcfgusactb.AsInteger = 1 then
  begin
    contabiliza;
  end;

end;

procedure Tfrech.FormShow(Sender: TObject);
begin

  IdModulo := vPlIdMd;


  tmp.CreateDataSet;


  inherited;

  che.Close;
  che.Params[0].AsString := vChaveMestre;
  che.Params[1].AsInteger := 1;
  che.Open;


  ctacodigodes.Field.AsString := vChaveMestre;

  ctacodigoori.Enabled := False;
  ctacodigodes.Enabled := False;

  CarregaCheques;

  self.txtFiltro := 'ctacodigo<>' + self.vChaveMestre + ' and tctcodigo=1';

end;



procedure Tfrech.CarregaCheques;
var
  i: Integer;
begin

  tmp.EmptyDataSet;

  che.First;
  while not che.Eof do
  begin
    if (cheschcodigo.AsString='1') or (cheschcodigo.AsString='3')  then
    begin
    tmp.append;
    for i := 0 to che.Fields.Count - 1 do
    begin
      tmp.Fieldbyname(che.Fields[i].FieldName).AsString := che.Fieldbyname(che.Fields[i].FieldName).AsString;
    end;
    tmp.Fieldbyname('tmpselecionar').AsString := '0';
    tmp.Fieldbyname('mdccodigo').AsString := '0';

    tmp.post;
    end;
    che.Next;
  end;

end;

procedure Tfrech.bcancelaClick(Sender: TObject);
begin
  if tmp.RecordCount > 0 then
  begin
    tmp.First;
    while tmp.Eof do
    begin
      tmp.Edit;
      tmptmpselecionar.AsInteger := 0;
      tmp.post;

      tmp.Next;
    end;
  end;
  inherited;

end;

end.
