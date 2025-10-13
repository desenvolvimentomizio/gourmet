object fcliorc: Tfcliorc
  Left = 0
  Top = 0
  ActiveControl = orcnome
  BorderIcons = []
  Caption = 'Identifica'#231#227'o para Or'#231'amento'
  ClientHeight = 194
  ClientWidth = 727
  Color = 13827507
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 24
    Top = 28
    Width = 153
    Height = 18
    Caption = 'Nome - Raz'#227'o Social'
    FocusControl = orcnome
  end
  object Label2: TLabel
    Left = 24
    Top = 75
    Width = 69
    Height = 18
    Caption = 'Endere'#231'o'
    FocusControl = orcendereco
  end
  object Label3: TLabel
    Left = 24
    Top = 123
    Width = 65
    Height = 18
    Caption = 'Telefone'
    FocusControl = orctelefone
  end
  object orcnome: TDBEdit
    Left = 200
    Top = 25
    Width = 510
    Height = 26
    CharCase = ecUpperCase
    DataField = 'orcnome'
    DataSource = Dregistro
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object orcendereco: TDBEdit
    Left = 200
    Top = 72
    Width = 510
    Height = 26
    CharCase = ecUpperCase
    DataField = 'orcendereco'
    DataSource = Dregistro
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object orctelefone: TDBEdit
    Left = 200
    Top = 120
    Width = 245
    Height = 26
    CharCase = ecUpperCase
    DataField = 'orctelefone'
    DataSource = Dregistro
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object pbotoes: TPanel
    Left = 0
    Top = 165
    Width = 727
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Alterando'
      Color = 4227327
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
      Left = 573
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 648
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object bfechar: TBitBtn
      Left = 508
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
    end
  end
  object Dregistro: TDataSource
    Left = 504
    Top = 106
  end
end
