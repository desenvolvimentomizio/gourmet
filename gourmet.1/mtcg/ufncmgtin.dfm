object fncmgtin: Tfncmgtin
  Left = 0
  Top = 0
  ActiveControl = EdBarra
  BorderIcons = []
  Caption = 'Pesquisa por C'#243'digo de Barra'
  ClientHeight = 148
  ClientWidth = 566
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
    Top = 11
    Width = 116
    Height = 13
    Caption = 'Digite o C'#243'digo de Barra'
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 175
    Height = 13
    Caption = 'Texto para identifica'#231#227'o aproximada'
  end
  object Label3: TLabel
    Left = 8
    Top = 93
    Width = 71
    Height = 13
    Caption = 'NCM localizado'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 119
    Width = 566
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
      Caption = 'Pesquisando'
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
      Left = 412
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 487
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
  object EdBarra: TEdit
    Left = 208
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = EdBarraKeyPress
  end
  object mmpronome: TMemo
    Left = 208
    Top = 35
    Width = 345
    Height = 49
    TabStop = False
    TabOrder = 2
  end
  object EdNCM: TEdit
    Left = 208
    Top = 90
    Width = 81
    Height = 21
    TabStop = False
    TabOrder = 3
  end
  object ncm: TUniQuery
    Constraints = <>
    Left = 120
    Top = 40
  end
end
