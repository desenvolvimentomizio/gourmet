inherited fbrg: Tfbrg
  ActiveControl = grpcodigo
  Caption = 'Compisi'#231#227'o ou Bsae do Grupo'
  ClientHeight = 146
  ExplicitHeight = 185
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 117
    ExplicitTop = 117
  end
  inherited paginas: TPageControl
    Height = 117
    ExplicitHeight = 117
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 89
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = brgchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 90
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Produtos'
        FocusControl = grpcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Composi'#231#227'o ou Base'
        FocusControl = brdcodigo
      end
      object brgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'brgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object grpcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grpcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object brdcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'brdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  brgchave,'
      '  grpcodigo,'
      '  brdcodigo'
      'FROM brg'
      '  where brgchave=:brgchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'brgchave'
        Value = nil
      end>
    object registrobrgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'brgchave'
    end
    object registrogrpcodigo: TIntegerField
      DisplayLabel = 'Grupo de Produtos'
      FieldName = 'grpcodigo'
      Required = True
    end
    object registrogrpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'grpidentificacao'
      LookupDataSet = grp
      LookupKeyFields = 'grpcodigo'
      LookupResultField = 'grpidentificacao'
      KeyFields = 'grpcodigo'
      Size = 50
      Lookup = True
    end
    object registrobrdcodigo: TIntegerField
      DisplayLabel = 'Borda'
      FieldName = 'brdcodigo'
      Required = True
    end
    object registrobrdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'brdidentificacao'
      LookupDataSet = brd
      LookupKeyFields = 'brdcodigo'
      LookupResultField = 'brdidentificacao'
      KeyFields = 'brdcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object grp: TUniQuery
    SQL.Strings = (
      'select grpcodigo, grpidentificacao from grp')
    Left = 624
    Top = 240
    object grpgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object grpgrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
  end
  object brd: TUniQuery
    SQL.Strings = (
      'select brdcodigo, brdidentificacao from brd')
    Left = 360
    Top = 272
    object brdbrdcodigo: TIntegerField
      FieldName = 'brdcodigo'
    end
    object brdbrdidentificacao: TStringField
      FieldName = 'brdidentificacao'
      Size = 50
    end
  end
end
