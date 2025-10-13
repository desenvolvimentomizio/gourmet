object fTrnasfereMesa: TfTrnasfereMesa
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Transfer'#234'ncia de Mesa'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object edMesaOrigem: TUnimEdit
    Left = 232
    Top = 24
    Width = 65
    Height = 47
    Hint = ''
    Text = ''
    ParentFont = False
    TabOrder = 0
  end
  object UnimLabel1: TUnimLabel
    Left = 16
    Top = 32
    Width = 185
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Mesa de ORIGEM'
    ParentFont = False
  end
  object edMesaDestino: TUnimEdit
    Left = 232
    Top = 88
    Width = 65
    Height = 47
    Hint = ''
    Text = ''
    ParentFont = False
    TabOrder = 1
  end
  object UnimLabel2: TUnimLabel
    Left = 16
    Top = 104
    Width = 185
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Mesa de DESTINO'
    ParentFont = False
  end
  object btCancela: TUnimBitBtn
    Left = 160
    Top = 184
    Width = 137
    Height = 47
    Hint = ''
    Caption = 'Cancela'
    OnClick = btCancelaClick
  end
  object btConfirma: TUnimBitBtn
    Left = 16
    Top = 184
    Width = 113
    Height = 47
    Hint = ''
    Caption = 'Confirma'
    OnClick = btConfirmaClick
  end
end
