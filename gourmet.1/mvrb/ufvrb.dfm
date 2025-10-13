inherited fvrb: Tfvrb
  ActiveControl = vrbcodigo
  Caption = 'Verbas da Folha de Pagamento'
  ClientHeight = 156
  ClientWidth = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 127
    Width = 518
    inherited bconfirma: TBitBtn
      Left = 364
    end
    inherited bcancela: TBitBtn
      Left = 439
    end
    inherited bfechar: TBitBtn
      Left = 299
    end
  end
  inherited paginas: TPageControl
    Width = 518
    Height = 127
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 3
        Top = 21
        Width = 64
        Height = 13
        Caption = 'C'#243'digo Verba'
        FocusControl = vrbcodigo
      end
      object Label2: TLabel
        Left = 3
        Top = 48
        Width = 76
        Height = 13
        Caption = 'Cr'#233'dito / D'#233'bito'
        FocusControl = cedcodigo
      end
      object Label3: TLabel
        Left = 3
        Top = 75
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = vrbidentificacao
      end
      object vrbcodigo: TDBEdit
        Left = 136
        Top = 18
        Width = 49
        Height = 21
        DataField = 'vrbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cedcodigo: TDBEdit
        Left = 136
        Top = 45
        Width = 49
        Height = 21
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object vrbidentificacao: TDBEdit
        Left = 136
        Top = 72
        Width = 345
        Height = 21
        DataField = 'vrbidentificacao'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select vrbcodigo,cedcodigo,vrbidentificacao from vrb where vrb.v' +
        'rbcodigo=:vrbcodigo')
    Left = 320
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vrbcodigo'
      end>
    object registrovrbcodigo: TIntegerField
      FieldName = 'vrbcodigo'
      Required = True
    end
    object registrocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrocefidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cefidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 30
      Lookup = True
    end
    object registrovrbidentificacao: TStringField
      FieldName = 'vrbidentificacao'
      Required = True
      Size = 50
    end
  end
  object ced: tuniquery
    SQL.Strings = (
      'select cedcodigo,cedidentificacao from ced')
    Left = 280
    Top = 56
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 50
    end
  end
end
