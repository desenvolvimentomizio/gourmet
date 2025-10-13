unit GourmetServer.Controller.aiq.FINALIZAVENDA;

interface

Uses
  Horse,
  System.SysUtils,
  idHashMessageDigest,
  System.JSON,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Controller.ORC,
  GourmetServer.Controller.IMM,
  GourmetServer.Controller.MLT,
  GourmetServer.Controller.RFM,
  GourmetServer.Controller.MFI,
  GourmetServer.Controller.RFI,
  GourmetServer.Controller.TIT,
  GourmetServer.Controller.MOR,
  GourmetServer.Controller.MES,
  GourmetServer.Controller.ITM,
  GourmetServer.Controller.LTE,
  GourmetServer.Controller.DTL,
  GourmetServer.Controller.CCX,
  GourmetServer.Controller.CZN,
  GourmetServer.Controller.CLB,
  GourmetServer.Controller.CCO,
  GourmetServer.Controller.ORI,
  GourmetServer.Controller.V_CFG,
  GourmetServer.Controller.CFGMGOU,
  GourmetServer.Service.Funcoes,
  GourmetServer.Controller.aiq.AIQMDA;

function Finaliza(vPedido: TJsonObject; vItens: TJsonArray; vRetira:Boolean=false): integer;
function FinalizaLiberaImpressao(VOrcChave: integer): integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

Procedure RegistraITM(vMeschave: integer; vItensPedido: TJsonArray);
var
  vItm: TJsonObject;

  i: integer;
  vlQtdItens: integer;
  a: string;
  vlvalorito: double;
  vltotalito: double;
  vltaxa: String;
  vlpode: boolean;
begin
  vlpode := true;
  vlQtdItens := vItensPedido.Count;

  for i := 0 to vlQtdItens - 1 do
  begin

    vltaxa := vItensPedido[i].getvalue('itooutras', '');
    vltaxa := stringreplace(vltaxa, '.', ',', []);

    vlvalorito := 0;
    vltotalito := 0;
    if (vItensPedido[i].getvalue('itoacrescimoav', '') <> '0') and (vItensPedido[i].getvalue('itoacrescimoav', '') <> '') then
    begin
      vlvalorito := StrToCurr(vItensPedido[i].getvalue('itovalorav', '')) + StrToCurr(vItensPedido[i].getvalue('itoacrescimoav', ''));
      vltotalito := StrToCurr(vItensPedido[i].getvalue('itototalav', '')) + StrToCurr(vItensPedido[i].getvalue('itoacrescimoav', ''));

    end
    else
    begin
      vlvalorito := StrToCurr(vItensPedido[i].getvalue('itovalorav', ''));
      vltotalito := StrToCurr(vItensPedido[i].getvalue('itototalav', ''));
    end;

    if (vltaxa <> '0,00') and (vltaxa <> '') and (vltaxa <> '0') then
    begin
      if strtofloat(vltaxa) = vltotalito then
        vlpode := false;

    end;

    if (vItensPedido[i].getvalue('itoprocomple', '') = 'TAXA DE ENTREGA') or (vItensPedido[i].getvalue('itoprocomple', '') = 'TAXA DE SERVIÇO AIQFOME') then
    begin
      vlpode := false;
    end;

    if vlpode then
    begin

      vItm := TJsonObject.Create;
      vItm.AddPair('meschave', vMeschave.ToString);
      vItm.AddPair('itmitem', vItensPedido[i].getvalue('itoitem', ''));
      vItm.AddPair('procodigo', vItensPedido[i].getvalue('procodigo', ''));
      vItm.AddPair('itmquantidade', vItensPedido[i].getvalue('itoquantidade', ''));

      { vlvalorito := 0;
        vltotalito := 0;
        if (vItensPedido[i].getvalue('itoacrescimoav', '') <> '0') and (vItensPedido[i].getvalue('itoacrescimoav', '') <> '') then
        begin
        vlvalorito := StrToCurr(vItensPedido[i].getvalue('itovalorav', '')) + StrToCurr(vItensPedido[i].getvalue('itoacrescimoav', ''));
        vltotalito := StrToCurr(vItensPedido[i].getvalue('itototalav', '')) + StrToCurr(vItensPedido[i].getvalue('itoacrescimoav', ''));

        end
        else
        begin
        vlvalorito := StrToCurr(vItensPedido[i].getvalue('itovalorav', ''));
        vltotalito := StrToCurr(vItensPedido[i].getvalue('itototalav', ''));
        end;
      }
      vItm.AddPair('itmvalor', vlvalorito.ToString);
      vItm.AddPair('itmtotal', vltotalito.ToString);

      vItm.AddPair('itmdesconto', vItensPedido[i].getvalue('itodescontoav', ''));

      vItm.AddPair('toecodigo', Inttostr(v1BuscaCodigoCfgmnfeCfoVenda));
      vItm.AddPair('cfocfop', '5.102');

      vItm.AddPair('itmcontendo', '1');
      vItm.AddPair('itmmovifisico', '1');
      vItm.AddPair('cstcodigo', '00');
      vItm.AddPair('icmcodigo', '00');
      vItm.AddPair('csicodigo', '99');
      vItm.AddPair('cspcodigo', '99');
      vItm.AddPair('csfcodigo', '99');
      vItm.AddPair('itmtipodesc', '1');
      vItm.AddPair('itmpercdesc', '0');
      vItm.AddPair('itmproservico', '0');
      vItm.AddPair('itmoutras', vItensPedido[i].getvalue('itooutras', ''));

      a := vItensPedido[i].getvalue('itooutras', '');

      vItm.AddPair('unicodigo', vItensPedido[i].getvalue('unicodigo', ''));
      vItm.AddPair('puncodigo', vItensPedido[i].getvalue('puncodigo', ''));
      vItm.AddPair('unicodigobase', vItensPedido[i].getvalue('unicodigo', ''));
      vItm.AddPair('flacodigo', vItensPedido[i].getvalue('flacodigo', ''));
      vItm.AddPair('tdfcodigo', vItensPedido[i].getvalue('tdfcodigo', ''));
      vItm.AddPair('itochave', vItensPedido[i].getvalue('itochave', ''));

      // vItm.AddPair('itmpercentualcombo', vFinalizacaoPedido.getvalue('itopercentualcombo', ''));

      vItm.AddPair('clbatendente', vItensPedido[i].getvalue('clbcodigo', ''));
      vItm.AddPair('oricodigo', vItensPedido[i].getvalue('oricodigo', ''));

      ManutencaoITM(vItm);

    end;
  end;

