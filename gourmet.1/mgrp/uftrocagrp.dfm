object ftrocagrp: Tftrocagrp
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Migrar produtos de Grupos'
  ClientHeight = 173
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 81
    Height = 13
    Caption = 'Grupo de Origem'
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 83
    Height = 13
    Caption = 'Grupo de Destino'
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 320
    Height = 13
    Caption = 'Este procedimento move todos produtos de um grupos para outro.'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 144
    Width = 400
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Alterando'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 246
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
      ExplicitLeft = 240
    end
    object bcancela: TBitBtn
      Left = 321
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object edOrigem: TEdit
    Left = 143
    Top = 53
    Width = 66
    Height = 21
    TabOrder = 1
  end
  object edDestino: TEdit
    Left = 143
    Top = 85
    Width = 66
    Height = 21
    TabOrder = 2
  end
  object consulta: TUniQuery
    Left = 256
    Top = 56
  end
end
