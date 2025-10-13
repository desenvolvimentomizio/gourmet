inherited fpmo: Tfpmo
  ActiveControl = pmoidentificacao
  Caption = 'Promo'#231#227'o'
  ClientHeight = 452
  ClientWidth = 611
  ExplicitWidth = 627
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 423
    Width = 611
    ExplicitTop = 197
    ExplicitWidth = 611
    inherited bconfirma: TBitBtn
      Left = 457
      ExplicitLeft = 457
    end
    inherited bcancela: TBitBtn
      Left = 532
      ExplicitLeft = 532
    end
    inherited bfechar: TBitBtn
      Left = 392
      ExplicitLeft = 392
    end
  end
  inherited paginas: TPageControl
    Width = 611
    Height = 423
    ExplicitWidth = 611
    ExplicitHeight = 197
    inherited Principal: TTabSheet
      ExplicitWidth = 603
      ExplicitHeight = 395
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = pmocodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = pmoidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 114
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de Desconto'
        FocusControl = pmopercentualavista
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Inicio'
        FocusControl = pmodatainicial
      end
      object Label6: TLabel
        Left = 8
        Top = 114
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Final'
        FocusControl = pmodatafinal
      end
      object Label4: TLabel
        Left = 176
        Top = 184
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segunda'
        FocusControl = pmoseg
      end
      object Label7: TLabel
        Left = 420
        Top = 152
        Width = 60
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hor'#225'rio Final'
        FocusControl = pmosegfinal
      end
      object Label8: TLabel
        Left = 340
        Top = 152
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hor'#225'rio Inicial'
        FocusControl = pmosegfinal
      end
      object Label9: TLabel
        Left = 176
        Top = 152
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dias da semana'
        FocusControl = pmosegfinal
      end
      object Label10: TLabel
        Left = 492
        Top = 152
        Width = 90
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sem taxa acima de'
        FocusControl = pmosegvalsemtaxa
      end
      object Label11: TLabel
        Left = 176
        Top = 211
        Width = 27
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ter'#231'a'
        FocusControl = pmoter
      end
      object Label12: TLabel
        Left = 176
        Top = 238
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quarta'
        FocusControl = pmoqua
      end
      object Label13: TLabel
        Left = 176
        Top = 265
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quinta'
        FocusControl = pmoqui
      end
      object Label14: TLabel
        Left = 176
        Top = 292
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sexta'
        FocusControl = pmosex
      end
      object Label15: TLabel
        Left = 176
        Top = 319
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'S'#225'bado'
        FocusControl = pmosab
      end
      object Label16: TLabel
        Left = 176
        Top = 346
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Domingo'
        FocusControl = pmodom
      end
      object pmocodigo: TDBEdit
        Left = 176
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmocodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pmoidentificacao: TDBEdit
        Left = 176
        Top = 30
        Width = 406
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object pmopercentualavista: TDBEdit
        Left = 176
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmopercentualavista'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object pmodatainicial: TDBEdit
        Left = 176
        Top = 84
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmodatainicial'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object pmodatafinal: TDBEdit
        Left = 176
        Top = 111
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmodatafinal'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object pmoseg: TDBEdit
        Left = 224
        Top = 181
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoseg'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object pmoseginicio: TDBEdit
        Left = 340
        Top = 181
        Width = 74
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoseginicio'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object pmosegfinal: TDBEdit
        Left = 420
        Top = 181
        Width = 66
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosegfinal'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object pmosegvalsemtaxa: TDBEdit
        Left = 492
        Top = 181
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosegvalsemtaxa'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object pmoter: TDBEdit
        Left = 224
        Top = 208
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoter'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object pmoterinicio: TDBEdit
        Left = 340
        Top = 208
        Width = 74
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoterinicio'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object pmoterfinal: TDBEdit
        Left = 420
        Top = 208
        Width = 66
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoterfinal'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object pmotervalsemtaxa: TDBEdit
        Left = 492
        Top = 208
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmotervalsemtaxa'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object pmoqua: TDBEdit
        Left = 224
        Top = 235
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoqua'
        DataSource = DSRegistro
        TabOrder = 13
      end
      object pmoquainicio: TDBEdit
        Left = 340
        Top = 235
        Width = 74
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoquainicio'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object pmoquafinal: TDBEdit
        Left = 420
        Top = 235
        Width = 66
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoquafinal'
        DataSource = DSRegistro
        TabOrder = 15
      end
      object pmoquavalsemtaxa: TDBEdit
        Left = 492
        Top = 235
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoquavalsemtaxa'
        DataSource = DSRegistro
        TabOrder = 16
      end
      object pmoqui: TDBEdit
        Left = 224
        Top = 262
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoqui'
        DataSource = DSRegistro
        TabOrder = 17
      end
      object pmoquiinicio: TDBEdit
        Left = 340
        Top = 262
        Width = 74
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoquiinicio'
        DataSource = DSRegistro
        TabOrder = 18
      end
      object pmoquifinal: TDBEdit
        Left = 420
        Top = 262
        Width = 66
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoquifinal'
        DataSource = DSRegistro
        TabOrder = 19
      end
      object pmoquivalsemtaxa: TDBEdit
        Left = 492
        Top = 262
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmoquivalsemtaxa'
        DataSource = DSRegistro
        TabOrder = 20
      end
      object pmosex: TDBEdit
        Left = 224
        Top = 289
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosex'
        DataSource = DSRegistro
        TabOrder = 21
      end
      object pmosexinicio: TDBEdit
        Left = 340
        Top = 289
        Width = 74
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosexinicio'
        DataSource = DSRegistro
        TabOrder = 22
      end
      object pmosexfinal: TDBEdit
        Left = 420
        Top = 289
        Width = 66
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosexfinal'
        DataSource = DSRegistro
        TabOrder = 23
      end
      object pmosexvalsemtaxa: TDBEdit
        Left = 492
        Top = 289
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosexvalsemtaxa'
        DataSource = DSRegistro
        TabOrder = 24
      end
      object pmosab: TDBEdit
        Left = 224
        Top = 316
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosab'
        DataSource = DSRegistro
        TabOrder = 25
      end
      object pmosabinicio: TDBEdit
        Left = 340
        Top = 316
        Width = 74
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosabinicio'
        DataSource = DSRegistro
        TabOrder = 26
      end
      object pmosabfinal: TDBEdit
        Left = 420
        Top = 316
        Width = 66
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosabfinal'
        DataSource = DSRegistro
        TabOrder = 27
      end
      object pmosabvalsemtaxa: TDBEdit
        Left = 492
        Top = 316
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmosabvalsemtaxa'
        DataSource = DSRegistro
        TabOrder = 28
      end
      object pmodom: TDBEdit
        Left = 224
        Top = 343
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmodom'
        DataSource = DSRegistro
        TabOrder = 29
      end
      object pmodominicio: TDBEdit
        Left = 340
        Top = 343
        Width = 74
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmodominicio'
        DataSource = DSRegistro
        TabOrder = 30
      end
      object pmodomfinal: TDBEdit
        Left = 420
        Top = 343
        Width = 66
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmodomfinal'
        DataSource = DSRegistro
        TabOrder = 31
      end
      object pmodomvalsemtaxa: TDBEdit
        Left = 492
        Top = 343
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pmodomvalsemtaxa'
        DataSource = DSRegistro
        TabOrder = 32
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pmocodigo,'
      '  pmoidentificacao,'
      '  pmopercentualavista,'
      '  pmopercentualaprazo,'
      '  pmodatainicial,'
      '  pmodatafinal,'
      '  stgcodigo,'
      '  sipcodigo,'
      '  pmoseg,'
      '  pmoseginicio,'
      '  pmosegfinal,'
      '  pmosegvalsemtaxa,'
      '  pmoterinicio,'
      '  pmoterfinal,'
      '  pmotervalsemtaxa,'
      '  pmoqua,'
      '  pmoquainicio,'
      '  pmoquafinal,'
      '  pmoquavalsemtaxa,'
      '  pmoqui,'
      '  pmoquiinicio,'
      '  pmoquifinal,'
      '  pmoquivalsemtaxa,'
      '  pmosex,'
      '  pmosexinicio,'
      '  pmosexfinal,'
      '  pmosexvalsemtaxa,'
      '  pmosab,'
      '  pmosabinicio,'
      '  pmosabfinal,'
      '  pmosabvalsemtaxa,'
      '  pmodom,'
      '  pmodominicio,'
      '  pmodomfinal,'
      '  pmodomvalsemtaxa'
      'FROM pmo where pmocodigo=:pmocodigo')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmocodigo'
        Value = nil
      end>
    object registropmocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pmocodigo'
    end
    object registropmoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pmoidentificacao'
      Required = True
      Size = 50
    end
    object registropmopercentualavista: TFloatField
      DisplayLabel = '% A Vista'
      FieldName = 'pmopercentualavista'
      Required = True
      DisplayFormat = '#0.000'
    end
    object registropmopercentualaprazo: TFloatField
      DisplayLabel = '% A Prazo'
      FieldName = 'pmopercentualaprazo'
      Required = True
      DisplayFormat = '#0.000'
    end
    object registropmodatainicial: TDateField
      DisplayLabel = 'Inicio'
      FieldName = 'pmodatainicial'
      Required = True
    end
    object registropmodatafinal: TDateField
      DisplayLabel = 'Final'
      FieldName = 'pmodatafinal'
    end
    object registrostgcodigo: TIntegerField
      FieldName = 'stgcodigo'
    end
    object registrosipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object registropmoseg: TIntegerField
      DisplayLabel = 'Ativa Segunda'
      FieldName = 'pmoseg'
      Required = True
    end
    object registrosenpmoseg: TStringField
      FieldKind = fkLookup
      FieldName = 'senpmoseg'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pmoseg'
      Size = 5
      Lookup = True
    end
    object registropmoseginicio: TTimeField
      FieldName = 'pmoseginicio'
    end
    object registropmosegfinal: TTimeField
      FieldName = 'pmosegfinal'
    end
    object registropmosegvalsemtaxa: TFloatField
      FieldName = 'pmosegvalsemtaxa'
    end
    object registropmoter: TIntegerField
      FieldName = 'pmoter'
      Required = True
    end
    object registrosenpmoter: TStringField
      FieldKind = fkLookup
      FieldName = 'senpmoter'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pmoter'
      Size = 5
      Lookup = True
    end
    object registropmoterinicio: TTimeField
      FieldName = 'pmoterinicio'
    end
    object registropmoterfinal: TTimeField
      FieldName = 'pmoterfinal'
    end
    object registropmotervalsemtaxa: TFloatField
      FieldName = 'pmotervalsemtaxa'
    end
    object registropmoqua: TIntegerField
      FieldName = 'pmoqua'
      Required = True
    end
    object registrosenpmoqua: TStringField
      FieldKind = fkLookup
      FieldName = 'senpmoqua'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pmoqua'
      Size = 5
      Lookup = True
    end
    object registropmoquainicio: TTimeField
      FieldName = 'pmoquainicio'
    end
    object registropmoquafinal: TTimeField
      FieldName = 'pmoquafinal'
    end
    object registropmoquavalsemtaxa: TFloatField
      FieldName = 'pmoquavalsemtaxa'
    end
    object registropmoqui: TIntegerField
      FieldName = 'pmoqui'
      Required = True
    end
    object registrosenpmoqui: TStringField
      FieldKind = fkLookup
      FieldName = 'senpmoqui'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pmoqui'
      Size = 5
      Lookup = True
    end
    object registropmoquiinicio: TTimeField
      FieldName = 'pmoquiinicio'
    end
    object registropmoquifinal: TTimeField
      FieldName = 'pmoquifinal'
    end
    object registropmoquivalsemtaxa: TFloatField
      FieldName = 'pmoquivalsemtaxa'
    end
    object registropmosex: TIntegerField
      FieldName = 'pmosex'
      Required = True
    end
    object registrosenpmosex: TStringField
      FieldKind = fkLookup
      FieldName = 'senpmosex'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pmosex'
      Size = 5
      Lookup = True
    end
    object registropmosexinicio: TTimeField
      FieldName = 'pmosexinicio'
    end
    object registropmosexfinal: TTimeField
      FieldName = 'pmosexfinal'
    end
    object registropmosexvalsemtaxa: TFloatField
      FieldName = 'pmosexvalsemtaxa'
    end
    object registropmosab: TIntegerField
      FieldName = 'pmosab'
      Required = True
    end
    object registrosenpmosab: TStringField
      FieldKind = fkLookup
      FieldName = 'senpmosab'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pmosab'
      Size = 5
      Lookup = True
    end
    object registropmosabinicio: TTimeField
      FieldName = 'pmosabinicio'
    end
    object registropmosabfinal: TTimeField
      FieldName = 'pmosabfinal'
    end
    object registropmosabvalsemtaxa: TFloatField
      FieldName = 'pmosabvalsemtaxa'
    end
    object registropmodom: TIntegerField
      FieldName = 'pmodom'
      Required = True
    end
    object registrosenpmodom: TStringField
      FieldKind = fkLookup
      FieldName = 'senpmodom'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pmodom'
      Size = 5
      Lookup = True
    end
    object registropmodominicio: TTimeField
      FieldName = 'pmodominicio'
    end
    object registropmodomfinal: TTimeField
      FieldName = 'pmodomfinal'
    end
    object registropmodomvalsemtaxa: TFloatField
      FieldName = 'pmodomvalsemtaxa'
    end
  end
  inherited dcp: TUniQuery
    Left = 368
    Top = 284
  end
  inherited dtb: TUniQuery
    Left = 324
    Top = 284
  end
  inherited coa: TUniQuery
    Left = 288
    Top = 284
  end
  object sen: TUniQuery
    SQL.Strings = (
      'seelct sencodigo, senidentificacao from sen')
    Left = 724
    Top = 328
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
