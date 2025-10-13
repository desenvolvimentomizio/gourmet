inherited fttc: Tfttc
  ActiveControl = ttcidentificacao
  Caption = 'Tipo de Chamado'
  ClientHeight = 119
  ClientWidth = 516
  ExplicitWidth = 532
  ExplicitHeight = 158
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 90
    Width = 516
    inherited bconfirma: TBitBtn
      Left = 362
    end
    inherited bcancela: TBitBtn
      Left = 437
    end
    inherited bfechar: TBitBtn
      Left = 297
    end
  end
  inherited paginas: TPageControl
    Width = 516
    Height = 90
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ttccodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = ttcidentificacao
      end
      object ttccodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ttcidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 350
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttcidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ttccodigo, ttcidentificacao from ttc where ttccodigo=:ttc' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ttccodigo'
        Value = nil
      end>
    object registrottccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ttccodigo'
    end
    object registrottcidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ttcidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
