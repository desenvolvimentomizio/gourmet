object lunidadesent: Tlunidadesent
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Selecione'
  ClientHeight = 719
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object pbotoes: TPanel
    Left = 0
    Top = 690
    Width = 1111
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
    TabOrder = 0
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
      Left = 950
      Top = 4
      Width = 82
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
      Left = 1032
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
  object plSelecoes: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 690
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object plSabores: TPanel
      Left = 0
      Top = 0
      Width = 553
      Height = 690
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 0
      object plLetra: TPanel
        Left = 514
        Top = 39
        Width = 35
        Height = 647
        Align = alRight
        BevelOuter = bvNone
        BorderWidth = 2
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
      end
      object plPesquisaSabor: TPanel
        Left = 4
        Top = 4
        Width = 545
        Height = 35
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 4
        Caption = 'Pesquisa Sabor'
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object btLimpaPesquisa: TSpeedButton
          Left = 455
          Top = 2
          Width = 28
          Height = 27
          OnClick = btLimpaPesquisaClick
        end
        object edPesquisaSabor: TEdit
          Left = 144
          Top = 4
          Width = 305
          Height = 27
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyUp = edPesquisaSaborKeyUp
        end
      end
      object plListaSabor: TPanel
        Left = 4
        Top = 39
        Width = 510
        Height = 647
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object plListaSabores: TScrollBox
          Left = 0
          Top = 0
          Width = 510
          Height = 26
          Align = alTop
          TabOrder = 0
          Visible = False
          OnMouseWheelDown = plListaSaboresMouseWheelDown
          OnMouseWheelUp = plListaSaboresMouseWheelUp
        end
        object DBCtrlGrid1: TDBCtrlGrid
          Left = 0
          Top = 26
          Width = 510
          Height = 621
          Align = alClient
          DataSource = DsSabores
          PanelHeight = 62
          PanelWidth = 493
          TabOrder = 1
          RowCount = 10
          OnClick = DBCtrlGrid1Click
          object sbridentificacao: TDBText
            Left = 0
            Top = 0
            Width = 493
            Height = 25
            Align = alTop
            Color = clYellow
            DataField = 'sbridentificacao'
            DataSource = DsSabores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            OnClick = DBCtrlGrid1Click
            ExplicitWidth = 432
          end
          object isaingredientes: TDBMemo
            Left = 0
            Top = 25
            Width = 493
            Height = 37
            Align = alClient
            DataField = 'isaingredientes'
            DataSource = DsSabores
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = DBCtrlGrid1Click
          end
        end
      end
    end
  end
  object plResultado: TPanel
    Left = 560
    Top = 0
    Width = 551
    Height = 690
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    object plBordas: TPanel
      Left = 0
      Top = 416
      Width = 551
      Height = 221
      Align = alClient
      BorderWidth = 4
      TabOrder = 0
      Visible = False
      object plTitBordas: TPanel
        AlignWithMargins = True
        Left = 8
        Top = 8
        Width = 535
        Height = 26
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 6
        Caption = 'Complemento / Base'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object plTitBordSelecionados: TPanel
          Left = 343
          Top = 6
          Width = 186
          Height = 14
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 'Selecionadas 0'
          TabOrder = 0
        end
      end
      object DBBordas: TDBGrid
        Left = 5
        Top = 37
        Width = 541
        Height = 179
        Align = alClient
        BorderStyle = bsNone
        DataSource = Dbrg
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBBordasCellClick
        OnDrawColumnCell = DBBordasDrawColumnCell
        OnKeyDown = DBBordasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'briincluir'
            Title.Caption = ' '
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'brdidentificacao'
            Width = 274
            Visible = True
          end>
      end
    end
    object plSaboresSelecionados: TPanel
      Left = 0
      Top = 150
      Width = 551
      Height = 266
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      Visible = False
    end
    object plProNome: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 118
      Width = 545
      Height = 29
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderWidth = 6
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object plUnidades: TPanel
      Left = 0
      Top = 77
      Width = 551
      Height = 38
      Align = alTop
      TabOrder = 3
      object plTitTamanhosPrecos: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 543
        Height = 26
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 6
        Caption = 'Tamanhos'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Panel3: TPanel
          Left = 429
          Top = 6
          Width = 108
          Height = 14
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = 'Sabores    R$'
          TabOrder = 0
        end
      end
    end
    object plTamanho: TPanel
      Left = 0
      Top = 0
      Width = 551
      Height = 77
      Align = alTop
      Alignment = taLeftJustify
      BorderWidth = 2
      TabOrder = 4
      object btAbreSabor: TBitBtn
        Left = 3
        Top = 3
        Width = 41
        Height = 30
        Align = alLeft
        Caption = '?'
        TabOrder = 0
        OnClick = btAbreSaborClick
      end
      object btTamanho: TBitBtn
        Left = 278
        Top = 3
        Width = 130
        Height = 30
        Align = alRight
        Caption = 'Selecione o Tamanho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 10
        ParentFont = False
        TabOrder = 1
        OnClick = btTamanhoClick
      end
      object plValorTamanho: TPanel
        Left = 408
        Top = 3
        Width = 140
        Height = 30
        Align = alRight
        Alignment = taRightJustify
        BevelOuter = bvNone
        BorderWidth = 6
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object btMaisQuanti: TBitBtn
        Left = 243
        Top = 3
        Width = 35
        Height = 30
        Align = alRight
        Caption = '+'
        TabOrder = 3
        OnClick = btMaisQuantiClick
      end
      object btMenosQuanti: TBitBtn
        Left = 123
        Top = 3
        Width = 35
        Height = 30
        Align = alRight
        Caption = '-'
        TabOrder = 4
        OnClick = btMenosQuantiClick
      end
      object plEspacoTitulo: TPanel
        Left = 3
        Top = 33
        Width = 545
        Height = 41
        Align = alBottom
        Alignment = taLeftJustify
        BevelOuter = bvNone
        TabOrder = 5
        object plTitSaboresSelecionados: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 12
          Width = 539
          Height = 26
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 6
          Caption = 'Sabores'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object plTitSelecionados: TPanel
            Left = 347
            Top = 6
            Width = 186
            Height = 14
            Align = alRight
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = 'Selecionados 0 de 0'
            TabOrder = 0
          end
        end
      end
      object itoquantidade: TDBEdit
        Left = 158
        Top = 3
        Width = 85
        Height = 30
        Align = alRight
        DataField = 'itoquantidade'
        DataSource = Dito
        TabOrder = 6
        ExplicitHeight = 27
      end
    end
    object gbobsitem: TGroupBox
      Left = 0
      Top = 637
      Width = 551
      Height = 53
      Align = alBottom
      Caption = 'Observa'#231#245'es do Item '
      TabOrder = 5
      object itoobs: TDBMemo
        Left = 2
        Top = 21
        Width = 547
        Height = 30
        Align = alClient
        Color = 11599871
        DataField = 'itoobs'
        DataSource = Dito
        TabOrder = 0
      end
    end
  end
  object Dqpro: TDataSource
    DataSet = FprinciEnt.qProSaldo
    OnDataChange = DqproDataChange
    Left = 472
    Top = 588
  end
  object Dsbr: TDataSource
    DataSet = FprinciEnt.sbr
    Left = 74
    Top = 334
  end
  object sbi: TDataSource
    DataSet = FprinciEnt.sbi
    Left = 320
    Top = 336
  end
  object Dsbi: TDataSource
    DataSet = FprinciEnt.sbi
    Left = 104
    Top = 334
  end
  object Dtsi: TDataSource
    DataSet = FprinciEnt.tsi
    Left = 333
    Top = 345
  end
  object Disi: TDataSource
    DataSet = FprinciEnt.isi
    Left = 133
    Top = 334
  end
  object Dbrg: TDataSource
    DataSet = FprinciEnt.brg
    Left = 256
    Top = 576
  end
  object Dbri: TDataSource
    DataSet = FprinciEnt.bri
    Left = 288
    Top = 576
  end
  object Dito: TDataSource
    DataSet = FprinciEnt.ito
    Left = 389
    Top = 353
  end
  object consulta: TUniQuery
    Connection = FprinciEnt.Conexao
    Left = 352
    Top = 562
  end
  object DsSabores: TDataSource
    DataSet = FprinciEnt.sabores
    Left = 468
    Top = 359
  end
  object Dpco: TDataSource
    DataSet = FprinciEnt.pco
    Left = 389
    Top = 417
  end
end
