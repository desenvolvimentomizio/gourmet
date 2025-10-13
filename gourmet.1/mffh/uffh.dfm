inherited ffh: Tffh
  ActiveControl = ffhidentificacao
  Caption = 'Fun'#231#227'o de Registro'
  ClientHeight = 125
  ClientWidth = 510
  ExplicitWidth = 526
  ExplicitHeight = 164
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 96
    Width = 510
    inherited bconfirma: TBitBtn
      Left = 356
    end
    inherited bcancela: TBitBtn
      Left = 431
    end
    inherited bfechar: TBitBtn
      Left = 291
    end
  end
  inherited paginas: TPageControl
    Width = 510
    Height = 96
    inherited Principal: TTabSheet
      ExplicitLeft = 8
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
        FocusControl = ffhcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = ffhidentificacao
      end
      object ffhcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ffhcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ffhidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 345
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ffhidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select ffhcodigo, ffhidentificacao from ffh')
    object registroffhcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ffhcodigo'
    end
    object registroffhidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ffhidentificacao'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
