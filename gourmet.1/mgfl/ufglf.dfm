inherited fglf: Tfglf
  Caption = 'Gera'#231#227'o de Fluxo Financeiro'
  ClientHeight = 620
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 591
  end
  inherited paginas: TPageControl
    Height = 591
    inherited Principal: TTabSheet
      ExplicitLeft = -18
      ExplicitTop = -32
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = gflchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = gfldatainicial
      end
      object Label3: TLabel
        Left = 282
        Top = 33
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = gfldatafinal
      end
      object gflchave: TDBEdit
        Left = 120
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gflchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object gfldatainicial: TDBEdit
        Left = 120
        Top = 30
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gfldatainicial'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object gfldatafinal: TDBEdit
        Left = 336
        Top = 30
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gfldatafinal'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object gflagrupamento: TDBRadioGroup
        Left = 120
        Top = 57
        Width = 305
        Height = 88
        CustomHint = BalloonHint
        Caption = ' Forma de Agrupamento '
        Columns = 3
        DataField = 'gflagrupamento'
        DataSource = DSRegistro
        Items.Strings = (
          'Di'#225'rio'
          'Semanal'
          'Quinzenal'
          'Mensal'
          'Trimestral'
          'Semestral'
          'Geral')
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 252
    Top = 320
  end
  inherited cfg: TUniQuery
    Left = 476
    Top = 244
  end
  inherited consulta: TUniQuery
    Left = 304
    Top = 244
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gflchave,'
      '  gfldatainicial,'
      '  gfldatafinal,'
      '  gflagrupamento'
      'FROM gfl where gflchave=:gflchave')
    Left = 252
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gflchave'
        Value = nil
      end>
    object registrogflchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'gflchave'
    end
    object registrogfldatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'gfldatainicial'
    end
    object registrogfldatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'gfldatafinal'
    end
    object registrogflagrupamento: TIntegerField
      DisplayLabel = 'Agrupamento'
      FieldName = 'gflagrupamento'
    end
  end
  inherited acoesfrm: TActionList
    Top = 212
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
