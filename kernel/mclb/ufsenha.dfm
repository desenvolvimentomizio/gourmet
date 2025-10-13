object fsenha: Tfsenha
  Left = 0
  Top = 0
  ActiveControl = EdtSenha
  BorderIcons = []
  Caption = 'Confirma Senha'
  ClientHeight = 85
  ClientWidth = 279
  Color = clSilver
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
    Left = 20
    Top = 20
    Width = 108
    Height = 13
    Caption = 'Confirma'#231#227'o da Senha'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 56
    Width = 279
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    ParentBackground = False
    TabOrder = 0
    object bconfirma: TBitBtn
      Left = 125
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 200
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = bcancelaClick
    end
  end
  object EdtSenha: TEdit
    Tag = 444
    Left = 144
    Top = 17
    Width = 121
    Height = 21
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    PasswordChar = '#'
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
end
