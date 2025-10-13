object fito: Tfito
  Left = 0
  Top = 0
  ActiveControl = itoquantidade
  BorderIcons = []
  Caption = 'Detalhe do Item'
  ClientHeight = 520
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 19
  object pbotoes: TPanel
    Left = 0
    Top = 491
    Width = 497
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
    TabOrder = 4
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Incluindo'
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
      Left = 343
      Top = 4
      Width = 75
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
    object bcancela: TBitBtn
      Left = 418
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object plunidades: TPanel
    Left = 0
    Top = 121
    Width = 497
    Height = 164
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object lista: TDBGrid
      Left = 8
      Top = 34
      Width = 481
      Height = 122
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
      OnKeyPress = FormKeyPress
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
      Left = 8
      Top = 8
      Width = 481
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
  end
  object plcomplemento: TPanel
    Left = 0
    Top = 391
    Width = 497
    Height = 100
    Align = alBottom
    BorderWidth = 8
    TabOrder = 3
    object Panel1: TPanel
      Left = 9
      Top = 9
      Width = 479
      Height = 26
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderWidth = 2
      Caption = 'Complementando a descri'#231#227'o do produto '
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object itoprocomple: TDBMemo
      Left = 9
      Top = 35
      Width = 479
      Height = 56
      Align = alClient
      Color = 14155775
      DataField = 'itoprocomple'
      DataSource = Dregistro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
  end
  object plquantidade: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 121
    Align = alTop
    BorderWidth = 8
    TabOrder = 0
    object Label1: TLabel
      Left = 140
      Top = 77
      Width = 186
      Height = 19
      Caption = 'Quantidade deste item'
    end
    object Panel2: TPanel
      Left = 9
      Top = 9
      Width = 479
      Height = 48
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderWidth = 2
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object pronome: TDBMemo
        Left = 2
        Top = 2
        Width = 475
        Height = 44
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBlack
        DataField = 'pronome'
        DataSource = Dqpro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object itoquantidade: TDBEdit
      Left = 384
      Top = 75
      Width = 57
      Height = 27
      DataField = 'itoquantidade'
      DataSource = Dregistro
      TabOrder = 1
      OnKeyPress = FormKeyPress
      OnKeyUp = itoquantidadeKeyUp
    end
    object bmais: TButton
      Left = 443
      Top = 74
      Width = 43
      Height = 28
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = bmaisClick
    end
    object bmenos: TButton
      Left = 343
      Top = 73
      Width = 43
      Height = 28
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = bmenosClick
    end
  end
  object plsabores: TPanel
    Left = 0
    Top = 285
    Width = 497
    Height = 106
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 2
    Visible = False
  end
  object Dqpro: TUniDataSource
    DataSet = fprincirest.qpro
    Left = 32
    Top = 72
  end
  object Dregistro: TUniDataSource
    DataSet = fprincirest.ito
    Left = 64
    Top = 72
  end
end
