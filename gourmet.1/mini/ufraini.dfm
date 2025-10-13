object fraini: Tfraini
  Left = 0
  Top = 0
  Width = 924
  Height = 613
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 613
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 3
    object Panel2: TPanel
      Left = 1
      Top = 344
      Width = 922
      Height = 268
      Align = alBottom
      Caption = 'Panel2'
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 350
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 922
      Height = 120
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
    end
    object DBImage1: TDBImage
      Left = 1
      Top = 121
      Width = 922
      Height = 223
      Align = alClient
      BorderStyle = bsNone
      DataField = 'cfglogo'
      DataSource = Dregistro
      TabOrder = 2
    end
  end
  object registro: TUniQuery
    SQL.Strings = (
      'SELECT cfgmcfg.cfgcodigo'
      '     , cfgmcfg.cfgetdempresa'
      '     , cfgmcfg.cfglogo'
      '     , cfgmcfg.cfginscricaomun'
      '     , cfgmcfg.cfgsuframa'
      '     , cfgmcfg.crtcodigo'
      '     , cfgmcfg.talcodigo'
      '  FROM cfgmcfg'
      ' WHERE cfgcodigo = :cfgcodigo')
    Left = 372
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cfgcodigo'
      Required = True
    end
    object registrocfgetdempresa: TIntegerField
      DisplayLabel = 'Entidade da Empresa'
      FieldName = 'cfgetdempresa'
      Required = True
    end
    object registrocfginscricaomun: TStringField
      DisplayLabel = 'Inscri'#231#227'o municipal'
      FieldName = 'cfginscricaomun'
    end
    object registrocfgsuframa: TStringField
      DisplayLabel = 'SUFRAMA'
      FieldName = 'cfgsuframa'
    end
    object registrocrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
      Required = True
    end
    object registrocfglogo: TBlobField
      FieldName = 'cfglogo'
    end
    object registrotalcodigo: TIntegerField
      DisplayLabel = 'Forma de Apura'#231#227'o do Lucro'
      FieldName = 'talcodigo'
    end
  end
  object Dregistro: TDataSource
    DataSet = registro
    Left = 432
    Top = 160
  end
end
