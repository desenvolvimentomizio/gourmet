inherited ftof: Tftof
  ActiveControl = tofidentificacao
  Caption = 'Informa'#231#227'o Complementar'
  ClientHeight = 175
  ClientWidth = 703
  ExplicitWidth = 719
  ExplicitHeight = 214
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 146
    Width = 703
    ExplicitTop = 123
    ExplicitWidth = 703
    inherited bconfirma: TBitBtn
      Left = 549
      ExplicitLeft = 549
    end
    inherited bcancela: TBitBtn
      Left = 624
      ExplicitLeft = 624
    end
    inherited bfechar: TBitBtn
      Left = 484
      ExplicitLeft = 484
    end
  end
  inherited paginas: TPageControl
    Width = 703
    Height = 146
    ExplicitWidth = 703
    ExplicitHeight = 123
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 695
      ExplicitHeight = 95
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tofcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#245'es'
      end
      object tofcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tofcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tofidentificacao: TDBMemo
        Left = 136
        Top = 30
        Width = 549
        Height = 76
        CustomHint = BalloonHint
        DataField = 'tofidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT tofcodigo'
      '     , tofidentificacao'
      'FROM tof'
      'WHERE tofcodigo = :tofcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tofcodigo'
        Value = nil
      end>
    object registrotofcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tofcodigo'
    end
    object registrotofidentificacao: TStringField
      DisplayWidth = 5000
      FieldName = 'tofidentificacao'
      Required = True
      Size = 5000
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
