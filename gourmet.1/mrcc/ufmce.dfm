inherited fmce: Tfmce
  ActiveControl = mcemotivo
  Caption = 'Cancelamento de Cr'#233'dito'
  ClientHeight = 163
  ClientWidth = 539
  ExplicitWidth = 555
  ExplicitHeight = 202
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 134
    Width = 539
    ExplicitTop = 134
    ExplicitWidth = 539
    inherited bconfirma: TBitBtn
      Left = 385
      ExplicitLeft = 385
    end
    inherited bcancela: TBitBtn
      Left = 460
      ExplicitLeft = 460
    end
    inherited bfechar: TBitBtn
      Left = 320
      ExplicitLeft = 320
    end
  end
  inherited paginas: TPageControl
    Width = 539
    Height = 134
    ExplicitWidth = 539
    ExplicitHeight = 134
    inherited Principal: TTabSheet
      ExplicitWidth = 531
      ExplicitHeight = 106
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
end
