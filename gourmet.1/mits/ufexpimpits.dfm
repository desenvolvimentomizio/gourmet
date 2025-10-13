object fexpimpits: Tfexpimpits
  Left = 0
  Top = 0
  Caption = 'Importa'#231#227'o e exporta'#231#227'o de Intru'#231#245'es'
  ClientHeight = 101
  ClientWidth = 424
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
  object pbotoes: TPanel
    Left = 0
    Top = 72
    Width = 424
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
    object bfechar: TBitBtn
      Left = 355
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = bfecharClick
    end
    object mostra: TProgressBar
      AlignWithMargins = True
      Left = 102
      Top = 7
      Width = 175
      Height = 15
      Align = alClient
      TabOrder = 2
      Visible = False
    end
    object btprocessar: TButton
      Left = 280
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Processar'
      TabOrder = 3
      OnClick = btprocessarClick
    end
  end
  object pltexto: TPanel
    Left = 0
    Top = 0
    Width = 424
    Height = 72
    Align = alClient
    Caption = 'Exportar instru'#231#245'es'
    Color = 16744448
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etddoc1,'
      '  cfgmcfg.cfgcodigo'
      'FROM cfgmcfg'
      '  INNER JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo')
    Left = 28
    Top = 28
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      Size = 25
    end
  end
  object itsweb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itscodigo,'
      '  itsidentificacao,'
      '  itsdescricao,'
      '  itspdf'
      'FROM its')
    Left = 80
    Top = 88
  end
  object misweb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mischave,'
      '  itscodigo,'
      '  bplcodigo'
      'FROM mis')
    Left = 80
    Top = 136
  end
  object itsloc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itscodigo,'
      '  itsidentificacao,'
      '  itsdescricao,'
      '  itspdf'
      'FROM its')
    Left = 8
    Top = 88
  end
  object misloc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mischave,'
      '  itscodigo,'
      '  bplcodigo'
      'FROM mis')
    Left = 8
    Top = 136
  end
  object consultaloc: TUniQuery
    Left = 184
    Top = 112
  end
  object consultaweb: TUniQuery
    Left = 256
    Top = 112
  end
  object processar: TTimer
    Enabled = False
    OnTimer = processarTimer
    Left = 168
    Top = 56
  end
  object DataSourceloc: TDataSource
    DataSet = consultaloc
    Left = 96
    Top = 40
  end
  object DataSourceweb: TDataSource
    DataSet = consultaweb
    Left = 456
    Top = 176
  end
end
