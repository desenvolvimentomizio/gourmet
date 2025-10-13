inherited fhhm: Tfhhm
  ActiveControl = hhmdescricao
  Caption = 'Hist'#243'rico'
  ClientHeight = 156
  ClientWidth = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 127
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
    Height = 127
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 11
        Top = 6
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object hhmdescricao: TDBMemo
        Left = 139
        Top = 3
        Width = 357
        Height = 89
        CustomHint = BalloonHint
        DataField = 'hhmdescricao'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited consulta: tuniquery
    Left = 360
    Top = 4
  end
  inherited registro: tuniquery
    BeforePost = registroBeforePost
    SQL.Strings = (
      
        'select hhmchave, hmdchave, clbcodigo, tehcodigo, hhmdescricao, h' +
        'hmdata, hhmhora, tshchave, pshchave from hhm where hhmchave=:hhm' +
        'chave and hmdchave=:hmdchave')
    Params = <
      item
        DataType = ftUnknown
        Name = 'hhmchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hmdchave'
        ParamType = ptUnknown
      end>
    Left = 280
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hhmchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hmdchave'
        ParamType = ptUnknown
      end>
    object registrohhmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'hhmchave'
    end
    object registrohmdchave: TIntegerField
      DisplayLabel = 'Hist'#243'ria'
      FieldName = 'hmdchave'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object registrotehcodigo: TIntegerField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'tehcodigo'
      Required = True
    end
    object registrotehidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tehidentificacao'
      LookupDataSet = teh
      LookupKeyFields = 'tehcodigo'
      LookupResultField = 'tehidentificacao'
      KeyFields = 'tehcodigo'
      Size = 35
      Lookup = True
    end
    object registrohhmdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'hhmdescricao'
      Required = True
      Size = 250
    end
    object registrohhmdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'hhmdata'
    end
    object registrohhmhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'hhmhora'
    end
    object registrotshchave: TIntegerField
      FieldName = 'tshchave'
    end
    object registropshchave: TIntegerField
      FieldName = 'pshchave'
    end
  end
  object teh: tuniquery
    SQL.Strings = (
      'select tehcodigo, tehidentificacao from teh')
    Params = <>
    Left = 372
    Top = 44
    object tehtehcodigo: TIntegerField
      FieldName = 'tehcodigo'
    end
    object tehtehidentificacao: TStringField
      FieldName = 'tehidentificacao'
      Size = 35
    end
  end
end
