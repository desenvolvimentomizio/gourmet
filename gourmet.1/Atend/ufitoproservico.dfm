object fitoproservico: Tfitoproservico
  Left = 0
  Top = 0
  ActiveControl = itoproservico
  BorderIcons = []
  Caption = 'Descri'#231#227'o do Servi'#231'o'
  ClientHeight = 231
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object itoproservico: TDBMemo
    Left = 16
    Top = 54
    Width = 500
    Height = 120
    Color = 16773849
    DataField = 'itoproservico'
    DataSource = Dregistro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object pbotoes: TPanel
    Left = 0
    Top = 200
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
    Alignment = taLeftJustify
    Caption = 'Descri'#231#227'o do Servi'#231'o'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object Dregistro: TDataSource
    Left = 464
    Top = 10
  end
end
