object fprinci: Tfprinci
  Left = 0
  Top = 0
  Caption = 'fprinci'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbLicanca: TLabel
    Left = 48
    Top = 64
    Width = 43
    Height = 13
    Caption = 'lbLicanca'
  end
  object btChamaLicenca: TButton
    Left = 296
    Top = 104
    Width = 187
    Height = 25
    Caption = 'Ler Licen'#231'a'
    TabOrder = 0
    OnClick = btChamaLicencaClick
  end
end
