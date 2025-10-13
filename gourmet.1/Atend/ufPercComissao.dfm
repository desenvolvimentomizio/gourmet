object fPercComissao: TfPercComissao
  Left = 0
  Top = 0
  ActiveControl = iocpercentual
  BorderIcons = []
  Caption = 'Percentual de Comiss'#227'o'
  ClientHeight = 186
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 73
    Top = 72
    Width = 137
    Height = 16
    Caption = 'Percentual de Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pbotoes: TPanel
    Left = 0
    Top = 155
    Width = 359
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 74
      Height = 23
      Align = alLeft
      BevelOuter = bvLowered
      Caption = 'Alterando'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 205
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 280
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object iocpercentual: TDBEdit
    Left = 224
    Top = 69
    Width = 80
    Height = 24
    Color = clYellow
    DataField = 'iocpercentual'
    DataSource = DSRegistro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = iocpercentualExit
    OnKeyPress = FormKeyPress
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 359
    Height = 30
    Align = alTop
    Color = 12615680
    ParentBackground = False
    TabOrder = 2
    object lbTecnico: TLabel
      Left = 94
      Top = 1
      Width = 77
      Height = 28
      Align = alLeft
      Caption = 'lbTecnico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 1
      Width = 78
      Height = 28
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'T'#233'cnico:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object DSRegistro: TUniDataSource
    Left = 304
    Top = 24
  end
end
