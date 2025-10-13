inherited ftob: Tftob
  Caption = 'Tipo de Ocorr'#234'ncia de Boletos'
  ClientHeight = 160
  ClientWidth = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 131
    Width = 550
    inherited bconfirma: TBitBtn
      Left = 396
    end
    inherited bcancela: TBitBtn
      Left = 471
    end
    inherited bfechar: TBitBtn
      Left = 331
    end
  end
  inherited paginas: TPageControl
    Width = 550
    Height = 131
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da Ocorr'#234'ncia'
        FocusControl = tobcodigo
      end
      object Label2: TLabel
        Left = 16
        Top = 43
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = Identificação
      end
      object Label3: TLabel
        Left = 15
        Top = 70
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do banco'
        FocusControl = bcocodigo
      end
      object tobcodigo: TDBEdit
        Left = 136
        Top = 13
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tobcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object Identificação: TDBEdit
        Left = 136
        Top = 40
        Width = 345
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tobidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bcocodigo: TDBEdit
        Left = 136
        Top = 67
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bcocodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select tobcodigo,tobidentificacao,bcocodigo from tob where tobco' +
        'digo=:tobcodigo')
    ParamCheck = False
    Params = <
      item
        DataType = ftUnknown
        Name = 'tobcodigo'
        ParamType = ptUnknown
      end>
    Left = 372
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tobcodigo'
        ParamType = ptUnknown
      end>
    object registrotobcodigo: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'tobcodigo'
      Required = True
      Size = 5
    end
    object registrotobidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tobidentificacao'
      Required = True
      Size = 50
    end
    object registrobcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object registrobconome: TStringField
      FieldKind = fkLookup
      FieldName = 'bconome'
      LookupDataSet = bco
      LookupKeyFields = 'bcocodigo'
      LookupResultField = 'bconome'
      KeyFields = 'bcocodigo'
      Size = 50
      Lookup = True
    end
  end
  object bco: tuniquery
    SQL.Strings = (
      'select bcocodigo,bconome from bco')
    Params = <>
    Left = 288
    Top = 72
    object bcobcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object bcobconome: TStringField
      FieldName = 'bconome'
      Size = 35
    end
  end
end
