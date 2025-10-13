object fbol: Tfbol
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cobran'#231'a Banc'#225'ria'
  ClientHeight = 708
  ClientWidth = 1054
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1054
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'Gera'#231#227'o Boletos'
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
  object PnlAguarde: TPanel
    Left = 0
    Top = 26
    Width = 1054
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Aguarde . . . '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object plMostrar: TPanel
    Left = 0
    Top = 667
    Width = 1054
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 6
    TabOrder = 2
    object mostra: TProgressBar
      Left = 6
      Top = 6
      Width = 1042
      Height = 29
      Align = alClient
      Step = 1
      TabOrder = 0
    end
  end
  object plinfo: TPanel
    Left = 0
    Top = 81
    Width = 1054
    Height = 41
    Align = alTop
    TabOrder = 3
    object cfgdiretorioboletos: TDBText
      Left = 16
      Top = 16
      Width = 209
      Height = 17
      DataField = 'cfgdiretorioboletos'
      DataSource = Dcfg
    end
  end
  object ACBrBoleto: TACBrBoleto
    MAIL = ACBrMail
    Banco.Numero = 341
    Banco.TamanhoMaximoNossoNum = 8
    Banco.TipoCobranca = cobItau
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.Nome = 'P'#201'GASUS SISTEMAS'
    Cedente.CodigoCedente = '03453'
    Cedente.Agencia = '8509'
    Cedente.AgenciaDigito = '4'
    Cedente.Conta = '03453'
    Cedente.ContaDigito = '7'
    Cedente.Convenio = '8509'
    Cedente.CNPJCPF = '03.775.279/0001-73'
    Cedente.TipoInscricao = pJuridica
    Cedente.Logradouro = 'RUA DOS EX-COMBATENTES'
    Cedente.NumeroRes = '331'
    Cedente.Bairro = 'CENTRO'
    Cedente.Cidade = 'SORRISO'
    Cedente.UF = 'MT'
    Cedente.CEP = '78.890-000'
    Cedente.Telefone = '(66) 3544-2765'
    Cedente.IdentDistribuicao = tbBancoDistribui
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFR
    Left = 24
    Top = 32
  end
  object bol: TUniQuery
    SQL.Strings = (
      'SELECT b.bolchave'
      '     , b.gebcodigo'
      '     , b.sblcodigo'
      '     , b.rfichave'
      '     , b.bolseqnossonum'
      '     , b.bolnossonumero'
      '     , b.bolvalorabatimento'
      '     , b.bolvalormorajuros'
      '     , b.bolvalordesconto'
      '     , b.boldatamorajuros'
      '     , b.boldatadesconto'
      '     , b.boldataabatimento'
      '     , b.boldataprotesto'
      '     , b.bolpercentualmulta'
      '     , b.bolemissao'
      '     , b.boldataamulta'
      'FROM bol b'
      'WHERE b.bolchave = :bolchave')
    Left = 200
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bolchave'
        Value = nil
      end>
    object bolbolchave: TIntegerField
      FieldName = 'bolchave'
    end
    object bolgebcodigo: TIntegerField
      FieldName = 'gebcodigo'
    end
    object bolsblcodigo: TIntegerField
      FieldName = 'sblcodigo'
    end
    object bolrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object bolbolseqnossonum: TIntegerField
      FieldName = 'bolseqnossonum'
    end
    object bolbolnossonumero: TStringField
      FieldName = 'bolnossonumero'
      Size = 50
    end
    object bolbolvalorabatimento: TFloatField
      FieldName = 'bolvalorabatimento'
    end
    object bolbolvalormorajuros: TFloatField
      FieldName = 'bolvalormorajuros'
    end
    object bolbolvalordesconto: TFloatField
      FieldName = 'bolvalordesconto'
    end
    object bolboldatamorajuros: TDateField
      FieldName = 'boldatamorajuros'
    end
    object bolboldatadesconto: TDateField
      FieldName = 'boldatadesconto'
    end
    object bolboldataabatimento: TDateField
      FieldName = 'boldataabatimento'
    end
    object bolboldataprotesto: TDateField
      FieldName = 'boldataprotesto'
    end
    object bolbolpercentualmulta: TFloatField
      FieldName = 'bolpercentualmulta'
    end
    object bolbolemissao: TDateField
      FieldName = 'bolemissao'
    end
    object bolboldataamulta: TDateField
      FieldName = 'boldataamulta'
    end
  end
  object geb: TUniQuery
    SQL.Strings = (
      'SELECT g.gebcodigo'
      '     , g.carcodigo'
      'FROM geb g'
      'WHERE g.gebcodigo = :gebcodigo')
    Left = 48
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gebcodigo'
        Value = nil
      end>
    object gebgebcodigo: TIntegerField
      FieldName = 'gebcodigo'
    end
    object gebcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
  end
  object gbr: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT gbr.gbrcodigo'
      '     , gbr.gebcodigo'
      '     , gbr.rfichave'
      '     , bol.bolchave'
      '     , v_rfi.rfivencimento'
      '     , v_rfi.rfipercmulta'
      '     , v_rfi.rfimoradia'
      '     , v_rfi.titcodigo'
      '  FROM v_rfi'
      ' INNER JOIN gbr ON v_rfi.rfichave = gbr.rfichave'
      '  LEFT JOIN bol ON gbr.gebcodigo = bol.gebcodigo'
      '               AND gbr.rfichave = bol.rfichave'
      ' WHERE gbr.gebcodigo = :gebcodigo'
      'and v_rfi.flacodigo=:flacodigo')
    Left = 144
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gebcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object gbrgbrcodigo: TIntegerField
      FieldName = 'gbrcodigo'
    end
    object gbrgebcodigo: TIntegerField
      FieldName = 'gebcodigo'
    end
    object gbrrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object gbrbolchave: TIntegerField
      FieldName = 'bolchave'
    end
    object gbrrfipercmulta: TFloatField
      FieldName = 'rfipercmulta'
    end
    object gbrrfimoradia: TFloatField
      FieldName = 'rfimoradia'
    end
    object gbrtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object gbrrfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
  end
  object car: TUniQuery
    SQL.Strings = (
      'SELECT c.carcodigo'
      '     , c.bcocodigo'
      '     , c.carconvenio'
      '     , c.carnumerocar'
      '     , c.carobs1'
      '     , c.carobs2'
      '     , c.carobs3'
      '     , c.caraceite'
      '     , c.cardescontado'
      '     , c.carregistrado'
      '     , c.carnumarqrem'
      '     , c.carlayout'
      '     , c.carcontrato'
      '     , c.carretorno'
      '     , c.cardiasmulta'
      '     , c.carpercmulta'
      '     , c.cardiasdesc'
      '     , c.carpercdesc'
      '     , c.carpercmorames'
      '     , c.carserienossonum'
      '     , c.carmodalidade'
      '     , c.carcodigocedente'
      '     , c1.ctaagencia'
      '     , c1.ctaagenciadig'
      '     , c1.ctanumero'
      '     , c1.ctanumerodig'
      '     , c.cardefinicaoindividual'
      '     , c.cardiasparaprotesto'
      '     , c.meccodigo'
      'FROM car c'
      '  JOIN cta c1'
      '    ON c.ctacodigo = c1.ctacodigo'
      'WHERE c.carcodigo = :carcodigo')
    Left = 96
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'carcodigo'
        Value = nil
      end>
    object carcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object carbcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 5
    end
    object carcarconvenio: TStringField
      FieldName = 'carconvenio'
      Size = 30
    end
    object carcarnumerocar: TStringField
      FieldName = 'carnumerocar'
    end
    object carcarobs1: TStringField
      FieldName = 'carobs1'
      Size = 50
    end
    object carcarobs2: TStringField
      FieldName = 'carobs2'
      Size = 50
    end
    object carcarobs3: TStringField
      FieldName = 'carobs3'
      Size = 50
    end
    object carcaraceite: TIntegerField
      FieldName = 'caraceite'
    end
    object carcardescontado: TIntegerField
      FieldName = 'cardescontado'
    end
    object carcarregistrado: TIntegerField
      FieldName = 'carregistrado'
    end
    object carcarcontrato: TStringField
      FieldName = 'carcontrato'
    end
    object carcardiasmulta: TIntegerField
      FieldName = 'cardiasmulta'
    end
    object carcarpercmulta: TFloatField
      FieldName = 'carpercmulta'
    end
    object carcardiasdesc: TIntegerField
      FieldName = 'cardiasdesc'
    end
    object carcarpercdesc: TFloatField
      FieldName = 'carpercdesc'
    end
    object carcarpercmorames: TFloatField
      FieldName = 'carpercmorames'
    end
    object carcarserienossonum: TIntegerField
      FieldName = 'carserienossonum'
    end
    object carcarmodalidade: TStringField
      FieldName = 'carmodalidade'
      Size = 10
    end
    object carcarcodigocedente: TStringField
      FieldName = 'carcodigocedente'
    end
    object carctaagencia: TStringField
      FieldName = 'ctaagencia'
      Size = 10
    end
    object carctaagenciadig: TStringField
      FieldName = 'ctaagenciadig'
      Size = 5
    end
    object carctanumero: TStringField
      FieldName = 'ctanumero'
      Size = 15
    end
    object carctanumerodig: TStringField
      FieldName = 'ctanumerodig'
      Size = 5
    end
    object carcardefinicaoindividual: TIntegerField
      FieldName = 'cardefinicaoindividual'
    end
    object carcardiasparaprotesto: TIntegerField
      FieldName = 'cardiasparaprotesto'
    end
    object carmeccodigo: TStringField
      FieldName = 'meccodigo'
      Size = 5
    end
    object carcarlayout: TIntegerField
      FieldName = 'carlayout'
    end
  end
  object qConsulta: TUniQuery
    Left = 440
    Top = 32
  end
  object AtualCarRfi: TUniQuery
    SQL.Strings = (
      'UPDATE rfi'
      'INNER JOIN gbr'
      '  ON rfi.rfichave = gbr.rfichave'
      'INNER JOIN geb'
      '  ON gbr.gebcodigo = geb.gebcodigo'
      'INNER JOIN car'
      '  ON geb.carcodigo = car.carcodigo'
      'SET rfi.carcodigo = car.carcodigo'
      '  , rfi.bcocodigo = car.bcocodigo'
      '  , rfi.tficodigo = 2 -- Boleto'
      'WHERE gbr.gebcodigo = :gebcodigo;')
    Left = 288
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gebcodigo'
        Value = nil
      end>
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
      '     -- Configura'#231#245'es'
      '      cfgmbol.cfgdiretorioboletos,'
      '      cfgmbol.cfglayout,'
      ''
      ''
      '  /*Sa'#237'das*/'
      '  cfgmsai.cfgtoecuffora,'
      '  cfgmsai.cfgtoecufinte,'
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
      '  cfgmnfe.cfgsenhacertificado,'
      '  cfgmnfe.cfgmodonfe,'
      ''
      '  /*Email*/'
      '  cfgmnfe.cfgemailnfe,'
      '  cfgmnfe.cfgemailservidornfe,'
      '  cfgmnfe.cfgemailsenhanfe,'
      '  cfgmnfe.cfgmailportnfe,'
      '  cfgmnfe.cfgemailusatls,'
      ''
      '  /*SPED*/'
      '  cfgmcfg.crtcodigo,'
      '  cfgmspd.cfgcstterceiros,'
      ''
      '  /*Dados da Empresa*/'
      '  etd.etdcodigo,'
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
      '  edr.edrcxpostal,'
      '  edr.edrcomple,'
      '  cdd.cddnome,'
      '  ufs.ufssigla,'
      ''
      '  etf.etftelefone,'
      '  '
      '  /*Box-e - Dom'#237'nio Sistemas*/'
      '  ctd.ctdboxedominio,'
      ' cfgmensagempdv,'
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
      '  cfg.cfgusanfc,'
      ''
      '  CURRENT_TIMESTAMP() AS DataAtual'
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
      '     cfgmbol'
      'WHERE cfg.cfgcodigo = ctd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND ufs.ufscodigo = edr.ufscodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND etd.etdcodigo = etf.etdcodigo'
      'AND etf.ttfcodigo = 1'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND  cfgmcfg.cfgcodigo = cfgmbol.cfgcodigo'
      'AND cfg.flacodigo = :flacodigo')
    Left = 336
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etdcodigo'
    end
    object cfgetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object cfgetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 100
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object cfgedrrua: TStringField
      FieldName = 'edrrua'
      Size = 50
    end
    object cfgedrnumero: TStringField
      FieldName = 'edrnumero'
      Size = 10
    end
    object cfgedrcxpostal: TStringField
      FieldName = 'edrcxpostal'
      Size = 10
    end
    object cfgedrcomple: TStringField
      FieldName = 'edrcomple'
      Size = 60
    end
    object cfgedrbairro: TStringField
      FieldName = 'edrbairro'
      Size = 60
    end
    object cfgedrcep: TStringField
      FieldName = 'edrcep'
      Size = 10
    end
    object cfgetftelefone: TStringField
      FieldName = 'etftelefone'
    end
    object cfgcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
    object cfgufssigla: TStringField
      FieldName = 'ufssigla'
      Size = 3
    end
    object cfgcfgdiretorioboletos: TStringField
      FieldName = 'cfgdiretorioboletos'
      Size = 100
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
      Size = 5
    end
    object cfgcfgemailusatls: TIntegerField
      FieldName = 'cfgemailusatls'
    end
    object cfgDataAtual: TDateTimeField
      FieldName = 'DataAtual'
    end
    object cfgcfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cfgcodigo'
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
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
    object cfgcfgviasnfe: TIntegerField
      FieldName = 'cfgviasnfe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgnumeronfe: TIntegerField
      FieldName = 'cfgnumeronfe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      ReadOnly = True
      Size = 5
    end
    object cfgcfgnumeronfce: TIntegerField
      FieldName = 'cfgnumeronfce'
      ReadOnly = True
    end
    object cfgcfgserienfce: TStringField
      FieldName = 'cfgserienfce'
      ReadOnly = True
      Size = 5
    end
    object cfgcfgobs1: TIntegerField
      FieldName = 'cfgobs1'
      ReadOnly = True
      Required = True
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
    object cfgcfgdescrinfe: TIntegerField
      FieldName = 'cfgdescrinfe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      ReadOnly = True
      Size = 50
    end
    object cfgcfgsenhacertificado: TStringField
      FieldName = 'cfgsenhacertificado'
      ReadOnly = True
      Size = 50
    end
    object cfgcfgmodonfe: TIntegerField
      FieldName = 'cfgmodonfe'
      ReadOnly = True
      Required = True
    end
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
      ReadOnly = True
      Required = True
    end
    object cfgcfgcstterceiros: TStringField
      FieldName = 'cfgcstterceiros'
      ReadOnly = True
      Size = 3
    end
    object cfgufscodigo: TStringField
      FieldName = 'ufscodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cfgcddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cfgedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object cfgctdboxedominio: TStringField
      FieldName = 'ctdboxedominio'
      ReadOnly = True
      Size = 200
    end
    object cfgcfgmensagempdv: TStringField
      FieldName = 'cfgmensagempdv'
      ReadOnly = True
      Size = 50
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
      ReadOnly = True
      Size = 100
    end
    object cfgcfgusanfc: TIntegerField
      FieldName = 'cfgusanfc'
      ReadOnly = True
      Required = True
    end
    object cfgcfglayout: TIntegerField
      FieldName = 'cfglayout'
    end
  end
  object BolRfi: TUniQuery
    SQL.Strings = (
      'SELECT vr.rfichave'
      '     , etd.etdcodigo'
      '     , etd.etdidentificacao'
      '     , etd.tpecodigo'
      '     , etd.etddoc1'
      '     , edr.edrrua'
      '     , edr.edrnumero'
      '     , edr.edrbairro'
      '     , cdd.cddnome'
      '     , ufs.ufssigla'
      '     , edr.edrcep'
      '     , vr.rfinumero'
      '     , vr.rfiemissao'
      '     , vr.rfivencimento'
      '     , vr.rfivalor'
      '     , v_rfi.rfisaldogeral'
      
        '     , IF((SELECT r.rfihistorico FROM rfi r WHERE r.rfichave=vr.' +
        'rfichave)='#39#39', (SELECT t.tithistorico from tit t WHERE t.titcodig' +
        'o=vr.titcodigo),(SELECT r.rfihistorico FROM rfi r WHERE r.rficha' +
        've=vr.rfichave)) rfihistorico'
      '     , bol.bolseqnossonum'
      '     , bol.bolpercentualmulta'
      '     , bol.bolvalormorajuros'
      '     , bol.boldatamorajuros'
      '     , bol.bolvalordesconto'
      '     , bol.boldatadesconto'
      '     , bol.bolvalorabatimento'
      '     , bol.boldataabatimento'
      '     , bol.boldataprotesto'
      
        '     , IF(mes.meschave IS NOT NULL, CONCAT('#39'Venda: '#39' , mes.mesch' +
        'ave, IF(mes.tdfcodigo = '#39'55'#39', CONCAT('#39' - NF-e: '#39', mes.mesnumero)' +
        ', IF(mes.tdfcodigo = '#39'65'#39',CONCAT('#39' - NFC-e: '#39', mes.mesnumero), '#39 +
        #39'))), NULL) AS bolvenda'
      '     , bol.bolemissao'
      '  FROM rfi vr'
      
        ' INNER JOIN etd ON vr.etdcodigo = etd.etdcodigo and vr.flacodigo' +
        '=:flacodigo'
      
        ' /* INNER JOIN edr ON etd.etdcodigo = edr.etdcodigo AND edr.tedc' +
        'odigo = 1 */'
      
        ' INNER JOIN edr ON etd.etdcodigo = edr.etdcodigo AND IF(vr.edrco' +
        'digo<>0,vr.edrcodigo=edr.edrcodigo , edr.tedcodigo = 1)'
      ' INNER JOIN cdd ON edr.cddcodigo = cdd.cddcodigo'
      ' INNER JOIN ufs ON cdd.ufscodigo = ufs.ufscodigo'
      ' INNER JOIN bol ON vr.rfichave = bol.rfichave'
      
        ' INNER JOIN v_rfi ON v_rfi.rfichave = bol.rfichave and v_rfi.fla' +
        'codigo=:flacodigo'
      '  LEFT JOIN rfm ON vr.rfichave = rfm.rfichave'
      '  LEFT JOIN mes ON rfm.meschave = mes.meschave'
      ' WHERE bol.bolchave = :bolchave'
      'and vr.flacodigo=:flacodigo'
      '')
    Left = 384
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'bolchave'
        Value = nil
      end>
    object BolRfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object BolRfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object BolRfietdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object BolRfitpecodigo: TIntegerField
      FieldName = 'tpecodigo'
    end
    object BolRfietddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object BolRfiedrrua: TStringField
      FieldName = 'edrrua'
      Size = 50
    end
    object BolRfiedrnumero: TStringField
      FieldName = 'edrnumero'
      Size = 10
    end
    object BolRfiedrbairro: TStringField
      FieldName = 'edrbairro'
      Size = 60
    end
    object BolRficddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
    object BolRfiufssigla: TStringField
      FieldName = 'ufssigla'
      Size = 3
    end
    object BolRfiedrcep: TStringField
      FieldName = 'edrcep'
      Size = 10
    end
    object BolRfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object BolRfirfiemissao: TDateField
      FieldName = 'rfiemissao'
    end
    object BolRfirfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
    object BolRfirfivalor: TFloatField
      FieldName = 'rfivalor'
    end
    object BolRfibolseqnossonum: TIntegerField
      FieldName = 'bolseqnossonum'
    end
    object BolRfibolpercentualmulta: TFloatField
      FieldName = 'bolpercentualmulta'
    end
    object BolRfibolvalormorajuros: TFloatField
      FieldName = 'bolvalormorajuros'
    end
    object BolRfiboldatamorajuros: TDateField
      FieldName = 'boldatamorajuros'
    end
    object BolRfibolvalordesconto: TFloatField
      FieldName = 'bolvalordesconto'
    end
    object BolRfiboldatadesconto: TDateField
      FieldName = 'boldatadesconto'
    end
    object BolRfibolvalorabatimento: TFloatField
      FieldName = 'bolvalorabatimento'
    end
    object BolRfiboldataabatimento: TDateField
      FieldName = 'boldataabatimento'
    end
    object BolRfiboldataprotesto: TDateField
      FieldName = 'boldataprotesto'
    end
    object BolRfibolvenda: TStringField
      FieldName = 'bolvenda'
      Size = 25
    end
    object BolRfibolemissao: TDateField
      FieldName = 'bolemissao'
    end
    object BolRfirfisaldogeral: TFloatField
      FieldName = 'rfisaldogeral'
    end
    object BolRfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
  end
  object qNossoNum: TUniQuery
    SQL.Strings = (
      'CALL BoletosNossoNumero(:pBcoCodigo, :pQuantidade);')
    Left = 200
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pBcoCodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pQuantidade'
        Value = nil
      end>
  end
  object brm: TUniQuery
    SQL.Strings = (
      'SELECT brm.bolchave'
      'FROM brm'
      'WHERE brm.rmbcodigo = :rmbcodigo')
    Left = 456
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmbcodigo'
        Value = nil
      end>
    object brmbolchave: TIntegerField
      FieldName = 'bolchave'
    end
  end
  object qNumRemessa: TUniQuery
    SQL.Strings = (
      'call BoletosNumeroRemessa(:pBcoCodigo);')
    Left = 472
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pBcoCodigo'
        Value = nil
      end>
  end
  object rmb: TUniQuery
    SQL.Strings = (
      'SELECT rmb.rmbcodigo'
      '     , rmb.carcodigo'
      '     , rmb.rmbnumero'
      'FROM rmb'
      'WHERE rmb.rmbcodigo = :rmbcodigo;')
    Left = 496
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmbcodigo'
        Value = nil
      end>
    object rmbrmbcodigo: TIntegerField
      FieldName = 'rmbcodigo'
    end
    object rmbcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object rmbrmbnumero: TIntegerField
      FieldName = 'rmbnumero'
    end
  end
  object TimerProcessa: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerProcessaTimer
    Left = 128
    Top = 232
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Priority = MP_high
    IsHTML = True
    Attempts = 1
    DefaultCharset = UTF_8
    IDECharset = CP1252
    OnAfterMailProcess = ACBrMailAfterMailProcess
    OnMailException = ACBrMailMailException
    Left = 56
    Top = 266
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT '
      '       etd.etdcodigo'
      '     , etd.etdidentificacao'
      '     , TRIM(ete.eteemail) AS eteemail'
      '  FROM etd'
      ' INNER JOIN ete ON etd.etdcodigo = ete.etdcodigo'
      ' WHERE LOCATE('#39' '#39', TRIM(ete.eteemail)) = 0'
      '   AND LOCATE('#39'@'#39', TRIM(ete.eteemail)) > 0'
      '   AND etd.etdcodigo = :etdcodigo')
    Left = 336
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object etdeteemail: TStringField
      FieldName = 'eteemail'
      Size = 100
    end
  end
  object leb: TUniQuery
    SQL.Strings = (
      'SELECT leb.lebcodigo'
      '     , leb.gebcodigo'
      '     , leb.titcodigo'
      '     , leb.clbcodigo'
      '     , leb.lebstatus'
      '     , leb.lebmensagem'
      '  FROM leb'
      ' LIMIT 0;')
    Left = 376
    Top = 184
    object leblebcodigo: TIntegerField
      FieldName = 'lebcodigo'
    end
    object lebgebcodigo: TIntegerField
      FieldName = 'gebcodigo'
    end
    object lebtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object lebclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object leblebstatus: TStringField
      FieldName = 'lebstatus'
      Size = 1
    end
    object leblebmensagem: TStringField
      FieldName = 'lebmensagem'
      Size = 255
    end
  end
  object tteb: TUniQuery
    SQL.Strings = (
      '-- Carrega a tabela tempor'#225'ria criada na unit ufbolEmail;'
      'SELECT tteb.titcodigo'
      '     , tteb.etdcodigo'
      '  FROM tt_titulos_email_boleto tteb;')
    CachedUpdates = True
    Left = 300
    Top = 184
    object ttebtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object ttebetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object consulta: TUniQuery
    Left = 256
    Top = 184
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 168
  end
  object SMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 16
    Top = 72
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
    Left = 16
    Top = 128
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
    Left = 16
    Top = 184
  end
  object qEteMes: TUniQuery
    SQL.Strings = (
      'SELECT ete.etecodigo'
      '     , ete.eteemail'
      '     , etd.etdidentificacao'
      'FROM ete'
      '  JOIN etd'
      '    ON ete.etdcodigo = etd.etdcodigo'
      '  JOIN mes'
      '    ON etd.etdcodigo = mes.etdcodigo'
      'WHERE eteenvianfe = '#39'1'#39
      'AND meschave = :meschave'
      'AND flacodigo = :flacodigo')
    Left = 333
    Top = 256
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
    object qEteMesetecodigo: TIntegerField
      FieldName = 'etecodigo'
    end
    object qEteMeseteemail: TStringField
      FieldName = 'eteemail'
      Size = 100
    end
    object qEteMesetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
  end
  object Dcfg: TDataSource
    DataSet = cfg
    Left = 568
    Top = 328
  end
  object ACBrBoletoFCFR: TACBrBoletoFCFR
    ModoThread = False
    IncorporarBackgroundPdf = False
    IncorporarFontesPdf = False
    Left = 416
    Top = 312
  end
  object eca: TUniQuery
    KeyFields = 'etdcodigo'
    SQL.Strings = (
      'SELECT'
      '  ecachave,'
      '  etdcodigo,'
      '  meccodigo,'
      '  ecadiasparaprotesto,'
      '  ecadiasjuros,'
      '  ecadiasmulta,'
      '  ecapercmulta,'
      '  ecadiasdesc,'
      '  ecapercdesc,'
      '  ecapercmorames'
      'FROM eca where etdcodigo=:etdcodigo')
    MasterFields = 'etdcodigo'
    Left = 204
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object ecaecachave: TIntegerField
      FieldName = 'ecachave'
    end
    object ecaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object ecameccodigo: TStringField
      FieldName = 'meccodigo'
      Required = True
      Size = 5
    end
    object ecaecadiasparaprotesto: TIntegerField
      FieldName = 'ecadiasparaprotesto'
      Required = True
    end
    object ecaecadiasmulta: TIntegerField
      FieldName = 'ecadiasmulta'
      Required = True
    end
    object ecaecapercmulta: TFloatField
      FieldName = 'ecapercmulta'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object ecaecadiasdesc: TIntegerField
      FieldName = 'ecadiasdesc'
      Required = True
    end
    object ecaecapercdesc: TFloatField
      FieldName = 'ecapercdesc'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object ecaecapercmorames: TFloatField
      FieldName = 'ecapercmorames'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object ecaecadiasjuros: TIntegerField
      FieldName = 'ecadiasjuros'
      Required = True
    end
  end
  object bolnumero: TUniQuery
    Left = 296
    Top = 400
  end
  object regeca: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ecachave,'
      '  etdcodigo,'
      '  meccodigo,'
      '  ecadiasjuros,'
      '  ecadiasparaprotesto,'
      '  ecadiasmulta,'
      '  ecapercmulta,'
      '  ecadiasdesc,'
      '  ecapercdesc,'
      '  ecapercmorames'
      'FROM eca limit 0')
    Left = 144
    Top = 376
    object regecaecachave: TIntegerField
      FieldName = 'ecachave'
    end
    object regecaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object regecameccodigo: TStringField
      FieldName = 'meccodigo'
      Required = True
      Size = 5
    end
    object regecaecadiasjuros: TIntegerField
      FieldName = 'ecadiasjuros'
    end
    object regecaecadiasparaprotesto: TIntegerField
      FieldName = 'ecadiasparaprotesto'
      Required = True
    end
    object regecaecadiasmulta: TIntegerField
      FieldName = 'ecadiasmulta'
      Required = True
    end
    object regecaecapercmulta: TFloatField
      FieldName = 'ecapercmulta'
      Required = True
    end
    object regecaecadiasdesc: TIntegerField
      FieldName = 'ecadiasdesc'
      Required = True
    end
    object regecaecapercdesc: TFloatField
      FieldName = 'ecapercdesc'
      Required = True
    end
    object regecaecapercmorames: TFloatField
      FieldName = 'ecapercmorames'
      Required = True
    end
  end
  object mfi: TUniQuery
    Left = 400
    Top = 456
  end
end
