inherited fgrt: Tfgrt
  ActiveControl = grtidentificacao
  Caption = 'Classes de Cliente'
  ClientHeight = 124
  ClientWidth = 492
  ExplicitWidth = 508
  ExplicitHeight = 163
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 95
    Width = 492
    inherited bconfirma: TBitBtn
      Left = 338
    end
    inherited bcancela: TBitBtn
      Left = 413
    end
    inherited bfechar: TBitBtn
      Left = 273
    end
  end
  inherited paginas: TPageControl
    Width = 492
    Height = 95
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = grtcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = grtidentificacao
      end
      object grtcodigo: TDBEdit
        Left = 144
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grtcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object grtidentificacao: TDBEdit
        Left = 144
        Top = 30
        Width = 313
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grtidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select grtcodigo, grtidentificacao from grt where grtcodigo=:grt' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grtcodigo'
        Value = nil
      end>
    object registrogrtcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grtcodigo'
    end
    object registrogrtidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'grtidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
