inherited ftsh: Tftsh
  ActiveControl = hmdchave
  Caption = 'Sprint para Teste'
  ClientHeight = 239
  ClientWidth = 935
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 210
    Width = 935
    inherited bconfirma: TBitBtn
      Left = 781
    end
    inherited bcancela: TBitBtn
      Left = 856
    end
    inherited bfechar: TBitBtn
      Left = 716
    end
  end
  inherited paginas: TPageControl
    Width = 935
    Height = 210
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = tshchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'ria'
        FocusControl = hmdchave
      end
      object tshchave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tshchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object hmdchave: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hmdchave'
        DataSource = DSRegistro
        TabOrder = 1
        OnEnter = hmdchaveEnter
      end
    end
  end
  inherited registro: tuniquery
    BeforePost = registroBeforePost
    SQL.Strings = (
      
        'select tshchave, sptcodigo, hmdchave, tshdata, tshhora from tsh ' +
        'where tshchave=:tshchave and sptcodigo=:sptcodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tshchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sptcodigo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tshchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sptcodigo'
        ParamType = ptUnknown
      end>
    object registrotshchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'tshchave'
    end
    object registrosptcodigo: TIntegerField
      DisplayLabel = 'Sprint'
      FieldName = 'sptcodigo'
    end
    object registrohmdchave: TIntegerField
      DisplayLabel = 'Hist'#243'ria'
      FieldName = 'hmdchave'
      Required = True
    end
    object registrohmdtitulo: TStringField
      FieldKind = fkLookup
      FieldName = 'hmdtitulo'
      LookupDataSet = hmd
      LookupKeyFields = 'hmdchave'
      LookupResultField = 'hmdtitulo'
      KeyFields = 'hmdchave'
      Size = 50
      Lookup = True
    end
    object registrotshdata: TDateField
      FieldName = 'tshdata'
    end
    object registrotshhora: TTimeField
      FieldName = 'tshhora'
    end
  end
  object hmd: tuniquery
    SQL.Strings = (
      'select hmdchave, hmdtitulo from hmd')
    Params = <>
    Left = 408
    Top = 224
    object hmdhmdchave: TIntegerField
      FieldName = 'hmdchave'
    end
    object hmdhmdtitulo: TStringField
      FieldName = 'hmdtitulo'
      Size = 50
    end
  end
end
