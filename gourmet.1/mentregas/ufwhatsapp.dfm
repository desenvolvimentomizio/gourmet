inherited fwhatsapp: Tfwhatsapp
  ActiveControl = cfgmgoumensapedido0
  Caption = 'Mensagens do Whatsapp'
  ClientHeight = 499
  ClientWidth = 686
  ExplicitWidth = 702
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 470
    Width = 686
    inherited bconfirma: TBitBtn
      Left = 532
    end
    inherited bcancela: TBitBtn
      Left = 607
    end
    inherited bfechar: TBitBtn
      Left = 467
    end
  end
  inherited paginas: TPageControl
    Width = 686
    Height = 470
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 678
      ExplicitHeight = 442
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = cfgcodigo
      end
      object Label2: TLabel
        Left = 128
        Top = 48
        Width = 201
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Mensagem enviada no registro do pedido:'
      end
      object Label3: TLabel
        Left = 128
        Top = 176
        Width = 211
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Mensagem enviada na sa'#237'da do entregador:'
      end
      object Label4: TLabel
        Left = 128
        Top = 312
        Width = 185
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Mensagem enviada de agradecimento:'
      end
      object cfgcodigo: TDBEdit
        Left = 128
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgmgoumensasaida0: TDBMemo
        Left = 128
        Top = 192
        Width = 525
        Height = 89
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgmgoumensasaida0'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgmgoumensaretorno0: TDBMemo
        Left = 128
        Top = 328
        Width = 525
        Height = 89
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgmgoumensaretorno0'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cfgmgoumensapedido0: TDBMemo
        Left = 128
        Top = 64
        Width = 525
        Height = 89
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgmgoumensapedido0'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgmgoumensapedido0,'
      '  cfgmgoumensasaida0,'
      '  cfgmgoumensaretorno0'
      '  FROM'
      '  cfgmgou where cfgcodigo=:cfgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cfgcodigo'
    end
    object registrocfgmgoumensapedido0: TStringField
      DisplayLabel = 'Mensagem enviada no registro do pedido:'
      FieldName = 'cfgmgoumensapedido0'
      Required = True
      Size = 5000
    end
    object registrocfgmgoumensasaida0: TStringField
      FieldName = 'cfgmgoumensasaida0'
      Required = True
      Size = 5000
    end
    object registrocfgmgoumensaretorno0: TStringField
      FieldName = 'cfgmgoumensaretorno0'
      Required = True
      Size = 5000
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited stg: TUniQuery
    Left = 524
    Top = 384
  end
  inherited consultashema: TUniQuery
    Left = 396
    Top = 288
  end
  inherited stgid: TUniQuery
    Left = 452
    Top = 336
  end
  inherited cfgalterado: TUniQuery
    Left = 372
    Top = 368
  end
end