end;

Procedure RegistraMOR(VOrcChave: integer; vMeschave: integer);
var
  vMor: TJsonObject;
begin
  vMor := TJsonObject.Create;
  vMor.AddPair('orcchave', Inttostr(VOrcChave));
  vMor.AddPair('meschave', Inttostr(vMeschave));
  vMor.AddPair('flacodigo', '1');
  ManutencaoMOR(vMor);
end;

function RegistraCCO(vLtechave: integer; vMeschave: integer; vFinalizacaoPedido: TJsonObject): integer;
var
  vCco: TJsonObject;
  vlCcoChave: integer;

  vlcfgmgouctadelivery: integer;

  vlMdaCodigo: integer;
  vlModalidade: string;
  vlClbCodigo: String;
  a: string;
begin
  result := 0;

  vlcfgmgouctadelivery := 0;
  vlcfgmgouctadelivery := v1BuscaCodigoCfgmgouCtaDelivery;

  vlClbCodigo := '0';
  vlClbCodigo := BuscaCodigoCLBclbNome('CARDAPIO');

  vlModalidade := '';
  vlModalidade := vFinalizacaoPedido.getvalue('orcmodalidadepagamento', '');
  vlMdaCodigo := BuscaModalidadeAIQMDA(vlModalidade);

  vCco := TJsonObject.Create;
  vCco.AddPair('ccochave', '0');
  vCco.AddPair('ctacodigo', vlcfgmgouctadelivery.ToString);
  vCco.AddPair('toccodigo', '1');
  vCco.AddPair('cedcodigo', '1');
  vCco.AddPair('clbcodigo', vlClbCodigo);
  vCco.AddPair('toccodigo', '9');
  vCco.AddPair('moecodigo', '1');
  vCco.AddPair('tficodigo', '9');

  vCco.AddPair('ccoemissao', datahorasqltotext(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vCco.AddPair('ccovencimento', datahorasqltotext(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vCco.AddPair('ccohistorico', 'Venda Nr.: ' + vMeschave.ToString);
  vCco.AddPair('ccovalor', vFinalizacaoPedido.getvalue('orcgeralav', ''));
  vCco.AddPair('etdcodigo', vFinalizacaoPedido.getvalue('etdcodigo', ''));
  vCco.AddPair('ccofavorecido', '');
  vCco.AddPair('ccodatamov', datahorasqltotext(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vCco.AddPair('ccodataregistro', datahorasqltotext(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vCco.AddPair('ccohoraregistro', copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 12, 8));
  vCco.AddPair('ccochaveorig', '0');
  vCco.AddPair('ccochavedest', '0');
  vCco.AddPair('ccoconciliado', '0');
  vCco.AddPair('ccoextenso', '');
  vCco.AddPair('flacodigo', '1');
  vCco.AddPair('ccoregistro', '0');
  vCco.AddPair('phgcodigo', '');
  vCco.AddPair('cconumero', '');

  vlCcoChave := ManutencaoCCO(vCco);

  result := vlCcoChave;

end;

function RegistraDTL(vLtechave: integer; vFinalizacaoPedido: TJsonObject): integer;
var
  vDtl: TJsonObject;
  vlDtlChave: integer;

  vlCcxChave: integer;

  vlcfgmgouctadelivery: integer;

  vlMdaCodigo: integer;
  vlModalidade: string;
  a:string;
begin
  result := 0;

  vlcfgmgouctadelivery := 0;
  vlcfgmgouctadelivery :=v1BuscaCodigoCfgmgouCtaDelivery;

  vlModalidade := '';
  vlModalidade := vFinalizacaoPedido.getvalue('orcmodalidadepagamento', '');
  vlMdaCodigo := BuscaModalidadeAIQMDA(vlModalidade);

  vlCcxChave := 0;
  vlCcxChave := v1BuscaCaixaAbertoCCXCtaDelivery(vlcfgmgouctadelivery);

  vDtl := TJsonObject.Create;

 a:= vFinalizacaoPedido.getvalue('orcgeralav', '');

  vDtl.AddPair('dtlchave', '0');
  vDtl.AddPair('ltechave', vLtechave.ToString);
  vDtl.AddPair('cedcodigo', '1');
  vDtl.AddPair('dtlvalor', vFinalizacaoPedido.getvalue('orctotalav', ''));
  vDtl.AddPair('mdacodigo', vlMdaCodigo.ToString);
  vDtl.AddPair('dtlvalorinfo', vFinalizacaoPedido.getvalue('orctrocopara', ''));
  vDtl.AddPair('flacodigo', '1');
  vDtl.AddPair('rdcnrauto', '');
  vDtl.AddPair('ccxchave', vlCcxChave.ToString);
  vDtl.AddPair('dtlregistro', datahorasqltotext(vFinalizacaoPedido.getvalue('orcdatahoraregistro', '')));

  vlDtlChave := ManutencaoDTL(vDtl);

  result := vlDtlChave;

end;

function RegistraLTE(vFinalizacaoPedido: TJsonObject): integer;
var
  vLte: TJsonObject;
  vlLteChave: integer;

  vlCcxChave: integer;
  vlClbCodigo: integer;

  vlcfgmgouctadelivery: integer;

begin
  result := 0;

  vlcfgmgouctadelivery := 0;
  vlcfgmgouctadelivery := v1BuscaCodigoCfgmgouCtaDelivery;

  // vlCcxChave := 0;
  // vlCcxChave := BuscaCaixaAberto(2);

  vlCcxChave := 0;
  vlCcxChave := v1BuscaCaixaAbertoCCXCtaDelivery(vlcfgmgouctadelivery);

  vlClbCodigo := 0;
  vlClbCodigo := BuscaCodigoCLBCcxchave(vlCcxChave);

  vLte := TJsonObject.Create;

  vLte.AddPair('ltechave', '0');

  vLte.AddPair('tfdcodigo', '32');

  vLte.AddPair('ltedata', datahorasqltotext(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vLte.AddPair('lteprincipal', vFinalizacaoPedido.getvalue('orcgeralav', ''));
  vLte.AddPair('ltedesconto', vFinalizacaoPedido.getvalue('orcdescontoav', ''));
  vLte.AddPair('ltetotal', vFinalizacaoPedido.getvalue('orctotalav', ''));
  vLte.AddPair('ltesituacao', '0');
  vLte.AddPair('flacodigo', '1');

  vLte.AddPair('clbcodigo', vlClbCodigo.ToString);

  vLte.AddPair('ctacodigo', vlcfgmgouctadelivery.ToString);

  vLte.AddPair('lteregistro', datahorasqltotext(vFinalizacaoPedido.getvalue('orcdatahoraregistro', '')));
  vLte.AddPair('ltetroco', '0');

  vLte.AddPair('ltevalortaxa', '0');
  vLte.AddPair('ltetipotaxa', '0');
  vLte.AddPair('ccxchave', vlCcxChave.ToString);

  vlLteChave := ManutencaoLTE(vLte);

  result := vlLteChave;

end;

function RegistraMES(vFinalizacaoPedido: TJsonObject ;vRetira:Boolean): integer;
var
  vMes: TJsonObject;
  vlMesChave: integer;

  vlCcxChave: integer;
  vlClbCodigo: integer;

  vlcfgmgouctadelivery: integer;

  vlOutras: string;
  vlProdutos: string;

begin
  result := 0;

  // vlCcxChave := 0;
  // vlCcxChave := BuscaCaixaAberto(2);

  vlcfgmgouctadelivery := 0;
  vlcfgmgouctadelivery := v1BuscaCodigoCfgmgouCtaDelivery;

  vlCcxChave := 0;
  vlCcxChave := v1BuscaCaixaAbertoCCXCtaDelivery(vlcfgmgouctadelivery);

  vlClbCodigo := 0;
  vlClbCodigo := BuscaCodigoCLBclbNome('Cardapio').ToInteger;

  vMes := TJsonObject.Create;

  vMes.AddPair('meschave', '0');
  vMes.AddPair('etdcodigo', vFinalizacaoPedido.getvalue('etdcodigo', ''));
  vMes.AddPair('mesemissao', datahorasqltotext(vFinalizacaoPedido.getvalue('orcdataabert', '')));
  vMes.AddPair('mesregistro', datahorasqltotext(vFinalizacaoPedido.getvalue('orcdataabert', '')));
  vMes.AddPair('tdfcodigo', '00');
  vMes.AddPair('sdecodigo', '00');
  vMes.AddPair('messerie', '1');
  vMes.AddPair('mesnumero', '0');
  vMes.AddPair('meschavenfe', '');
  vMes.AddPair('toecodigo', Inttostr(v1BuscaCodigoCfgmnfeCfoVenda));
  vMes.AddPair('mesvalor', floattostr(strtofloat( vFinalizacaoPedido.getvalue('orcgeralav', '')))  );
  vMes.AddPair('mesdesconto', vFinalizacaoPedido.getvalue('orcdescontoav', ''));
  vMes.AddPair('messervicos', '0');
//  vMes.AddPair('mestotal', floattostr(strtofloat(vFinalizacaoPedido.getvalue('orcgeralav', ''))-strtofloat(vFinalizacaoPedido.getvalue('orcdescontoav', ''))));

  vMes.AddPair('mestotal', floattostr(strtofloat(vFinalizacaoPedido.getvalue('orctotalav', ''))));

  vMes.AddPair('tfpcodigo', '0');
  vMes.AddPair('refcodigo', '0');
  vMes.AddPair('trfcodigo', '0');
  vMes.AddPair('mesfrete', '0');
  vMes.AddPair('messeguro', '0');
  vlOutras:=floattostr( strtofloat( stringreplace( vFinalizacaoPedido.getvalue('orctaxaentrega', ''), '.', ',', []))+
        strtofloat( stringreplace( vFinalizacaoPedido.getvalue('orctaxaservico', ''), '.', ',', [])));

  vMes.AddPair('mesoutras', vlOutras);


  vlProdutos:=floattostr( strtofloat(vFinalizacaoPedido.getvalue('orcgeralav', '0,00'))-strtofloat(vlOutras));


  vMes.AddPair('mesprodutos', vlProdutos);

//  vMes.AddPair('mesoutras', stringreplace( vFinalizacaoPedido.getvalue('orctaxaentrega', ''), '.', ',', []));
  vMes.AddPair('mesbicm', '0');
  vMes.AddPair('mesicm', '0');
  vMes.AddPair('mesbicms', '0');
  vMes.AddPair('mesicms', '0');
  vMes.AddPair('mesipi', '0');
  vMes.AddPair('mespis', '0');
  vMes.AddPair('mescofins', '0');
  vMes.AddPair('mespiss', '0');
  vMes.AddPair('mescofinss', '0');
  vMes.AddPair('mesretirou', '');
  vMes.AddPair('clbcodigo', vlClbCodigo.ToString);
  vMes.AddPair('trmcodigo', vFinalizacaoPedido.getvalue('trmcodigo', ''));
  vMes.AddPair('mesacrescimo', '0');
  vMes.AddPair('mesemitente', '0');
  vMes.AddPair('mesprotocolo', '');
  vMes.AddPair('messped', '0');
  vMes.AddPair('temcodigo', '1');
  vMes.AddPair('mesobs', vFinalizacaoPedido.getvalue('orcobs', ''));
  vMes.AddPair('edritem', vFinalizacaoPedido.getvalue('edritem', ''));
  vMes.AddPair('tdecodigo', '0');
  vMes.AddPair('mesinclusao', vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''));
  vMes.AddPair('clbvendedor', BuscaCodigoCLBclbNome('CARDAPIO'));
  vMes.AddPair('eqpcodigo', '0');
  vMes.AddPair('meschaverecla', '0');
  vMes.AddPair('mesrefeicao', '0');
  vMes.AddPair('flacodigo', '1');
  vMes.AddPair('mesreclassicacao', '1');
  vMes.AddPair('mestipocomissao', '1');
  vMes.AddPair('mesoutroscustos', '0');
  vMes.AddPair('fopcodigo', '0');
  vMes.AddPair('mesretorno', '');
  vMes.AddPair('mesliberadoentrega', '');
  vMes.AddPair('mescomplementanota', '');
  vMes.AddPair('mescomplementapor', '');
  vMes.AddPair('mescomplementadapor', '');
  vMes.AddPair('ccxmes', '0');
  vMes.AddPair('ccxano', '0');
  vMes.AddPair('moccodigo', vFinalizacaoPedido.getvalue('moccodigo', ''));
  vMes.AddPair('oricodigo', '8');
  vMes.AddPair('baicodigo', vFinalizacaoPedido.getvalue('baicodigo', ''));
  vMes.AddPair('mdacodigo', vFinalizacaoPedido.getvalue('mdacodigo', ''));

  if vRetira then
    vMes.AddPair('mesretirabalcao', '1')
  else
    vMes.AddPair('mesretirabalcao', '0');    // definir se entrega


  vMes.AddPair('mespararevenda', '0');
  vMes.AddPair('mescodigonota', '');
  vMes.AddPair('cznchave', Inttostr(v1BuscaCozinhaAberta));
  vMes.AddPair('mesnumeropedido', vFinalizacaoPedido.getvalue('orcnumeropedido', ''));
  vMes.AddPair('mescomplementanota', '0');
  vMes.AddPair('mescomplementapor', '0');
  vMes.AddPair('mescomplementadapor', '0');
  vMes.AddPair('clbcodigoent', '0');
  vMes.AddPair('mestelefone', copy(sonumeros(vFinalizacaoPedido.getvalue('orctelefone', '')), 3, 10));
  vMes.AddPair('ccxchave', vlCcxChave.ToString);


  vlMesChave := ManutencaoMES(vMes);
  result := vlMesChave;

end;

function RegistraMFI(vRfichave: integer; vTmfCodigo: integer; vTitulo: TJsonObject): integer;
var
  vMfi: TJsonObject;
  vlMfichave: integer;
begin
  vMfi := TJsonObject.Create;
  vMfi.AddPair('mfichave', '0');

  vMfi.AddPair('rfichave', vRfichave.ToString);
  vMfi.AddPair('tmfcodigo', vTmfCodigo.ToString);
  vMfi.AddPair('moecodigo', '1');
  vMfi.AddPair('mfivalor', vTitulo.getvalue('orctotalav', ''));
  vMfi.AddPair('mfidata', datahorasqltotext(copy(vTitulo.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vMfi.AddPair('mfihistorico', '');
  vMfi.AddPair('mfivalorori', vTitulo.getvalue('orctotalav', ''));
  vMfi.AddPair('mfiparcela', '1');
  vMfi.AddPair('flacodigo', '1');
  vMfi.AddPair('mfisituacao', '0');
  vMfi.AddPair('edrcodigo', '0');

  vlMfichave := ManutencaoMFI(vMfi);
  result := vlMfichave;

end;

function RegistraRFI(vTitCodigo: integer; vFinalizacaoPedido: TJsonObject): integer;
var
  vRfi: TJsonObject;
  vlRfichave: integer;
  vlEtdcodigo: integer;
  vlModalidade: String;
  a: string;
begin
  vRfi := TJsonObject.Create;
  vRfi.AddPair('titcodigo', vTitCodigo.ToString);

  vlModalidade := vFinalizacaoPedido.getvalue('orcmodalidadepagamento', '');

  vlEtdcodigo := 0;
  if (pos('online', lowercase(vlModalidade)) > 0) or (pos('on line', lowercase(vlModalidade)) > 0) or
    (pos('pagamento online', lowercase(vlModalidade)) > 0) then
  begin
    vlEtdcodigo := BuscaEtdCodigoOriCodigo(8);
    vRfi.AddPair('etdcodigo', vlEtdcodigo.ToString);
  end
  else
  begin
    vRfi.AddPair('etdcodigo', vFinalizacaoPedido.getvalue('etdcodigo', ''));
  end;

  vRfi.AddPair('tfdcodigo', '2');
  vRfi.AddPair('flacodigo', '1');
  vRfi.AddPair('tficodigo', '9');
  vRfi.AddPair('bcocodigo', '000');
  vRfi.AddPair('carcodigo', '1');
  vRfi.AddPair('rfiemissao', datahorasqltotext(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vRfi.AddPair('rfivencimento', datahorasqltotext(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vRfi.AddPair('rfinumero', vTitCodigo.ToString + ' 1/1');
  vRfi.AddPair('moecodigo', '1');
  vRfi.AddPair('rfivalorparcela', vFinalizacaoPedido.getvalue('orctotalav', ''));
  vRfi.AddPair('rfivalor', vFinalizacaoPedido.getvalue('orctotalav', ''));
  vRfi.AddPair('rfihistorico', vTitCodigo.ToString + ' 1/1');
  a := vRfi.ToString;

  if vlEtdcodigo = 0 then
  begin
    vRfi.AddPair('srfcodigo', '2');
  end
  else
  begin
    vRfi.AddPair('srfcodigo', '0');
  end;
  vRfi.AddPair('rfirepetir', '0');
  vRfi.AddPair('rfiprevisao', '0');
  vRfi.AddPair('rfisituacao', '0');
  vRfi.AddPair('frrcodigo', '999');

  vRfi.AddPair('rfiinclusao', datahorasqltotext(vFinalizacaoPedido.getvalue('orcdatahoraregistro', '')));

  vlRfichave := ManutencaoRFI(vRfi);
  result := vlRfichave;

end;

function RegistraTIT(vFinalizacaoPedido: TJsonObject): integer;
var
  vTit: TJsonObject;
  vlTitCodigo: integer;
  vlModalidade: string;
  vlEtdcodigo: integer;

begin
  vTit := TJsonObject.Create;

  vlModalidade := vFinalizacaoPedido.getvalue('orcmodalidadepagamento', '');

  vlEtdcodigo := 0;
  if (pos('online', lowercase(vlModalidade)) > 0) or (pos('on line', lowercase(vlModalidade)) > 0) or
    (pos('pagamento online', lowercase(vlModalidade)) > 0) then
  begin
    vlEtdcodigo := BuscaEtdCodigoOriCodigo(8);
    vTit.AddPair('etdcodigo', vlEtdcodigo.ToString);
  end
  else
  begin
    vTit.AddPair('etdcodigo', vFinalizacaoPedido.getvalue('etdcodigo', ''));
  end;

  vTit.AddPair('tfdcodigo', '2');
  vTit.AddPair('flacodigo', '1');
  vTit.AddPair('tficodigo', '9');
  vTit.AddPair('bcocodigo', '000');
  vTit.AddPair('carcodigo', '1');
  vTit.AddPair('titemissao', datahorasqltotext(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 1, 10)));
  vTit.AddPair('tithora', trim(copy(vFinalizacaoPedido.getvalue('orcdatahoraregistro', ''), 11, 10)));
  vTit.AddPair('clbcodigo', vFinalizacaoPedido.getvalue('clbcodigo', ''));
  vTit.AddPair('titparcelas', '1');
  vTit.AddPair('titvctoinicial', datahorasqltotext(vFinalizacaoPedido.getvalue('orcdataabert', '')));
  vTit.AddPair('titnumero', '');
  vTit.AddPair('moecodigo', '1');
  vTit.AddPair('titvalorparcela', vFinalizacaoPedido.getvalue('orctotalav', ''));
  vTit.AddPair('titvalor', vFinalizacaoPedido.getvalue('orctotalav', ''));
  vTit.AddPair('tithistorico', '');
  if vlEtdcodigo = 0 then
  begin
    vTit.AddPair('srfcodigo', '0');
  end
  else
  begin
    vTit.AddPair('srfcodigo', '2');
  end;
  vTit.AddPair('titrepetir', '0');
  vTit.AddPair('titprevisao', '0');
  vTit.AddPair('titinclusao', datahorasqltotext(vFinalizacaoPedido.getvalue('orcdatahoraregistro', '')));

  vlTitCodigo := ManutencaoTIT(vTit);
  result := vlTitCodigo;

end;

function FinalizaLiberaImpressao(VOrcChave: integer): integer;
begin
  LiberaImpressaoOrc(VOrcChave);
  result := 1;
end;

function Finaliza(vPedido: TJsonObject; vItens: TJsonArray; vRetira:Boolean=false): integer;
var
  vlLteChave: integer;
  vlMesChave: integer;
  vlTitCodigo: integer;
  vlRfichave: integer;
  vlMfichave: integer;

  vlModalidade: string;
begin

  vlLteChave := 0;
  vlMesChave := 0;
  vlTitCodigo := 0;
  vlRfichave := 0;
  vlMfichave := 0;

  // registra o lte
  vlLteChave := RegistraLTE(vPedido);

  // registra o dtl
  RegistraDTL(vlLteChave, vPedido);

  // registra o tit
  vlTitCodigo := RegistraTIT(vPedido);

  // registra o rfi
  vlRfichave := RegistraRFI(vlTitCodigo, vPedido);

  // registra o mfi inicial
  vlMfichave := RegistraMFI(vlRfichave, 2, vPedido);

  // registra o mlt
  ManutencaoMLT(0, vlMfichave, vlLteChave, 1);

  vlModalidade := vPedido.getvalue('orcmodalidadepagamento', '');

  if (pos('online', lowercase(vlModalidade)) = 0) and (pos('on line', lowercase(vlModalidade)) = 0) then
  begin

    // registra o mfi quitacao
    vlMfichave := RegistraMFI(vlRfichave, 21, vPedido);

    // registra o mlt
    ManutencaoMLT(0, vlMfichave, vlLteChave, 1);

  end;

  // registra mes
  vlMesChave := RegistraMES(vPedido,  vRetira);

  // regitra ligacao mes e rfi
  ManutencaoRFM(vlRfichave, vlMesChave, 1);

  // registra mor

  RegistraMOR(Strtoint(vPedido.getvalue('orcchave', '')), vlMesChave);

  // registra itm
  RegistraITM(vlMesChave, vItens);


  // registra sbv

  // registra isv

  // registra o cco
  RegistraCCO(vlLteChave, vlMesChave, vPedido);
  result := 1;
end;

end.
