object fies: Tfies
  Left = 0
  Top = 0
  Caption = 'Inscri'#231#245'es Estaduais'
  ClientHeight = 185
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 156
    Width = 266
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    ExplicitLeft = -471
    ExplicitWidth = 796
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Sele'#231#227'o'
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
      Left = 112
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      ExplicitLeft = 642
    end
    object bcancela: TBitBtn
      Left = 187
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      ExplicitLeft = 717
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 266
    Height = 156
    Align = alClient
    DataSource = Dedr
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'edrinscest'
        Visible = True
      end>
  end
  object edr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etdcodigo,'
      '  edrinscest'
      'FROM edr where etdcodigo=:etdcodigo')
    Constraints = <>
    Left = 120
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object edretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object edredrinscest: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'edrinscest'
    end
  end
  object Dedr: TDataSource
    DataSet = edr
    Left = 176
    Top = 96
  end
end
