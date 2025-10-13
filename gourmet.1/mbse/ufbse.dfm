object fbse: Tfbse
  Left = 0
  Top = 0
  Caption = 'Estrutura Base'
  ClientHeight = 116
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object consulta: tuniquery
    Params = <>
    Left = 64
    Top = 44
  end
  object fechador: TTimer
    Enabled = False
    Interval = 100
    OnTimer = fechadorTimer
    Left = 120
    Top = 44
  end
end
