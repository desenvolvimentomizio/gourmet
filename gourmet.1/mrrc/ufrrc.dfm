inherited frrc: Tfrrc
  ActiveControl = rrcdata
  Caption = 'Recebimento de Cart'#245'es'
  ClientHeight = 267
  ClientWidth = 668
  ExplicitWidth = 684
  ExplicitHeight = 306
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 238
    Width = 668
    ExplicitTop = 195
    ExplicitWidth = 668
    inherited bconfirma: TBitBtn
      Left = 514
      ExplicitLeft = 514
    end
    inherited bcancela: TBitBtn
      Left = 589
      ExplicitLeft = 589
    end
    inherited bfechar: TBitBtn
      Left = 449
      ExplicitLeft = 449
    end
  end
  inherited paginas: TPageControl
    Width = 668
    Height = 238
    ExplicitWidth = 668
    ExplicitHeight = 195
    inherited Principal: TTabSheet
      ExplicitLeft = 6
      ExplicitTop = 22
      ExplicitWidth = 660
      ExplicitHeight = 210
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = rrcchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 125
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Cr'#233'dito em Conta'
        FocusControl = rrcdata
      end
      object Label3: TLabel
        Left = 7
        Top = 114
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Operadora de Cart'#227'o'
        FocusControl = adccodigo
      end
      object Label4: TLabel
        Left = 7
        Top = 141
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = rrcvalor
      end
      object Label5: TLabel
        Left = 7
        Top = 168
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo Movimento'
        FocusControl = cedcodigo
      end
      object Label6: TLabel
        Left = 7
        Top = 87
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da Conta'
        FocusControl = ctacodigo
      end
      object Label7: TLabel
        Left = 8
        Top = 60
        Width = 117
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero de Identifica'#231#227'o'
        FocusControl = rrcnumero
      end
      object rrcchave: TDBEdit
        Left = 140
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rrcchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rrcdata: TDBEdit
        Left = 139
        Top = 30
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rrcdata'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object adccodigo: TDBEdit
        Left = 139
        Top = 111
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'adccodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object rrcvalor: TDBEdit
        Left = 139
        Top = 138
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rrcvalor'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object cedcodigo: TDBEdit
        Left = 139
        Top = 165
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ctacodigo: TDBEdit
        Left = 139
        Top = 84
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnEnter = ctacodigoEnter
      end
      object rrcnumero: TDBEdit
        Left = 140
        Top = 57
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rrcnumero'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 292
    Top = 200
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rrcchave,'
      '  rrcdata,'
      '  cedcodigo,'
      '  rrcvalor,'
      '  clbcodigo,'
      '  rrcregistro,'
      '  rrcnumero,'
      '  ctacodigo,'
      '  adccodigo,'
      '  flacodigo'
      'FROM rrc where rrcchave=:rrcchave')
    Left = 348
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rrcchave'
        Value = nil
      end>
    object registrorrcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'rrcchave'
    end
    object registrorrcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rrcdata'
      Required = True
    end
    object registroadccodigo: TIntegerField
      DisplayLabel = 'Operadora de Cart'#227'o'
      FieldName = 'adccodigo'
      Required = True
    end
    object registroadcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'adcidentificacao'
      LookupDataSet = adc
      LookupKeyFields = 'adccodigo'
      LookupResultField = 'adcidentificacao'
      KeyFields = 'adccodigo'
      Size = 50
      Lookup = True
    end
    object registrorrcvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rrcvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrocedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 15
      Lookup = True
    end
    object registroctacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo da Conta'
      FieldName = 'ctacodigo'
      Required = True
    end
    object registroctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object registrorrcregistro: TDateTimeField
      FieldName = 'rrcregistro'
    end
    object registrorrcnumero: TStringField
      DisplayLabel = 'N'#250'mero de Identifica'#231#227'o'
      FieldName = 'rrcnumero'
      Required = True
      Size = 50
    end
  end
  inherited dcp: TUniQuery
    Left = 112
    Top = 260
  end
  inherited dtb: TUniQuery
    Top = 268
  end
  inherited coa: TUniQuery
    Left = 96
    Top = 332
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object adc: TUniQuery
    SQL.Strings = (
      'select adccodigo, adcidentificacao from adc')
    Left = 708
    Top = 224
    object adcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object adcadcidentificacao: TStringField
      FieldName = 'adcidentificacao'
      Size = 50
    end
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Left = 716
    Top = 280
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 15
    end
  end
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo, ctaidentificacao from cta where tctcodigo=2')
    Left = 472
    Top = 296
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
end
