object fcpc: Tfcpc
  Left = 0
  Top = 0
  Caption = 'Ajustar Colunas'
  ClientHeight = 438
  ClientWidth = 424
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
    Top = 409
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
      Left = 270
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      Visible = False
    end
    object bcancela: TBitBtn
      Left = 345
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object bfechar: TBitBtn
      Left = 205
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
    end
  end
  object DBGLista: TDBGrid
    Left = 0
    Top = 0
    Width = 424
    Height = 409
    Align = alClient
    Color = 11599871
    DataSource = DScpc
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGListaCellClick
    OnDrawColumnCell = DBGListaDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8454143
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object DScpc: TUniDataSource
    Left = 256
    Top = 200
  end
end
