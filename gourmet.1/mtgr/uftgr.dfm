inherited ftgr: Tftgr
  ActiveControl = tgridentificacao
  Caption = 'Tipo de Grupo de Produto'
  ClientHeight = 116
  ClientWidth = 498
  ExplicitWidth = 514
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 87
    Width = 498
    inherited bconfirma: TBitBtn
      Left = 344
    end
    inherited bcancela: TBitBtn
      Left = 419
    end
    inherited bfechar: TBitBtn
      Left = 279
    end
  end
  inherited paginas: TPageControl
    Width = 498
    Height = 87
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
        FocusControl = tgrcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 67
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Grupo'
        FocusControl = tgridentificacao
      end
      object tgrcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tgrcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tgridentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 329
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tgridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tgrcodigo, tgridentificacao from tgr where tgrcodigo=:tgr' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgrcodigo'
        Value = nil
      end>
    object registrotgrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tgrcodigo'
    end
    object registrotgridentificacao: TStringField
      DisplayLabel = 'Tipo de Grupo'
      FieldName = 'tgridentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
