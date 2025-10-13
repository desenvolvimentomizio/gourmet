object fcalcmd5: Tfcalcmd5
  Left = 0
  Top = 0
  Caption = 'fcalcmd5'
  ClientHeight = 219
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 119
    Width = 21
    Height = 13
    Caption = 'MD5'
  end
  object Label2: TLabel
    Left = 20
    Top = 48
    Width = 37
    Height = 13
    Caption = 'Arquivo'
  end
  object Button1: TButton
    Left = 378
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = Button1Click
  end
  object txtMD5: TEdit
    Left = 92
    Top = 116
    Width = 361
    Height = 21
    TabOrder = 1
  end
  object arquivo: TPanel
    Left = 92
    Top = 44
    Width = 305
    Height = 21
    Alignment = taLeftJustify
    Caption = 'arquivo'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 404
    Top = 44
    Width = 75
    Height = 23
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 320
    Top = 65532
  end
end
