inherited ftct: Tftct
  ActiveControl = tctidentificacao
  Caption = 'Tipo de Conta'
  ClientHeight = 121
  ClientWidth = 360
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 92
    Width = 360
    inherited bconfirma: TBitBtn
      Left = 206
    end
    inherited bcancela: TBitBtn
      Left = 281
    end
    inherited bfechar: TBitBtn
      Left = 141
    end
  end
  inherited paginas: TPageControl
    Width = 360
    Height = 92
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tctcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 67
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Conta'
        FocusControl = tctidentificacao
      end
      object tctcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tctcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tctidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 201
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tctidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tctcodigo, tctidentificacao from tct where tctcodigo=:tct' +
        'codigo')
    Left = 304
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tctcodigo'
        Value = nil
      end>
    object registrotctcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tctcodigo'
    end
    object registrotctidentificacao: TStringField
      DisplayLabel = 'Tipo de Conta'
      FieldName = 'tctidentificacao'
      Required = True
      Size = 30
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
