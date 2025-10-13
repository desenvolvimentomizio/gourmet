inherited fccormg: Tfccormg
  ActiveControl = pcgcodigo
  Caption = 'Contabilica'#231#227'o'
  ClientHeight = 218
  ExplicitHeight = 257
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 189
  end
  inherited paginas: TPageControl
    Height = 189
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rmgchave
      end
      object Label2: TLabel
        Left = 3
        Top = 33
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil'
        FocusControl = pcgcodigo
      end
      object Label3: TLabel
        Left = 3
        Top = 60
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object Label4: TLabel
        Left = 3
        Top = 87
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
      end
      object rmgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rmgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pcgcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object rmgcomplemento: TDBMemo
        Left = 136
        Top = 84
        Width = 425
        Height = 53
        CustomHint = BalloonHint
        DataField = 'rmgcomplemento'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmgchave,'
      '  phgcodigo,'
      '  rmgdata,'
      '  rmgvalor,'
      '  rmgcomplemento,'
      '  pcgcodigo,'
      '  rmgcompetencia,'
      '  rmginclusao,'
      '  rmgtipo,'
      '  cedcodigo'
      'FROM rmg where rmgchave=:rmgcahve')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmgcahve'
        Value = nil
      end>
    object registrormgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rmgchave'
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrormgcomplemento: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'rmgcomplemento'
      Size = 250
    end
    object registrormgvalor: TFloatField
      FieldName = 'rmgvalor'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
