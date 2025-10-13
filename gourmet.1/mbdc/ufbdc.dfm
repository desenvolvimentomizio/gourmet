inherited fbdc: Tfbdc
  ActiveControl = bdcidentificacao
  Caption = 'Bandeira de Cart'#227'o '
  ClientHeight = 116
  ClientWidth = 484
  ExplicitWidth = 500
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 87
    Width = 484
    ExplicitTop = 88
    ExplicitWidth = 484
    inherited bconfirma: TBitBtn
      Left = 330
      ExplicitLeft = 330
    end
    inherited bcancela: TBitBtn
      Left = 405
      ExplicitLeft = 405
    end
    inherited bfechar: TBitBtn
      Left = 265
      ExplicitLeft = 265
    end
  end
  inherited paginas: TPageControl
    Width = 484
    Height = 87
    ExplicitWidth = 484
    ExplicitHeight = 88
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 476
      ExplicitHeight = 60
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = bdccodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = bdcidentificacao
      end
      object bdccodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bdccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object bdcidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 326
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bdcidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select bdccodigo, bdcidentificacao from bdc where bdccodigo=:bdc' +
        'codigo')
    Left = 268
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bdccodigo'
        Value = nil
      end>
    object registrobdccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'bdccodigo'
    end
    object registrobdcidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'bdcidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
