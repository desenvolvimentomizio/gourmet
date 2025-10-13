object faguardepdv: Tfaguardepdv
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Conectando SEFAZ - Aguarde ...'
  ClientHeight = 178
  ClientWidth = 699
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 60
    Top = 60
    Width = 579
    Height = 58
    Margins.Left = 60
    Margins.Top = 60
    Margins.Right = 60
    Margins.Bottom = 60
    Align = alClient
    Alignment = taCenter
    Caption = 'Conectando SEFAZ - Aguarde ... '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 474
    ExplicitHeight = 40
  end
  object Timer1: TTimer
    Left = 240
    Top = 104
  end
end
