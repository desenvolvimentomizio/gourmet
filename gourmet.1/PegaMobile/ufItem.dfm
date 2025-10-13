object fItem: TfItem
  Left = 0
  Top = 0
  ClientHeight = 687
  ClientWidth = 606
  Caption = 'Dados do Item'
  CloseButton.Visible = False
  TitleButtons = <>
  OnClose = UnimFormClose
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimPanel4: TUnimPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 51
    Hint = ''
    Align = alTop
    Color = clSkyBlue
    BorderStyle = ubsSolid
    object UnimPanel5: TUnimPanel
      Left = 0
      Top = 0
      Width = 606
      Height = 2
      Hint = ''
      Align = alTop
      Color = clSkyBlue
      BorderStyle = ubsNone
    end
    object UnimBitBtn7: TUnimBitBtn
      Left = 6
      Top = 5
      Width = 120
      Height = 40
      Hint = ''
      Caption = 'Fechar'
      OnClick = UnimBitBtn7Click
    end
  end
  object UnimScrollBox1: TUnimScrollBox
    Left = 0
    Top = 51
    Width = 606
    Height = 636
    Hint = ''
    Align = alClient
    ScrollHeight = 0
    ScrollWidth = 0
    object MemPro: TUnimHTMLFrame
      Left = 0
      Top = 0
      Width = 604
      Height = 634
      Hint = ''
      BodyRTL = True
      HTML.Strings = (
        'tesste')
      Align = alClient
      Scrollable = True
    end
  end
end
