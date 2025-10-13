inherited ftlo: Tftlo
  Caption = 'Lota'#231#227'o'
  ClientHeight = 119
  ClientWidth = 539
  ExplicitWidth = 555
  ExplicitHeight = 158
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 90
    Width = 539
    ExplicitTop = 90
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
    Height = 90
    ExplicitWidth = 539
    ExplicitHeight = 90
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 531
      ExplicitHeight = 62
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tlocodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 136
        Top = 30
        Width = 382
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tloidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tlocodigo, tloidentificacao from tlo where tlocodigo=:tlo' +
        'codigo')
    Left = 284
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tlocodigo'
        Value = nil
      end>
    object registrotlocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tlocodigo'
    end
    object registrotloidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tloidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
