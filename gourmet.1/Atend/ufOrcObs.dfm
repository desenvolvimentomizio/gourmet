object fOrcObs: TfOrcObs
  Left = 0
  Top = 0
  ActiveControl = orcobs
  Caption = 'Informa'#231#227'o Complementar'
  ClientHeight = 251
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object orcobs: TDBMemo
    Left = 16
    Top = 60
    Width = 500
    Height = 130
    Color = 14155775
    DataField = 'orcobs'
    DataSource = Dregistro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 250
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = orcobsChange
    OnKeyDown = orcobsKeyDown
    OnKeyPress = FormKeyPress
  end
  object pbotoes: TPanel
    Left = 0
    Top = 220
    Width = 534
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 1
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 74
      Height = 23
      Align = alLeft
      BevelOuter = bvLowered
      Caption = 'Incluindo'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 380
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 455
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 30
    Align = alTop
    Color = 12615680
    ParentBackground = False
    TabOrder = 2
    object lblCaracteresObs: TLabel
      Left = 202
      Top = 1
      Width = 138
      Height = 28
      Align = alLeft
      Caption = 'lblCaracteresObs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 1
      Width = 186
      Height = 28
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Caracteres restantes:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Dregistro: TDataSource
    Left = 464
    Top = 10
  end
end
