inherited ftcs: Tftcs
  ActiveControl = tcsCodigo
  Caption = 'Tipos de Conta de Consumo'
  ClientHeight = 115
  ClientWidth = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 86
    Width = 417
    inherited bconfirma: TBitBtn
      Left = 263
    end
    inherited bcancela: TBitBtn
      Left = 338
    end
    inherited bfechar: TBitBtn
      Left = 198
    end
  end
  inherited paginas: TPageControl
    Width = 417
    Height = 86
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = tcsidentificacao
      end
      object tcsidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 264
        Height = 21
        DataField = 'tcsidentificacao'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tcsCodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        DataField = 'tcscodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited DSRegistro: tunidatasource
    Left = 252
    Top = 64
  end
  inherited consulta: tuniquery
    Left = 312
    Top = 20
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select tcscodigo,tcsidentificacao from tcs where tcs.tcscodigo=:' +
        'tcscodigo')
    Left = 272
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcscodigo'
      end>
    object registrotcscodigo: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'tcscodigo'
      Required = True
      Size = 1
    end
    object registrotcsidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tcsidentificacao'
    end
  end
end
