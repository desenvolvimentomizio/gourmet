object fnumeromesas: Tfnumeromesas
  Left = 0
  Top = 0
  ClientHeight = 161
  ClientWidth = 479
  Caption = 'N'#250'mero da Mesa'
  ActiveControl = edNumeroMesa
  AutoHeight = False
  FullScreen = False
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
    Width = 479
    Height = 161
    Hint = ''
    Align = alTop
    Color = clCream
    BorderStyle = ubsSolid
    ExplicitTop = 5
    object UnimPanel5: TUnimPanel
      Left = 0
      Top = 0
      Width = 479
      Height = 2
      Hint = ''
      Align = alTop
      Color = clSkyBlue
      BorderStyle = ubsNone
      ExplicitWidth = 542
    end
    object UnimBitBtn7: TUnimBitBtn
      Left = 213
      Top = 96
      Width = 120
      Height = 40
      Hint = ''
      Caption = 'Confirma'
      ModalResult = 1
    end
    object UnimBitBtn1: TUnimBitBtn
      Left = 339
      Top = 96
      Width = 120
      Height = 40
      Hint = ''
      Caption = 'Cancela'
      ModalResult = 2
    end
    object edNumeroMesa: TUnimEdit
      Left = 343
      Top = 27
      Width = 116
      Height = 37
      Hint = ''
      Text = ''
      ParentFont = False
      TabOrder = 4
    end
    object UnimLabel1: TUnimLabel
      Left = 27
      Top = 32
      Width = 310
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'Informe o n'#250'mero da mesa'
    end
  end
end
