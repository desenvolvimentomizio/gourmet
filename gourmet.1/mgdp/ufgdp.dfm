inherited fgdp: Tfgdp
  ActiveControl = gdpidentificacao
  Caption = 'Grupo de Produtos'
  ClientHeight = 124
  ClientWidth = 618
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 95
    Width = 618
    inherited bconfirma: TBitBtn
      Left = 464
    end
    inherited bcancela: TBitBtn
      Left = 539
    end
    inherited bfechar: TBitBtn
      Left = 399
    end
  end
  inherited paginas: TPageControl
    Width = 618
    Height = 95
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = gdpcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Grupo'
        FocusControl = gdpidentificacao
      end
      object gdpcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gdpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object gdpidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 454
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gdpidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select gdpcodigo, gdpidentificacao from gdp where gdpcodigo=:gdp' +
        'codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'gdpcodigo'
        ParamType = ptUnknown
      end>
    Left = 320
    Top = 0
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gdpcodigo'
        ParamType = ptUnknown
      end>
    object registrogdpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'gdpcodigo'
    end
    object registrogdpidentificacao: TStringField
      FieldName = 'gdpidentificacao'
      Size = 50
    end
  end
end
