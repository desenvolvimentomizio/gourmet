inherited ftfn: Tftfn
  ActiveControl = tfnidentificacao
  Caption = 'Tipo de Fun'#231#227'o'
  ClientHeight = 125
  ClientWidth = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 96
    Width = 512
    inherited bconfirma: TBitBtn
      Left = 358
    end
    inherited bcancela: TBitBtn
      Left = 433
    end
    inherited bfechar: TBitBtn
      Left = 293
    end
  end
  inherited paginas: TPageControl
    Width = 512
    Height = 96
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = tfncodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = tfnidentificacao
      end
      object tfncodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        DataField = 'tfncodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tfnidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 355
        Height = 21
        DataField = 'tfnidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select tfncodigo, tfnidentificacao from tfn where tfncodigo=:tfn' +
        'codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tfncodigo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tfncodigo'
        ParamType = ptUnknown
      end>
    object registrotfncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tfncodigo'
      Required = True
    end
    object registrotfnidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tfnidentificacao'
      Required = True
      Size = 35
    end
  end
end
