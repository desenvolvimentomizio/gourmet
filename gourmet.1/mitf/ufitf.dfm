inherited fitf: Tfitf
  ActiveControl = fercodigo
  Caption = 'Utens'#237'lio'
  ClientHeight = 125
  ExplicitHeight = 164
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 96
  end
  inherited paginas: TPageControl
    Height = 96
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = itfchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Utens'#237'lio'
        FocusControl = fercodigo
      end
      object itfchave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itfchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fercodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fercodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itfchave,'
      '  orcchave,'
      '  fercodigo,'
      '  clbcodigo,'
      '  itfdatasaida,'
      '  itfdataretorno'
      'FROM itf where itfchave=:itfchave')
    Left = 236
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itfchave'
        Value = nil
      end>
    object registroitfchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'itfchave'
    end
    object registroorcchave: TIntegerField
      DisplayLabel = 'Atendimento'
      FieldName = 'orcchave'
    end
    object registrofercodigo: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'fercodigo'
      Required = True
    end
    object registroferidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'feridentificacao'
      LookupDataSet = fer
      LookupKeyFields = 'fercodigo'
      LookupResultField = 'feridentificacao'
      KeyFields = 'fercodigo'
      Size = 50
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
    end
    object registroitfdatasaida: TDateField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'itfdatasaida'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object fer: TUniQuery
    SQL.Strings = (
      'select fercodigo, feridentificacao from fer')
    Left = 376
    Top = 248
    object ferfercodigo: TIntegerField
      FieldName = 'fercodigo'
    end
    object ferferidentificacao: TStringField
      FieldName = 'feridentificacao'
      Size = 50
    end
  end
end
