inherited fAbertura: TfAbertura
  ActiveControl = ccohistorico
  Caption = 'Abertura de Caixa'
  ClientHeight = 197
  ClientWidth = 570
  ExplicitWidth = 586
  ExplicitHeight = 236
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 168
    Width = 570
    ExplicitTop = 168
    ExplicitWidth = 570
    inherited bconfirma: TBitBtn
      Left = 416
      ExplicitLeft = 416
    end
    inherited bcancela: TBitBtn
      Left = 491
      ExplicitLeft = 491
    end
    inherited bfechar: TBitBtn
      Left = 351
      ExplicitLeft = 351
    end
  end
  inherited paginas: TPageControl
    Width = 570
    Height = 168
    ExplicitWidth = 570
    ExplicitHeight = 168
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = ccochave
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 106
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico / Coment'#225'rio'
      end
      object Label7: TLabel
        Left = 8
        Top = 114
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Saldo na Abertura R$'
        FocusControl = ccovalor
      end
      object Label10: TLabel
        Left = 8
        Top = 33
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta do Terminal'
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 123
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador Respons'#225'vel'
        FocusControl = clbcodigo
      end
      object ccochave: TDBEdit
        Left = 139
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccochave'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object ccohistorico: TDBMemo
        Left = 139
        Top = 84
        Width = 406
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ccohistorico'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 3
      end
      object ccovalor: TDBEdit
        Left = 139
        Top = 111
        Width = 110
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccovalor'
        DataSource = DSRegistro
        TabOrder = 4
        OnEnter = ccovalorEnter
      end
      object ctacodigo: TDBEdit
        Left = 139
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = Dcco
        TabOrder = 1
      end
      object clbcodigo: TDBEdit
        Left = 139
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DataSource1
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ccochave, ctacodigo, toccodigo, cedcodigo, clbcodigo, tfi' +
        'codigo, moecodigo, ccoemissao, ccovencimento, cconumero,'
      
        ' ccohistorico, ccovalor, ccochaveorig, ccochavedest, ccoconcilia' +
        'do, ccoextenso,etdcodigo, ccodatamov,ccohoraregistro, ccodatareg' +
        'istro,'
      
        'ccofavorecido from cco where cco.ccochave=:ccochave and cco.ctac' +
        'odigo=:ctacodigo')
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object registroccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object registroctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object registroccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registroccovencimento: TDateField
      FieldName = 'ccovencimento'
      Required = True
    end
    object registrotoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object registromoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object registrocconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object registroccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object registroccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object registroccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object registroccoconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
    end
    object registroccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registroccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object registroccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object registroccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
    object registroccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 80
    end
  end
  inherited pfr: TUniQuery
    Left = 328
    Top = 36
  end
  inherited psf: TUniQuery
    Left = 376
    Top = 36
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object Dcco: TUniDataSource
    DataSet = cco
    Left = 264
    Top = 232
  end
  object cco: TUniQuery
    SQL.Strings = (
      
        'select ccochave, ctacodigo, toccodigo, cedcodigo, clbcodigo, tfi' +
        'codigo, moecodigo, ccoemissao, ccovencimento, cconumero,'
      
        ' ccohistorico, ccovalor, ccochaveorig, ccochavedest, ccoconcilia' +
        'do, ccoextenso,etdcodigo, ccodatamov,ccohoraregistro, ccodatareg' +
        'istro,'
      'ccofavorecido from cco where cco.ccochave=:ccochave')
    Constraints = <>
    Left = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object ccoccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoctacodigo: TIntegerField
      FieldName = 'ctacodigo'
      Required = True
    end
    object ccoctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
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
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
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
  end
  object che: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  che.chechave,'
      '  clt.ccochave'
      'FROM dtl'
      '  INNER JOIN clt'
      '    ON dtl.ltechave = clt.ltechave'
      '  INNER JOIN ltc'
      '    ON ltc.dtlchave = dtl.dtlchave'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      'where ccochave=:ccochave')
    Constraints = <>
    Left = 416
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checcochave: TIntegerField
      FieldName = 'ccochave'
    end
  end
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo, ctaidentificacao from cta ')
    Constraints = <>
    Left = 496
    Top = 28
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
  object Dcta: TUniDataSource
    DataSet = cta
    Left = 540
    Top = 32
  end
  object cxx: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccx.ccxchave,'
      '  ccx.clbcodigo,'
      '  ccx.ctacodigo,'
      '  ccx.cxxturno,'
      '  ccx.cxxdataber,'
      '  ccx.cxxhoraaber,'
      '  ccx.cxxsaldoaber,'
      '  ccx.cxxdatafecha,'
      '  ccx.cxxhorafecha,'
      '  ccx.cxxsaldofecha'
      'FROM ccx'
      'where ccx.clbcodigo=:clbcodigo '
      'AND  ccx.ctacodigo=:ctacodigo'
      'AND  ccx.cxxdatafecha is null')
    Constraints = <>
    Left = 248
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object cxxccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
    object cxxclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object cxxclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 50
      Lookup = True
    end
    object cxxctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object cxxctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
    object cxxcxxturno: TIntegerField
      FieldName = 'cxxturno'
    end
    object cxxcxxdataber: TDateField
      FieldName = 'cxxdataber'
    end
    object cxxcxxhoraaber: TTimeField
      FieldName = 'cxxhoraaber'
    end
    object cxxcxxsaldoaber: TFloatField
      FieldName = 'cxxsaldoaber'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cxxcxxdatafecha: TDateField
      FieldName = 'cxxdatafecha'
    end
    object cxxcxxhorafecha: TTimeField
      FieldName = 'cxxhorafecha'
    end
    object cxxcxxsaldofecha: TFloatField
      FieldName = 'cxxsaldofecha'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cxxcxxsangrias: TFloatField
      FieldName = 'cxxsangrias'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cxxcxxsuprimentos: TFloatField
      FieldName = 'cxxsuprimentos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Constraints = <>
    Left = 376
    Top = 204
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object clt: TUniQuery
    SQL.Strings = (
      
        'select  ccochave , ltechave from clt where ccochave=:ccochave  a' +
        'nd ltechave=:ltechave')
    Constraints = <>
    Left = 344
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object cltccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object cltltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object DataSource1: TUniDataSource
    DataSet = cxx
    Left = 404
    Top = 188
  end
end
