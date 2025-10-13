inherited famd: Tfamd
  ActiveControl = mdacodigo
  Caption = 'M'#243'dulos'
  ClientHeight = 114
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 85
  end
  inherited paginas: TPageControl
    Height = 85
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        Caption = 'Chave'
        FocusControl = amdchave
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 34
        Height = 13
        Caption = 'M'#243'dulo'
        FocusControl = mdacodigo
      end
      object amdchave: TDBEdit
        Left = 136
        Top = 3
        Width = 69
        Height = 21
        DataField = 'amdchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mdacodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 69
        Height = 21
        DataField = 'mdacodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited cfg: tuniquery
    Left = 416
    Top = 44
  end
  inherited consulta: tuniquery
    Left = 348
    Top = 48
  end
  inherited registro: tuniquery
    AfterInsert = registroAfterInsert
    SQL.Strings = (
      
        'select  amdchave, aplcodigo, mdacodigo from amd where amdchave=:' +
        'amdchave and aplcodigo=:aplcodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'amdchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aplcodigo'
        ParamType = ptUnknown
      end>
    Left = 288
    Top = 44
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'amdchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aplcodigo'
        ParamType = ptUnknown
      end>
    object registroamdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'amdchave'
    end
    object registroaplcodigo: TIntegerField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'aplcodigo'
      Required = True
    end
    object registromdacodigo: TIntegerField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'mdacodigo'
      Required = True
    end
    object registromdaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mdaidentificacao'
      LookupDataSet = mda
      LookupKeyFields = 'mdacodigo'
      LookupResultField = 'mdaidentificacao'
      KeyFields = 'mdacodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited pfr: tuniquery
    Left = 504
    Top = 64
  end
  object apl: tuniquery
    SQL.Strings = (
      'select aplcodigo, aplidentificacao from apl')
    Params = <>
    Left = 440
    Top = 284
    object aplaplcodigo: TIntegerField
      FieldName = 'aplcodigo'
    end
    object aplaplidentificacao: TStringField
      FieldName = 'aplidentificacao'
      Size = 50
    end
  end
  object mda: tuniquery
    SQL.Strings = (
      'select mdacodigo, mdaidentificacao from mda')
    Params = <>
    Left = 472
    Top = 284
    object mdamdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object mdamdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 50
    end
  end
end
