object fPrinciTablet: TfPrinciTablet
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 865
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object plTablet: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 865
    Align = alClient
    TabOrder = 0
    object plTopo: TPanel
      Left = 1
      Top = 1
      Width = 589
      Height = 25
      Align = alTop
      Caption = 'Cliente Gourmet'
      TabOrder = 0
      object btFechar: TButton
        Left = 557
        Top = 1
        Width = 31
        Height = 23
        Align = alRight
        Caption = 'X'
        TabOrder = 0
        OnClick = btFecharClick
      end
      object btAtualizar: TButton
        Left = 526
        Top = 1
        Width = 31
        Height = 23
        Align = alRight
        Caption = 'A'
        TabOrder = 1
        OnClick = btAtualizarClick
      end
    end
    object Navegador: TWebBrowser
      Left = 1
      Top = 26
      Width = 589
      Height = 838
      Align = alClient
      TabOrder = 1
      ControlData = {
        4C000000E03C00009C5600000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
end
