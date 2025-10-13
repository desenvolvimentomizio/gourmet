inherited fcav: Tfcav
  ActiveControl = cavpasta
  Caption = 'Contrato'
  ClientHeight = 386
  ClientWidth = 738
  ExplicitWidth = 754
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 357
    Width = 738
    ExplicitTop = 357
    ExplicitWidth = 738
    inherited bconfirma: TBitBtn
      Left = 584
      ExplicitLeft = 584
    end
    inherited bcancela: TBitBtn
      Left = 659
      ExplicitLeft = 659
    end
    inherited bfechar: TBitBtn
      Left = 519
      ExplicitLeft = 519
    end
  end
  inherited paginas: TPageControl
    Width = 738
    Height = 357
    ExplicitWidth = 738
    ExplicitHeight = 357
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 730
      ExplicitHeight = 329
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        Caption = 'Registro'
        FocusControl = cavchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 27
        Height = 13
        Caption = 'Pasta'
        FocusControl = cavpasta
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 62
        Height = 13
        Caption = 'Tipo de A'#231#227'o'
        FocusControl = acocodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 84
        Height = 13
        Caption = 'C'#243'digo do Cliente'
        FocusControl = etdcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 90
        Height = 13
        Caption = 'Unidade Monet'#225'ria'
        FocusControl = umocodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 91
        Height = 13
        Caption = #205'ndice de Corre'#231#227'o'
        FocusControl = crfcodigo
      end
      object lbcavvaloracao: TLabel
        Left = 8
        Top = 168
        Width = 66
        Height = 13
        Caption = 'Valor da A'#231#227'o'
        FocusControl = cavvaloracao
      end
      object Label8: TLabel
        Left = 8
        Top = 195
        Width = 124
        Height = 13
        Caption = 'Dia de Vencimento Mensal'
        FocusControl = cavdiavcto
      end
      object lbcavpercentualmes: TLabel
        Left = 8
        Top = 276
        Width = 129
        Height = 13
        Caption = 'Percentual do valor Mensal'
        FocusControl = cavpercentualmes
      end
      object vlcavvalormes: TLabel
        Left = 8
        Top = 303
        Width = 76
        Height = 13
        Caption = 'Valor Mensal R$'
        FocusControl = cavvalormes
      end
      object Label11: TLabel
        Left = 8
        Top = 222
        Width = 148
        Height = 13
        Caption = 'Percentual da Multa por atraso'
        FocusControl = cavpercentualmulta
      end
      object Label12: TLabel
        Left = 8
        Top = 249
        Width = 148
        Height = 13
        Caption = 'Percentual de Juros por atraso'
        FocusControl = cavpercentualjuros
      end
      object cavchave: TDBEdit
        Left = 175
        Top = 3
        Width = 65
        Height = 21
        DataField = 'cavchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cavpasta: TDBEdit
        Left = 175
        Top = 30
        Width = 193
        Height = 21
        DataField = 'cavpasta'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object acocodigo: TDBEdit
        Left = 175
        Top = 57
        Width = 38
        Height = 21
        DataField = 'acocodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object etdcodigo: TDBEdit
        Left = 175
        Top = 84
        Width = 65
        Height = 21
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object umocodigo: TDBEdit
        Left = 175
        Top = 111
        Width = 38
        Height = 21
        DataField = 'umocodigo'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = umocodigoExit
      end
      object crfcodigo: TDBEdit
        Left = 175
        Top = 138
        Width = 38
        Height = 21
        DataField = 'crfcodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object cavvaloracao: TDBEdit
        Left = 175
        Top = 165
        Width = 121
        Height = 21
        DataField = 'cavvaloracao'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object cavdiavcto: TDBEdit
        Left = 175
        Top = 192
        Width = 28
        Height = 21
        DataField = 'cavdiavcto'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object cavpercentualmes: TDBEdit
        Left = 175
        Top = 273
        Width = 74
        Height = 21
        DataField = 'cavpercentualmes'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object cavvalormes: TDBEdit
        Left = 175
        Top = 300
        Width = 106
        Height = 21
        DataField = 'cavvalormes'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object cavpercentualmulta: TDBEdit
        Left = 175
        Top = 219
        Width = 90
        Height = 21
        DataField = 'cavpercentualmulta'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object cavpercentualjuros: TDBEdit
        Left = 175
        Top = 246
        Width = 90
        Height = 21
        DataField = 'cavpercentualjuros'
        DataSource = DSRegistro
        TabOrder = 9
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cavchave,'
      '  acocodigo,'
      '  etdcodigo,'
      '  cavregistro,'
      '  cavpasta,'
      '  umocodigo,'
      '  crfcodigo,'
      '  cavvaloracao,'
      '  cavdiavcto,'
      '  cavpercentualmes,'
      '  cavvalormes,'
      '  cavobservacao,'
      '  cavpercentualmulta,'
      '  cavpercentualjuros'
      'FROM cav where cavchave=:cavchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cavchave'
        Value = nil
      end>
    object registrocavchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'cavchave'
    end
    object registrocavpasta: TStringField
      DisplayLabel = 'Pasta'
      FieldName = 'cavpasta'
    end
    object registroacocodigo: TIntegerField
      DisplayLabel = 'Tipo de A'#231#227'o'
      FieldName = 'acocodigo'
      Required = True
    end
    object registroacosigla: TStringField
      FieldKind = fkLookup
      FieldName = 'acosigla'
      LookupDataSet = aco
      LookupKeyFields = 'acocodigo'
      LookupResultField = 'acosigla'
      KeyFields = 'acocodigo'
      Size = 5
      Lookup = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registrocavregistro: TDateField
      DisplayLabel = 'Data do Registro'
      FieldName = 'cavregistro'
    end
    object registroumocodigo: TIntegerField
      DisplayLabel = 'Unidade Mont'#225'ria'
      FieldName = 'umocodigo'
      Required = True
    end
    object registroumosigla: TStringField
      FieldKind = fkLookup
      FieldName = 'umosigla'
      LookupDataSet = umo
      LookupKeyFields = 'umocodigo'
      LookupResultField = 'umosigla'
      KeyFields = 'umocodigo'
      Size = 5
      Lookup = True
    end
    object registrocrfcodigo: TIntegerField
      DisplayLabel = #205'ndice de Corre'#231#227'o'
      FieldName = 'crfcodigo'
      Required = True
    end
    object registrocrfsigla: TStringField
      FieldKind = fkLookup
      FieldName = 'crfsigla'
      LookupDataSet = crf
      LookupKeyFields = 'crfcodigo'
      LookupResultField = 'crfsigla'
      KeyFields = 'crfcodigo'
      Size = 5
      Lookup = True
    end
    object registrocavvaloracao: TFloatField
      DisplayLabel = 'Valor da A'#231#227'o'
      FieldName = 'cavvaloracao'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocavdiavcto: TIntegerField
      DisplayLabel = 'Dia de Vencimento Mensal'
      FieldName = 'cavdiavcto'
      Required = True
    end
    object registrocavpercentualmes: TFloatField
      DisplayLabel = 'Percentual do valor Mensal'
      FieldName = 'cavpercentualmes'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object registrocavvalormes: TFloatField
      DisplayLabel = 'Valor Mensal R$'
      FieldName = 'cavvalormes'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocavpercentualmulta: TFloatField
      DisplayLabel = 'Percentual da Multa por atrazo'
      FieldName = 'cavpercentualmulta'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object registrocavpercentualjuros: TFloatField
      DisplayLabel = 'Percentual de Juros por atrazo'
      FieldName = 'cavpercentualjuros'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
  end
  inherited acoesfrm: TActionList
    Left = 460
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object aco: TUniQuery
    SQL.Strings = (
      'select acocodigo, acosigla from aco')
    Left = 428
    Top = 200
    object acoacocodigo: TIntegerField
      FieldName = 'acocodigo'
    end
    object acoacosigla: TStringField
      FieldName = 'acosigla'
      Size = 5
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 484
    Top = 144
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object umo: TUniQuery
    SQL.Strings = (
      'select umocodigo, umosigla from umo')
    Left = 428
    Top = 144
    object umoumocodigo: TIntegerField
      FieldName = 'umocodigo'
    end
    object umoumosigla: TStringField
      FieldName = 'umosigla'
      Size = 5
    end
  end
  object crf: TUniQuery
    SQL.Strings = (
      'select crfcodigo, crfsigla from crf')
    Left = 484
    Top = 192
    object crfcrfcodigo: TIntegerField
      FieldName = 'crfcodigo'
    end
    object crfcrfsigla: TStringField
      FieldName = 'crfsigla'
      Size = 5
    end
  end
end
