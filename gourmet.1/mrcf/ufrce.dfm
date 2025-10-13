inherited frce: Tfrce
  ActiveControl = mcemotivo
  Caption = 'Cancelamento de Cr'#233'dito'
  ClientHeight = 167
  ClientWidth = 537
  ExplicitWidth = 553
  ExplicitHeight = 206
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 138
    Width = 537
    inherited bconfirma: TBitBtn
      Left = 383
    end
    inherited bcancela: TBitBtn
      Left = 458
    end
    inherited bfechar: TBitBtn
      Left = 318
    end
  end
  inherited paginas: TPageControl
    Width = 537
    Height = 138
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = mcechave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Motivo'
        FocusControl = mcechave
      end
      object mcechave: TDBEdit
        Left = 138
        Top = 3
        Width = 71
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mcechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mcemotivo: TDBMemo
        Left = 138
        Top = 30
        Width = 383
        Height = 59
        CustomHint = BalloonHint
        DataField = 'mcemotivo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcechave,'
      '  rcrchave,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  mcemotivo,'
      '  mecregistro'
      'FROM mce where mcechave=:mcechave and rcrchave=:rcrchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mcechave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rcrchave'
        Value = nil
      end>
    object registromcechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'mcechave'
    end
    object registrorcrchave: TIntegerField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'rcrchave'
    end
    object registrotmccodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tmccodigo'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object registromcemotivo: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'mcemotivo'
      Required = True
      Size = 250
    end
    object registromecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
