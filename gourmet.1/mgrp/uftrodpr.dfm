object ftrocadpr: Tftrocadpr
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Ajuste de Divis'#227'o'
  ClientHeight = 200
  ClientWidth = 427
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
    Top = 43
    Width = 100
    Height = 13
    Caption = 'Divis'#227'o para o Grupo'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 85
    Height = 13
    Caption = 'Grupo de Produto'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 171
    Width = 427
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    ExplicitTop = 144
    ExplicitWidth = 400
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
      Left = 273
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
      ExplicitLeft = 246
    end
    object bcancela: TBitBtn
      Left = 348
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
      ExplicitLeft = 321
    end
  end
  object plgrpidentificacao: TPanel
    Left = 128
    Top = 8
    Width = 273
    Height = 26
    BevelOuter = bvLowered
    BorderWidth = 2
    TabOrder = 1
    object grpidentificacao: TDBText
      Left = 3
      Top = 3
      Width = 267
      Height = 20
      Align = alClient
      DataField = 'grpidentificacao'
      DataSource = Dgrp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 6
    end
  end
  object DBGriddpr: TDBGrid
    Left = 128
    Top = 37
    Width = 270
    Height = 120
    DataSource = Ddpr
    DrawingStyle = gdsGradient
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dpridentificacao'
        Visible = True
      end>
  end
  object consulta: TUniQuery
    Left = 80
    Top = 8
  end
  object dpr: TUniQuery
    SQL.Strings = (
      
        'select dprcodigo, dpridentificacao from dpr order by dpridentifi' +
        'cacao')
    Left = 64
    Top = 48
    object dprdprcodigo: TIntegerField
      FieldName = 'dprcodigo'
    end
    object dprdpridentificacao: TStringField
      FieldName = 'dpridentificacao'
      Size = 35
    end
  end
  object Ddpr: TDataSource
    DataSet = dpr
    Left = 88
    Top = 56
  end
  object grp: TUniQuery
    SQL.Strings = (
      
        'select grpcodigo, grpidentificacao from grp where grpcodigo=:grp' +
        'codigo')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grpcodigo'
        Value = nil
      end>
    object grpgrpcodigo: TIntegerField
      FieldName = 'grpcodigo'
    end
    object grpgrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
  end
  object Dgrp: TDataSource
    DataSet = grp
    Left = 24
    Top = 48
  end
end
