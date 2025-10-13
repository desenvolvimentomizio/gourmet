object facesso: Tfacesso
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Acesso'
  ClientHeight = 120
  ClientWidth = 261
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
    Left = 32
    Top = 24
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 32
    Top = 51
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object usuario: TEdit
    Left = 96
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 96
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object pbotoes: TPanel
    Left = 0
    Top = 91
    Width = 261
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 2
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Autenticando'
      Color = 4227327
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
    object bconfirma: TBitBtn
      Left = 107
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
    end
    object bcancela: TBitBtn
      Left = 182
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
end
