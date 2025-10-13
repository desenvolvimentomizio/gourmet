inherited ftfd: Tftfd
  ActiveControl = tfdcodigo
  Caption = 'Tipo de Registro Financeiro'
  ClientHeight = 128
  ClientWidth = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 99
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
    Height = 99
    inherited Principal: TTabSheet
      Caption = 'Identifica'#231#227'o'
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = tfdcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = tfdidentificacao
      end
      object tfdcodigo: TDBEdit
        Left = 136
        Top = 13
        Width = 41
        Height = 21
        DataField = 'tfdcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tfdidentificacao: TDBEdit
        Left = 136
        Top = 40
        Width = 394
        Height = 21
        DataField = 'tfdidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select tfdcodigo,tfdidentificacao from tfd where tfd.tfdcodigo=:' +
        'tfdcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tfdcodigo'
      end>
    object registrotfdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tfdcodigo'
      Required = True
    end
    object registrotfdidentificacao: TStringField
      FieldName = 'tfdidentificacao'
      Size = 30
    end
  end
end
