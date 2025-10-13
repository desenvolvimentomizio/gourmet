object UnimFormClb: TUnimFormClb
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Colaboradores'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBList1: TUnimDBList
    Left = 0
    Top = 0
    Width = 320
    Height = 430
    Hint = ''
    Align = alClient
    ExplicitLeft = 56
    ExplicitTop = 40
    ExplicitWidth = 225
    ExplicitHeight = 235
  end
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 430
    Width = 320
    Height = 50
    Hint = ''
    Align = alBottom
    object UnimBitBtn1: TUnimBitBtn
      AlignWithMargins = True
      Left = 44
      Top = 4
      Width = 133
      Height = 42
      Hint = ''
      Align = alRight
      Caption = 'Confirma'
      ExplicitLeft = 4
      ExplicitHeight = 56
    end
    object UnimBitBtnCancela: TUnimBitBtn
      AlignWithMargins = True
      Left = 183
      Top = 4
      Width = 133
      Height = 42
      Hint = ''
      Align = alRight
      Caption = 'Cancela'
      ExplicitLeft = 212
      ExplicitTop = 5
      ExplicitHeight = 56
    end
  end
  object UniDataSourceClb: TUniDataSource
    DataSet = UniMainModule.clb
    Left = 240
    Top = 208
  end
end
