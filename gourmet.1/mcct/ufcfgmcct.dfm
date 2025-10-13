inherited fcfgmcct: Tfcfgmcct
  ActiveControl = cfgmcctipos
  Caption = 'Configura'#231#245'es dos Contratos'
  ClientHeight = 283
  ExplicitWidth = 812
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 254
  end
  inherited paginas: TPageControl
    Height = 254
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = cfgcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipos de Contratos'
        FocusControl = cfgmcctipos
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Forma do Valor'
        FocusControl = cfgmcctformavalor
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 125
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o do Identificador'
        FocusControl = cfgmcctidentificador
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usa Percentual'
        FocusControl = cfgmcctempercentual
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 129
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usa renova'#231#227'o Autom'#225'tica'
        FocusControl = cfgmcctusarenovacao
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usa Data Final'
        FocusControl = cfgmcctusadatafinal
      end
      object Label8: TLabel
        Left = 8
        Top = 195
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo do Valor'
        FocusControl = cfgmccttipovalor
      end
      object cfgcodigo: TDBEdit
        Left = 152
        Top = 3
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgmcctipos: TDBEdit
        Left = 152
        Top = 30
        Width = 180
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcctipos'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfgmcctformavalor: TDBEdit
        Left = 152
        Top = 57
        Width = 180
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcctformavalor'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgmcctidentificador: TDBEdit
        Left = 152
        Top = 84
        Width = 180
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcctidentificador'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cfgmcctempercentual: TDBEdit
        Left = 152
        Top = 111
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcctempercentual'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cfgmcctusarenovacao: TDBEdit
        Left = 152
        Top = 138
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcctusarenovacao'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object cfgmcctusadatafinal: TDBEdit
        Left = 152
        Top = 165
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcctusadatafinal'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object cfgmccttipovalor: TDBEdit
        Left = 152
        Top = 192
        Width = 180
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmccttipovalor'
        DataSource = DSRegistro
        TabOrder = 7
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgmcctipos,'
      '  cfgmcctformavalor,'
      '  cfgmcctidentificador,'
      '  cfgmcctempercentual,'
      '  cfgmcctusarenovacao,'
      '  cfgmcctusadatafinal,'
      '  cfgmccttipovalor'
      'FROM cfgmcct where cfgcodigo=:cfgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cfgcodigo'
    end
    object registrocfgmcctipos: TStringField
      DisplayLabel = 'Tipos de Contratos'
      FieldName = 'cfgmcctipos'
      Required = True
      Size = 50
    end
    object registrocfgmcctformavalor: TStringField
      DisplayLabel = 'Forma do Valor'
      FieldName = 'cfgmcctformavalor'
      Required = True
      Size = 50
    end
    object registrocfgmcctidentificador: TStringField
      DisplayLabel = 'Descri'#231#227'o do Identificador'
      FieldName = 'cfgmcctidentificador'
      Required = True
      Size = 50
    end
    object registrocfgmcctempercentual: TIntegerField
      DisplayLabel = 'Usa Percentual'
      FieldName = 'cfgmcctempercentual'
      Required = True
    end
    object registrosencfgmcctempercentual: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmcctempercentual'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcctempercentual'
      Size = 5
      Lookup = True
    end
    object registrocfgmcctusarenovacao: TIntegerField
      DisplayLabel = 'Usa renova'#231#227'o Autom'#225'tica'
      FieldName = 'cfgmcctusarenovacao'
      Required = True
    end
    object registrosencfgmcctusarenovacao: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmcctusarenovacao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcctusarenovacao'
      Size = 5
      Lookup = True
    end
    object registrocfgmcctusadatafinal: TIntegerField
      DisplayLabel = 'Usa Data Final'
      FieldName = 'cfgmcctusadatafinal'
      Required = True
    end
    object registrosencfgmcctusadatafinal: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmcctusadatafinal'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcctusadatafinal'
      Size = 5
      Lookup = True
    end
    object registrocfgmccttipovalor: TStringField
      DisplayLabel = 'Tipo do Valor'
      FieldName = 'cfgmccttipovalor'
      Required = True
      Size = 50
    end
  end
  inherited acoesfrm: TActionList
    Left = 492
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 308
    Top = 304
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
