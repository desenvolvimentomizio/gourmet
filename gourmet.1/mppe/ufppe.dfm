inherited fppe: Tfppe
  ActiveControl = bconfirma
  Caption = 'Peso do Produto'
  ClientHeight = 165
  ClientWidth = 415
  ExplicitWidth = 431
  ExplicitHeight = 204
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 136
    Width = 415
    ExplicitTop = 131
    ExplicitWidth = 409
    inherited bconfirma: TBitBtn
      Left = 261
      ExplicitLeft = 255
    end
    inherited bcancela: TBitBtn
      Left = 336
      ExplicitLeft = 330
    end
    inherited bfechar: TBitBtn
      Left = 196
      ExplicitLeft = 190
    end
    object btPesar: TButton
      Left = 99
      Top = 4
      Width = 75
      Height = 21
      CustomHint = BalloonHint
      Align = alLeft
      Caption = 'btPesar'
      TabOrder = 4
    end
  end
  inherited paginas: TPageControl
    Width = 415
    Height = 136
    ExplicitWidth = 409
    ExplicitHeight = 131
    inherited Principal: TTabSheet
      ExplicitWidth = 407
      ExplicitHeight = 108
      object Label1: TLabel
        Left = 13
        Top = 31
        Width = 212
        Height = 23
        CustomHint = BalloonHint
        Caption = 'Quantidade em Quilos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbPeso: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 85
        Width = 334
        Height = 23
        CustomHint = BalloonHint
        Align = alBottom
        Caption = 'Coloque o produto sobre a Balan'#231'a'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object plPeso: TPanel
        Left = 248
        Top = 21
        Width = 137
        Height = 41
        CustomHint = BalloonHint
        BevelOuter = bvLowered
        BorderWidth = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object toquantidade: TDBText
          Left = 6
          Top = 6
          Width = 125
          Height = 29
          CustomHint = BalloonHint
          Align = alClient
          Alignment = taRightJustify
          Color = clYellow
          DataField = 'itoquantidade'
          DataSource = DSRegistro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Transparent = False
          ShowHint = False
          ExplicitLeft = 56
          ExplicitTop = 8
          ExplicitWidth = 65
          ExplicitHeight = 17
        end
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '00.00.00.000-01'
  end
  inherited DSRegistro: TUniDataSource
    Left = 212
    Top = 216
  end
  inherited cfg: TUniQuery
    Left = 100
    Top = 65532
  end
  inherited consulta: TUniQuery
    Left = 280
    Top = 65532
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select itochave, itoquantidade from ito where itochave=:itochave')
    Left = 164
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itochave'
        Value = nil
      end>
    object registroitochave: TIntegerField
      FieldName = 'itochave'
    end
    object registroitoquantidade: TFloatField
      FieldName = 'itoquantidade'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  inherited acoesfrm: TActionList
    Left = 148
    Top = 65532
  end
  inherited ImgBusca: TPngImageList
    Left = 348
    Top = 65528
  end
  object ACBrBAL: TACBrBAL
    Modelo = balToledo
    Porta = 'COM1'
    OnLePeso = ACBrBALLePeso
    Left = 192
    Top = 65535
  end
  object trm: TUniQuery
    SQL.Strings = (
      'select '
      'trmcodigo, '
      'trmidentificacao, '
      'trmbalamodelo,'
      '  trmbalaporta,'
      '  trmbalabaud,'
      '  trmbalahandshake,'
      '  trmbalaparity,'
      '  trmbalastop,'
      '  trmbaladata'
      'from trm'
      'where trmcodigo=:trmcodigo')
    Left = 236
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trmcodigo'
        Value = nil
      end>
    object trmtrmcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'trmcodigo'
    end
    object trmtrmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'trmidentificacao'
      Required = True
      Size = 50
    end
    object trmtrmbalamodelo: TStringField
      FieldName = 'trmbalamodelo'
      Size = 50
    end
    object trmtrmbalaporta: TStringField
      FieldName = 'trmbalaporta'
      Size = 50
    end
    object trmtrmbalabaud: TStringField
      FieldName = 'trmbalabaud'
      Size = 50
    end
    object trmtrmbalahandshake: TStringField
      FieldName = 'trmbalahandshake'
      Size = 50
    end
    object trmtrmbalaparity: TStringField
      FieldName = 'trmbalaparity'
      Size = 50
    end
    object trmtrmbalastop: TStringField
      FieldName = 'trmbalastop'
      Size = 50
    end
    object trmtrmbaladata: TStringField
      FieldName = 'trmbaladata'
      Size = 50
    end
  end
  object TmBalanca: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TmBalancaTimer
    Left = 60
    Top = 65528
  end
end
