inherited fpsh: Tfpsh
  ActiveControl = hmdchave
  Caption = 'Tarefa'
  ClientHeight = 116
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 87
  end
  inherited paginas: TPageControl
    Height = 87
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = pshchave
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'ria'
        FocusControl = hmdchave
      end
      object pshchave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pshchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object hmdchave: TDBEdit
        Left = 136
        Top = 30
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hmdchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    BeforePost = registroBeforePost
    SQL.Strings = (
      
        'select pshchave, sprcodigo, hmdchave, pshdata, pshhora from psh ' +
        'where pshchave=:pshchave and sprcodigo=:sprcodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pshchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sprcodigo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pshchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sprcodigo'
        ParamType = ptUnknown
      end>
    object registropshchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'pshchave'
    end
    object registrosprcodigo: TIntegerField
      DisplayLabel = 'Tarefa'
      FieldName = 'sprcodigo'
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
    object registropshdata: TDateField
      FieldName = 'pshdata'
    end
    object registropshhora: TTimeField
      FieldName = 'pshhora'
    end
  end
  inherited cau: tuniquery
    Left = 616
    Top = 128
  end
  object hmd: tuniquery
    SQL.Strings = (
      'select hmdchave, hmdtitulo from hmd')
    Params = <>
    Left = 240
    Top = 228
    object hmdhmdchave: TIntegerField
      FieldName = 'hmdchave'
    end
    object hmdhmdtitulo: TStringField
      FieldName = 'hmdtitulo'
      Size = 50
    end
  end
end
