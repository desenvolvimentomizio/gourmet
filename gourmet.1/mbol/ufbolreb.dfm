inherited fbolreb: Tfbolreb
  Caption = 'Processamento de Rotorno de Boletos'
  ClientHeight = 494
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 465
    ExplicitTop = 465
    inherited bconfirma: TBitBtn
      Caption = 'Processar'
    end
    inherited bfechar: TBitBtn
      Visible = True
    end
  end
  inherited paginas: TPageControl
    Height = 465
    ExplicitHeight = 465
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 437
      object Label1: TLabel
        Left = 24
        Top = 239
        Width = 144
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Messagens do Processamento'
      end
      object erros: TMemo
        Left = 200
        Top = 236
        Width = 537
        Height = 181
        CustomHint = BalloonHint
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object DBGridcar: TDBGrid
        Left = 200
        Top = 24
        Width = 537
        Height = 120
        CustomHint = BalloonHint
        DataSource = Dcar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'carcodigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bcocodigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'caridentificacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'carlayout'
            Visible = True
          end>
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgcodigo, phgbaixa from cfgmbol where cfgcodigo=:cfgcodi' +
        'go')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgphgbaixa: TIntegerField
      FieldName = 'phgbaixa'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rrbchave,'
      '  clbcodigo,'
      '  rrbregistro'
      'FROM rrb where rrbchave=:rrbchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rrbchave'
        Value = nil
      end>
    object registrorrbchave: TIntegerField
      FieldName = 'rrbchave'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrorrbregistro: TDateTimeField
      FieldName = 'rrbregistro'
    end
  end
  inherited dcp: TUniQuery
    Left = 136
    Top = 212
  end
  inherited dtb: TUniQuery
    Left = 76
    Top = 212
  end
  inherited coa: TUniQuery
    Top = 212
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object car: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  carcodigo,'
      '  caridentificacao,'
      '  bcocodigo,'
      '  carlayout,'
      '  ctacodigo'
      '  '
      'FROM car where cargeraboleto=1')
    Constraints = <>
    Left = 68
    Top = 104
    object carcarcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'carcodigo'
    end
    object carcaridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'caridentificacao'
      Size = 50
    end
    object carbcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Size = 5
    end
    object carcarlayout: TIntegerField
      DisplayLabel = 'Layout'
      FieldName = 'carlayout'
    end
    object carctacodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'ctacodigo'
    end
  end
  object rfi: TUniQuery
    SQL.Strings = (
      
        'select rfichave, srfcodigo, rfidtultbaixa,etdcodigo from rfi whe' +
        're rfichave=:rfichave')
    Constraints = <>
    Left = 116
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfirfidtultbaixa: TDateField
      FieldName = 'rfidtultbaixa'
    end
    object rfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object rfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
  end
  object cbl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cblchave,'
      '  oblchave,'
      '  ccochave'
      'FROM cbl limit 0')
    Constraints = <>
    Left = 20
    Top = 104
    object cblcblchave: TIntegerField
      FieldName = 'cblchave'
    end
    object cbloblchave: TIntegerField
      FieldName = 'oblchave'
    end
    object cblccochave: TIntegerField
      FieldName = 'ccochave'
    end
  end
  object omo: TUniQuery
    SQL.Strings = (
      'select omochave,'
      '  oblchave,'
      '  mobcodigo from omo')
    Constraints = <>
    Left = 84
    Top = 392
    object omoomochave: TIntegerField
      FieldName = 'omochave'
    end
    object omooblchave: TIntegerField
      FieldName = 'oblchave'
    end
    object omomobcodigo: TIntegerField
      FieldName = 'mobcodigo'
    end
  end
  object obl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  oblchave,'
      '  bolchave,'
      '  tobcodigo,'
      '  obldata,'
      '  oblvalor,'
      '  oblnumret, '
      '  oblnossonume'
      ''
      'FROM obl where bolchave=:bolchave')
    Constraints = <>
    Left = 44
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bolchave'
        Value = nil
      end>
    object obloblchave: TIntegerField
      FieldName = 'oblchave'
    end
    object oblbolchave: TIntegerField
      FieldName = 'bolchave'
    end
    object obltobcodigo: TIntegerField
      FieldName = 'tobcodigo'
    end
    object oblobldata: TDateField
      FieldName = 'obldata'
    end
    object obloblvalor: TFloatField
      FieldName = 'oblvalor'
    end
    object obloblnumret: TStringField
      FieldName = 'oblnumret'
      Size = 500
    end
    object obloblnossonume: TStringField
      FieldName = 'oblnossonume'
      Size = 500
    end
  end
  object oto: TUniQuery
    SQL.Strings = (
      'select '
      '  otochave,'
      '  oblchave,'
      '  tobcodigo'
      'from oto limit 0')
    Constraints = <>
    Left = 12
    Top = 392
    object otootochave: TIntegerField
      FieldName = 'otochave'
    end
    object otooblchave: TIntegerField
      FieldName = 'oblchave'
    end
    object ototobcodigo: TIntegerField
      FieldName = 'tobcodigo'
    end
  end
  object mfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfichave,'
      '  rfichave,'
      '  tmfcodigo,'
      '  moecodigo,'
      '  mfivalor,'
      '  mfidata,'
      '  mfihistorico,'
      '  mfivalorori,'
      '  mfiparcela,'
      '  flacodigo,'
      '  mfisituacao'
      'FROM mfi')
    Constraints = <>
    Left = 100
    Top = 48
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 50
    end
    object mfimfivalorori: TFloatField
      FieldName = 'mfivalorori'
    end
    object mfimfiparcela: TIntegerField
      FieldName = 'mfiparcela'
    end
    object mfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mfimfisituacao: TIntegerField
      FieldName = 'mfisituacao'
    end
  end
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccochave,'
      '  ctacodigo,'
      '  toccodigo,'
      '  cedcodigo,'
      '  clbcodigo,'
      '  tficodigo,'
      '  moecodigo,'
      '  ccoemissao,'
      '  ccovencimento,'
      '  cconumero,'
      '  ccohistorico,'
      '  ccovalor,'
      '  ccochaveorig,'
      '  ccochavedest,'
      '  ccoconciliado,'
      '  ccoextenso,'
      '  etdcodigo,'
      '  ccofavorecido,'
      '  ccodatamov,'
      '  ccodataregistro,'
      '  ccohoraregistro,'
      '  phgcodigo,'
      '  flacodigo,'
      '  ccoregistro'
      'FROM cco limit 0')
    Constraints = <>
    Left = 140
    Top = 48
    object ccoccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object ccoccovencimento: TDateField
      FieldName = 'ccovencimento'
      Required = True
    end
    object ccotoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object ccocedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
      Required = True
    end
    object ccoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ccotficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object ccomoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object ccocconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccoccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object ccoccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object ccoccoconciliado: TIntegerField
      DisplayLabel = 'Conciliado'
      FieldName = 'ccoconciliado'
      Required = True
    end
    object ccoccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object ccoetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object ccoccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object ccoccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object ccoccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
    object ccoccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 80
    end
    object ccophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico Base'
      FieldName = 'phgcodigo'
      Required = True
    end
    object ccoflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
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
      '  flacodigo'
      'FROM dtl limit 0')
    Constraints = <>
    Left = 60
    Top = 48
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtlcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object dtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object dtldtlvalorinfo: TFloatField
      FieldName = 'dtlvalorinfo'
    end
  end
  object lte: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltechave,'
      '  tfdcodigo,'
      '  ltedata,'
      '  lteprincipal,'
      '  ltejuros,'
      '  ltedesconto,'
      '  ltetotal,'
      '  lteextenso,'
      '  ltehistorico,'
      '  ltemulta,'
      '  ltesituacao,'
      '  flacodigo,'
      '  clbcodigo,'
      '  ctacodigo,'
      '  lteregistro,'
      '  ltetroco'
      'FROM lte limit 0')
    Constraints = <>
    Left = 20
    Top = 48
    object lteltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object ltetfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object lteltedata: TDateField
      FieldName = 'ltedata'
    end
    object ltelteprincipal: TFloatField
      FieldName = 'lteprincipal'
    end
    object lteltejuros: TFloatField
      FieldName = 'ltejuros'
    end
    object lteltedesconto: TFloatField
      FieldName = 'ltedesconto'
    end
    object lteltetotal: TFloatField
      FieldName = 'ltetotal'
    end
    object ltelteextenso: TStringField
      FieldName = 'lteextenso'
      Size = 2500
    end
    object lteltehistorico: TStringField
      FieldName = 'ltehistorico'
      Size = 250
    end
    object lteltemulta: TFloatField
      FieldName = 'ltemulta'
    end
    object lteltesituacao: TIntegerField
      FieldName = 'ltesituacao'
    end
    object lteflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object lteclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ltectacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ltelteregistro: TDateTimeField
      FieldName = 'lteregistro'
    end
    object lteltetroco: TFloatField
      FieldName = 'ltetroco'
    end
  end
  object clt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cltchave,'
      '  ccochave,'
      '  ltechave'
      'FROM clt limit 0')
    Constraints = <>
    Left = 244
    Top = 40
    object cltcltchave: TIntegerField
      FieldName = 'cltchave'
    end
    object cltccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object cltltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object mlt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mltchave,'
      '  mfichave,'
      '  ltechave,'
      '  flacodigo'
      'FROM mlt')
    Constraints = <>
    Left = 200
    Top = 88
    object mltmltchave: TIntegerField
      FieldName = 'mltchave'
    end
    object mltmfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mltltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object mltflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object Dcar: TDataSource
    DataSet = car
    Left = 340
    Top = 184
  end
  object rfibol: TUniQuery
    Constraints = <>
    Left = 244
    Top = 240
  end
  object rmg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmgchave,'
      '  mlgchave,'
      '  phgcodigo,'
      '  rmgdata,'
      '  rmgvalor,'
      '  rmgcomplemento,'
      '  pcgcodigo,'
      '  pcgcredito,'
      '  rmgcompetencia,'
      '  rmginclusao,'
      '  rmgtipo,'
      '  cedcodigo'
      'FROM rmg limit 0')
    Constraints = <>
    Left = 148
    Top = 392
    object rmgrmgchave: TIntegerField
      FieldName = 'rmgchave'
    end
    object rmgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object rmgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object rmgrmgdata: TDateField
      FieldName = 'rmgdata'
    end
    object rmgrmgvalor: TFloatField
      FieldName = 'rmgvalor'
    end
    object rmgrmgcomplemento: TStringField
      FieldName = 'rmgcomplemento'
      Size = 50
    end
    object rmgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object rmgpcgcredito: TIntegerField
      FieldName = 'pcgcredito'
    end
    object rmgrmgcompetencia: TDateField
      FieldName = 'rmgcompetencia'
    end
    object rmgrmginclusao: TDateTimeField
      FieldName = 'rmginclusao'
    end
    object rmgrmgtipo: TIntegerField
      FieldName = 'rmgtipo'
    end
    object rmgcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
  end
  object mlg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mlgchave,'
      '  clbcodigo,'
      '  mlgsituacao,'
      '  flacodigo,'
      '  mlgdata,'
      '  ltechave'
      'FROM mlg limit 0')
    Constraints = <>
    Left = 148
    Top = 344
    object mlgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object mlgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mlgmlgsituacao: TIntegerField
      FieldName = 'mlgsituacao'
    end
    object mlgflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mlgmlgdata: TDateField
      FieldName = 'mlgdata'
    end
    object mlgltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
end
