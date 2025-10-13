inherited fopg: Tfopg
  ActiveControl = grpcodigo
  Caption = 'Op'#231#245'es'
  ClientHeight = 151
  ExplicitHeight = 190
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 122
    ExplicitTop = 122
  end
  inherited paginas: TPageControl
    Height = 122
    ExplicitHeight = 122
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 94
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = opgcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 90
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de produtos'
        FocusControl = grpcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Op'#231#227'o'
        FocusControl = opccodigo
      end
      object opgcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'opgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object grpcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grpcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object opccodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'opccodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  opgcodigo,'
      '  grpcodigo,'
      '  opccodigo,'
      '  sipcodigo,'
      '  stgcodigo'
      'FROM opg where opgcodigo=:opgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opgcodigo'
        Value = nil
      end>
    object registroopgcodigo: TIntegerField
      FieldName = 'opgcodigo'
    end
    object registrogrpcodigo: TIntegerField
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
    object registroopccodigo: TIntegerField
      FieldName = 'opccodigo'
      Required = True
    end
    object registroopcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'opcidentificacao'
      LookupDataSet = opc
      LookupKeyFields = 'opccodigo'
      LookupResultField = 'opcidentificacao'
      KeyFields = 'opccodigo'
      Required = True
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
    Left = 212
    Top = 256
    object grpgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object grpgrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
  end
  object opc: TUniQuery
    SQL.Strings = (
      'select opccodigo, opcidentificacao from opc')
    Left = 252
    Top = 256
    object opcopccodigo: TIntegerField
      FieldName = 'opccodigo'
    end
    object opcopcidentificacao: TStringField
      FieldName = 'opcidentificacao'
      Size = 50
    end
  end
end
