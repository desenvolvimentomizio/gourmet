object fmdfe: Tfmdfe
  Left = 0
  Top = 0
  Caption = 'Manifesto Eletronico'
  ClientHeight = 295
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object plStatusSefaz: TPanel
    Left = 0
    Top = 262
    Width = 530
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object mostra: TProgressBar
      Left = 0
      Top = 0
      Width = 233
      Height = 33
      Align = alLeft
      TabOrder = 0
    end
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'Gerar MDF-e'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 207
    Width = 530
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Aguarde . . . '
    Color = 4227327
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object info: TMemo
    Left = 0
    Top = 26
    Width = 530
    Height = 181
    Align = alClient
    Color = 16766378
    TabOrder = 3
    Visible = False
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  /*Principal*/'
      '  cfgmcfg.cfgcodigo,'
      '  cfgmcfg.cfgetdempresa,'
      '  cfgmcfg.cfgsubstitutotributario,'
      ''
      '  /*Entradas*/'
      '  cfgment.cfgprouso,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      ''
      '  /*Sa'#237'das*/'
      '  cfgmsai.cfgtoecuffora,'
      '  cfgmsai.cfgtoecufinte,'
      '  cfgmsai.cfgpercentualpis,'
      '  cfgmsai.cfgpercentualcofins,'
      '  cfgmsai.cfgtoenotacomplementar,'
      '  cfgmsai.cfgtoesubstnoestado,'
      '  cfgmsai.cfgtoesubstforaestado,'
      '  cfgmsai.cfgusacstnoproduto,'
      '  cfgmsai.cfgtoesubstanpnoestado,'
      '  cfgmsai.cfgtoesubstanpforaestado,'
      '  cfgmsai.cfgdescontonoservico,'
      '  cfgmsai.cfgdefinetoeatendimento,'
      '  cfgmsai.cfgtoemesinte,'
      '  cfgmsai.cfgtoemesfora,'
      ''
      ''
      ''
      '  /*Emiss'#227'o NFe*/'
      '  cfgmnfe.cfgviasnfe,'
      '  cfgmnfe.cfgnumeronfe,'
      ''
      '  cfgmnfe.cfgserienfe,'
      '  cfgmnfe.cfgnumeronfce,'
      '  cfgmnfe.cfgserienfce,'
      ''
      '  cfgmnfe.cfgnumeromdfe,'
      '  cfgmnfe.cfgseriemdfe,'
      ''
      ''
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmnfe.cfgdescrinfe,'
      '  cfgmnfe.cfgcsosn,'
      '  cfgmnfe.cfgnumecertif,'
      '  cfgmnfe.cfgsenhacertificado,'
      '  cfgmnfe.cfgmodonfe,'
      '  cfgmnfe.cfgtextoemail,'
      ''
      '  /*Email*/'
      '  cfgmnfe.cfgemailnfe,'
      '  cfgmnfe.cfgemailservidornfe,'
      '  cfgmnfe.cfgemailsenhanfe,'
      '  cfgmnfe.cfgmailportnfe,'
      '  cfgmnfe.cfgemailusatls,'
      '  cfgmnfe.cfgversao,'
      '  cfgmnfe.cfgcestativo,'
      '  cfgmsai.cfgprevisualizarimpressaonfe,'
      ''
      '  /*SPED*/'
      '  cfgmcfg.crtcodigo,'
      '  cfgmspd.cfgcstterceiros,'
      '  cfgmspd.ssncodigo,'
      ''
      ''
      '  /*Dados da Empresa*/'
      '  etd.etdapelido,'
      '  etd.etdidentificacao,'
      '  etd.etddoc1,'
      '  etd.atvcodigo,'
      ''
      '  edr.ufscodigo,'
      '  edr.cddcodigo,'
      '  edr.edrinscest,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  edr.edrbairro,'
      '  edr.edrcep,'
      '  cdd.cddnome,'
      '  ufs.ufssigla,'
      ''
      '  etf.etftelefone,'
      'ete.eteemail,'
      '  '
      '  /*Box-e - Dom'#237'nio Sistemas*/'
      '  ctd.ctdboxedominio,'
      '  cfgmensagempdv,'
      '  cfgtrmimpfis1,'
      '  cfgtrmimpfis2,'
      '  cfgtrmtef1,'
      '  cfgtrmtef2,'
      '  cfgimpnfe1,'
      '  cfgimpnfe2,'
      '  cfgimpnfc1,'
      '  cfgimpnfc2,'
      '  cfgimpnfc3,'
      '  cfgservarqnfes,'
      '  cfg.cfgusanfc'
      'FROM cfgmcfg,'
      '     ufs,'
      '     etd,'
      '     cfgmnfe,'
      '     cfgment,'
      '     edr,'
      '     cfg,'
      '     cfgmspd,'
      '     etf,'
      '     cdd,'
      '     cfgmsai,'
      '     ctd,'
      '     ete'
      'WHERE cfg.cfgcodigo = ctd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND ufs.ufscodigo = edr.ufscodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND etd.etdcodigo = etf.etdcodigo AND etf.ttfcodigo = 1'
      'AND etd.etdcodigo = ete.etdcodigo and ete.eteenvianfe = 1'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND cfg.flacodigo = :flacodigo')
    Left = 87
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object cfgcfgmensagempdv: TStringField
      FieldName = 'cfgmensagempdv'
      Size = 50
    end
    object cfgcfgtrmimpfis1: TIntegerField
      FieldName = 'cfgtrmimpfis1'
      Required = True
    end
    object cfgcfgtrmimpfis2: TIntegerField
      FieldName = 'cfgtrmimpfis2'
      Required = True
    end
    object cfgcfgtrmtef1: TIntegerField
      FieldName = 'cfgtrmtef1'
      Required = True
    end
    object cfgcfgtrmtef2: TIntegerField
      FieldName = 'cfgtrmtef2'
      Required = True
    end
    object cfgcfgimpnfe1: TIntegerField
      FieldName = 'cfgimpnfe1'
      Required = True
    end
    object cfgcfgimpnfe2: TIntegerField
      FieldName = 'cfgimpnfe2'
      Required = True
    end
    object cfgcfgimpnfc1: TIntegerField
      FieldName = 'cfgimpnfc1'
      Required = True
    end
    object cfgcfgimpnfc2: TIntegerField
      FieldName = 'cfgimpnfc2'
      Required = True
    end
    object cfgcfgimpnfc3: TIntegerField
      FieldName = 'cfgimpnfc3'
      Required = True
    end
    object cfgcfgservarqnfes: TStringField
      FieldName = 'cfgservarqnfes'
      Size = 100
    end
    object cfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 100
    end
    object cfgcfgsenhacertificado: TStringField
      FieldName = 'cfgsenhacertificado'
      Size = 50
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgcfgprouso: TIntegerField
      FieldName = 'cfgprouso'
      Required = True
    end
    object cfgcfgtoeusofora: TIntegerField
      FieldName = 'cfgtoeusofora'
      Required = True
    end
    object cfgcfgtoeusointe: TIntegerField
      FieldName = 'cfgtoeusointe'
      Required = True
    end
    object cfgcfgtoecuffora: TIntegerField
      FieldName = 'cfgtoecuffora'
    end
    object cfgcfgtoecufinte: TIntegerField
      FieldName = 'cfgtoecufinte'
    end
    object cfgcfgviasnfe: TIntegerField
      FieldName = 'cfgviasnfe'
      Required = True
    end
    object cfgcfgnumeronfe: TIntegerField
      FieldName = 'cfgnumeronfe'
      Required = True
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 5
    end
    object cfgcfgobs1: TIntegerField
      FieldName = 'cfgobs1'
      Required = True
    end
    object cfgcfgobs2: TIntegerField
      FieldName = 'cfgobs2'
      Required = True
    end
    object cfgcfgobs3: TIntegerField
      FieldName = 'cfgobs3'
      Required = True
    end
    object cfgcfgobs4: TIntegerField
      FieldName = 'cfgobs4'
      Required = True
    end
    object cfgcfgdescrinfe: TIntegerField
      FieldName = 'cfgdescrinfe'
      Required = True
    end
    object cfgcfgemailnfe: TStringField
      FieldName = 'cfgemailnfe'
      Size = 50
    end
    object cfgcfgemailservidornfe: TStringField
      FieldName = 'cfgemailservidornfe'
      Size = 50
    end
    object cfgcfgemailsenhanfe: TStringField
      FieldName = 'cfgemailsenhanfe'
      Size = 50
    end
    object cfgcfgmailportnfe: TStringField
      FieldName = 'cfgmailportnfe'
      Required = True
      Size = 5
    end
    object cfgcfgemailusatls: TIntegerField
      FieldName = 'cfgemailusatls'
      Required = True
    end
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
      Required = True
    end
    object cfgcfgcstterceiros: TStringField
      FieldName = 'cfgcstterceiros'
      Size = 3
    end
    object cfgetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 100
    end
    object cfgetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object cfgufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object cfgcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object cfgedrinscest: TStringField
      FieldName = 'edrinscest'
      Required = True
    end
    object cfgedrrua: TStringField
      FieldName = 'edrrua'
      Required = True
      Size = 50
    end
    object cfgedrnumero: TStringField
      FieldName = 'edrnumero'
      Required = True
      Size = 10
    end
    object cfgedrbairro: TStringField
      FieldName = 'edrbairro'
      Required = True
      Size = 60
    end
    object cfgedrcep: TStringField
      FieldName = 'edrcep'
      Required = True
      Size = 10
    end
    object cfgcddnome: TStringField
      FieldName = 'cddnome'
      Required = True
      Size = 50
    end
    object cfgufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
    object cfgetftelefone: TStringField
      FieldName = 'etftelefone'
      Required = True
    end
    object cfgctdboxedominio: TStringField
      FieldName = 'ctdboxedominio'
      Size = 200
    end
    object cfgcfgmodonfe: TIntegerField
      FieldName = 'cfgmodonfe'
    end
    object cfgcfgversao: TStringField
      FieldName = 'cfgversao'
      Size = 15
    end
    object cfgcfgcestativo: TIntegerField
      FieldName = 'cfgcestativo'
    end
    object cfgcfgtextoemail: TStringField
      FieldName = 'cfgtextoemail'
      Size = 250
    end
    object cfgcfgpercentualpis: TFloatField
      FieldName = 'cfgpercentualpis'
    end
    object cfgcfgpercentualcofins: TFloatField
      FieldName = 'cfgpercentualcofins'
    end
    object cfgcfgtoenotacomplementar: TIntegerField
      FieldName = 'cfgtoenotacomplementar'
    end
    object cfgcfgtoesubstnoestado: TIntegerField
      FieldName = 'cfgtoesubstnoestado'
    end
    object cfgcfgtoesubstforaestado: TIntegerField
      FieldName = 'cfgtoesubstforaestado'
    end
    object cfgcfgusacstnoproduto: TIntegerField
      FieldName = 'cfgusacstnoproduto'
    end
    object cfgcfgtoesubstanpnoestado: TIntegerField
      FieldName = 'cfgtoesubstanpnoestado'
    end
    object cfgcfgtoesubstanpforaestado: TIntegerField
      FieldName = 'cfgtoesubstanpforaestado'
    end
    object cfgcfgprevisualizarimpressaonfe: TIntegerField
      FieldName = 'cfgprevisualizarimpressaonfe'
    end
    object cfgcfgsubstitutotributario: TIntegerField
      FieldName = 'cfgsubstitutotributario'
    end
    object cfgcfgdescontonoservico: TIntegerField
      FieldName = 'cfgdescontonoservico'
    end
    object cfgcfgdefinetoeatendimento: TIntegerField
      FieldName = 'cfgdefinetoeatendimento'
    end
    object cfgcfgtoemesinte: TIntegerField
      FieldName = 'cfgtoemesinte'
    end
    object cfgssncodigo: TIntegerField
      FieldName = 'ssncodigo'
    end
    object cfgcfgtoemesfora: TIntegerField
      FieldName = 'cfgtoemesfora'
    end
    object cfgatvcodigo: TIntegerField
      FieldName = 'atvcodigo'
    end
    object cfgeteemail: TStringField
      FieldName = 'eteemail'
      Size = 200
    end
    object cfgcfgseriemdfe: TStringField
      FieldName = 'cfgseriemdfe'
      Size = 5
    end
    object cfgcfgnumeromdfe: TIntegerField
      FieldName = 'cfgnumeromdfe'
    end
  end
  object ACBrManifesto: TACBrMDFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'MT'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DAMDFE = ACBrMDFeDAMDFEFR1
    Left = 222
    Top = 126
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 290
    Top = 191
  end
  object ACBrMDFeDAMDFEFR1: TACBrMDFeDAMDFEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrMDFe = ACBrManifesto
    ImprimeHoraSaida = False
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    Encerrado = False
    ImprimeDadosExtras = [deValorTotal, deRelacaoDFe]
    SelecionaImpressora = False
    EspessuraBorda = 1
    Left = 288
    Top = 136
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mes.meschave,'
      '  mes.toecodigo,'
      '  mes.tfpcodigo,'
      '  mes.refcodigo,'
      '  mes.messerie,'
      '  mes.edritem,'
      '  etd.etdidentificacao,'
      '  mes.tdfcodigo,'
      '  toe.toeidentificacao,'
      '  mes.mesregistro,'
      '  mes.mesnumero,'
      '  mes.etdcodigo,'
      '  mes.messerie,'
      '  mes.mesvalor,'
      '  mes.mesdesconto,'
      '  mes.mestotal,'
      '  mes.temcodigo,'
      '  mes.trmcodigo,'
      '  mes.mesdatanfe,'
      '  mes.mescoocupom,'
      '  mes.mesdatacupom,'
      '  mes.mesoutras,'
      '  mes.flacodigo,'
      '  mes.temcodigo,'
      '  mes.mesbicms,'
      '  mes.mesicms,'
      '  mes.mesfrete,'
      '  toe.ttocodigo,'
      '  mes.mesnumeropedido,'
      '  mes.meshoranfe,'
      '  mes.mesretirabalcao,'
      '  mes.meschavenfe'
      'FROM mes,'
      '     etd,'
      '     sde,'
      '     tdf,'
      '     toe'
      'WHERE etd.etdcodigo = mes.etdcodigo'
      'AND sde.sdecodigo = mes.sdecodigo'
      'AND tdf.tdfcodigo = mes.tdfcodigo'
      'AND toe.toecodigo = mes.toecodigo'
      'AND mes.meschave = :meschave'
      'AND mes.flacodigo= :flacodigo')
    Left = 20
    Top = 132
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object mesmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object mestoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object mesetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mesmestotal: TFloatField
      FieldName = 'mestotal'
    end
    object mesrefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object mestfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object mestdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object mesmesnumero: TIntegerField
      FieldName = 'mesnumero'
    end
    object mesmesserie: TStringField
      FieldName = 'messerie'
      Size = 5
    end
    object mesedritem: TIntegerField
      FieldName = 'edritem'
    end
    object mesmesdatanfe: TDateField
      FieldName = 'mesdatanfe'
    end
    object mesmescoocupom: TIntegerField
      FieldName = 'mescoocupom'
    end
    object mesmesdatacupom: TDateField
      FieldName = 'mesdatacupom'
    end
    object mesmesregistro: TDateField
      FieldName = 'mesregistro'
    end
    object mesmesoutras: TFloatField
      FieldName = 'mesoutras'
    end
    object mesflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mestemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object mesmesbicms: TFloatField
      FieldName = 'mesbicms'
    end
    object mesmesicms: TFloatField
      FieldName = 'mesicms'
    end
    object mesmesfrete: TCurrencyField
      FieldName = 'mesfrete'
    end
    object mesmesdesconto: TFloatField
      FieldName = 'mesdesconto'
    end
    object mesttocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object mesmesnumeropedido: TStringField
      FieldName = 'mesnumeropedido'
    end
    object mesmeshoranfe: TTimeField
      FieldName = 'meshoranfe'
    end
    object mesmesretirabalcao: TIntegerField
      FieldName = 'mesretirabalcao'
    end
    object mesmeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 200
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etddoc1,'
      '  edr.edrcep,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  edr.edrbairro,'
      '  edr.cddcodigo,'
      '  cdd.cddnome,'
      '  ufs.ufssigla,'
      '  etf.etftelefone,'
      '  etd.tpecodigo,'
      '  etd.etdidentificacao,'
      '  edr.edrinscest,'
      '  etd.etdnfemodelos,'
      '  edr.edrnomefazenda,'
      '  edr.edrrazaofazenda,'
      '  ufs.ufscodigo,'
      '  etd.tcbcodigo '
      'FROM etd,'
      '     edr,'
      '     cdd,'
      '     ufs,'
      '     etf'
      'WHERE etd.etdcodigo = edr.etdcodigo'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND cdd.ufscodigo = ufs.ufscodigo'
      'AND etd.etdcodigo = etf.etdcodigo'
      'AND etf.ttfcodigo = 1'
      'AND etd.etdcodigo = :etdcodigo'
      'AND edr.edritem = :edritem')
    Left = 76
    Top = 148
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edritem'
        Value = nil
      end>
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdedrcep: TStringField
      FieldName = 'edrcep'
      Size = 10
    end
    object etdedrrua: TStringField
      FieldName = 'edrrua'
      Size = 60
    end
    object etdedrnumero: TStringField
      FieldName = 'edrnumero'
      Size = 10
    end
    object etdedrbairro: TStringField
      FieldName = 'edrbairro'
      Size = 50
    end
    object etdcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Size = 10
    end
    object etdcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
    object etdufssigla: TStringField
      FieldName = 'ufssigla'
      Size = 3
    end
    object etdetftelefone: TStringField
      FieldName = 'etftelefone'
      Size = 15
    end
    object etdtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object etdedrinscest: TStringField
      FieldName = 'edrinscest'
    end
    object etdetdnfemodelos: TStringField
      FieldName = 'etdnfemodelos'
      Size = 2
    end
    object etdedrnomefazenda: TStringField
      FieldName = 'edrnomefazenda'
      Size = 80
    end
    object etdedrrazaofazenda: TStringField
      FieldName = 'edrrazaofazenda'
      Size = 80
    end
    object etdufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 5
    end
    object etdtcbcodigo: TIntegerField
      FieldName = 'tcbcodigo'
    end
  end
  object ACBrValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 32
    Top = 184
  end
  object consulta: TUniQuery
    Left = 144
    Top = 152
  end
  object NumeroMDFe: TUniQuery
    SQL.Strings = (
      'CALL NumeroMDFe(:flacodigo);')
    Left = 424
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
  end
  object mae: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  maechave,'
      '  meschavenfe,'
      '  meschavenfe1,'
      '  meschavenfe2,'
      '  meschavenfe3,'
      '  meschavenfe4,'
      '  meschavenfe5,'
      '  meschavenfe6,'
      '  meschavenfe7,'
      ''
      '  maenumero,'
      '  maeemissao,'
      '  maeregistro,'
      '  maenomemotorista,'
      '  maecpfmotorista,'
      '  maeplacaveiculo,'
      '  maeufveiculo,'
      '  maerenavanveiculo,'
      '  maequantidadeemquilos,'
      '  sdecodigo,'
      '  maechavexml,'
      '  maearquivoxml,'
      '  maeuf01,'
      '  maeuf02,'
      '  maeuf03,'
      '  maeuf04,'
      '  maeuf05,'
      '  maeuf06,'
      '  maeuf07,'
      '  maeuf08,'
      '  maeuf09,'
      '  maeuf10'
      'FROM mae where meschavenfe=:meschavenfe')
    Left = 360
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschavenfe'
        Value = nil
      end>
    object maemaechave: TIntegerField
      FieldName = 'maechave'
    end
    object maemaenomemotorista: TStringField
      FieldName = 'maenomemotorista'
      Size = 50
    end
    object maemaecpfmotorista: TStringField
      FieldName = 'maecpfmotorista'
      Size = 30
    end
    object maemaeplacaveiculo: TStringField
      FieldName = 'maeplacaveiculo'
    end
    object maemaeufveiculo: TStringField
      FieldName = 'maeufveiculo'
      Size = 5
    end
    object maemaerenavanveiculo: TStringField
      FieldName = 'maerenavanveiculo'
      Size = 30
    end
    object maemaequantidadeemquilos: TFloatField
      FieldName = 'maequantidadeemquilos'
    end
    object maemaechavexml: TStringField
      FieldName = 'maechavexml'
      Size = 250
    end
    object maemaeregistro: TDateField
      FieldName = 'maeregistro'
    end
    object maemaearquivoxml: TBlobField
      FieldName = 'maearquivoxml'
    end
    object maemaenumero: TIntegerField
      FieldName = 'maenumero'
    end
    object maemaeuf01: TStringField
      FieldName = 'maeuf01'
      Size = 5
    end
    object maemaeuf02: TStringField
      FieldName = 'maeuf02'
      Size = 5
    end
    object maemaeuf03: TStringField
      FieldName = 'maeuf03'
      Size = 5
    end
    object maemaeuf04: TStringField
      FieldName = 'maeuf04'
      Size = 5
    end
    object maemaeuf05: TStringField
      FieldName = 'maeuf05'
      Size = 5
    end
    object maemaeuf06: TStringField
      FieldName = 'maeuf06'
      Size = 5
    end
    object maemaeuf07: TStringField
      FieldName = 'maeuf07'
      Size = 5
    end
    object maemaeuf08: TStringField
      FieldName = 'maeuf08'
      Size = 5
    end
    object maemaeuf09: TStringField
      FieldName = 'maeuf09'
      Size = 5
    end
    object maemaeuf10: TStringField
      FieldName = 'maeuf10'
      Size = 5
    end
    object maemeschavenfe1: TStringField
      FieldName = 'meschavenfe1'
      Size = 100
    end
    object maemeschavenfe2: TStringField
      FieldName = 'meschavenfe2'
      Size = 100
    end
    object maemeschavenfe3: TStringField
      FieldName = 'meschavenfe3'
      Size = 100
    end
    object maemeschavenfe4: TStringField
      FieldName = 'meschavenfe4'
      Size = 100
    end
    object maemeschavenfe5: TStringField
      FieldName = 'meschavenfe5'
      Size = 100
    end
    object maemeschavenfe6: TStringField
      FieldName = 'meschavenfe6'
      Size = 100
    end
    object maemeschavenfe7: TStringField
      FieldName = 'meschavenfe7'
      Size = 100
    end
  end
end
