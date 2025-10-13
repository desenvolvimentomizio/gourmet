object fpesquisa: Tfpesquisa
  Left = 0
  Top = 0
  ActiveControl = listacampos
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa'
  ClientHeight = 91
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 91
    Height = 13
    Caption = 'Campo a &pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 78
    Height = 13
    Caption = 'Texto a &localizar'
    FocusControl = texto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object texto: TEdit
    Left = 132
    Top = 35
    Width = 241
    Height = 21
    TabOrder = 1
    OnEnter = textoEnter
    OnKeyPress = FormKeyPress
  end
  object ptexto: TPanel
    Left = 132
    Top = 62
    Width = 241
    Height = 19
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 2
    TabOrder = 2
    Visible = False
  end
  object listacampos: TComboBox
    Left = 132
    Top = 8
    Width = 241
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnEnter = listacamposEnter
    OnKeyPress = FormKeyPress
  end
  object pbotoes: TPanel
    Left = 0
    Top = 62
    Width = 386
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 3
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Pesquisando'
      Color = 4227327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object bcancela: TBitBtn
      Left = 307
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = bcancelaClick
    end
    object blocalizar: TBitBtn
      Left = 241
      Top = 4
      Width = 66
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      Default = True
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = blocalizarClick
    end
  end
  object DSTabela: TUniDataSource
    Left = 84
    Top = 12
  end
end
