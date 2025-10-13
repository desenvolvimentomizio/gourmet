object flogos: Tflogos
  Left = 0
  Top = 0
  Caption = 'Verifica'#231#227'o de produtos'
  ClientHeight = 701
  ClientWidth = 1216
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
  object pbotoes: TPanel
    Left = 0
    Top = 672
    Width = 1216
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    ExplicitTop = 404
    ExplicitWidth = 796
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Visualizar'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bfechar: TBitBtn
      Left = 1147
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 1
      Visible = False
      OnClick = bfecharClick
      ExplicitLeft = 577
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 1216
    Height = 672
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
