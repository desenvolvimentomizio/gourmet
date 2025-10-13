inherited fphg: Tfphg
  ActiveControl = phgidentificacao
  Caption = 'Hist'#243'ricos'
  ClientHeight = 152
  ClientWidth = 751
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 123
    Width = 751
    inherited bconfirma: TBitBtn
      Left = 597
    end
    inherited bcancela: TBitBtn
      Left = 672
    end
    inherited bfechar: TBitBtn
      Left = 532
    end
  end
  inherited paginas: TPageControl
    Width = 751
    Height = 123
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = phgcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = phgidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
        FocusControl = phgcomplemento
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object phgidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 585
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object phgcomplemento: TDBEdit
        Left = 136
        Top = 57
        Width = 401
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcomplemento'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select phgcodigo,phgidentificacao,phgcomplemento from phg where ' +
        'phgcodigo=:phgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'phgcodigo'
        Value = nil
      end>
    object registrophgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'phgidentificacao'
      Required = True
      Size = 80
    end
    object registrophgcomplemento: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'phgcomplemento'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
