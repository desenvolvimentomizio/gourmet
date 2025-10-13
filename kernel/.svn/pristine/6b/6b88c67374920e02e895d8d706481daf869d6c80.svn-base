inherited fmfi: Tfmfi
  Caption = 'Motivo do Estorno'
  ClientHeight = 602
  ClientWidth = 915
  ExplicitWidth = 931
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 573
    Width = 915
    ExplicitTop = 573
    ExplicitWidth = 915
    inherited bconfirma: TBitBtn
      Left = 761
      ExplicitLeft = 761
    end
    inherited bcancela: TBitBtn
      Left = 836
      ExplicitLeft = 836
    end
    inherited bfechar: TBitBtn
      Left = 696
      ExplicitLeft = 696
    end
  end
  inherited paginas: TPageControl
    Width = 915
    Height = 573
    ExplicitWidth = 915
    ExplicitHeight = 573
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = meacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Motivo do Estorno'
      end
      object meacodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object meamotivo: TDBMemo
        Left = 148
        Top = 30
        Width = 509
        Height = 59
        CustomHint = BalloonHint
        DataField = 'meamotivo'
        DataSource = DSRegistro
        MaxLength = 250
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select meacodigo,  clbcodigo, meamotivo from mea where meacodigo' +
        '=:meacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meacodigo'
        Value = nil
      end>
    object registromeacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'meacodigo'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object registromeamotivo: TStringField
      DisplayLabel = 'Motivo do Estorno'
      FieldName = 'meamotivo'
      Required = True
      Size = 255
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ccm: TUniQuery
    SQL.Strings = (
      'select meacodigo, ccochave from ccm limit 1')
    Constraints = <>
    Left = 496
    Top = 16
    object ccmmeacodigo: TIntegerField
      FieldName = 'meacodigo'
    end
    object ccmccochave: TIntegerField
      FieldName = 'ccochave'
    end
  end
end
