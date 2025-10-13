inherited fuis: Tfuis
  ActiveControl = uiscodigo
  Caption = 'Percentual de Imposto'
  ClientHeight = 416
  ExplicitWidth = 812
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 387
    ExplicitTop = 387
  end
  inherited paginas: TPageControl
    Height = 387
    ExplicitHeight = 387
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 359
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 23
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#237'vel'
        FocusControl = uiscodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado da Federa'#231#227'o'
        FocusControl = ufscodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = uispercentual
      end
      object uiscodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'uiscodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ufscodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object uispercentual: TDBEdit
        Left = 136
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'uispercentual'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  uiscodigo,'
      '  ufscodigo,'
      '  uispercentual'
      'FROM uis'
      '  where uiscodigo=:uiscodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'uiscodigo'
        Value = nil
      end>
    object registrouiscodigo: TStringField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'uiscodigo'
      Required = True
      Size = 10
    end
    object registroufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 3
    end
    object registroufsnome: TStringField
      FieldKind = fkLookup
      FieldName = 'ufsnome'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufsnome'
      KeyFields = 'ufscodigo'
      Size = 50
      Lookup = True
    end
    object registrouispercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'uispercentual'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'select ufscodigo, ufsnome from ufs ')
    Left = 348
    Top = 48
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 3
    end
    object ufsufsnome: TStringField
      FieldName = 'ufsnome'
      Size = 50
    end
  end
end
