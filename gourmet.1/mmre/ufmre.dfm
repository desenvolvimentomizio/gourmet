inherited fmre: Tfmre
  ActiveControl = bplcodigo
  Caption = 'Uso de relat'#243'rio pelos m'#243'dulos'
  ClientHeight = 446
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 417
    ExplicitTop = 417
  end
  inherited paginas: TPageControl
    Height = 417
    ExplicitHeight = 417
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 389
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = mrechave
      end
      object Label3: TLabel
        Left = 16
        Top = 33
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#243'dulo'
        FocusControl = bplcodigo
      end
      object mrechave: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mrechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object bplcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT mrechave'
      '     , relcodigo'
      '     , bplcodigo'
      'FROM mre'
      'WHERE mre.mrechave = :mrechave'
      'AND relcodigo = :relcodigo')
    Left = 284
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'mrechave'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'relcodigo'
        Value = nil
      end>
    object registromrechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'mrechave'
    end
    object registrorelcodigo: TStringField
      DisplayLabel = 'Relat'#243'rio'
      FieldName = 'relcodigo'
      Size = 11
    end
    object registrobplcodigo: TIntegerField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'bplcodigo'
      Required = True
    end
    object registrobplidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'bplidentificacao'
      LookupDataSet = bpl
      LookupKeyFields = 'bplcodigo'
      LookupResultField = 'bplidentificacao'
      KeyFields = 'bplcodigo'
      Size = 80
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object bpl: TUniQuery
    SQL.Strings = (
      'SELECT bplcodigo'
      '     , bplidentificacao'
      'FROM bpl')
    Left = 280
    Top = 272
    object bplbplcodigo: TIntegerField
      FieldName = 'bplcodigo'
    end
    object bplbplidentificacao: TStringField
      FieldName = 'bplidentificacao'
      Size = 255
    end
  end
end
