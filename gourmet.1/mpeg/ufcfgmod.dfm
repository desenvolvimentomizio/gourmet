object fcfgmod: Tfcfgmod
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Configura'#231#245'es'
  ClientHeight = 422
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 393
    Width = 499
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
      Left = 345
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 420
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
    end
    object bfechar: TBitBtn
      Left = 280
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
      OnClick = bfecharClick
    end
  end
  object paginas: TPageControl
    Left = 0
    Top = 0
    Width = 499
    Height = 393
    ActivePage = Principal
    Align = alClient
    TabOrder = 1
    object Principal: TTabSheet
      Caption = 'Principal'
    end
  end
  object registro: tuniquery
    Left = 280
    Top = 96
  end
  object DSRegistro: tunidatasource
    DataSet = registro
    Left = 288
    Top = 176
  end
  object consulta: tuniquery
    Left = 336
    Top = 100
  end
end
