object fnfcecorrecao: Tfnfcecorrecao
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Informe a corre'#231#227'o'
  ClientHeight = 189
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 28
    Width = 292
    Height = 13
    Caption = 'Texto descritivo da Corre'#231#227'o:  (Entre 15 e 1000 caracteres.)'
  end
  object textocorrecao: TMemo
    Left = 8
    Top = 47
    Width = 320
    Height = 66
    TabOrder = 0
  end
  object pbotoes: TPanel
    Left = 0
    Top = 160
    Width = 336
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object bconfirma: TBitBtn
      Left = 182
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 257
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = bcancelaClick
    end
  end
end
