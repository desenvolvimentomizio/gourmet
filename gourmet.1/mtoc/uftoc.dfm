inherited ftoc: Tftoc
  ActiveControl = toccodigo
  Caption = 'Tabela de Opera'#231#245'es de Conta Corrente'
  ClientHeight = 119
  ClientWidth = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 90
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
    Height = 90
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = toccodigo
      end
      object Label2: TLabel
        Left = 3
        Top = 32
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = tocidentificacao
      end
      object toccodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        DataField = 'toccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tocidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 394
        Height = 21
        DataField = 'tocidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select toccodigo, tocidentificacao from toc where toccodigo=:toc' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'toccodigo'
      end>
    object registrotoccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'toccodigo'
      Required = True
    end
    object registrotocidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tocidentificacao'
      Size = 30
    end
  end
end
