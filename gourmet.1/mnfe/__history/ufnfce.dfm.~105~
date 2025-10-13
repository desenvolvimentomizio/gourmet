object fnfce: Tfnfce
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Nota Fiscal ao Consumidor - NFC-e - IBS/CBS'
  ClientHeight = 660
  ClientWidth = 1046
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
    Width = 1046
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'Gerador NFC-e 4.0  - IBS/CBS'
    Color = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object plStatusSefaz: TPanel
    Left = 0
    Top = 627
    Width = 1046
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object mostra: TProgressBar
      Left = 0
      Top = 0
      Width = 1046
      Height = 17
      Align = alTop
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 1046
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Aguarde . . . '
    Color = 612619
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object plestagio: TPanel
    Left = 0
    Top = 586
    Width = 1046
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
  end
  object info: TMemo
    Left = 0
    Top = 81
    Width = 1046
    Height = 505
    Align = alClient
    Color = 8404992
    TabOrder = 4
    Visible = False
  end
  object cfg: TUniQuery
    SQL.Strings = (
      
        '-- pega uma linha can'#244'nica de endere'#231'o (EDR), fone (ETF) e e-mai' +
        'l (ETE)'
      '-- e remove a necessidade de ORDER BY .. LIMIT 1 global'
      ''
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
      '  cfgmsai.cfgtoeinteproducaopropria,'
      '  cfgmsai.cfgtoeforaproducaopropria,'
      '  cfgmsai.cfgtoeintesubsprodpropria,'
      '  cfgmsai.cfgtoeforasubsprodpropria,'
      ''
      ''
      '  /*Contas a Receber*/'
      '  cfgmcre.cfgviaassinar,'
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
      '  cfgcertificadoa1,'
      '  cfgmnfe.cfgservarqnfes,'
      ''
      ''
      ''
      '  /*Email*/'
      '  cfgmnfe.cfgemailnfe,'
      '  cfgmnfe.cfgemailservidornfe,'
      '  cfgmnfe.cfgemailsenhanfe,'
      '  cfgmnfe.cfgmailportnfe,'
      '  cfgmnfe.cfgemailusatls,'
      ''
      '  cfgmsai.cfgmensagempdv,'
      '  cfgmsai.cfgprevisualizarimpressao,'
      '  cfgmsai.cfgproducaopropria,'
      '  cfgmsai.cfgtributacaoimendes,'
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
      ''
      '  /*Box-e - Dom'#237'nio Sistemas*/'
      '  ctd.ctdboxedominio,'
      '  cfgmsai.cfgmensagempdv,'
      '  cfgmsai.cfgtrmimpfis1,'
      '  cfgmsai.cfgtrmimpfis2,'
      '  cfgmsai.cfgtrmtef1,'
      '  cfgmsai.cfgtrmtef2,'
      '  cfgmsai.cfgimpnfe1,'
      '  cfgmsai.cfgimpnfe2,'
      '  cfgmsai.cfgimpnfc1,'
      '  cfgmsai.cfgimpnfc2,'
      '  cfgmsai.cfgimpnfc3,'
      '  cfg.cfgusanfc,'
      '  cfg.cfgusapdv,'
      '  ete.eteemail,'
      '  cfg.cfgctacodigopix,'
      '  cfgmcfg.cfgapuracaoicm'
      ''
      'FROM cfg'
      'JOIN cfgmcfg  ON cfgmcfg.cfgcodigo = cfg.cfgcodigo'
      'JOIN cfgment  ON cfgment.cfgcodigo = cfg.cfgcodigo'
      'JOIN cfgmcre  ON cfgmcre.cfgcodigo = cfg.cfgcodigo'
      'JOIN cfgmnfe  ON cfgmnfe.cfgcodigo = cfg.cfgcodigo'
      'JOIN cfgmspd  ON cfgmspd.cfgcodigo = cfg.cfgcodigo'
      'JOIN cfgmsai  ON cfgmsai.cfgcodigo = cfg.cfgcodigo'
      'JOIN ctd      ON ctd.cfgcodigo     = cfg.cfgcodigo'
      ''
      '-- empresa'
      'JOIN etd      ON etd.etdcodigo     = cfgmcfg.cfgetdempresa'
      ''
      '-- endere'#231'o "can'#244'nico" (o de menor edrcodigo com tedcodigo=1)'
      'JOIN ('
      '   SELECT edr1.etdcodigo, MIN(edr1.edrcodigo) AS edrcodigo'
      '   FROM edr edr1'
      '   WHERE edr1.tedcodigo = 1'
      '   GROUP BY edr1.etdcodigo'
      ') edr_min ON edr_min.etdcodigo = etd.etdcodigo'
      
        'JOIN edr ON edr.etdcodigo = edr_min.etdcodigo AND edr.edrcodigo ' +
        '= edr_min.edrcodigo'
      'JOIN ufs ON ufs.ufscodigo = edr.ufscodigo'
      'JOIN cdd ON cdd.cddcodigo = edr.cddcodigo'
      ''
      '-- telefone "can'#244'nico" (menor etfcodigo com ttfcodigo=1)'
      'LEFT JOIN ('
      '   SELECT etf1.etdcodigo, MIN(etf1.etfcodigo) AS etfcodigo'
      '   FROM etf etf1'
      '   WHERE etf1.ttfcodigo = 1'
      '   GROUP BY etf1.etdcodigo'
      ') etf_min ON etf_min.etdcodigo = etd.etdcodigo'
      
        'LEFT JOIN etf ON etf.etdcodigo = etf_min.etdcodigo AND etf.etfco' +
        'digo = etf_min.etfcodigo'
      ''
      '-- e-mail "can'#244'nico" (menor etecodigo com eteenvianfe=1)'
      'LEFT JOIN ('
      '   SELECT ete1.etdcodigo, MIN(ete1.etecodigo) AS etecodigo'
      '   FROM ete ete1'
      '   WHERE ete1.eteenvianfe = 1'
      '   GROUP BY ete1.etdcodigo'
      ') ete_min ON ete_min.etdcodigo = etd.etdcodigo'
      
        'LEFT JOIN ete ON ete.etdcodigo = ete_min.etdcodigo AND ete.eteco' +
        'digo = ete_min.etecodigo'
      ''
      'WHERE cfg.flacodigo = :flacodigo'
      
        'LIMIT 1;  -- j'#225' n'#227'o precisamos ordenar; a linha '#233' '#250'nica pelo '#8220'co' +
        'lapso'#8221
      ''
      ''
      ''
      '')
    Left = 55
    Top = 148
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cfgcodigo'
      Required = True
    end
    object cfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 50
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
      Size = 60
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
      Size = 50
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
      Size = 36
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
      Size = 50
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
      Size = 15
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
    object cfgcfgobs1: TIntegerField
      FieldName = 'cfgobs1'
    end
    object cfgcfgproducaopropria: TIntegerField
      FieldName = 'cfgproducaopropria'
    end
    object cfgcfgtoeinteproducaopropria: TIntegerField
      FieldName = 'cfgtoeinteproducaopropria'
    end
    object cfgcfgtoeforaproducaopropria: TIntegerField
      FieldName = 'cfgtoeforaproducaopropria'
    end
    object cfgcfgtoeintesubsprodpropria: TIntegerField
      FieldName = 'cfgtoeintesubsprodpropria'
    end
    object cfgcfgtoeforasubsprodpropria: TIntegerField
      FieldName = 'cfgtoeforasubsprodpropria'
    end
    object cfgcfgtributacaoimendes: TIntegerField
      FieldName = 'cfgtributacaoimendes'
    end
    object cfgcfgcertificadoa1: TBlobField
      FieldName = 'cfgcertificadoa1'
    end
    object cfgeteemail: TStringField
      FieldName = 'eteemail'
      Size = 100
    end
    object cfgctdboxedominio: TStringField
      FieldName = 'ctdboxedominio'
      Size = 200
    end
    object cfgcfgusapdv: TIntegerField
      FieldName = 'cfgusapdv'
    end
    object cfgcfgctacodigopix: TIntegerField
      FieldName = 'cfgctacodigopix'
    end
    object cfgcfgapuracaoicm: TIntegerField
      FieldName = 'cfgapuracaoicm'
    end
    object cfgcfgprouso: TIntegerField
      FieldName = 'cfgprouso'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtoeusofora: TIntegerField
      FieldName = 'cfgtoeusofora'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtoeusointe: TIntegerField
      FieldName = 'cfgtoeusointe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtoecuffora: TIntegerField
      FieldName = 'cfgtoecuffora'
      ReadOnly = True
    end
    object cfgcfgtoecufinte: TIntegerField
      FieldName = 'cfgtoecufinte'
      ReadOnly = True
    end
    object cfgcfgnumeronfe: TIntegerField
      FieldName = 'cfgnumeronfe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgnumeronfce: TIntegerField
      FieldName = 'cfgnumeronfce'
      ReadOnly = True
    end
    object cfgcfgobs2: TIntegerField
      FieldName = 'cfgobs2'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs3: TIntegerField
      FieldName = 'cfgobs3'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs4: TIntegerField
      FieldName = 'cfgobs4'
      ReadOnly = True
      Required = True
    end
    object cfgcfgcstterceiros: TStringField
      FieldName = 'cfgcstterceiros'
      ReadOnly = True
      Size = 3
    end
    object cfgcfgtrmimpfis1: TIntegerField
      FieldName = 'cfgtrmimpfis1'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtrmimpfis2: TIntegerField
      FieldName = 'cfgtrmimpfis2'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtrmtef1: TIntegerField
      FieldName = 'cfgtrmtef1'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtrmtef2: TIntegerField
      FieldName = 'cfgtrmtef2'
      ReadOnly = True
      Required = True
    end
    object cfgcfgimpnfe1: TIntegerField
      FieldName = 'cfgimpnfe1'
      ReadOnly = True
      Required = True
    end
    object cfgcfgimpnfe2: TIntegerField
      FieldName = 'cfgimpnfe2'
      ReadOnly = True
      Required = True
    end
    object cfgcfgimpnfc1: TIntegerField
      FieldName = 'cfgimpnfc1'
      ReadOnly = True
      Required = True
    end
    object cfgcfgimpnfc2: TIntegerField
      FieldName = 'cfgimpnfc2'
      ReadOnly = True
      Required = True
    end
    object cfgcfgimpnfc3: TIntegerField
      FieldName = 'cfgimpnfc3'
      ReadOnly = True
      Required = True
    end
    object cfgcfgservarqnfes: TStringField
      FieldName = 'cfgservarqnfes'
      Size = 200
    end
  end
  object trm: TUniQuery
    Left = 143
    Top = 132
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
    object trmtrmterminalcomprovante1via: TStringField
      FieldName = 'trmterminalcomprovante1via'
      Size = 5000
    end
    object trmtrmterminalcomprovante2via: TStringField
      FieldName = 'trmterminalcomprovante2via'
      Size = 5000
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
      '     , mes.mescodigonota'
      '     , mes.mesrefeicao'
      '     , mes.mesoutras'
      '     , mes.mespis'
      '     , mes.mescofins'
      '     , mes.mesfrete'
      '     , toe.ttocodigo'
      '     , mes.mesinclusao'
      '     , mes.oricodigo'
      '     , mes.mesretirabalcao'
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
    object mesmescodigonota: TIntegerField
      FieldName = 'mescodigonota'
    end
    object mesmesrefeicao: TIntegerField
      FieldName = 'mesrefeicao'
    end
    object mesmesoutras: TCurrencyField
      FieldName = 'mesoutras'
    end
    object mesmespis: TCurrencyField
      FieldName = 'mespis'
    end
    object mesmescofins: TCurrencyField
      FieldName = 'mescofins'
    end
    object mesmesfrete: TFloatField
      FieldName = 'mesfrete'
    end
    object mesttocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object mesmesinclusao: TDateTimeField
      FieldName = 'mesinclusao'
    end
    object mesoricodigo: TIntegerField
      FieldName = 'oricodigo'
    end
    object mesmesretirabalcao: TIntegerField
      FieldName = 'mesretirabalcao'
    end
    object mesmesdesconto: TCurrencyField
      FieldName = 'mesdesconto'
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
      
        '      , ROUND(((itm.itmquantidade * itm.itmvalor) * (IFNULL(tcg.' +
        'tcgaliqnac, 0) / 100)), 2) AS itmcargatrib'
      
        '     , ROUND(((itm.itmquantidade * itm.itmvalor) * (IFNULL(tcg.t' +
        'cgaliqest, 0) / 100)), 2) AS itmcargatribest'
      '     , itm.cspcodigo'
      '     , itm.csfcodigo'
      '     , itm.csicodigo'
      '     , itm.toecodigo'
      '     , if(pro.procest<>'#39#39',pro.procest, '#39#39') tcecest'
      '     , pro.tpocodigo'
      '     , pro.proproducao'
      ''
      '     , pun.punbarra '
      '     , pun.punbarrasistema'
      '     , pun.punidentificacao'
      ''
      '     , itm.itmpercreducaobaseicm'
      '     , itm.itmaliqpis'
      '     , itm.itmpis'
      '     , itm.itmbpis'
      ''
      '     , itm.itmaliqcofins'
      '     , itm.itmcofins'
      '     , itm.itmbcofins'
      '     , itm.itmfrete'
      '     , itm.itmoutras'
      
        '     , (select icmaliquotas from icm where icm.icmcodigo=itm.icm' +
        'codigo) as icmaliquota '
      '     , itm.itmbicms'
      '     , itm.itmmva'
      
        '     , (select icmaliquotas from icm where icm.icmcodigo=itm.icm' +
        'codigo) as itmaliqicms'
      '     , itm.itmicms '
      '     , itm.puncodigo'
      '     , itm.itmaliqicm'
      '     , itm.itmacrescimoav'
      '     , pro.nrtcodigo'
      ' '
      ''
      ' '
      ''
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
    object itmproproducao: TIntegerField
      FieldName = 'proproducao'
    end
    object itmitmpercreducaobaseicm: TFloatField
      FieldName = 'itmpercreducaobaseicm'
    end
    object itmitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmbpis: TFloatField
      FieldName = 'itmbpis'
    end
    object itmitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
    end
    object itmitmbcofins: TFloatField
      FieldName = 'itmbcofins'
    end
    object itmitmfrete: TFloatField
      FieldName = 'itmfrete'
    end
    object itmitmoutras: TFloatField
      FieldName = 'itmoutras'
    end
    object itmpunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 30
    end
    object itmicmaliquota: TStringField
      FieldName = 'icmaliquota'
      Size = 10
    end
    object itmitmbicms: TFloatField
      FieldName = 'itmbicms'
    end
    object itmitmmva: TFloatField
      FieldName = 'itmmva'
    end
    object itmitmicms: TFloatField
      FieldName = 'itmicms'
    end
    object itmitmaliqicms: TStringField
      FieldName = 'itmaliqicms'
      Size = 10
    end
    object itmpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object itmitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Size = 10
    end
    object itmitmacrescimoav: TCurrencyField
      FieldName = 'itmacrescimoav'
    end
    object itmnrtcodigo: TStringField
      FieldName = 'nrtcodigo'
      Size = 10
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
      ' LEFT JOIN etf'
      '    ON etd.etdcodigo = etf.etdcodigo'
      '    AND etf.ttfcodigo = 1'
      'WHERE etd.etdcodigo = :etdcodigo'
      'AND edr.edritem = :edritem')
    Left = 140
    Top = 68
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
      '  rec.recdthorasaida,'
      '  recmanual'
      'FROM rec'
      
        'WHERE (IFNULL(rec.recdthorasaida, '#39#39') = '#39#39') OR (rec.recdthorasai' +
        'da='#39'1899-12-30 00:00:00'#39')'
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
    object recrecmanual: TIntegerField
      FieldName = 'recmanual'
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
      '  rnijutificativa,'
      '  meschave,'
      '  meschavenfe'
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
    object rnimeschave: TIntegerField
      FieldName = 'meschave'
    end
    object rnimeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
  end
  object NumeroNFCe: TUniQuery
    SQL.Strings = (
      'CALL NumeroNFCe;')
    Left = 480
    Top = 152
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
    Sistema = 'Mizio Sistemas (66) 35442765'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
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
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrNFe = ACBrNFeNFCe
    ImprimeQRCodeLateral = True
    FormularioContinuo = True
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 392
    Top = 34
  end
  object qTomTof: TUniQuery
    SQL.Strings = (
      
        'select tofidentificacao from tom, tof where tom.tofcodigo=tof.to' +
        'fcodigo')
    Left = 407
    Top = 177
  end
  object tom: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tomchave,'
      '  tofcodigo,'
      '  meschave,'
      '  tomobs'
      'FROM tom'
      'WHERE tom.meschave = :meschave')
    Left = 256
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object tomtomchave: TIntegerField
      FieldName = 'tomchave'
    end
    object tomtofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object tommeschave: TIntegerField
      FieldName = 'meschave'
    end
    object tomtomobs: TStringField
      FieldName = 'tomobs'
      Size = 200
    end
  end
  object pad: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  padcodigo,'
      '  padncm,'
      '  padextipi,'
      '  padpis,'
      '  padcofins,'
      '  padcodigopiscofins'
      'FROM pad where padcodigo=:padcodigo')
    Left = 317
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'padcodigo'
        Value = nil
      end>
    object padpadcodigo: TIntegerField
      FieldName = 'padcodigo'
    end
    object padpadncm: TStringField
      FieldName = 'padncm'
      Size = 10
    end
    object padpadpis: TFloatField
      FieldName = 'padpis'
    end
    object padpadcofins: TFloatField
      FieldName = 'padcofins'
    end
    object padpadextipi: TStringField
      FieldName = 'padextipi'
      Size = 5
    end
    object padpadcodigopiscofins: TStringField
      FieldName = 'padcodigopiscofins'
      Size = 3
    end
  end
  object qconsulta: TUniQuery
    Left = 376
    Top = 274
  end
  object ctd: TUniQuery
    SQL.Strings = (
      'select ctdcnpj from ctd order by ctdcodigo desc limit 1')
    Left = 301
    Top = 224
    object ctdctdcnpj: TStringField
      FieldName = 'ctdcnpj'
      Size = 50
    end
  end
  object icm: TUniQuery
    SQL.Strings = (
      
        'select icmcodigo, icmaliquotas from icm where icmcodigo=:icmcodi' +
        'go')
    Left = 456
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'icmcodigo'
        Value = nil
      end>
    object icmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object icmicmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      Size = 5
    end
  end
  object qEnfMev: TUniQuery
    SQL.Strings = (
      'SELECT enf.enfregistroevento'
      '     , enf.enfchaveevento'
      '     , enf.tencodigo'
      '     , enf.enfseqevento'
      '     , enf.enfdescricao'
      '     , mes.mesregistro'
      'FROM enf'
      '  JOIN mev'
      '    ON enf.enfchave = mev.enfchave'
      '  JOIN mes'
      '    ON mev.meschave = mes.meschave'
      'WHERE enf.enfchave = mev.enfchave'
      'AND enf.enfcstat IN (135, 136)'
      'AND mev.meschave = :meschave'
      'ORDER BY enf.enfseqevento '
      '')
    Left = 256
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object qEnfMevenfseqevento: TIntegerField
      FieldName = 'enfseqevento'
    end
    object qEnfMevenfdescricao: TStringField
      FieldName = 'enfdescricao'
      Size = 1000
    end
    object qEnfMevtencodigo: TIntegerField
      FieldName = 'tencodigo'
    end
    object qEnfMevenfchaveevento: TStringField
      FieldName = 'enfchaveevento'
      Size = 52
    end
    object qEnfMevenfregistroevento: TDateField
      FieldName = 'enfregistroevento'
    end
    object qEnfMevmesregistro: TDateField
      FieldName = 'mesregistro'
    end
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
    Left = 104
    Top = 408
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
    Left = 104
    Top = 344
  end
  object SMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 176
    Top = 344
  end
  object consultacomprovante: TUniQuery
    Left = 352
    Top = 368
  end
  object tagPagamento: TUniQuery
    SQL.Strings = (
      
        'select mdatagpagamento, mdadescrpagamento from mda where mdacodi' +
        'go=:mdacodigo')
    Left = 456
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdacodigo'
        Value = nil
      end>
  end
  object rdc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdc.rdcchave,'
      '  ltr.dtlchave,'
      '  rdc.rdcnrauto,'
      '  rdc.adccodigo,'
      '  rdc.rdcparcelas,'
      '  adc.adcidentificacao,'
      '  adc.etdcodigo,'
      '  etd.etddoc1,'
      '  rdc.bdccodigo,'
      '  rdcvalor '
      'FROM ltr'
      '  INNER JOIN rdc ON ltr.rdcchave = rdc.rdcchave'
      '  INNER JOIN adc ON rdc.adccodigo = adc.adccodigo'
      '  INNER JOIN etd ON adc.etdcodigo = etd.etdcodigo'
      'where ltr.dtlchave=:dtlchave')
    Left = 424
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dtlchave,'
      '  ltechave,'
      '  cedcodigo,'
      '  dtlvalor,'
      '  mdacodigo,'
      '  dtlvalorinfo,'
      '  flacodigo,'
      '  rdcnrauto,'
      '  ccxchave,'
      '  dtlregistro'
      'FROM dtl'
      '   where dtl.ltechave=:ltechave'
      '   and dtl.dtlchave=:dtlchave  '
      ' ')
    Left = 472
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
  end
  object ctapix: TUniQuery
    SQL.Strings = (
      'select ctacnpjbanco from cta where ctacodigo=:ctacodigo')
    Left = 264
    Top = 375
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
  end
  object ori: TUniQuery
    SQL.Strings = (
      'select '
      '  etd.etdcodigo,'
      '  etd.etddoc1,'
      '  etd.etdapelido'
      
        'from etd, ori where etd.etdcodigo=ori.etdcodigo and ori.oricodig' +
        'o=:oricodigo')
    Left = 592
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'oricodigo'
        Value = nil
      end>
    object orietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object orietddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object orietdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 50
    end
  end
  object etddoc: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etddoc1 from etd where etdcodigo=:etdcodigo')
    Left = 696
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etddocetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etddocetddoc1: TStringField
      FieldName = 'etddoc1'
      Size = 30
    end
  end
  object dtltef: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT dtl.dtlchave'
      '     , mda.mdaidentificacao'
      '     , dtl.dtlvalor'
      '     , dtl.ltechave'
      '     , dtl.mdacodigo'
      '     , dtl.rdcnrauto'
      '  FROM mes'
      ' INNER JOIN rfm ON mes.meschave = rfm.meschave   '
      ' INNER JOIN rfi ON rfm.rfichave = rfi.rfichave   '
      ' INNER JOIN mfi ON mfi.rfichave = rfi.rfichave'
      ' INNER JOIN mlt ON mlt.mfichave = mfi.mfichave'
      ' INNER JOIN dtl ON dtl.ltechave = mlt.ltechave'
      ' INNER JOIN mda ON dtl.mdacodigo = mda.mdacodigo'
      ' WHERE rfi.tfdcodigo IN (32)'
      '   and tmfcodigo=21'
      '   AND mes.meschave = :meschave'
      'GROUP BY dtl.rdcnrauto'
      '')
    Left = 915
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dtltefdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtltefltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtltefmdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 30
    end
    object dtltefdtlvalor: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dtltefmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object rdctef: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdcchave,'
      '  rdccomprovante1via,'
      '  dtlchave,'
      '  rdcnrauto,'
      '  bdccodigo,'
      '  rdcvalor'
      'FROM rdc where dtlchave=:dtlchave')
    Left = 915
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
  end
  object rct: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rctchave,'
      '  rctvalor,'
      '  rctnrauto,'
      '  adccodigo,'
      '  rctparcelas,'
      '  bdccodigo,'
      '  rctcomprovante1via,'
      '  rctcomprovante2via,'
      '  rcthora,'
      '  orcchave,'
      '  rctstatus,'
      '  rctrede'
      'FROM rct'
      'WHERE rctnrauto = :rctnrauto'
      'AND bdccodigo = :bdccodigo'
      'AND rctvalor = :rctvalor'
      'AND rctstatus <> '#39'PENDENTE'#39)
    Left = 915
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rctnrauto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'bdccodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rctvalor'
        Value = nil
      end>
  end
  object dtltefparcial: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dtl.dtlchave,'
      '  mda.mdaidentificacao,'
      '  dtl.dtlvalor,'
      '  dtl.ltechave,'
      '  dtl.mdacodigo,'
      '  dtl.rdcnrauto'
      ''
      'FROM olt'
      '  INNER JOIN lte'
      '    ON olt.ltechave = lte.ltechave'
      '  INNER JOIN dtl'
      '    ON lte.ltechave = dtl.ltechave'
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  INNER JOIN rdc'
      '    ON dtl.dtlchave = rdc.dtlchave'
      'WHERE olt.ltechave = :ltechave')
    Left = 907
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object dtltefparcialdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtltefparcialltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtltefparcialmdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 30
    end
    object dtltefparcialdtlvalor: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dtltefparcialmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object rcddtl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdcchave,'
      '  rdcvalor,'
      '  rdcnrauto,'
      '  rdcvalorope,'
      '  rdcsituacao,'
      '  rdcdata,'
      '  adccodigo,'
      '  rdcparcelas,'
      '  tescodigo,'
      '  rdcobs,'
      '  bdccodigo,'
      '  rdccomprovante1via,'
      '  rdccomprovante2via,'
      '  rdcconciliado,'
      '  cedcodigo,'
      '  rdchora,'
      '  rdctaxa,'
      '  rdcvalordesconto,'
      '  dtlchave'
      'FROM rdc where rdcchave=:rdcchave')
    Left = 536
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rdcchave'
        Value = nil
      end>
    object rcddtlrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object rcddtlrdcvalor: TFloatField
      FieldName = 'rdcvalor'
      Required = True
    end
    object rcddtlrdcnrauto: TStringField
      FieldName = 'rdcnrauto'
      Size = 200
    end
    object rcddtlrdcvalorope: TFloatField
      FieldName = 'rdcvalorope'
      Required = True
    end
    object rcddtlrdcsituacao: TIntegerField
      FieldName = 'rdcsituacao'
      Required = True
    end
    object rcddtlrdcdata: TDateField
      FieldName = 'rdcdata'
    end
    object rcddtladccodigo: TIntegerField
      FieldName = 'adccodigo'
      Required = True
    end
    object rcddtlrdcparcelas: TIntegerField
      FieldName = 'rdcparcelas'
      Required = True
    end
    object rcddtltescodigo: TIntegerField
      FieldName = 'tescodigo'
      Required = True
    end
    object rcddtlrdcobs: TStringField
      FieldName = 'rdcobs'
      Size = 255
    end
    object rcddtlbdccodigo: TIntegerField
      FieldName = 'bdccodigo'
    end
    object rcddtlrdccomprovante1via: TStringField
      FieldName = 'rdccomprovante1via'
      Size = 1000
    end
    object rcddtlrdccomprovante2via: TStringField
      FieldName = 'rdccomprovante2via'
      Size = 1000
    end
    object rcddtlrdcconciliado: TIntegerField
      FieldName = 'rdcconciliado'
    end
    object rcddtlcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rcddtlrdchora: TTimeField
      FieldName = 'rdchora'
    end
    object rcddtlrdctaxa: TFloatField
      FieldName = 'rdctaxa'
    end
    object rcddtlrdcvalordesconto: TFloatField
      FieldName = 'rdcvalordesconto'
    end
    object rcddtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
  end
  object adc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adccodigo,'
      '  adcidentificacao,'
      '  etdcodigo,'
      '  adcliquidaautomatico,'
      '  adcencerramento,'
      '  adcpropria,'
      '  bdccodigo,'
      '  ctacodigo,'
      '  adcchaveintegracao,'
      '  adcserviconome'
      'FROM adc WHERE adcencerramento is NULL;')
    Left = 712
    Top = 384
  end
  object ltr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltrchave,'
      '  rdcchave,'
      '  dtlchave,'
      '  rdcnrauto'
      'FROM ltr limit 0')
    Left = 632
    Top = 440
    object ltrltrchave: TIntegerField
      FieldName = 'ltrchave'
    end
    object ltrrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object ltrdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ltrrdcnrauto: TStringField
      FieldName = 'rdcnrauto'
      Size = 100
    end
  end
  object ACBrNFeNFCe: TACBrNFe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.WebServices.SSLType = LT_TLSv1_3
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFCEFR1
    Left = 648
    Top = 144
  end
  object nrt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  nrtcodigo,'
      '  crtcodigo,'
      '  nrtidentificacao,'
      '  nrtcfop_interno,'
      '  nrticm_interno,'
      '  nrtcfop_externo,'
      '  nrticm_externo,'
      '  nrtcombate_pobreza_aliquota,'
      '  nrtreducao_base_aliquota,'
      '  cstcodigo,'
      '  csicodigo,'
      '  cspcodigo,'
      '  pis_aliquota,'
      '  csFcodigo,'
      '  cofins_aliquota,'
      '  nrtclassificacao_is,'
      '  nrtclassificacao_cpresumido,'
      '  nrtibs_aliquota_estadual,'
      '  nrtibs_aliquota_municipal,'
      '  nrtdata_inicio,'
      '  nrtdata_fim,'
      '  nrtcbs_aliquota,'
      '  nrtreducao_cbs,'
      '  nrtreducao_ibs,'
      '  nrtcstibscbs'
      'FROM nrt where nrtcodigo=:nrtcodigo')
    Left = 320
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nrtcodigo'
        Value = nil
      end>
    object nrtnrtcodigo: TStringField
      FieldName = 'nrtcodigo'
      Required = True
      Size = 100
    end
    object nrtcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
      Required = True
    end
    object nrtnrtidentificacao: TStringField
      FieldName = 'nrtidentificacao'
      Required = True
      Size = 100
    end
    object nrtnrtcfop_interno: TStringField
      FieldName = 'nrtcfop_interno'
      Required = True
      Size = 5
    end
    object nrtnrticm_interno: TFloatField
      FieldName = 'nrticm_interno'
      Required = True
    end
    object nrtnrtcfop_externo: TStringField
      FieldName = 'nrtcfop_externo'
      Required = True
      Size = 5
    end
    object nrtnrticm_externo: TFloatField
      FieldName = 'nrticm_externo'
      Required = True
    end
    object nrtnrtcombate_pobreza_aliquota: TFloatField
      FieldName = 'nrtcombate_pobreza_aliquota'
      Required = True
    end
    object nrtnrtreducao_base_aliquota: TFloatField
      FieldName = 'nrtreducao_base_aliquota'
      Required = True
    end
    object nrtcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 5
    end
    object nrtcsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 5
    end
    object nrtcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 5
    end
    object nrtpis_aliquota: TFloatField
      FieldName = 'pis_aliquota'
      Required = True
    end
    object nrtcsFcodigo: TStringField
      FieldName = 'csFcodigo'
      Required = True
      Size = 5
    end
    object nrtcofins_aliquota: TFloatField
      FieldName = 'cofins_aliquota'
      Required = True
    end
    object nrtnrtclassificacao_is: TStringField
      FieldName = 'nrtclassificacao_is'
      Required = True
      Size = 50
    end
    object nrtnrtclassificacao_cpresumido: TStringField
      FieldName = 'nrtclassificacao_cpresumido'
      Required = True
      Size = 50
    end
    object nrtnrtibs_aliquota_estadual: TFloatField
      FieldName = 'nrtibs_aliquota_estadual'
      Required = True
    end
    object nrtnrtibs_aliquota_municipal: TFloatField
      FieldName = 'nrtibs_aliquota_municipal'
      Required = True
    end
    object nrtnrtdata_inicio: TDateField
      FieldName = 'nrtdata_inicio'
      Required = True
    end
    object nrtnrtdata_fim: TDateField
      FieldName = 'nrtdata_fim'
    end
    object nrtnrtcbs_aliquota: TFloatField
      FieldName = 'nrtcbs_aliquota'
    end
    object nrtnrtreducao_cbs: TFloatField
      FieldName = 'nrtreducao_cbs'
    end
    object nrtnrtreducao_ibs: TFloatField
      FieldName = 'nrtreducao_ibs'
    end
    object nrtnrtcstibscbs: TStringField
      FieldName = 'nrtcstibscbs'
      Size = 5
    end
  end
  object inr: TUniQuery
    SQL.Strings = (
      'select'
      '  inrregra,'
      '  itmchave,'
      '  cst_ibscbs,'
      '  class_trib_ibscbs,'
      '  base_calc_ibscbs,'
      '  perc_ibs_uf,'
      '  red_aliq_ibs_uf,'
      '  aliq_efetiva_ibs_uf,'
      '  valor_ibs_uf,'
      '  perc_ibs_mun,'
      '  red_aliq_ibs_mun,'
      '  aliq_efetiva_ibs_mun,'
      '  valor_ibs_mun,'
      '  total_ibs_ufmun,'
      '  perc_cbs,'
      '  red_aliq_cbs,'
      '  aliq_efetiva_cbs,'
      '  valor_cbs'
      'from inr where itmchave=:itmchave')
    Left = 96
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end>
  end
  object mnr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mnrchave,'
      '  meschave,'
      '  total_base_ibscbs,'
      '  total_ibs_uf,'
      '  total_ibs_mun,'
      '  total_ibs_ufmun,'
      '  credito_presumido_ibs,'
      '  total_cbs,'
      '  credito_presumido_cbs'
      'FROM mnr where meschave=:meschave')
    Left = 136
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
end
