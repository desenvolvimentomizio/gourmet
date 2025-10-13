object fivlinhacomplpro: Tfivlinhacomplpro
  Left = 0
  Top = 0
  ActiveControl = itoprocomple
  BorderIcons = []
  Caption = 'Complemento'
  ClientHeight = 223
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 269
    Height = 16
    Caption = 'Complementando a descri'#231#227'o do produto '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pbotoes: TPanel
    Left = 0
    Top = 192
    Width = 538
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    ParentBackground = False
    TabOrder = 0
    object bconfirma: TBitBtn
      Left = 384
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 459
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = bcancelaClick
    end
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 74
      Height = 23
      Align = alLeft
      BevelOuter = bvLowered
      Caption = 'Incluindo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = 13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object itoprocomple: TDBMemo
    Left = 16
    Top = 51
    Width = 500
    Height = 110
    Color = 16772033
    DataField = 'itoprocomple'
    DataSource = Dregistro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object Dregistro: TDataSource
    Left = 356
    Top = 8
  end
end
