object fnfce: Tfnfce
  Left = 0
  Top = 0
  Caption = 'Nota Fiscal ao Consumidor - NFC-e'
  ClientHeight = 324
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'Gerar NFC-e 4.0'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object plStatusSefaz: TPanel
    Left = 0
    Top = 291
    Width = 537
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 174
    object mostra: TProgressBar
      Left = 0
      Top = 0
      Width = 537
      Height = 17
      Align = alTop
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 537
    Height = 55
    Align = alTop
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
  object plestagio: TPanel
    Left = 0
    Top = 250
    Width = 537
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    ExplicitTop = 133
  end
  object info: TMemo
    Left = 0
    Top = 81
    Width = 537
    Height = 169
    Align = alClient
    Color = 16766378
    TabOrder = 4
    Visible = False
    ExplicitHeight = 52
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Geral.VersaoQRCode = veqr200
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 1000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFCEFR1
    Left = 400
    Top = 104
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  /*Principal*/'
      '  cfgmcfg.cfgcodigo,'
      '  cfgmcfg.cfgetdempresa,'
      ''
      '  /*Entradas*/'
      '  cfgment.cfgprouso,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      ''
      '  /*Sa'#237'das*/'
      '  cfgmsai.cfgtoecuffora,'
      '  cfgmsai.cfgtoecufinte,'
      '  cfgmsai.cfgtoesubstnoestado,'
      '  cfgmsai.cfgtoesubstforaestado,'
      '  cfgmsai.cfgusacstnoproduto,'
      '  cfgmsai.cfgtoesubstanpnoestado,'
      '  cfgmsai.cfgtoesubstanpforaestado,'
      '  cfgmsai.cfgtoemesinte,'
      '  cfgmsai.cfgdefinetoeatendimento,'
      ''
      '  /*Contas a Receber*/'
      '  cfgmcre.cfgviaassinar,'
      ''
      '  /*Emiss'#227'o NFe*/'
      '  cfgmnfe.cfgviasnfe,'
      '  cfgmnfe.cfgnumeronfe,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgmnfe.cfgnumeronfce,'
      '  cfgmnfe.cfgserienfce,'
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmnfe.cfgdescrinfe,'
      '  cfgmnfe.cfgnumecertif,'
      '  cfgmnfe.cfgnumecertifa1,'
      '  cfgmnfe.cfgsenhacertificadoa1,'
      '  cfgmnfe.cfgtoken1nfce,'
      '  cfgmnfe.cfgidtokennfce,'
      '  cfgmnfe.cfgmodonfe,'
      '  cfgmnfe.cfgversao,'
      '  cfgmnfe.cfgcestativo,'
      '  '
      ''
      ''
      '  /*Email*/'
      '  cfgmnfe.cfgemailnfe,'
      '  cfgmnfe.cfgemailservidornfe,'
      '  cfgmnfe.cfgemailsenhanfe,'
      '  cfgmnfe.cfgmailportnfe,'
      '  cfgmnfe.cfgemailusatls,'
      '  cfgmsai.cfgmensagempdv,'
      '  cfgmsai.cfgprevisualizarimpressao,'
      ''
      ''
      ''
      '  /*SPED*/'
      '  cfgmcfg.crtcodigo,'
      '  cfgmspd.cfgcstterceiros,'
      ''
      '  /*Dados da Empresa*/'
      '  etd.etdapelido,'
      '  etd.etdidentificacao,'
      '  etd.etddoc1,'
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
      '     cfgmcre,'
      '     edr,'
      '     cfg,'
      '     cfgmspd,'
      '     etf,'
      '     cdd,'
      '     cfgmsai,'
      '     ctd'
      'WHERE cfg.cfgcodigo = ctd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND ufs.ufscodigo = edr.ufscodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmcre.cfgcodigo'
      'AND etd.etdcodigo = etf.etdcodigo'
      'AND etf.ttfcodigo = 1'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND cfg.flacodigo = :flacodigo')
    Left = 55
    Top = 140
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
    object cfgcfgservarqnfes: TStringField
      FieldName = 'cfgservarqnfes'
      Size = 100
    end
    object cfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 100
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgcfgviasnfe: TIntegerField
      FieldName = 'cfgviasnfe'
      Required = True
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 5
    end
    object cfgcfgserienfce: TStringField
      FieldName = 'cfgserienfce'
      Size = 5
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
    object cfgcfgusanfc: TIntegerField
      FieldName = 'cfgusanfc'
    end
    object cfgcfgtoken1nfce: TStringField
      FieldName = 'cfgtoken1nfce'
      Size = 100
    end
    object cfgcfgnumecertifa1: TStringField
      FieldName = 'cfgnumecertifa1'
      Size = 100
    end
    object cfgcfgmodonfe: TIntegerField
      FieldName = 'cfgmodonfe'
    end
    object cfgcfgsenhacertificadoa1: TStringField
      FieldName = 'cfgsenhacertificadoa1'
      Size = 50
    end
    object cfgcfgidtokennfce: TStringField
      FieldName = 'cfgidtokennfce'
      Size = 6
    end
    object cfgcfgviaassinar: TIntegerField
      FieldName = 'cfgviaassinar'
    end
    object cfgcfgmensagempdv: TStringField
      FieldName = 'cfgmensagempdv'
      Size = 250
    end
    object cfgcfgtoesubstforaestado: TIntegerField
      FieldName = 'cfgtoesubstforaestado'
    end
    object cfgcfgtoesubstnoestado: TIntegerField
      FieldName = 'cfgtoesubstnoestado'
    end
    object cfgcfgprevisualizarimpressao: TIntegerField
      FieldName = 'cfgprevisualizarimpressao'
    end
    object cfgcfgversao: TStringField
      FieldName = 'cfgversao'
      Size = 10
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
    object cfgcfgtoemesinte: TIntegerField
      FieldName = 'cfgtoemesinte'
    end
    object cfgcfgdefinetoeatendimento: TIntegerField
      FieldName = 'cfgdefinetoeatendimento'
    end
    object cfgcfgcestativo: TIntegerField
      FieldName = 'cfgcestativo'
    end
  end
  object trm: TUniQuery
    Left = 119
    Top = 124
    object trmtciporta: TStringField
      FieldName = 'tciporta'
      Size = 30
    end
    object trmecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
    end
    object trmtrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object trmtipcodigo: TIntegerField
      FieldName = 'tipcodigo'
    end
  end
  object ACBrValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 464
    Top = 96
  end
  object consulta: TUniQuery
    Left = 328
    Top = 128
  end
  object enf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '   enf.enfchave'
      ' , enf.tencodigo'
      ' , enf.enfregistroevento'
      ' , enf.enfchaveevento'
      ' , enf.enfseqevento'
      ' , enf.enfdescricao'
      ' , enf.enfxml'
      ' , enf.enfcstat'
      ' , enf.enfxmotivo'
      'FROM enf')
    Left = 228
    Top = 120
    object enfenfchave: TIntegerField
      FieldName = 'enfchave'
    end
    object enftencodigo: TIntegerField
      FieldName = 'tencodigo'
    end
    object enfenfregistroevento: TDateField
      FieldName = 'enfregistroevento'
    end
    object enfenfchaveevento: TStringField
      FieldName = 'enfchaveevento'
      Size = 52
    end
    object enfenfseqevento: TIntegerField
      FieldName = 'enfseqevento'
    end
    object enfenfdescricao: TStringField
      FieldName = 'enfdescricao'
      Size = 1000
    end
    object enfenfxml: TBlobField
      FieldName = 'enfxml'
    end
    object enfenfcstat: TIntegerField
      FieldName = 'enfcstat'
    end
    object enfenfxmotivo: TStringField
      FieldName = 'enfxmotivo'
      Size = 50
    end
  end
  object mev: TUniQuery
    SQL.Strings = (
      'SELECT mev.mevchave'
      '     , mev.meschave'
      '     , mev.enfchave'
      'FROM mev')
    Left = 196
    Top = 136
    object mevmevchave: TIntegerField
      FieldName = 'mevchave'
    end
    object mevenfchave: TIntegerField
      FieldName = 'enfchave'
    end
    object mevmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT mes.meschave'
      '     , mes.toecodigo'
      '     , mes.tfpcodigo'
      '     , mes.refcodigo'
      '     , mes.messerie'
      '     , mes.edritem'
      '     , etd.etdidentificacao'
      '     , mes.tdfcodigo'
      '     , toe.toeidentificacao'
      '     , mes.mesemissao'
      '     , mes.mesnumero'
      '     , mes.etdcodigo'
      '     , mes.messerie'
      '     , mes.mesvalor'
      '     , mes.mesdesconto'
      '     , mes.mestotal'
      '     , mes.temcodigo'
      '     , mes.trmcodigo'
      '     , mes.mesdatanfe'
      '     , mes.mescoocupom'
      '     , mes.mesdatacupom'
      '     , mes.meschavenfe'
      '     , mes.mesregistro'
      '     , mes.temcodigo'
      '     , mes.mesprotocolo'
      '     , clb.clbidentificacao'
      '     , mes.mesprodutos'
      '     , mes.mesobs'
      '     , mes.mesemissao'
      '     , mes.meshoranfe'
      '  FROM mes'
      ' INNER JOIN etd ON mes.etdcodigo = etd.etdcodigo'
      ' INNER JOIN sde ON mes.sdecodigo = sde.sdecodigo'
      ' INNER JOIN tdf ON mes.tdfcodigo = tdf.tdfcodigo'
      ' INNER JOIN toe ON mes.toecodigo = toe.toecodigo'
      ' INNER JOIN clb ON mes.clbcodigo = clb.clbcodigo'
      ' WHERE mes.meschave = :meschave'
      'and mes.flacodigo = :flacodigo')
    Left = 20
    Top = 100
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
    object mesmeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 200
    end
    object mesmesregistro: TDateField
      FieldName = 'mesregistro'
    end
    object mestemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object mesmesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 30
    end
    object mesclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object mesmesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object mesmesobs: TStringField
      FieldName = 'mesobs'
      Size = 50
    end
    object mesmesemissao: TDateField
      FieldName = 'mesemissao'
    end
    object mesmeshoranfe: TTimeField
      FieldName = 'meshoranfe'
    end
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT itm.cfocfop'
      '     , itm.procodigo'
      '     , pro.pronome'
      '     , pro.pronomereduzido'
      '     , pro.proncm'
      '     , itm.itmdesccomple'
      '     , itm.itmquantidade'
      '     , uni.unisimbolo'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.itmtotal'
      '     , itm.itmchave'
      '     , itm.cstcodigo'
      '     , itm.icmcodigo'
      '     , itm.itmicm'
      '     , itm.itmbicm'
      '     , itm.itmaliqipi'
      '     , itm.itmbipi'
      '     , itm.itmipi'
      '     , itm.itmvlribpt'
      
        '     , pun.punqtdtrib * itm.itmquantidade                       ' +
        '                          AS punqtdtribtotal'
      
        '     , puni.unisimbolo                                          ' +
        '                          AS unisimbolotrib'
      '     , pro.proanpcodigo'
      
        '     , ROUND(((itm.itmquantidade * itm.itmvalor) * (IFNULL(tcg.t' +
        'cgaliqnac, 0) / 100)), 2) AS itmcargatrib'
      
        '     , ROUND(((itm.itmquantidade * itm.itmvalor) * (IFNULL(tcg.t' +
        'cgaliqest, 0) / 100)), 2) AS itmcargatribest'
      '     , itm.cspcodigo'
      '     , itm.csfcodigo'
      '     , itm.csicodigo'
      '     , itm.toecodigo'
      '     , lcn.tcecest'
      '     , pro.tpocodigo'
      ''
      '     , pun.punbarra '
      '     , pun.punbarrasistema'
      '  FROM itm'
      '  JOIN pro      ON itm.procodigo  = pro.procodigo'
      '  JOIN uni      ON itm.unicodigo  = uni.unicodigo'
      '  JOIN pun      ON itm.procodigo  = pun.procodigo'
      '               AND itm.unicodigo  = pun.unicodigo'
      '  JOIN uni puni ON pun.pununitrib = puni.unicodigo'
      '  LEFT JOIN tcg ON tcg.tcgncm     = pro.proncm'
      '  LEFT JOIN lcn      ON tcg.tcgncm     = lcn.tcgncm'
      ' WHERE pro.tpocodigo <> 9 and itm.itmquantidade>0'
      '   AND itm.meschave = :meschave'
      '   and itm.flacodigo = :flacodigo'
      ' GROUP BY itm.itmchave')
    Left = 60
    Top = 100
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
    object itmitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object itmcfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object itmprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object itmpronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object itmpronomereduzido: TStringField
      FieldName = 'pronomereduzido'
      Size = 50
    end
    object itmproncm: TStringField
      FieldName = 'proncm'
      Size = 15
    end
    object itmitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmitmquantidade: TFloatField
      FieldName = 'itmquantidade'
    end
    object itmunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 6
    end
    object itmitmvalor: TFloatField
      FieldName = 'itmvalor'
    end
    object itmitmdesconto: TFloatField
      FieldName = 'itmdesconto'
    end
    object itmcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object itmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmitmicm: TFloatField
      FieldName = 'itmicm'
    end
    object itmitmbicm: TFloatField
      FieldName = 'itmbicm'
    end
    object itmitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
    end
    object itmitmbipi: TFloatField
      FieldName = 'itmbipi'
    end
    object itmitmipi: TFloatField
      FieldName = 'itmipi'
    end
    object itmitmvlribpt: TFloatField
      FieldName = 'itmvlribpt'
    end
    object itmpunqtdtribtotal: TFloatField
      FieldName = 'punqtdtribtotal'
    end
    object itmunisimbolotrib: TStringField
      DisplayWidth = 6
      FieldName = 'unisimbolotrib'
      Size = 6
    end
    object itmproanpcodigo: TIntegerField
      FieldName = 'proanpcodigo'
    end
    object itmitmtotal: TFloatField
      FieldName = 'itmtotal'
    end
    object itmitmcargatrib: TFloatField
      FieldName = 'itmcargatrib'
    end
    object itmitmcargatribest: TFloatField
      FieldName = 'itmcargatribest'
    end
    object itmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object itmcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object itmpunbarra: TStringField
      FieldName = 'punbarra'
    end
    object itmpunbarrasistema: TIntegerField
      FieldName = 'punbarrasistema'
    end
    object itmcsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 3
    end
    object itmtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object itmtcecest: TStringField
      FieldName = 'tcecest'
      Size = 15
    end
    object itmtpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT etd.etddoc1'
      '     , edr.edrcep'
      '     , edr.edrrua'
      '     , edr.edrnumero'
      '     , edr.edrbairro'
      '     , edr.cddcodigo'
      '     , cdd.cddnome'
      '     , ufs.ufssigla'
      '     , etf.etftelefone'
      '     , etd.tpecodigo'
      '     , etd.etdidentificacao'
      '     , edr.edrinscest'
      '     , etd.etdnfemodelos'
      'FROM etd'
      '  JOIN edr'
      '    ON etd.etdcodigo = edr.etdcodigo'
      '  JOIN cdd'
      '    ON edr.cddcodigo = cdd.cddcodigo'
      '  JOIN ufs'
      '    ON cdd.ufscodigo = ufs.ufscodigo'
      '  JOIN etf'
      '    ON etd.etdcodigo = etf.etdcodigo'
      '    AND etf.ttfcodigo = 1'
      'WHERE etd.etdcodigo = :etdcodigo'
      'AND edr.edritem = :edritem')
    Left = 140
    Top = 100
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
  end
  object toe: TUniQuery
    Left = 98
    Top = 100
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toettecodigo: TIntegerField
      FieldName = 'ttecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
    object toettocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
  end
  object mic: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  micchave,'
      '  mic.idccodigo,'
      '  mic.meschave,'
      '  idc.idcnome,'
      '  idc.idcdoc'
      'FROM mic,'
      '     idc'
      'WHERE mic.idccodigo = idc.idccodigo'
      'AND mic.meschave = :meschave')
    Left = 204
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object micmicchave: TIntegerField
      FieldName = 'micchave'
    end
    object micmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object micidccodigo: TIntegerField
      FieldName = 'idccodigo'
    end
    object micidcnome: TStringField
      FieldName = 'idcnome'
      Size = 50
    end
    object micidcdoc: TStringField
      FieldName = 'idcdoc'
    end
  end
  object oic: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  oicchave,'
      '  oic.idccodigo,'
      '  oic.orcchave,'
      '  idc.idcdoc,'
      '  idc.idcnome'
      'FROM oic,'
      '     mor,'
      '     idc'
      'WHERE oic.orcchave = mor.orcchave'
      'AND oic.idccodigo = idc.idccodigo'
      'AND mor.meschave = :meschave')
    Left = 289
    Top = 91
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object oicoicchave: TIntegerField
      FieldName = 'oicchave'
    end
    object oicorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object oicidccodigo: TIntegerField
      FieldName = 'idccodigo'
    end
    object oicidcnome: TStringField
      FieldName = 'idcnome'
      Size = 50
    end
    object oicidcdoc: TStringField
      FieldName = 'idcdoc'
    end
  end
  object rec: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rec.reccodigo,'
      '  rec.recmotivo,'
      '  rec.recdthoraentrada,'
      '  rec.recdthorasaida'
      'FROM rec'
      'WHERE IFNULL(rec.recdthorasaida, '#39#39') = '#39#39
      'ORDER BY reccodigo DESC LIMIT 1;')
    Left = 15
    Top = 40
    object recreccodigo: TIntegerField
      FieldName = 'reccodigo'
    end
    object recrecmotivo: TStringField
      FieldName = 'recmotivo'
      Size = 255
    end
    object recrecdthoraentrada: TDateTimeField
      FieldName = 'recdthoraentrada'
    end
    object recrecdthorasaida: TDateTimeField
      FieldName = 'recdthorasaida'
    end
  end
  object qDtl: TUniQuery
    Left = 76
    Top = 48
  end
  object rni: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rnichave,'
      '  rniano,'
      '  rnimes,'
      '  tdfcodigo,'
      '  rninumeroinicial,'
      '  rninumerofinal,'
      '  rnijutificativa'
      'FROM rni')
    Left = 296
    Top = 136
    object rnirnichave: TIntegerField
      FieldName = 'rnichave'
    end
    object rnirniano: TStringField
      FieldName = 'rniano'
      Size = 4
    end
    object rnirnimes: TStringField
      FieldName = 'rnimes'
      Size = 2
    end
    object rnitdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object rnirninumeroinicial: TIntegerField
      FieldName = 'rninumeroinicial'
    end
    object rnirninumerofinal: TIntegerField
      FieldName = 'rninumerofinal'
    end
    object rnirnijutificativa: TStringField
      FieldName = 'rnijutificativa'
      Size = 255
    end
  end
  object NumeroNFCe: TUniQuery
    SQL.Strings = (
      'CALL NumeroNFCe;')
    Left = 480
    Top = 152
  end
  object mesxml: TUniQuery
    SQL.Strings = (
      
        'select meschave, mesarqxml, flacodigo from mesxml where meschave' +
        '=:meschave and flacodigo=:flacodigo')
    Left = 312
    Top = 192
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
    object mesxmlmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object mesxmlmesarqxml: TBlobField
      FieldName = 'mesarqxml'
    end
    object mesxmlflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object disponivel: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfi.etdcodigo,'
      '  SUM(rfi.rfisaldocapital) AS rfisaldocapital'
      'FROM v_rfi rfi'
      'WHERE rfi.tfdcodigo = 2'
      'AND rfi.srfcodigo NOT IN (2, 9)'
      'AND rfi.etdcodigo = :etdcodigo'
      'GROUP BY rfi.etdcodigo'
      'ORDER BY rfi.etdcodigo')
    Left = 212
    Top = 199
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object disponivelrfisaldocapital: TFloatField
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object limite: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  IFNULL(etl.etllimitetotal, 0) AS etllimitetotal'
      'FROM etd'
      '  LEFT JOIN (SELECT'
      '      etdcodigo,'
      '      etllimitetotal'
      '    FROM etl) etl'
      '    ON etd.etdcodigo = etl.etdcodigo'
      'WHERE etd.etdcodigo = :etdcodigo')
    Left = 146
    Top = 199
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object limiteetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object limiteetllimitetotal: TFloatField
      FieldName = 'etllimitetotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object yoe: TUniQuery
    SQL.Strings = (
      'select ansanexo from ans where tcgncm LIKE :tcgncm')
    Left = 360
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcgncm'
        Value = nil
      end>
    object yoeansanexo: TStringField
      FieldName = 'ansanexo'
    end
  end
  object itmncm: TUniQuery
    SQL.Strings = (
      'select toecodigo from itm where itmchave=:itmchave')
    Left = 24
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end>
    object itmncmtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
  end
  object ACBrValidadorBarra: TACBrValidador
    IgnorarChar = './-'
    Left = 469
    Top = 216
  end
  object SMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 96
    Top = 160
  end
  object IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    ReadTimeout = 30000
    SSLOptions.Method = sslvSSLv23
    SSLOptions.SSLVersions = [sslvSSLv2, sslvSSLv3, sslvTLSv1]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 96
    Top = 216
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 96
    Top = 272
  end
  object toeitm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  toecodigo,'
      '  cstcodigo,'
      '  csicodigo,'
      '  cspcodigo,'
      '  cfgpercentualpis,'
      '  csfcodigo,'
      '  cfgpercentualcofins'
      'FROM toe where toecodigo=:toecodigo')
    Left = 24
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end>
    object toeitmtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toeitmcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object toeitmcsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 3
    end
    object toeitmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object toeitmcfgpercentualpis: TFloatField
      FieldName = 'cfgpercentualpis'
    end
    object toeitmcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object toeitmcfgpercentualcofins: TFloatField
      FieldName = 'cfgpercentualcofins'
    end
  end
  object itmcst: TUniQuery
    SQL.Strings = (
      'select'
      '   itmchave'
      '   , cstcodigo'
      '   , csicodigo'
      '   , csfcodigo'
      '   , cspcodigo'
      '   , itmaliqpis'
      '   , itmaliqcofins'
      '   , itmaliqipi'
      '   from itm '
      'where itmchave=:itmchave')
    Left = 24
    Top = 229
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end>
    object itmcstitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object itmcstcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object itmcstcsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 3
    end
    object itmcstcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object itmcstcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object itmcstitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
    end
    object itmcstitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
    end
    object itmcstitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
    end
  end
  object ncm: TUniQuery
    Left = 200
    Top = 261
  end
  object ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    Left = 392
    Top = 34
  end
end
