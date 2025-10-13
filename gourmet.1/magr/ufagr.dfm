inherited fagr: Tfagr
  ActiveControl = grecodigo
  Caption = 'Acumulador de Apura'#231#227'o Gerencial'
  ClientHeight = 178
  ExplicitHeight = 217
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 149
  end
  inherited paginas: TPageControl
    Height = 149
    ExplicitTop = -2
    inherited Principal: TTabSheet
      ExplicitLeft = -28
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = agrchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Origem'
        FocusControl = grecodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
        FocusControl = cedcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Destino'
        FocusControl = gredestino
      end
      object agrchave: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'agrchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object grecodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grecodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cedcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 22
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object gredestino: TDBEdit
        Left = 136
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gredestino'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select agrchave, grecodigo, cedcodigo, gredestino from agr where' +
        ' agrchave=:agrchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'agrchave'
        Value = nil
      end>
    object registroagrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'agrchave'
    end
    object registrogrecodigo: TIntegerField
      DisplayLabel = 'Grupo de Origem'
      FieldName = 'grecodigo'
      Required = True
    end
    object registrogreidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'greidentificacao'
      LookupDataSet = gre
      LookupKeyFields = 'grecodigo'
      LookupResultField = 'greidentificacao'
      KeyFields = 'grecodigo'
      Size = 50
      Lookup = True
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrocedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 25
      Lookup = True
    end
    object registrogredestino: TIntegerField
      DisplayLabel = 'Grupo de Destino'
      FieldName = 'gredestino'
      Required = True
    end
    object registrogredesidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'gredesidentificacao'
      LookupDataSet = gre
      LookupKeyFields = 'grecodigo'
      LookupResultField = 'greidentificacao'
      KeyFields = 'gredestino'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object gre: TUniQuery
    SQL.Strings = (
      'select grecodigo, greidentificacao from gre')
    Left = 560
    Top = 56
    object gregrecodigo: TIntegerField
      FieldName = 'grecodigo'
    end
    object gregreidentificacao: TStringField
      FieldName = 'greidentificacao'
      Size = 50
    end
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Left = 668
    Top = 96
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 25
    end
  end
end
