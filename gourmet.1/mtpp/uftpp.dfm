inherited ftpp: Tftpp
  ActiveControl = tppiniciovalidade
  Caption = 'Partilha do ICM entre Estados'
  ClientHeight = 200
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 171
  end
  inherited paginas: TPageControl
    Height = 171
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = tppchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'In'#237'cio da Validade'
        FocusControl = tppiniciovalidade
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Final da Validade'
        FocusControl = tppfinalvalidade
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 154
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual do Estado de Origem'
        FocusControl = tpppercorigem
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 156
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual do Estado de Destino'
        FocusControl = tpppercdestino
      end
      object tppchave: TDBEdit
        Left = 200
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tppchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tppiniciovalidade: TDBEdit
        Left = 200
        Top = 30
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tppiniciovalidade'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tppfinalvalidade: TDBEdit
        Left = 200
        Top = 57
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tppfinalvalidade'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tpppercorigem: TDBEdit
        Left = 200
        Top = 84
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpppercorigem'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object tpppercdestino: TDBEdit
        Left = 200
        Top = 111
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpppercdestino'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 404
    Top = 248
  end
  inherited consulta: TUniQuery
    Left = 456
    Top = 156
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tppchave,'
      '  tppiniciovalidade,'
      '  tppfinalvalidade,'
      '  tpppercorigem,'
      '  tpppercdestino'
      'FROM tpp where tppchave=:tppchave')
    Left = 348
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tppchave'
        Value = nil
      end>
    object registrotppchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'tppchave'
    end
    object registrotppiniciovalidade: TDateField
      DisplayLabel = 'In'#237'cio da Validade'
      FieldName = 'tppiniciovalidade'
      Required = True
    end
    object registrotppfinalvalidade: TDateField
      DisplayLabel = 'Final da Validade'
      FieldName = 'tppfinalvalidade'
      Required = True
    end
    object registrotpppercorigem: TFloatField
      DisplayLabel = 'Percentual do Estado de Origem'
      FieldName = 'tpppercorigem'
      Required = True
      DisplayFormat = '#,##0.0'
      EditFormat = '#,##0.0'
    end
    object registrotpppercdestino: TFloatField
      DisplayLabel = 'Percentual do Estado de Destino'
      FieldName = 'tpppercdestino'
      Required = True
      DisplayFormat = '#,##0.0'
      EditFormat = '#,##0.0'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
