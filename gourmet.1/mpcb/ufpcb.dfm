inherited fpcb: Tfpcb
  ActiveControl = pcgcodigo
  Caption = 'Contabiliza'#231#227'o'
  ClientHeight = 336
  ClientWidth = 620
  ExplicitWidth = 636
  ExplicitHeight = 375
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 307
    Width = 620
    ExplicitTop = 307
    ExplicitWidth = 620
    inherited bconfirma: TBitBtn
      Left = 466
      ExplicitLeft = 466
    end
    inherited bcancela: TBitBtn
      Left = 541
      ExplicitLeft = 541
    end
    inherited bfechar: TBitBtn
      Left = 401
      ExplicitLeft = 401
    end
  end
  inherited paginas: TPageControl
    Width = 620
    Height = 307
    ExplicitWidth = 620
    ExplicitHeight = 307
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 612
      ExplicitHeight = 279
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = pcbchave
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
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = pcbvalor
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
        FocusControl = pcbcomplhist
      end
      object pcbchave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcbchave'
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
      object pcbvalor: TDBEdit
        Left = 136
        Top = 111
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcbvalor'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = pcbvalorExit
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
      object pcbcomplhist: TDBEdit
        Left = 136
        Top = 84
        Width = 465
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcbcomplhist'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object Plprg: TPanel
        Left = 0
        Top = 268
        Width = 612
        Height = 11
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 5
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 260
    Top = 88
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgctbmodo,cfgctbusaccg,cfgctbpcgrecebimentos,cfgctbpcgpa' +
        'gamentos from cfgmctb')
    object cfgcfgctbmodo: TIntegerField
      FieldName = 'cfgctbmodo'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
    object cfgcfgctbpcgrecebimentos: TIntegerField
      FieldName = 'cfgctbpcgrecebimentos'
    end
    object cfgcfgctbpcgpagamentos: TIntegerField
      FieldName = 'cfgctbpcgpagamentos'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcbchave,'
      '  ccochave,'
      '  pcgcodigo,'
      '  pcbvalor,'
      '  phgcodigo,'
      '  pcbcomplhist'
      'FROM pcb where pcbchave=:pcbchave and ccochave=:ccochave')
    Left = 300
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'pcbchave'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ccochave'
        Value = nil
      end>
    object registropcbchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'pcbchave'
    end
    object registroccochave: TIntegerField
      FieldName = 'ccochave'
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
    object registropcbvalor: TFloatField
      FieldName = 'pcbvalor'
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
    object registropcbcomplhist: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'pcbcomplhist'
      Size = 50
    end
  end
  inherited dcl: TUniQuery
    Left = 524
    Top = 64
  end
  inherited cau: TUniQuery
    Left = 560
    Top = 168
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object prg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prgchave,'
      '  pcbchave,'
      '  prgvalor,'
      '  prgtipo,'
      '  ccgcodigo,'
      '  prgpercentual,'
      '  pcgcodigo'
      'FROM prg'
      '  where pcbchave=:pcbchave')
    Constraints = <>
    Left = 296
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcbchave'
        Value = nil
      end>
    object prgprgchave: TIntegerField
      FieldName = 'prgchave'
    end
    object prgpcbchave: TIntegerField
      FieldName = 'pcbchave'
    end
    object prgprgvalor: TFloatField
      FieldName = 'prgvalor'
    end
    object prgprgtipo: TIntegerField
      FieldName = 'prgtipo'
    end
    object prgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object prgprgpercentual: TFloatField
      FieldName = 'prgpercentual'
    end
    object prgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
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
    Left = 432
    Top = 24
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 150
    end
  end
  object pcbsaldo: TUniQuery
    SQL.Strings = (
      'SELECT'
      ' COALESCE(SUM(pcb.pcbvalor),0) AS pcbvalor,'
      
        ' (select ccovalor FROM cco WHERE ccochave=pcb.ccochave) as ccova' +
        'lor'
      'FROM pcb'
      '    where pcb.ccochave=:ccochave')
    Constraints = <>
    Left = 472
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object pcbsaldopcbvalor: TFloatField
      FieldName = 'pcbvalor'
    end
    object pcbsaldoccovalor: TFloatField
      FieldName = 'ccovalor'
    end
  end
end
