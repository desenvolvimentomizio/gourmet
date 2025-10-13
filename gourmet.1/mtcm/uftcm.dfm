inherited ftcm: Tftcm
  ActiveControl = tcmidentificacao
  Caption = 'Categoria de Chamado'
  ClientHeight = 119
  ClientWidth = 611
  ExplicitWidth = 627
  ExplicitHeight = 158
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 90
    Width = 611
    inherited bconfirma: TBitBtn
      Left = 457
    end
    inherited bcancela: TBitBtn
      Left = 532
    end
    inherited bfechar: TBitBtn
      Left = 392
    end
  end
  inherited paginas: TPageControl
    Width = 611
    Height = 90
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tcmcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tcmidentificacao
      end
      object tcmcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcmcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tcmidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 446
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcmidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tcmcodigo, tcmidentificacao from tcm where tcmcodigo=:tcm' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcmcodigo'
        Value = nil
      end>
    object registrotcmcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tcmcodigo'
    end
    object registrotcmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tcmidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
