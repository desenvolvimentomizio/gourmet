inherited fnpp: Tfnpp
  ActiveControl = nppncm
  Caption = 'NCM para produtos de Substitui'#231#227'o Tribut'#225'ria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = nppchave
      end
      object Label2: TLabel
        Left = 3
        Top = 33
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de NCM ou NCM'
        FocusControl = nppncm
      end
      object nppchave: TDBEdit
        Left = 144
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'nppchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object nppncm: TDBEdit
        Left = 144
        Top = 30
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'nppncm'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  nppchave,'
      '  ppscodigo,'
      '  nppncm'
      'FROM npp'
      '  where nppchave=:nppchave and ppscodigo=:ppscodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nppchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ppscodigo'
        Value = nil
      end>
    object registronppchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'nppchave'
    end
    object registroppscodigo: TStringField
      FieldName = 'ppscodigo'
      Size = 30
    end
    object registronppncm: TStringField
      DisplayLabel = 'Grupo de NCM ou NCM'
      FieldName = 'nppncm'
      Required = True
      Size = 10
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
