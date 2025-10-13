object fnfcejustificativa: Tfnfcejustificativa
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Justificativa do cancelamento'
  ClientHeight = 218
  ClientWidth = 466
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
    Left = 8
    Top = 28
    Width = 424
    Height = 19
    Caption = 'Texto descritivo da Corre'#231#227'o:  (Entre 15 e 1000 caracteres.)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object textocorrecao: TMemo
    Left = 8
    Top = 63
    Width = 439
    Height = 90
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pbotoes: TPanel
    Left = 0
    Top = 189
    Width = 466
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object bconfirma: TBitBtn
      Left = 312
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      ModalResult = 1
      TabOrder = 0
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 387
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      ModalResult = 2
      TabOrder = 1
      OnClick = bcancelaClick
    end
  end
end
