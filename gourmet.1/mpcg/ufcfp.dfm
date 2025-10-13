inherited fcfp: Tfcfp
  ActiveControl = cfpCodigo
  Caption = 'Grupo de Contas Gerenciais'
  ClientHeight = 204
  ClientWidth = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 175
    Width = 597
    inherited bconfirma: TBitBtn
      Left = 443
    end
    inherited bcancela: TBitBtn
      Left = 518
    end
    inherited bfechar: TBitBtn
      Left = 378
    end
  end
  inherited paginas: TPageControl
    Width = 597
    Height = 175
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = cfpCodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 59
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#225'scara'
        FocusControl = cfpMascara
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo'
        FocusControl = cggcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
      end
      object Label5: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = cfpidentificacao
      end
      object cfpCodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfpCodigo'
        DataSource = DSRegistro
        TabOrder = 0
        OnExit = cfpCodigoExit
      end
      object cfpMascara: TDBEdit
        Left = 136
        Top = 57
        Width = 249
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfpMascara'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cggcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cggcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cedcodigo: TDBEdit
        Left = 136
        Top = 111
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cfpidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 377
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfpidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 280
    Top = 88
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select '
      '  cfpcodigo,'
      '  cedcodigo,'
      '  cfpmascara,'
      '  cfpidentificacao,'
      '  cggcodigo,'
      '  cfpoperacao'
      'from cfp where cfpcodigo=:cfpcodigo')
    Left = 420
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfpcodigo'
        Value = nil
      end>
    object registrocfpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cfpCodigo'
      Required = True
    end
    object registrocfpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cfpidentificacao'
      Required = True
      Size = 35
    end
    object registrocfpMascara: TStringField
      DisplayLabel = 'M'#225'scara'
      FieldName = 'cfpMascara'
      Required = True
      Size = 50
    end
    object registrocggcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'cggcodigo'
      Required = True
    end
    object registrocggidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cggidentificacao'
      LookupDataSet = cgg
      LookupKeyFields = 'cggcodigo'
      LookupResultField = 'cggidentificacao'
      KeyFields = 'cggcodigo'
      Size = 50
      Lookup = True
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'Natureza'
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
    object registrocfpoperacao: TIntegerField
      FieldName = 'cfpoperacao'
    end
  end
  inherited dcl: TUniQuery
    Left = 380
    Top = 132
  end
  object ced: TUniQuery
    SQL.Strings = (
      
        'select cedcodigo, if(cedcodigo=0,'#39'Devedora'#39','#39'Credora'#39') as cedide' +
        'ntificacao from ced')
    Left = 460
    Top = 100
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 15
    end
  end
  object cgg: TUniQuery
    SQL.Strings = (
      'select cggcodigo, cggidentificacao from cgg')
    Left = 512
    Top = 120
    object cggcggcodigo: TIntegerField
      FieldName = 'cggcodigo'
    end
    object cggcggidentificacao: TStringField
      FieldName = 'cggidentificacao'
      Size = 50
    end
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcgcodigo,'
      '  seacodigo,'
      '  cfpcodigo,'
      '  pcgestrutural,'
      '  pcgidentificacao,'
      '  cedcodigo,'
      '  pcgativa'
      'FROM pcg limit 0')
    Left = 528
    Top = 24
    object pcgpcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object pcgseacodigo: TIntegerField
      DisplayLabel = 'Tipo de Conta'
      FieldName = 'seacodigo'
      Required = True
    end
    object pcgpcgestrutural: TStringField
      DisplayLabel = 'Classif. Estrutural'
      FieldName = 'pcgestrutural'
      Required = True
      Size = 30
    end
    object pcgcfpcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'cfpcodigo'
      Required = True
    end
    object pcgpcgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pcgidentificacao'
      Required = True
      Size = 80
    end
    object pcgcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object pcgpcgativa: TIntegerField
      FieldName = 'pcgativa'
      Required = True
    end
  end
end
