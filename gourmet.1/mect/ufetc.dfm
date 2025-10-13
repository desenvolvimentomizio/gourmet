inherited fetc: Tfetc
  ActiveControl = ectidentifica
  Caption = 'Org'#227'os de Cr'#233'dito'
  ClientHeight = 161
  ClientWidth = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 132
    Width = 439
    inherited bconfirma: TBitBtn
      Left = 285
    end
    inherited bcancela: TBitBtn
      Left = 360
    end
    inherited bfechar: TBitBtn
      Left = 220
    end
  end
  inherited paginas: TPageControl
    Width = 439
    Height = 132
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 16
        Top = 33
        Width = 62
        Height = 13
        Caption = 'Identificacao'
      end
      object Label3: TLabel
        Left = 16
        Top = 60
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object ectidentifica: TDBEdit
        Left = 136
        Top = 30
        Width = 225
        Height = 21
        DataField = 'ectidentificacao'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ecttelefone: TDBEdit
        Left = 136
        Top = 57
        Width = 134
        Height = 21
        DataField = 'ecttelefone'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ectcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        DataField = 'ectcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select ectcodigo,ectidentificacao,ecttelefone from ect where ect' +
        '.ectcodigo=:ectcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ectcodigo'
      end>
    object registroectcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ectcodigo'
    end
    object registroectidentificacao: TStringField
      FieldName = 'ectidentificacao'
      Size = 30
    end
    object registroecttelefone: TStringField
      FieldName = 'ecttelefone'
    end
  end
end
