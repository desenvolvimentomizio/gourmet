object lunidades: Tlunidades
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Selecione a Unidade:'
  ClientHeight = 280
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object lista: TDBGrid
    Left = 0
    Top = 26
    Width = 498
    Height = 225
    Align = alClient
    DataSource = Dqpro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = listaDblClick
    OnKeyPress = listaKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'unisimbolo'
        Title.Caption = 'S'#237'mbolo'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'punidentificacao'
        Title.Caption = 'Composi'#231#227'o'
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'punprecoav'
        Title.Caption = 'A Vista R$'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'punprecoap'
        Title.Caption = 'A Prazo R$'
        Width = 99
        Visible = True
      end>
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 498
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'Unidades'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object pbotoes: TPanel
    Left = 0
    Top = 251
    Width = 498
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
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
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 384
      Top = 4
      Width = 110
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bconfirmaClick
    end
  end
  object Dqpro: TDataSource
    Left = 128
    Top = 124
  end
end
