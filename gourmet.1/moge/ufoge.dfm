inherited foge: Tfoge
  Caption = 'Or'#231'amento Gerencial'
  ClientHeight = 205
  ExplicitWidth = 812
  ExplicitHeight = 244
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 176
    ExplicitTop = 176
  end
  inherited paginas: TPageControl
    Height = 176
    ExplicitHeight = 176
    inherited Principal: TTabSheet
      Caption = 'v'
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 148
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 106
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ano no formato AAAA'
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 95
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Primeiro dia do ANO'
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ultimo dia do ANO'
      end
      object ogechave: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ogechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ogeidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 473
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ogeidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ogeano: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ogeano'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ogedatainicial: TDBEdit
        Left = 136
        Top = 84
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ogedatainicial'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ogedatafinal: TDBEdit
        Left = 136
        Top = 111
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ogedatafinal'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ogechave,'
      '  ogeidentificacao,'
      '  ogedatainicial,'
      '  ogedatafinal,'
      '  ogeobservacao,'
      '  ogepercotimista,'
      '  ogeperpecimista,'
      '  ogeestagio,'
      '  clbcodigo,'
      '  ogeregistro,'
      '  ogeano'
      'FROM oge where ogechave=:ogechave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ogechave'
        Value = nil
      end>
    object registroogechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'ogechave'
    end
    object registroogeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ogeidentificacao'
      Required = True
      Size = 50
    end
    object registroogedatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'ogedatainicial'
    end
    object registroogedatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'ogedatafinal'
    end
    object registroogepercotimista: TFloatField
      FieldName = 'ogepercotimista'
    end
    object registroogeperpecimista: TFloatField
      FieldName = 'ogeperpecimista'
    end
    object registroogeestagio: TIntegerField
      FieldName = 'ogeestagio'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroogeregistro: TDateTimeField
      FieldName = 'ogeregistro'
    end
    object registroogeano: TIntegerField
      FieldName = 'ogeano'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
