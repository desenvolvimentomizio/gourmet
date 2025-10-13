inherited fhhm: Tfhhm
  ActiveControl = tehcodigo
  Caption = 'Hist'#243'rico'
  ClientHeight = 182
  ClientWidth = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 153
    Width = 507
    inherited bconfirma: TBitBtn
      Left = 353
    end
    inherited bcancela: TBitBtn
      Left = 428
    end
    inherited bfechar: TBitBtn
      Left = 288
    end
  end
  inherited paginas: TPageControl
    Width = 507
    Height = 153
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 33
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object Label2: TLabel
        Left = 8
        Top = 6
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Est'#225'gio'
        FocusControl = tehcodigo
      end
      object hhmdescricao: TDBMemo
        Left = 136
        Top = 30
        Width = 357
        Height = 89
        CustomHint = BalloonHint
        DataField = 'hhmdescricao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tehcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tehcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
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
