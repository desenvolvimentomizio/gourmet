inherited ffap: Tffap
  ActiveControl = fabcodigo
  Caption = 'C'#243'digo do Fabricante'
  ClientHeight = 146
  ClientWidth = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 117
    Width = 429
    inherited bconfirma: TBitBtn
      Left = 275
    end
    inherited bcancela: TBitBtn
      Left = 350
    end
    inherited bfechar: TBitBtn
      Left = 210
    end
  end
  inherited paginas: TPageControl
    Width = 429
    Height = 117
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fapcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fabricante'
        FocusControl = fabcodigo
      end
      object Label3: TLabel
        Left = 11
        Top = 60
        Width = 119
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'd.  Pr'#243'prio/Refer'#234'ncia'
        FocusControl = fapproprio
      end
      object fapcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fapcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fabcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fabcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object fapproprio: TDBEdit
        Left = 136
        Top = 57
        Width = 265
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fapproprio'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited consulta: TUniQuery
    Left = 328
    Top = 28
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fapcodigo,'
      '  fabcodigo,'
      '  fapproprio'
      'FROM fap'
      'WHERE fapcodigo = :fapcodigo')
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fapcodigo'
        Value = nil
      end>
    object registrofapcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fapcodigo'
    end
    object registrofabcodigo: TIntegerField
      DisplayLabel = 'Fabricante'
      FieldName = 'fabcodigo'
      Required = True
    end
    object registrofabidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'fabidentificacao'
      LookupDataSet = fab
      LookupKeyFields = 'fabcodigo'
      LookupResultField = 'fabidentificacao'
      KeyFields = 'fabcodigo'
      Size = 35
      Lookup = True
    end
    object registrofapproprio: TStringField
      DisplayLabel = 'C'#243'digo Pr'#243'prio / Refer'#234'ncia'
      FieldName = 'fapproprio'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object fab: TUniQuery
    SQL.Strings = (
      'select fabcodigo, fabidentificacao from fab')
    Left = 636
    Top = 244
    object fabfabcodigo: TIntegerField
      FieldName = 'fabcodigo'
    end
    object fabfabidentificacao: TStringField
      FieldName = 'fabidentificacao'
      Size = 35
    end
  end
end
