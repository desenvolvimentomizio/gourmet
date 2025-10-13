inherited fpcr: Tfpcr
  ActiveControl = pcgcodigo
  Caption = 'Contabiliza'#231#227'o'
  ClientHeight = 202
  ClientWidth = 627
  ExplicitWidth = 643
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 173
    Width = 627
    ExplicitTop = 173
    ExplicitWidth = 627
    inherited bconfirma: TBitBtn
      Left = 473
      ExplicitLeft = 473
    end
    inherited bcancela: TBitBtn
      Left = 548
      ExplicitLeft = 548
    end
    inherited bfechar: TBitBtn
      Left = 408
      ExplicitLeft = 408
    end
  end
  inherited paginas: TPageControl
    Width = 627
    Height = 173
    ExplicitWidth = 627
    ExplicitHeight = 173
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 619
      ExplicitHeight = 145
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = pcrchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil'
        FocusControl = pcgcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
        FocusControl = pcrcomplhist
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = pcrvalor
      end
      object pcrchave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcrchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pcgcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = pcgcodigoExit
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object pcrcomplhist: TDBEdit
        Left = 136
        Top = 84
        Width = 465
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcrcomplhist'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object pcrvalor: TDBEdit
        Left = 136
        Top = 111
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcrvalor'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = pcrvalorExit
      end
      object Plprg: TPanel
        Left = 0
        Top = 134
        Width = 619
        Height = 11
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 5
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 268
    Top = 176
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgctbmodo,cfgctbpcgrecebimentos,cfgctbpcgpagamentos,cfgc' +
        'tbusaccg from cfgmctb')
    object cfgcfgctbmodo: TIntegerField
      FieldName = 'cfgctbmodo'
    end
    object cfgcfgctbpcgrecebimentos: TIntegerField
      FieldName = 'cfgctbpcgrecebimentos'
    end
    object cfgcfgctbpcgpagamentos: TIntegerField
      FieldName = 'cfgctbpcgpagamentos'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcrchave,'
      '  titcodigo,'
      '  pcgcodigo,'
      '  pcrvalor,'
      '  phgcodigo,'
      '  pcrcomplhist'
      'FROM pcr where pcrchave=:pcrchave and titcodigo=:titcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcrchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object registropcrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'pcrchave'
    end
    object registrotitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object registropcgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgidentificacao'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Size = 150
      Lookup = True
    end
    object registropcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'pcrvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 150
      Lookup = True
    end
    object registropcrcomplhist: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'pcrcomplhist'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Left = 508
    Bitmap = {}
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Constraints = <>
    Left = 352
    Top = 32
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcgcodigo,'
      
        '  CONCAT(pcgestrutural, '#39' - '#39', pcgidentificacao) AS pcgidentific' +
        'acao'
      'FROM pcg')
    Constraints = <>
    Left = 408
    Top = 32
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 150
    end
  end
  object pcrsaldo: TUniQuery
    SQL.Strings = (
      'SELECT'
      ' COALESCE(SUM(pcr.pcrvalor),0) AS pcrvalor,'
      
        ' (select titvalor FROM tit WHERE titcodigo=pcr.titcodigo) as tit' +
        'valor'
      'FROM pcr'
      '    where pcr.titcodigo=:titcodigo')
    Constraints = <>
    Left = 288
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object pcrsaldopcrvalor: TFloatField
      FieldName = 'pcrvalor'
    end
    object pcrsaldotitvalor: TFloatField
      FieldName = 'titvalor'
    end
  end
  object prr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prrchave,'
      '  pcrchave,'
      '  prrvalor,'
      '  prrtipo,'
      '  ccgcodigo,'
      '  prrpercentual,'
      '  pcgcodigo'
      'FROM prr'
      '  where pcrchave=:pcrchave')
    Constraints = <>
    Left = 296
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcrchave'
        Value = nil
      end>
    object prrprrchave: TIntegerField
      FieldName = 'prrchave'
    end
    object prrpcrchave: TIntegerField
      FieldName = 'pcrchave'
    end
    object prrprrvalor: TFloatField
      FieldName = 'prrvalor'
    end
    object prrprrtipo: TIntegerField
      FieldName = 'prrtipo'
    end
    object prrccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object prrprrpercentual: TFloatField
      FieldName = 'prrpercentual'
    end
    object prrpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
end
