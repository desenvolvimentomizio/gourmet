inherited ftrb: Tftrb
  ActiveControl = trbidentificacao
  Caption = 'Tributa'#231'ao Especial de Produtos'
  ClientHeight = 118
  ClientWidth = 616
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 89
    Width = 616
    inherited bconfirma: TBitBtn
      Left = 462
    end
    inherited bcancela: TBitBtn
      Left = 537
    end
    inherited bfechar: TBitBtn
      Left = 397
    end
  end
  inherited paginas: TPageControl
    Width = 616
    Height = 89
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = trbCodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 35
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = trbidentificacao
      end
      object trbCodigo: TDBEdit
        Left = 136
        Top = 5
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'trbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object trbidentificacao: TDBEdit
        Left = 139
        Top = 32
        Width = 446
        Height = 21
        CustomHint = BalloonHint
        DataField = 'trbidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 292
    Top = 64
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select trbcodigo,trbidentificacao from trb where trb.trbcodigo=:' +
        'trbcodigo')
    Left = 296
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trbcodigo'
        Value = nil
      end>
    object registrotrbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'trbcodigo'
      Required = True
    end
    object registrotrbidentificacao: TStringField
      FieldName = 'trbidentificacao'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
