inherited fcnb: Tfcnb
  ActiveControl = cnbregistro
  Caption = 'Concilia'#231#227'o'
  ClientHeight = 140
  ClientWidth = 289
  ExplicitWidth = 305
  ExplicitHeight = 179
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 111
    Width = 289
    ExplicitTop = 111
    ExplicitWidth = 289
    inherited bconfirma: TBitBtn
      Left = 135
      ExplicitLeft = 135
    end
    inherited bcancela: TBitBtn
      Left = 210
      ExplicitLeft = 210
    end
    inherited bfechar: TBitBtn
      Left = 70
      ExplicitLeft = 70
    end
  end
  inherited paginas: TPageControl
    Width = 289
    Height = 111
    ExplicitWidth = 289
    ExplicitHeight = 111
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 281
      ExplicitHeight = 83
      object Label1: TLabel
        Left = 10
        Top = 20
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Registro'
        FocusControl = cnbregistro
      end
      object cnbregistro: TDBEdit
        Left = 136
        Top = 17
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cnbregistro'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cbAjustar: TCheckBox
        Left = 136
        Top = 44
        Width = 145
        Height = 17
        CustomHint = BalloonHint
        Caption = 'Ajustar data'
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cnbchave,'
      '  ccochave,'
      '  clbcodigo,'
      '  cnbregistro,'
      '  cnbdata,'
      '  cnbhora'
      'FROM cnb where cnbchave=:cnbchave')
    Left = 76
    Top = 0
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnbchave'
        Value = nil
      end>
    object registrocnbchave: TIntegerField
      FieldName = 'cnbchave'
    end
    object registroccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrocnbregistro: TDateField
      DisplayLabel = 'Data do Registro'
      FieldName = 'cnbregistro'
    end
    object registrocnbdata: TDateField
      FieldName = 'cnbdata'
    end
    object registrocnbhora: TTimeField
      FieldName = 'cnbhora'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
