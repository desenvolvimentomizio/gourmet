object FPrinciGou: TFPrinciGou
  Left = 0
  Top = 169
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = 'Gourmet - Controle de Mesas'
  ClientHeight = 677
  ClientWidth = 1381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1381
    Height = 538
    Align = alClient
    BevelOuter = bvNone
    Color = 12615680
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1381
      Height = 538
      Align = alClient
      BevelOuter = bvNone
      Color = clMenu
      ParentBackground = False
      TabOrder = 0
      object PnSuperior: TPanel
        Left = 0
        Top = 0
        Width = 1381
        Height = 47
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object PnCozinha: TPanel
          Left = 0
          Top = 37
          Width = 1377
          Height = 6
          Align = alClient
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object LbCozinha: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 411
            Height = 25
            Align = alClient
            Alignment = taCenter
            Caption = 'Cozinha Fechada, Aguarde Libera'#231#227'o ...'
          end
        end
        object pnInfoTopo: TPanel
          Left = 0
          Top = 0
          Width = 1377
          Height = 37
          Align = alTop
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 1
          object GBdescmax: TGroupBox
            Tag = 1
            Left = 1092
            Top = 0
            Width = 80
            Height = 37
            Align = alRight
            Caption = '% Desc.'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object LbDescMaximo: TLabel
              Left = 2
              Top = 18
              Width = 4
              Height = 16
              Align = alClient
              Alignment = taCenter
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
          end
          object pversao: TPanel
            Left = 1232
            Top = 0
            Width = 145
            Height = 37
            Align = alRight
            BevelOuter = bvNone
            BorderWidth = 2
            Color = 12615680
            ParentBackground = False
            TabOrder = 1
            object LbVersao: TLabel
              AlignWithMargins = True
              Left = 108
              Top = 19
              Width = 32
              Height = 16
              Align = alBottom
              Alignment = taRightJustify
              Caption = '0.0.0'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              OnClick = LbVersaoClick
            end
            object lbtitversao: TLabel
              Left = 2
              Top = 2
              Width = 37
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Vers'#227'o:'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              OnDblClick = lbtitversaoDblClick
            end
          end
          object GroupBox3: TGroupBox
            Tag = 1
            Left = 892
            Top = 0
            Width = 200
            Height = 37
            Align = alRight
            Caption = ' Servidor '
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            object LbHost: TLabel
              Left = 2
              Top = 18
              Width = 4
              Height = 16
              Align = alClient
              Alignment = taCenter
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
          end
          object GroupBox7: TGroupBox
            Tag = 1
            Left = 10
            Top = 0
            Width = 402
            Height = 37
            Align = alClient
            Caption = ' Identifica'#231#227'o '
            Color = 12615680
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            object LbEmpresa: TLabel
              Left = 2
              Top = 18
              Width = 238
              Height = 17
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Caption = 'DADOS DA EMPRESA'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 6
              ExplicitTop = 17
              ExplicitWidth = 271
            end
            object lbFilial: TLabel
              Left = 320
              Top = 18
              Width = 80
              Height = 17
              Align = alRight
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'DADOS DA EMPRESA'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 268
              ExplicitTop = 17
            end
            object lbCaixa: TLabel
              Left = 240
              Top = 18
              Width = 80
              Height = 17
              Align = alRight
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'DADOS DA EMPRESA'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 186
              ExplicitTop = 17
            end
          end
          object GroupBox13: TGroupBox
            Tag = 1
            Left = 692
            Top = 0
            Width = 200
            Height = 37
            Align = alRight
            Caption = ' Dados '
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            object LbDados: TLabel
              Left = 2
              Top = 18
              Width = 196
              Height = 17
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 0
              ExplicitTop = 14
              ExplicitHeight = 20
            end
          end
          object GBTerminal: TGroupBox
            Tag = 1
            Left = 1172
            Top = 0
            Width = 60
            Height = 37
            Align = alRight
            Caption = ' Trm '
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 5
            object LbTerminal: TLabel
              Tag = 1
              Left = 2
              Top = 18
              Width = 56
              Height = 17
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              StyleElements = []
              ExplicitTop = 15
              ExplicitHeight = 41
            end
          end
          object GBModoNFs: TGroupBox
            Tag = 1
            Left = 492
            Top = 0
            Width = 200
            Height = 37
            Align = alRight
            Caption = ' Modo NFC-e '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object LbModoNFe: TLabel
              Left = 2
              Top = 18
              Width = 4
              Height = 16
              Align = alClient
              Alignment = taCenter
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
          end
          object GBCaixa: TGroupBox
            Tag = 1
            Left = 412
            Top = 0
            Width = 80
            Height = 37
            Align = alRight
            Caption = ' Cx.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Visible = False
            object Label1: TLabel
              Left = 2
              Top = 18
              Width = 40
              Height = 16
              Hint = 'N'#250'mero do Atendimento'
              Margins.Left = 25
              Margins.Top = 0
              Margins.Right = 25
              Align = alClient
              Alignment = taCenter
              Caption = '00000'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
          end
          object Panel16: TPanel
            Left = 0
            Top = 0
            Width = 10
            Height = 37
            Align = alLeft
            BevelOuter = bvNone
            BorderWidth = 2
            Color = 12615680
            ParentBackground = False
            TabOrder = 8
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 47
        Width = 1381
        Height = 491
        Align = alClient
        BevelOuter = bvNone
        Color = 12615680
        ParentBackground = False
        TabOrder = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1381
          Height = 491
          Align = alClient
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object Panel13: TPanel
            Left = 327
            Top = 0
            Width = 1054
            Height = 491
            Align = alClient
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 0
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 1054
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 0
              object LbMesa: TLabel
                Left = 92
                Top = 0
                Width = 652
                Height = 33
                Align = alClient
                Alignment = taCenter
                AutoSize = False
                Caption = 'M e s a'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -29
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ExplicitTop = -2
                ExplicitWidth = 547
              end
              object LbColaborador: TLabel
                AlignWithMargins = True
                Left = 867
                Top = 0
                Width = 52
                Height = 19
                Hint = 'Operador'
                Margins.Left = 25
                Margins.Top = 0
                Margins.Right = 25
                Align = alRight
                Alignment = taCenter
                Caption = 'Admin'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
              end
              object LbOrcChave: TLabel
                Left = 10
                Top = 0
                Width = 82
                Height = 19
                Hint = 'N'#250'mero do Atendimento'
                Margins.Left = 25
                Margins.Top = 0
                Margins.Right = 25
                Align = alLeft
                Alignment = taCenter
                Caption = 'N'#186': 00000'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object Image2: TImage
                Left = 744
                Top = 0
                Width = 98
                Height = 33
                Align = alRight
              end
              object plAgora: TPanel
                Left = 944
                Top = 0
                Width = 110
                Height = 33
                Margins.Left = 25
                Margins.Top = 0
                Margins.Right = 25
                Margins.Bottom = 0
                Align = alRight
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 0
                object LbData: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 104
                  Height = 30
                  Align = alBottom
                  Alignment = taCenter
                  AutoSize = False
                  Caption = '00/00/0000'
                  Color = 12615680
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  ExplicitTop = 0
                end
              end
              object Panel17: TPanel
                Left = 0
                Top = 0
                Width = 10
                Height = 33
                Align = alLeft
                BevelOuter = bvNone
                BorderWidth = 2
                Color = 12615680
                ParentBackground = False
                TabOrder = 1
              end
            end
            object PCMesa: TPageControl
              Left = 0
              Top = 33
              Width = 1054
              Height = 458
              ActivePage = TabItens
              Align = alClient
              TabOrder = 1
              object TabItens: TTabSheet
                Caption = ' Itens '
                OnShow = TabItensShow
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object DBGrid1: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 1046
                  Height = 184
                  Align = alClient
                  Color = 14286847
                  DataSource = DmDados.dIto
                  DrawingStyle = gdsGradient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnCellClick = DBGrid1CellClick
                  OnDrawColumnCell = DBGrid1DrawColumnCell
                  OnDblClick = DBGrid1DblClick
                  OnKeyDown = DBGrid1KeyDown
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'itoitem'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Caption = 'Item'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 37
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'immnumepedido'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Caption = 'Ped.'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 52
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'immhorapedido'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Alignment = taCenter
                      Title.Caption = 'Hora'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 52
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'procodigo'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Caption = 'C'#243'digo'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 47
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'pronome'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Caption = 'Produto'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 320
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'itoquantidade'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Alignment = taCenter
                      Title.Caption = 'Qtde'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'unisimbolo'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Alignment = taCenter
                      Title.Caption = 'Und.'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'itovalorav'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Valor'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 74
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'itototalav'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Total'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 82
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'stoidentificacao'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      Title.Caption = 'Situa'#231#227'o'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = clWindowText
                      Title.Font.Height = -13
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = []
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'clbpediu'
                      Title.Caption = 'Pedido Por'
                      Width = 70
                      Visible = True
                    end>
                end
                object Panel12: TPanel
                  Left = 0
                  Top = 328
                  Width = 1046
                  Height = 102
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 12615680
                  ParentBackground = False
                  TabOrder = 1
                  object LbItemGeral: TLabel
                    Left = 638
                    Top = 6
                    Width = 138
                    Height = 25
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8454143
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object LbItemQtde: TLabel
                    AlignWithMargins = True
                    Left = 25
                    Top = 0
                    Width = 63
                    Height = 19
                    Hint = 'Quantidade de Itens'
                    Margins.Left = 25
                    Margins.Top = 0
                    Margins.Right = 25
                    Align = alLeft
                    Alignment = taCenter
                    Caption = 'Itens: 0'
                    Color = 12615680
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Layout = tlCenter
                  end
                  object LbRecebido: TLabel
                    Left = 375
                    Top = 6
                    Width = 106
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clMoneyGreen
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object LbItemDesconto: TLabel
                    Left = 638
                    Top = 29
                    Width = 138
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object LbItemTotal: TLabel
                    Left = 638
                    Top = 48
                    Width = 138
                    Height = 25
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clYellow
                    Font.Height = -21
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = True
                  end
                  object LbReceber: TLabel
                    Left = 384
                    Top = 50
                    Width = 97
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clMoneyGreen
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label7: TLabel
                    Left = 506
                    Top = 29
                    Width = 142
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Desconto R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label8: TLabel
                    Left = 558
                    Top = 6
                    Width = 90
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Geral R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8454143
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label9: TLabel
                    Left = 550
                    Top = 49
                    Width = 98
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Total R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clYellow
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label10: TLabel
                    Left = 34
                    Top = 6
                    Width = 344
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Recebido Parcial R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clMoneyGreen
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label11: TLabel
                    Left = 197
                    Top = 50
                    Width = 181
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Falta Receber R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clMoneyGreen
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label5: TLabel
                    Left = 25
                    Top = 77
                    Width = 151
                    Height = 19
                    Caption = '[F5] Atualiza itens'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindow
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object imLogomizio: TImage
                    Left = 782
                    Top = 2
                    Width = 187
                    Height = 98
                    Center = True
                    Picture.Data = {
                      0A544A504547496D61676538240000FFD8FFE000104A46494600010101006000
                      600000FFE1005A4578696600004D4D002A000000080005030100050000000100
                      00004A0303000100000001000000005110000100000001010000005111000400
                      00000100000EC4511200040000000100000EC400000000000186A00000B18FFF
                      DB00430002010102010102020202020202020305030303030306040403050706
                      07070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E
                      0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C
                      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
                      0C0C0C0C0C0C0C0C0CFFC0001108004B009D03012200021101031101FFC4001F
                      0000010501010101010100000000000000000102030405060708090A0BFFC400
                      B5100002010303020403050504040000017D0102030004110512213141061351
                      6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
                      2728292A3435363738393A434445464748494A535455565758595A6364656667
                      68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
                      A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
                      E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
                      010101010000000000000102030405060708090A0BFFC400B511000201020404
                      0304070504040001027700010203110405213106124151076171132232810814
                      4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
                      3738393A434445464748494A535455565758595A636465666768696A73747576
                      7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
                      B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
                      E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD8CF8FDF103
                      54F87DA7E852E973430BEA1A9B5ACDE642B2E63FB3CD26006E87722F239C0C77
                      AF1FD2BF6A3F1A5D7C175D6A4BED3FFB43CFBB4DFF00D9F105C47F61DBF2E31F
                      F2F127D723D057A37ED65FF207F0AFFD86DFFF0048EE2BE78D07FE4DB13FEBEA
                      FF00F9E975F5D96E168CF0F194A29BE65D3FC47CAE658AAD0C44A30934ADDFFC
                      27B8F83FE38F88F58FD9F74DF115C5D5AB6AD75ACCD65248B688A86258E66002
                      63683945E719AE2745FDAABC697DAB6A50CD7DA7B476FE1D7D4A3034E8862716
                      91CA0F4E9BD89DBD31C578BFC56FF828CFC27FD90BE08F84FC23E3BD6F50D3B5
                      AD5AFAEB5AB786DB4E92EB36C0DCDBEE253A664C8C1F4AF15F00FF00C15A7E00
                      EABE2CBE866F1C36931DEF875F4D8AE752D2EE2DED84E6D23882BC9B4AC6A5D4
                      8DEF840392C0735E950C9F995697B176D6CEDD9F4D0894B1928D294399A695DE
                      BD8FD13F8B9F197C41E0EFDA4BC2DE19B0B8B58F47D57EC9F698DED51E46F327
                      746C391B8655474E9D6BC17F686FF829DC3FB3978734997C57E39F0E786EF358
                      9A35B74B9D2FCE7B85369039DA91C6E46659180240DC72A33B480FFF0082847E
                      D89F0F7F662F8F1F0FFC71E2BD7153C3372B64D05DE9F1FDB9670B2CB2964119
                      3B86CE415CE473D39AFCCDF8BBFB47FECFBF14FF0068C87E266ABF133C51E20B
                      EB38ADEDB4BD22EBC32D0D9682915BC48AF16DF9A4915964019CF0CCCE006230
                      65F9546A518D5F62E5EEF45BBBBEBD3CCE98C71152ACD394946EED6BF65FAFEA
                      7EBF6BFF00B4FF008913C77E1EB5D3751D3E5D3754D5A5B597FD06325A217822
                      51F328656F2CE0E7073D706B5BF695F8F5E26F8657FAE47A3DD59C0BA7DD5945
                      0892CE3970B2DB4F2383B873968D7AF4E40EB5F35FC2AF8DDF0F7E27787BE1E7
                      8A3C19AB42BE0DFED0B8BD4BAD417EC26DAD975123CD9FCD23CA5C216DCE40DB
                      839C1AF3AFDB87FE0B3BF004F8EBC45A7695E26D53C49E6DED9B0BAD2B4B792D
                      5BC9B79E27C3B942C373AE1802AC39525704E1432B552B528C295F477D3AA95B
                      5F919F3E2A70AB1A776D356EFB7FC31FA03F067E28EB5E36F1CB586A335BC96C
                      2D6F65C25BA4677453DA227239FBB34991DF23D0579ADDFED3DE3287C63A2D92
                      DF588B7BED1BEDB30FB0459697CBB86C838C8198D38E9C1F5AE07FE09BDFF050
                      5F847FB56FC5A9ACFC1FE2EB79358874CBE9E5D2B5181EC6F951EEEC36B2A480
                      090654826366DA4AEEC6E5CF03FB4E7ED2FE0FFD956E3C2BE25F1B6A5269DA5C
                      DA34765198A033CB2C8F0DD81B51792064648E9B97D456387CB53C554A33A7AD
                      B456D6F67B20C454C4C69D38A6F99BF9F43E82F871FB4CF8C3C49E099AFEF2F2
                      C64B95B9B88815B18D06D47D202F007A5E4FF5DCBFDD15D3FED35F1BFC47F0B6
                      F7588F45BAB5816CFF00B37CAF36D239B1E7ADE9933B81CE7C88B1E9838EA6BE
                      5CFD89FF0069CF04FED27F06351BEF07EB1FDA11D9EAB7D6B3C5340D6F3C6EAF
                      E1E6E51B9C156041E879F435E81FF0545FDA3FC11FB3C3EB53F8C3C4363A4497
                      C9A44969684F99777AB18D443B4712E58A297405CE101750581600DCB014FEBE
                      A8A8757A5BB4A3FA5C88D4C5FD59C5B7CFA7AED2FD6C75907ED57E369354F13C
                      46FB4FD9A5E926F2DC0D3A2F964DD6C3278F987EF5F83C723D05755F0E7E3F78
                      9FC4BA1E873DDDD59B49A8358898AD9C6BBBCDD567B57C0038CC51A8E3A119EA
                      6BF3A7C39FF0597F80BAA788FC502E35CD7F4B8754D28D9417175A24A62F3375
                      B7DEF2CBB2AE22739DBE9EB5EE1E38FF00828FFC20FD913C1BF0FE7F1AF88EE6
                      0875ED3ED758B17D3EC24BE135B5BEB3712C8F84F987C8C080464E7D78AECC76
                      4EA30518D2F79DAD65ABB475FC7732C3FD7D5551A9CDB3DEFDFF00C8FA7BF683
                      FDA1BC55F0F7C65258E9579670DBAEAAF68049651C87CB16D6520192339DD3C9
                      CF5E47A0AF40F847F11356F18F8C9AC6FA6864B7FB15DCE0242A877C7AA4D6C9
                      C8EDE5228C77233D6BE5EFDAE7E36F864E8BA9F8F9752597C2FA7DC5CEB57174
                      8A59A3B78F4DD3A57257AEF0AA415EBB863AD747FF0004E7FDBDFE17FED6DF12
                      B585F04EBB7378DA2D9CF6D702F2CA4B3DCF3EA73DD204DFC3FEE4862470B9E6
                      BC9C460A2B2F8568C3D5DBF3675E1AA62258C9A6DF2A76F25B1D2D97ED43E32B
                      8D6F5481AF34F31D9F85DF558C7F67C591702DE2903138E46E63F29E3B56BE9D
                      FB4478B27F8CBE21D15AF2C8E9FA6EB70D8C09F618F7AC4DA8C70105B1927CB6
                      23279CF3D6BE19F8A9FF00055EF823F047C7BAC58DE7892EB5AB89BC3274963A
                      2D99BA8A3B86B68D36EF25558064605D372F1C13CD7A47ECA5FF000502F853FB
                      5A7ED09E246F07F88E46BCBED66D3508EC350B396CEE4C0DAB5B9DE370D8D8DC
                      32031233D31CD7A55B285084AABA568F2AD6DA5EE8E6E6C728A9BE6B5FCF6D7F
                      03EA4F82BFB40F8A3C6DF0C7E246ABA95D59CB7BE19B0171A7B259C71AC6FE55
                      D365940C38CC49C1F4F7AF7AD3E469EC2DE46FBD2448CDF52A09FE75F28FECD3
                      FF00243FE337FD8281FF00C97BDAFAB74BFF00905DAFFD708FFF004015F3F9B5
                      1853AD28D356575FFA4C59EA6555A752945CDDF4FF00DB9FF91E59FB59FF00C8
                      1FC2BFF61B7FFD23B8AF9E7411FF0018D8BFF5F37FFCF4BAFA1BF6B3FF00903F
                      857FEC36FF00FA49715F3BE883FE31B57FEBEAFF00F9E975EB653FEED1FF0012
                      FCE478F9B698997A7FF227E45FFC15FB5C5F1BFEDA9E19F0FC93AC36FA568DA6
                      E9B2BBBEC583ED37935C48E5BB011DC2127A0C66B2FF00E0A3FE04F839E0BF08
                      F85AFBE1FA7876CF5AB89E66D523D1E70D6CB6E634640C8A4A0656DFC8191D0E
                      72B553F6C2F0F5BFC73FF82A4EB9A05E4974BA7DDEAB69A5DC3DAB84956386CA
                      257D8CCAC03008792A47B57D8BF003FE08E7F0C7C1FE286D54B6B5AADDE9FA3B
                      EB3036AB74972219120599708914719209E0B2B118C835F678CC552C2D6A725C
                      CE50837CAAD6F79EEDDF7F933DCA3569D0C351F692B68B6EBA6C7C73FB675E6B
                      BE1BFD8D7F67BF0C6BB25C7DAA1D3AEAE1209892D6D1C6B008E239E9B12E5531
                      DB691DAA3F85FF00B447ECC1E17F84DA4D9F8AFE14EB5AD7892C2D614BEBE82D
                      AD0ADDBAC08257CB5CA925A50EDC81C119C1E2BDF7FE0E63F07697F0EBF6A9F8
                      71E0DD155A1D3F45F01C7275DD2196E2FAF3CC763DD8AC311CFD299E12FDB83F
                      657D1BE17DADAEA9A05C4DACDBCD995D7C1513A98560451F36393BC31AE4C3F3
                      D4C061E4A939DF9E4DA6E295DDF5B277F2B9D989BC69689BD7ECEFB98BFF0005
                      61F8B7E15F823F0D7C17F0FF00E125BDC687E1FD62C6E754B9B58BE468ADBED0
                      C96D6E3920150AFC038DCDBB395423A6F84DFB26FC0BFD97FE0D69B75F14AF7C
                      26BE24D6360126B3179ED7EC222D71E4075654862778930002DBD4B649E39CFF
                      0082F5FC07B7D0BC63E0DF881E1388B7836FAD6F74292E2205A3D3EE61BE9E48
                      77FF00743C736149E0B46C339C034BE257ED39FB3BFED83FB31A5C78E63D4B4B
                      F8BDE1BD39ED743B4985FC7681DE07694A4B0FFA3B23DC25B90662AE0280463A
                      E7430B3A987C34609BA7EF3972FF0035F4BF96FA98CBDEC3FB8DABBD5ADFFE1F
                      F43EC6FF00827C7EC8FF00B39F8EBF6C8BCF157C0BF1AE9BF6CD374ECEABA258
                      5CBC9656E86FAD4C32441C068CCBE5CA3CB5253F7470ABD0FC7BFF000549F887
                      71FB6BFEDDBE19F853E1B9DCE9FE0FB14D1A59B1F21BA8D1E6BB900EEA8C7C91
                      9C6F68548CA942797FF8249FC70B5FD94FC1DF15BE2A49E44B75E1BB487FB322
                      949314D7EB14BF66470A4164134D1BBA8218A2B004122BCF3F646F80DF1BBE31
                      F896F7C77F0E752B1B3D6B529AEA192F6F6E4C77575B4ACB332E2175C0640091
                      8F9A3200C0ACE8D1FAB62B1388752DCB684252FE6B6BB277B266D1C3A83539BB
                      F2AEBE763D83FE083DF149BC3DF183C45E1F91BCB4D562B4BC54EC1FCF8A393F
                      302204F7DABE9595FF0005BDF196BD6DFF00057EF1C47F1134FBAD5B45D1753B
                      29F4ED22499A28AF347F223308888FE1701C123F8C4AA48F9AB81FD90DB5CF80
                      5FF052CD1F49F137D8ECF54BCD5A4D275536836DB892E02CD1BC7F2AE14CCB09
                      1F28E18F0335F617C65FF82C0FECFBFF000504D0752B1F8C5E0D8B48D5EC6E60
                      B7D36E64D3A4D56CFCA85AF03BDBDC42AD716E655920678D9402C9F79B68AEAA
                      946A53CDA7569D3738CE3776D1A53B2BAEBD1854A8E0DD68AE6BA5B795F54798
                      FC2AD67F639FDB0340D43C1FAA6873781BC4BA9696D6FA33DC69E9A4DC8BE2D1
                      AA0B7B9B62F0B9C19311CC406E3F764E2BCBFF00E0B07E1C82D7E3E7C33F05D9
                      49E75BDAF82ED60C63FD5C977ABEA4BB7FEFC8B63F8D796FED1BF0DBE1D7C47F
                      DA5EDB40FD9FDB58BFD03568E108B72932FD965E3CD997CE0248E15FBDFBCE41
                      538C06415DD7FC145F4DD63E1AFED8DE11F14F882C6F25D1F58D3B4CD6348908
                      FF008FEB5B598C134684F1E624D6D282A48237A31C2BA93D14E8D1A7888D3A37
                      E6E493516F54DAB5BD5EFDF4268D271AAA4A4ECD3F759F76FEDD578BE0BFF825
                      BF8B9D76C7F6F9A7B450381B673A5230FF00BF6CE3F1AF8E3F61AD2FC59A17FC
                      13E3E3EF887C1B1DDB6B56F612CF2C96AA5A78EC636B34BC75039DAB6CD316C7
                      48FCC3EB5E81FF000517FF00828CFC31F8E5FB1769BE04F04EADA86A5AA5C6A9
                      1DD5EACFA65C5A0823582D004CC8ABB9FCC85B3B72A028E49602BAAFD817F6BC
                      FF00873BFC0EF0378CBC57E15BBD6478C35196CEF74F8EE56DAFAD639BCD9B74
                      5BFE469A348E2DD1B103E6752548C8F1953AD472DA18650BD57352E57A36A377
                      ADC9C25374DCE525F14BF45FE47C8FFB0F7C75F837F0BEEB586F8ADE0BD47C54
                      354495ED755B4B4B6D4E484B44823568A79106CF3033B3A12EC1B1838515FA45
                      FB157ECF9FB3D7C57FDA1F54F893F02EEE3B3D25B54B4B2FECFB612DBC30C6FA
                      9405375ACC0496F279647CA02A903217209AF99FE3FF00C4DFD88FE3A78735FD
                      62282FBC3FE24BAD01DAC534BD0AF34CB88F57102EC699553ECED1F9C59A420B
                      0700EDDC48CD3FF820C7807C4107C6EFF849A186E6DF4BD5350D2EC617236ADD
                      98EEC3338F5442CAA1BA167700FCA6BB338A74BEAF531338CA13934AD27A3BDB
                      6F4B5FB7919D4E6AD4FDAA72835D1ECFFAEE7EB47ECD5FF243FE337FD8297FF4
                      9EF6BEADD2FF00E4176BFF005C23FF00D0057CA5FB357FC910F8CFFF0060A5FF
                      00D27BDAFAB34A3FF12CB5FF00AE11FF00E802BE273CFE3CBD57FE93138F26FE
                      0C7D3FF6E91C5FC79F879A97C44B0D122D345BEFD37526BA9BCE97CB1B0DBCB1
                      F1C1C9DCEBF866BC8F4CFD94BC5B6BF07974361A57DBBCEBA90E2EF29893EC5B
                      79DBFF004EF2678F4F5AFA58F25BFDE35E0DFB63FC66F1B7C27F10784468135A
                      687E1BBAB82759D6EEF4D6BD8211B942C2DB4111E464927696046C248615CF83
                      C6578C551A76EFAFCFFCF636C6E0E8393AD52FDB4F97DDB6E79937FC125BC03A
                      CE9761AFEA1E00F03DBFC4B8F55B8BBBBD7AD2D218EF6E9244906E7B909E63BE
                      590649E9919ED5D3F87FF647F1668FA8DF3B2E90B0DC7879F4B8F6DDE4F9A6D2
                      38BA6DFBBB94F3E9CE2BD47F651F1CF8ABE21FC359AFFC577DE18D52E96FA68A
                      D6FB4194BDADD4218ED241556575CEC2AC8AC0AF2334CFDB1FE226BDF083F67C
                      D7BC53E1DBE86CB51D0E133049AD12E239F3850086E9B49CF1D718ABA798E225
                      564B4BCB4BB5E7F8056C0D1F65194AED412B6A7957ED8FFF0004D7F07FED81FB
                      4368BE2AF12F817C13AFDADBDA5AD8DF5EEA1670BDFB411CAEC630CC858A8573
                      819C649AF12D67FE0841F0FE6D2635B3F867F0DC5D798BE617B3B7DBB3C840DF
                      F2CFFE7AF987E98AFB83F67BF126B3E34F827E19D635FB9B3BBD5755D3E2BA9A
                      4B683C88DB728C1D99C063D4E38CF4C0AE07F6D9F8B7E36F84FE1FF0FDC7851A
                      0D2F4FB8BDFF0089BEB53E9E6F62D3E11C6D65C10BB8907736010A4020E2961F
                      30AEF969C1AD1595EE6D5E8C63172E696AFA3FEAC8E3B52FD866E9DB48D263D3
                      743D4BC2F6F7F3BDFD96A322DC47796D25D090C7246E85640631CAB0209E3DEB
                      C97E37FF00C106FE0EF88BC51A96A1E11F85FE05D2526B9864B5B611F976C8BE
                      5C9E70F27FD5AFEF3CBC285C633D315F537ECA5F117C51F127C33AD5D788F54F
                      0A6B90C1A94D169D7FA13B797341E63B05911951D248D4A46432024A13F36771
                      DEFDA09BC791FC3B73F0E8695FF0912DCC249BFC155B70E0CBB14A90F26DC855
                      62A3273B86294731AEA7185D2E5BAEA96F7D6DAFE04C70B1842538397BD66ECF
                      5DADA743C0FE1B7FC1277E16D85A2E8BE2AF86FE04D73C311C17061B0BCD3ADE
                      EEDE0B82F088664819362C8B1FDA06FC646FEBCD67FC2BFF00826E37C0CD4F49
                      87C23A4F87F46D1ECB4C96DDAD6DA55862826916E37F971AA850ACF28638C64B
                      313CE6B6BF660F8FBF18BE32FC4ABB95E4F0EEA5E10D17C4179A26ACA2DD6DEE
                      A08D64410CC800F9B0B14DB8EEEB228087865FAA1B2EACAADE5B3020395CEC27
                      A1C77C7A544B19568D46AE9FDF6EB7B7995F578D7A4B9B9ACF5DF5DD6E7C4977
                      FF00048BF0B78EAF175EF147813C0775E348EF5AE975B8EDA16D41CAFF0067AC
                      05AE3CBDE4C6B0DD6DC9F9772E3AF12FED4FFF000468F85FF1CB5DBCD4ACFE1B
                      F81A4D49A3B28E2BE7B64B4B8B8D82E05C34CD12A9919B741F33649DA79A6DEF
                      ED73F13E5F8E3AD7826D3C6FE1187548F557D2344B3B8D1D19EFE443182D3326
                      E68F3BC9C042BD895FBC3EC7F07C9AB4DE12D35B5E86DEDB5A7B68CDFC3036E8
                      A29F037AA9EEA0E715BE231D88857E7935CDE57EEBFAFBCCF0B4612A0A30724B
                      4B6BE5E47C49F0ABFE08FDA3FC19935B4F0FF85FC27A5DBDDD898ED45B3244D2
                      4FBA220CA42EE60312F2C4F515E9BE21FD8034DF8BFF000B749F09FC42F0AF84
                      7C55A3DA0B5125ADFC6974B06CD4679E5685997746C60940DC854924AE6AEFED
                      C9FB4A78CBF675F10E92DE1DBDB09A0BED3EE35236575648EA56D5E11247BFEF
                      7CE9233678DA54015CADE7EDA3E37F1AFED15E15D13C3775A4E9BE1FD63536B3
                      962BBB1133C812DE22F96CEE5065924C60E7F72BCE188AD258AC47B3E74D24D7
                      35D5EF7DBD6FD4C7D9D275D5F99C936B57F3BFA743CFF55FF82187C38F05F8FD
                      756F02F81FC27A6AC37A5E07988335BC2121DBB19C3146F33CFE57071B79AFA2
                      FC2FFB17785F51D0A6F0E78C3C23E15F1178467D3EE2D64D3B51B38AFE091DB5
                      09668D8A48846E10BA8DDD41E07A9F7223FC2BE77FDB3BF69FF127C26F14E97A
                      0F835F4E4D5974F9B57BC37AB1B248AA47936E15D81FDEEC9812BC8C201CB0C7
                      2C7115EBB51EBDF5BFDFA9D55A30A52F6D393FBFFE1BD4F9CADFFE081BF0D60D
                      76E2EA3F875E078625D30FD99389156FBCB4C1D8E0A05F3371CE3818E2BDE3E1
                      6FEC4379F09BC79A84FA4D8E936DA2FF00695B49638B81E6476D0DF45285DBB7
                      E5C4484003BF15EEBF053E275AFC66F851A078A2C4AF91AD59A4E547FCB393A3
                      AFE0C08AC4FDA8BC63E2BF017C15D5B52F0658FDB35C8762A3FD99AE7EC7196F
                      9E7312825F62E78C100E09F97753FED0AF527676BBD35FF82F426B6161C9CD39
                      49A5ADAE717F06BF676F127813E1AFC45D26FD74EFB678A2C05BD8F9573BD4BF
                      95729F39C0DBCCA9EBDFD2BDD34F8DA0B28636C6E8E2446C7A8500FF002AF9F7
                      F646F8DDE36F8A9E2F9A1D5BC45E0CF136851E9504F249A721B6D42CAEB62864
                      9A128B80CE24F99372E54E0AFDC1F434678AC31988A952A49D4DEFE9D12EBE88
                      D30787A74E9AF67B5BD7AB65CFEC1BB527F76BC927EF8AF2FF008CFF00B2FF00
                      883E23F8FB4AF13E81E34D53C29AC6936535822476F6B7567247210CC5A39232
                      598B2A6773326147C99F9A93E22FC79F1078FF00F687BAF84BF0E66D32C756D0
                      F4B8757F15F892F6D8DF41E1E8A72C2DAD62B756512DE4C159C091D5228B1215
                      9372A36AFC04D2BE31784FE25F8A349F1E6ADE1DF1778356182E7C3DE20B6B55
                      D3B5232316135ADC5B2168D82614ACAA533D369CE57051A94E3CCE493B5EDD5A
                      7F879EF7B6B63694A137CB6BABEFD13FEB4DADD0CBFD947F6466FD97BE1EDDE8
                      F16A171AD5E6A57D26A3797736D4F3667FBC428E993963EA58E00180353F691F
                      D9D750FDA03E15DF786575ABCF0FC77D812C90436B711DC2820EC912689FE5E3
                      236146CF562322BD720BA49A12D1C91C8AA48CAB06191D45795FED1BFB65F83B
                      F65E8AE26F16DAF8D22B3B3B1FB7CF7F61E13D4AFB4DB68CB328F36F2285ADA2
                      6CAFDD925523729380C09CA8BAD3A89534DC9F6DEE6953D9A87BF6E52D7C16F8
                      41ABFC2BF85DA2F872F7514D6A4D16D96D23BBF296DCCB1AF09B941C6EC75230
                      09EC2B07E367ECCFAD7C50F15787F5FD1FC59AB785758F0E896384DBC76D716B
                      3248559BCC8DD0B33651001BF6633B91885237ECBF6865BCFD95E1F89B71A2DC
                      786DA6D0175A7D27C4B749A2C9612347BBECF772CE025B90DF2B3B0C0EA030C6
                      65F819F1AB5AF8ABA43EA5AB783EEBC23A747676F2C77577AADADDC37F2C818C
                      9F677819964B755F2CA4E4AF99E6708B8354BDAC13976767FE5E7F88A5ECE568
                      BF5EBFD238BFD94BF63DB8FD9A347D77CED627F106AFE26BE3A86A17722470AC
                      9212C4908A0004976270001C00140007A86ABE11D4352D36E2DE2B8B8D3E69A3
                      289756C6169ADC91C3A0951E3DC3A8DE8CBEA0D7570CEB347B9595873D0E7BE2
                      927B85B78D9999551464B31C003EB58FB495EEF735E58DB97A1F3FFECBDFB216
                      B7FB37DF7897CCF133F88AC7C47766FDA29AC6DEDA58E72492E5A25456C82723
                      60E4E781803D71FC3978F1305531EE5203ABAEE5F719C8C8EA3208F507A574D1
                      4AB2A065656523208390452EF527EF0FCE8955937796E1184547952D0F8F353F
                      F826CF8A9B55F144D61F14752B65F155DFDAAF257D134DFB648D9C8CCD1C29B5
                      BA82635404330C0CD7D13E07F87FA97853C17A4E977374FAA5C69F691DBCB792
                      B0F32E9954032372792467AD6EF8DFE2268BF0F23D3DF5AD46DF4F1AC6A10E95
                      62AE7325E5D4C711C31A0059DCE19B0A0E151D8E155986DC6F95CF6CD54AB549
                      3BC89A74E10D208F9DBF68CFD8A752F8FDE3CF0FEB9FF096EA7A4C5A2A490FD8
                      05A594F06C9028731B343E6AB36D0DF3BBA6E55C285CAB70BE12FF008261EADE
                      05F12F87756D3FE216A9717BE1FD56E354126A1A7D9CED7AD2BEE632BAC6B219
                      1BF88860BF2AED451B837D852DDC71488ACE8AD267629600B63AE077A716DCA0
                      D1F58A9CBCB7D09FABD3E6E6B6A737FD83779FF548C3393F38E6BC1751FF0082
                      7AFF006FFC77D73C65AD788AEB5E8F58B7F2A18750D334D9AE34A701424B6EFF
                      006711EE4DAA079B149F2A807277337D09AE7C43D07C2FE24D1F49D4B5BD234E
                      D57C412C90E9565737B1C371A9BA2191D608D9834ACA8A58840485049E056D33
                      7CBF87152AA4D7CCA708CB73C27F656FD96759FD9A7C1BA86832F8926F1269F7
                      17D25EDAF9F6D0DBBDAB4872EBFBB0AA549C1C051CE4F7ADCF8F9FB3E5EFC70F
                      0347A4C7AD6A9E1DBAB4BC8B50B6BCB0684B89A23940FBD18EC0D86210A36547
                      CC0641DFF0E7C689BC4BF1C7C43E0D8FC21E30B5B4F0E59C33CBE23BCB0FB3E8
                      F7D34A1585BDAC8C435C3AA925DA3528854A96DDF2D6FEABF11341D13C61A5F8
                      7EF75AD1ECF5ED7125934ED367BD8E3BCBF5886E95A184B079022F2C541DA393
                      8ABF695632E6EBBFE17B93CB4E51E5E87867C17FD89F56F875F1DB5AF885AF78
                      AAE7C55AF6A96A2CA376B786D163840000658C0070071C672CCC4B135ED6BA05
                      E7FCF25FFBEC57CC7E3CFDAA7E23FC62FDB83C33E09F85B75A4D8F81FC2DE236
                      D3FC5DA84B0ADD4DACFD9E212DFC508DA44705B1682DA49720FDAAED231CC6EB
                      5F5F41F72B5C453A94B95D4B5E4AF6EABB5FB7A1346A4277505A276FF863E55B
                      1FD997E317C19FDB07E2578E3E1FEA1F0E756F0BFC54163737D078965BD86FB4
                      6B9B78CC5989608D96E22DA72159E23C85C8DBB9BCBEC7F65AFDA13E295DFED5
                      562BF11357D2F50F126A1A4E87E18D535B866B6B2B9B5B7B4FB45D9B38A16C5A
                      DBCB25D9B51222C8EAB6F2126490990FDF85063A77A022FA5691CCEAC5F35A2D
                      DA2AED2FB2D5BFF494BCD6E4FD4E9DADADAEDEEFADEFF9B3E1F9BF664F89DFB3
                      4FEC9BE2CD3FC2BA1BB492335E7FC237E08D7B6EA9E22D42E3CB85E77D425B7B
                      58ECE18D550882CE088858B3E665981C3F89DFB097C5BF197EC39F0FFC12CD69
                      AE5E784EE341F33C337FE226821D44437114D7F717F7AB1BF9AC7F78890A2BC7
                      129DC3CE9047B3EFA5404D3846B8E9551CD6B45A92B5F9B9AFADDBFBFD7CF5DF
                      60960E9B5CBD2D6F91F0D7C40FD88BF683FDABBE27789A6F899E39F04E87E19D
                      286EF04C3A15BCB790D8DD14245DCB653A885E78DCA8596E0CE53CB66852091C
                      48BB3F147F631F8DFF0018FC29F0D34DF1BF8C3C21E3FD23C3CDFF001557865E
                      EAEF41D2FC48628916D679A68E1B89EE184CBE6C90C9B209321760DB93F66040
                      1BA52EC19A5FDA95B4B28AB6D64B4D2DA3DD3EB7BEFA8BEA54F5BDDDF7D5EBAD
                      FF00AF2D0F18FD8E7F664BFF00D97BC1FAB68D36A7A4DCE9FA8EA971AA5BD8E9
                      B6325ADAE9EF3C8F248B12BC8FB23F99556350AAAB18277BB3BB71BFF0509FD9
                      57E217ED4A7C1D63E1AF106870F84F49BE6B8D7FC3D7EED6BFDB8A637453F68F
                      26E63FDD160E8925B3AEF01F219508FA6020C74A528A7B5610C6558D6FAC7DAD
                      7A77FD7CF7BEBB9ACB0F074FD9743E3CD4FF0062DF8B9AA789FE0E5A699E3EB3
                      F00F82FE1F995EE345D0E796EED6C208618A0B1B588DC47E65FCDB7CD67BABC6
                      D8ACA856D99998987E117EC35F19BC19A578EAEACFE346A3E10D5B5CF17DCEBF
                      A5C42DA3F112CB6C36C56F0EA335D8F3264686252D15B983CB2C4091F0B8FB20
                      A29EDDE868949FBA2B4FED2AEA3CAADFF80A7D5BD6E9DF57D4CFEA74EFCDAFDE
                      FB247E7BE87E10F1D7ED7BFB7AF8FB4D7F8917963A9FC27B3B6D025D6B48D3E2
                      8A3F0B5D5D5B0BABA7D32DE7596359AE166B7B6F3E7F3A5115BDE8063F3622BE
                      91F1A7F659F8B96FE26F867E33D37C4DAA78E3E25691E22D3EDF54BCB6D5BFE1
                      19D0E1D0E1594DD46F65BA58DFED2C544ADE54D2EE93F77E5A222AFD4BE0DF87
                      1A07806EB5AB8D1347D37499FC4DA836B1AB496B02C4DA95EBC71C4D712903E7
                      90C70C49B8E4ED8D07402B6DA357EAB5A4F329B9270492492B5976B3DACECDDD
                      DBFE0DCFAA42CEF7D5DF7F3FD0F898FEC27F17356FDADB54F899E23D5BC03E2A
                      BE5BDB5BCF0C5D4F7B79690F844ADAF91222D92C2CF7289BA5648FED90C523C8
                      D2489BF66CA5A0FC24F8FF000FED67F133C5DA1D96A326A1A3F85BFE118F0EEB
                      3E36D7D5B45D72EDA51732DDC3A7DA00218CA8B6851422042B33B34AFB83FDCA
                      63507A76A5F2973F76A7FB4AAFDA49E8A3B6C95B64BBDB5EF76F70FA9D35B5F7
                      BEFD7FAD8F84FE14FEC07FB40787F5EF0D7C4BD4BE27F8487C5AFED0F3BC482E
                      6C65D4AC755B17475367E7E229638622FBE3B7B64820DCA0B891C094769E18FD
                      987E2A7C1AFDAD2EF51F05EAFA86A1E1FF0013786243E24D7FC4DAF3DD5A5CEB
                      92DE993ED50E9819B698A10CA90C26DA10B22AEE3B083F5D05C534C6BE9DE8A9
                      99569B7CC96A9AD92D3B69DBA5F6F920860E9C15A37EFBF5FF0083D7B9F22D9F
                      C1AFDAABE0F3FC4AB7F0DFC42F037C41B7D7A53A9F87351F18BDC477DA74E610
                      AF69F66B7856DE384BA8DAC8FB5719F258B36798F835FB02FC76F873E2FF000B
                      FC426F8A3E177F88D75349FF0009A8BED3A5D4ADB5B864859029B8FDD4C56066
                      DF15B442DED548188836E91FEE1645CF4EF4BB17D29ACD2AA4D28C75DFDD5AE9
                      6FF83A75D7707838369B6F4DB57A6B73E48FD903F645F8A9FB29F8FBC596F1B7
                      C2ED6747F1778A6E35ED53C552BDEAF88352827B879DE196D42081640D2CA159
                      27F2C172FE5924A9FAD61185FC78A555057A53AB9B13889D7A9ED27BF91B51A3
                      1A71E48EC7FFD9}
                  end
                  object LbcapItemTotalTaxa: TLabel
                    Left = 497
                    Top = 74
                    Width = 151
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Total+Taxa R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 33023
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object LbItemTotalTaxa: TLabel
                    Left = 638
                    Top = 73
                    Width = 138
                    Height = 25
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 33023
                    Font.Height = -21
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = True
                    Visible = False
                  end
                  object LbReceberTaxa: TLabel
                    Left = 384
                    Top = 75
                    Width = 97
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 33023
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object LbCapReceberTaxa: TLabel
                    Left = 197
                    Top = 75
                    Width = 181
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Falta Receber+Taxa R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 33023
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                end
                object plDBGridItoRec: TPanel
                  Left = 0
                  Top = 184
                  Width = 1046
                  Height = 144
                  Align = alBottom
                  Caption = 'plDBGridItoRec'
                  TabOrder = 2
                  Visible = False
                  object DBGridItoRec: TDBGrid
                    Left = 1
                    Top = 25
                    Width = 1044
                    Height = 118
                    Align = alClient
                    Color = 16772810
                    DataSource = DmDados.Ditorec
                    DrawingStyle = gdsGradient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnKeyDown = DBGridItoRecKeyDown
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'itoitem'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'Item'
                        Width = 37
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'immnumepedido'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'Ped.'
                        Width = 52
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'immhorapedido'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'Hora'
                        Width = 52
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'procodigo'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'C'#243'digo'
                        Width = 47
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'pronome'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'Produto'
                        Width = 320
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'itoquantidade'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'Qtde'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'itovalorav'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Valor'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'unisimbolo'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'Unid.'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'itodescontoav'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Width = 75
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'itototalav'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Total'
                        Width = 82
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'stoidentificacao'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'Situa'#231#227'o'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'clbpediu'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Title.Caption = 'Pedido Por'
                        Width = 70
                        Visible = True
                      end>
                  end
                  object Panel1: TPanel
                    Left = 1
                    Top = 1
                    Width = 1044
                    Height = 24
                    Align = alTop
                    Alignment = taLeftJustify
                    BevelOuter = bvNone
                    BorderWidth = 4
                    Caption = 'Itens j'#225' recebidos nesta mesa:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                end
              end
              object TabCardapio: TTabSheet
                Caption = 'Card'#225'pio'
                ImageIndex = 1
                OnShow = TabCardapioShow
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object Panel5: TPanel
                  Left = 0
                  Top = 391
                  Width = 1046
                  Height = 39
                  Align = alBottom
                  BevelKind = bkFlat
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Panel8: TPanel
                    Left = 909
                    Top = 0
                    Width = 133
                    Height = 35
                    Align = alRight
                    BevelOuter = bvNone
                    TabOrder = 0
                    object BtnCardRetornar: TButton
                      Left = 6
                      Top = 2
                      Width = 120
                      Height = 31
                      Caption = 'Cancelar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                      OnClick = BtnCardRetornarClick
                    end
                  end
                end
                object Panel9: TPanel
                  Left = 380
                  Top = 0
                  Width = 666
                  Height = 391
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 1
                  object Panel10: TPanel
                    Left = 0
                    Top = 0
                    Width = 666
                    Height = 391
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    object Panel11: TPanel
                      Left = 0
                      Top = 0
                      Width = 666
                      Height = 34
                      Align = alTop
                      BevelKind = bkFlat
                      BevelOuter = bvNone
                      Color = 12615680
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 0
                      object LbOpcoes: TLabel
                        AlignWithMargins = True
                        Left = 3
                        Top = 3
                        Width = 63
                        Height = 21
                        Align = alClient
                        Alignment = taCenter
                        Caption = 'Op'#231#245'es'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWhite
                        Font.Height = -17
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                    end
                    object DBGrid3: TDBGrid
                      Left = 0
                      Top = 34
                      Width = 666
                      Height = 231
                      Align = alClient
                      DataSource = dproc
                      DrawingStyle = gdsGradient
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -16
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
                      ParentFont = False
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = []
                      OnDblClick = DBGrid3DblClick
                      OnEnter = DBGrid3Enter
                      OnExit = DBGrid3Exit
                      OnKeyDown = DBGrid3KeyDown
                      OnKeyPress = DBGrid3KeyPress
                      OnKeyUp = DBGrid3KeyUp
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'pronomereduzido'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -15
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          Title.Font.Charset = DEFAULT_CHARSET
                          Title.Font.Color = clWindowText
                          Title.Font.Height = -13
                          Title.Font.Name = 'Tahoma'
                          Title.Font.Style = []
                          Width = 350
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'punprecoav'
                          Width = 250
                          Visible = True
                        end>
                    end
                    object PnSabores: TPanel
                      Left = 0
                      Top = 265
                      Width = 666
                      Height = 126
                      Align = alBottom
                      BevelOuter = bvNone
                      TabOrder = 2
                      object Panel14: TPanel
                        Left = 0
                        Top = 0
                        Width = 666
                        Height = 32
                        Align = alTop
                        BevelKind = bkFlat
                        BevelOuter = bvNone
                        Color = 12615680
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWhite
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentBackground = False
                        ParentFont = False
                        TabOrder = 0
                        object LbIngredientes: TLabel
                          AlignWithMargins = True
                          Left = 3
                          Top = 3
                          Width = 110
                          Height = 21
                          Align = alClient
                          Alignment = taCenter
                          Caption = 'Ingredientes'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWhite
                          Font.Height = -17
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                      end
                      object Panel15: TPanel
                        Left = 496
                        Top = 32
                        Width = 170
                        Height = 94
                        Align = alRight
                        BevelOuter = bvNone
                        TabOrder = 1
                        object DBGrid4: TDBGrid
                          Left = 0
                          Top = 0
                          Width = 170
                          Height = 94
                          TabStop = False
                          Align = alClient
                          DrawingStyle = gdsGradient
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -16
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
                          ParentFont = False
                          ReadOnly = True
                          TabOrder = 0
                          TitleFont.Charset = DEFAULT_CHARSET
                          TitleFont.Color = clWindowText
                          TitleFont.Height = -11
                          TitleFont.Name = 'Tahoma'
                          TitleFont.Style = []
                          OnKeyDown = DBGrid4KeyDown
                          Columns = <
                            item
                              Expanded = False
                              FieldName = 'punprecoav'
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -15
                              Font.Name = 'Tahoma'
                              Font.Style = [fsBold]
                              Title.Font.Charset = DEFAULT_CHARSET
                              Title.Font.Color = clWindowText
                              Title.Font.Height = -13
                              Title.Font.Name = 'Tahoma'
                              Title.Font.Style = []
                              Width = 100
                              Visible = True
                            end
                            item
                              Expanded = False
                              FieldName = 'unisimbolo'
                              Width = 30
                              Visible = True
                            end>
                        end
                      end
                      object MemIngredientes: TMemo
                        Left = 0
                        Top = 32
                        Width = 496
                        Height = 94
                        TabStop = False
                        Align = alClient
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        ReadOnly = True
                        TabOrder = 2
                      end
                    end
                  end
                end
                object Panel26: TPanel
                  Left = 0
                  Top = 0
                  Width = 380
                  Height = 391
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 2
                  object Panel27: TPanel
                    Left = 0
                    Top = 0
                    Width = 380
                    Height = 34
                    Align = alTop
                    BevelInner = bvLowered
                    Color = 12615680
                    ParentBackground = False
                    TabOrder = 0
                    object Label12: TLabel
                      AlignWithMargins = True
                      Left = 18
                      Top = 5
                      Width = 94
                      Height = 19
                      Align = alLeft
                      Alignment = taRightJustify
                      BiDiMode = bdLeftToRight
                      Caption = '[F8] C'#243'digo'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -16
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentBiDiMode = False
                      ParentFont = False
                      Layout = tlCenter
                    end
                    object Panel28: TPanel
                      Left = 115
                      Top = 2
                      Width = 12
                      Height = 30
                      Align = alLeft
                      BevelOuter = bvNone
                      TabOrder = 0
                    end
                    object Panel29: TPanel
                      Left = 2
                      Top = 2
                      Width = 13
                      Height = 30
                      Align = alLeft
                      BevelOuter = bvNone
                      TabOrder = 1
                    end
                    object Panel30: TPanel
                      Left = 127
                      Top = 2
                      Width = 93
                      Height = 30
                      Align = alLeft
                      BevelOuter = bvNone
                      TabOrder = 2
                      object EdtProduto: TEdit
                        AlignWithMargins = True
                        Left = 3
                        Top = 3
                        Width = 87
                        Height = 24
                        Align = alClient
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -16
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        MaxLength = 6
                        ParentFont = False
                        TabOrder = 0
                        OnEnter = EdtProdutoEnter
                        OnExit = EdtProdutoExit
                        OnKeyPress = EdtProdutoKeyPress
                        OnKeyUp = EdtProdutoKeyUp
                        ExplicitHeight = 27
                      end
                    end
                    object btBuscaERP: TButton
                      Left = 226
                      Top = 3
                      Width = 119
                      Height = 25
                      Caption = 'Busca Avan'#231'ada'
                      TabOrder = 3
                      OnClick = btBuscaERPClick
                    end
                  end
                  object DBGrid2: TDBGrid
                    Left = 0
                    Top = 34
                    Width = 380
                    Height = 357
                    Align = alClient
                    DataSource = dGrp
                    DrawingStyle = gdsGradient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    ParentFont = False
                    TabOrder = 1
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnDblClick = DBGrid2DblClick
                    OnEnter = DBGrid2Enter
                    OnExit = DBGrid2Exit
                    OnKeyDown = DBGrid2KeyDown
                    OnKeyPress = DBGrid2KeyPress
                    OnKeyUp = DBGrid2KeyUp
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'grpidentificacao'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clWindowText
                        Title.Font.Height = -13
                        Title.Font.Name = 'Tahoma'
                        Title.Font.Style = []
                        Width = 276
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'grpcodigo'
                        Visible = False
                      end>
                  end
                end
              end
            end
          end
          object PnLeft: TPanel
            Left = 0
            Top = 0
            Width = 327
            Height = 491
            Align = alLeft
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 1
            object PnMesas: TPanel
              Left = 0
              Top = 33
              Width = 327
              Height = 401
              Align = alClient
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 0
            end
            object Panel22: TPanel
              Left = 0
              Top = 0
              Width = 327
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 1
              object LbOperador: TLabel
                AlignWithMargins = True
                Left = 47
                Top = 3
                Width = 114
                Height = 19
                Align = alLeft
                Alignment = taRightJustify
                BiDiMode = bdLeftToRight
                Caption = '[F2] Operador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                Layout = tlCenter
              end
              object Image1: TImage
                Left = 13
                Top = 0
                Width = 31
                Height = 33
                Align = alLeft
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                  00200806000000737A7AF4000008FA4944415478DAAD56095495C715FEDEC22A
                  08C8266B0444010B880504C40569540A1AAB72386E0858170EA4A9684C9BB840
                  5C5023A6464510A3E24620D84882205551AA842D2EA040FB4410148407CA031F
                  226FFB7BE71973E202C249E79C7BCEFCF3DF99F9E6CEFDBE3B3CFCC6A66760BE
                  57A0A11DD8D5D138833E5B863A9F37D409424DDD057C81D041D6DBBD933E878F
                  F3FD5397ABDF07B894B52BBFFD41CD421A5390F5FCDF00F0C0B3E7C089A92B25
                  D375F199DBA36768865B574E7F26EB9366FA0445D7B9F907E15E553967ACAC4D
                  CBFAF6CC69F2AB207BF69B010835B53D6CC64CBCD1D3DDF144DC543D4620D41A
                  E117BC5AE411B0104567F6B4565ECD5AB3E360CE497167375773F791F0E0C6F9
                  F878FD2727B2B3B337D2F426326EA800268F18E970B4FB71F3170AF9F3542B07
                  8F8FC6FE7EE63F9CBD66E1C8E7F3BFEE7DFA38756EF4BE72330B73AEB6F206BE
                  D91BC3595A59F30F9D2A507EBA6113BFEADA193C78D8FCC4C7C7673EAD554AD6
                  37240023EDBD52ECC74D5CA552CA519A97EA6266E334CDD16356B2CFAC652838
                  1EDFB9626140C3AA552BDDB7A79CC7E1D4BD82A2EFD394A3473B0AE8A02A89A4
                  1B8686067CB6CED8B163B78B44A2BDD4150F0980837B60D2188FC0B87113FF88
                  DD315E59CECE4E923DC9A7569C2914292F9F4D15D496FF000D4D2DDEA5E24A65
                  DEF7FF44D2CE04FEDBAEF1E8D1A3D5515151E1D4ADC28BA47C27004D16007D63
                  DBA839E19F6CB618E38FCBC7D770570B73793ADA3A0889DAAE2C2F38CC1737D7
                  0F9A355A5A5AAB6532592675258301604616989B7B6E8F9DBDBDE9EACDA704A2
                  E213AAFABB357C5D5D5D88DB1FAB343404303234E40F16C0BA75EB2E242525FD
                  85BA2232D5BB005892CD8F8D8D8D494C4C1CF3D1E664CED95288756BE35ED990
                  4E84F2F27228954A4C9D3A75400062B1B8CFDCDC3C8CBA1731802EBC04A047F6
                  071E8FB7542E97CF1308042F46B9171EF50DF5282F2BC79D3B77D0D7D7071717
                  17444646BE75C1B6B656989B8F54F78383838FE5E5E56DC60B4AF60F20282848
                  909F9FEF4CDD45C9C9C951D1D1D1E66C5C2291202525059D9D9DD0D6D686B7B7
                  37264F9E8CE1C387BFB208C771A8ACAC4471F18FA8AFBF87888808B8BABAE2CA
                  952B6D010101A1E452C6023850045833269B6D6B6BBBACB1B171DACBC1F4F474
                  B8BBBB63FCF8F16F4C66C04A4A4AD4D7F2ECD933585A5A62D2A449F0F0F08050
                  2854FB8C1A352A81D64B463F94FC0580898989664747872775171616164612F2
                  61FD85ADB6BA16C525C5A8ABAB539F9E019C32650AACADADDFF03D7428F5D6AA
                  55ABD97DDDC15B28F93AADACC8E6D1DD2DCFCDCD75FFF50FA9548AD2D2529495
                  95A2BBFB29898E217C7D7DD5D7C298C29AE86E03ECEDACE9F41AE8EA92402657
                  A2E2F67D044FF78CA6DF19645DEF02A04D3685E5429B58BCC4CCD4549D8D3939
                  39EA50AB542A383B3BC3DFDF1F8E8E8EAF4CDC955E02A5A11B1EDF4C87AB9D2E
                  AA2A6F4173F402983BFA53DDF8126753E35CC8EDBF788D92BCB70072200B5BBB
                  76EDF2DDBB77DBB14176C7EDEDED6AEAE9E9E9BD11E6E2AB45385BA5034B8709
                  7874BF060D17E331CCC411EE73B73395C6BF4E6EC6F9D38921E47A19AF55C9B7
                  291B4BF1195ADADA4B9FF7F6CEC1004DDCDA8212BA96CCCC4CDC6DE363F1FA93
                  50714AA8941C787C9E7A7169D763E4EC0EA104B54825A1DB1917B78618E2C611
                  8DEFF7078085FD77EC1A48D3A3885226AF3B545757E35C7E015A342641C0F5E2
                  41650EACDCE6C1C6C947BD209F74847213F2E7CF881D123CAABB018D9EDA6E09
                  CF564F434B977FAB38B723EF4482B58585555F7FDA6E4A36C7C9C929A2B6B6D6
                  9F0D30F5235E531296A14BD289169915BC42FE0AA542A13E0747A1E6F3786812
                  5D47F1B914E88F1809AFC02510F03548BC7A20270153CA7BD5FE4FDA1FA05B74
                  766BFEB91F36F6074083CC876C61454545A4A7A7274B4E6CDBB60DC3860D23A5
                  3343D25787E0E81B0EFB717E30B6A0B4E17168A9AF4252AC979A053ABAFAD037
                  7D0FA1B1FBC0E7F321271917378BF0887C8AF3D214DE9E1E3388559707AA6E36
                  640B424343A3B2B2B2D895A86598AA1CC96D1B3E8C8DC1BDE62ECAF22998B9F8
                  33CA6D0E59FB63517FFD3BB8B9B9C3C8C8084D8D4D18E1140407D7697472392E
                  642672A21B171915BF0C0B0B4BA4DC910F0480919B559CC524C98B0C0C0C5EF1
                  ADA9BE83BF6FDA015D1B5F4C08580AB9A20F372F1CC3DA703FF8F84D52834D3F
                  760457AAFB6064E54A1456A0E2C209E58DA28CB39C4AC574A1BDBF247CD95825
                  64640FDBB469D3F2848404DB5F36AFA945D6A57BE08CDC29BC941F7219E5881C
                  EC25151E6806677B7529C177E74B70FEA6143CA582FE29C0D16E0AF22DBB7842
                  F4C5863FCF0B09995DFDAE07860159109D3E9CA210C406E8A985751FFF0D7601
                  EBA1AB379C68AEC4D3CE56E8E819D32632C8144AE86BF4910A2A20EDA5F73494
                  E068735659950C04F9F3047C941766E3E0F668F3770160158549F222CA8348CA
                  0723B65074F44AD4779BA0A3B5092D0D55443B214222B7517EE8A8D9A25229D5
                  AA09154585F828EBEDC1856F767013672EE3F1F842E8D3B3FE6256D283967B3F
                  D90EE689C5E23977C2840911D7AF5F67CC404141013EDDF0395A9A1F102BB430
                  CAD606D6135740477F84FA09C1E8A822202C2FF874CB6CF3C6FF949609357598
                  C899924E68CB7AA55F537FCD60006891F9324A922644903668B2327CFC783A15
                  215630B9BEBCA2EAE7E6CE41062A4E8187776FE0A7C20C188FB4835FD0728A80
                  0A52493BB2F7C72690EF439A308AD17CF4E8D149544DC5837D64BE47164AAAB8
                  9CD4D1890DB4B6B52AE2D6C4D566646454B84F099BE91DB8D88AA39397E51FC1
                  EDD29C1ADD61867DF362BEF210D0F508849AC84EFEF0DFDD1DCD534982F954B6
                  855BB66C91BD8B05BF6EECA8D3C9963437372F888F8F17A5A5A5FD48DF9564ED
                  9ED317EF1DE733DBB4BDB90EE74F25C8540AF9FB341EE2F5FEB2952EDE41060C
                  C0E56F939E37D414EBBCBEF0A000848484F0E97D3096BAC1648C8EF564B7F1A2
                  BC5A906DB5B073737EDA29B6914A5AE3E99BC20D3F4AB878FF39D1D3EF561609
                  5A1B6EDFD9BF7F9F2F3D7CA54306F073D3FB79732650629264714F4FCFF3F5EB
                  D70B77EDDAC592F3033225BD15B65EBB764D7AE0C0017E4C4C4C048DB1D7107B
                  941EC68B72FC4AFB1FADB2C1A9AD5336340000000049454E44AE426082}
                OnClick = Image1Click
                ExplicitLeft = 10
                ExplicitTop = -2
              end
              object Panel23: TPanel
                Left = 164
                Top = 0
                Width = 12
                Height = 33
                Align = alLeft
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 0
              end
              object Panel24: TPanel
                Left = 0
                Top = 0
                Width = 13
                Height = 33
                Align = alLeft
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 1
              end
              object Panel25: TPanel
                Left = 176
                Top = 0
                Width = 160
                Height = 33
                Align = alLeft
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 2
                object EdtOperador: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 154
                  Height = 27
                  Align = alClient
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 14
                  ParentFont = False
                  TabOrder = 0
                  OnEnter = EdtOperadorEnter
                  OnExit = EdtOperadorExit
                  OnKeyPress = EdtOperadorKeyPress
                end
              end
            end
            object Panel36: TPanel
              Left = 0
              Top = 434
              Width = 327
              Height = 23
              Align = alBottom
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 2
              object Label13: TLabel
                Left = 18
                Top = 4
                Width = 48
                Height = 13
                AutoSize = False
                Caption = 'Livres'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 84
                Top = 4
                Width = 53
                Height = 14
                Caption = 'Ocupada'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 166
                Top = 4
                Width = 50
                Height = 18
                AutoSize = False
                Caption = 'Jun'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 238
                Top = 3
                Width = 74
                Height = 14
                Caption = 'Fechamento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindow
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Panel38: TPanel
                Left = 0
                Top = 0
                Width = 13
                Height = 23
                Align = alLeft
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 0
              end
              object Panel31: TPanel
                Left = 2
                Top = 3
                Width = 15
                Height = 15
                BevelInner = bvLowered
                Color = clBlack
                ParentBackground = False
                TabOrder = 1
              end
              object Panel33: TPanel
                Left = 67
                Top = 3
                Width = 15
                Height = 15
                BevelInner = bvLowered
                Color = 16711808
                ParentBackground = False
                TabOrder = 2
              end
              object Panel34: TPanel
                Left = 149
                Top = 3
                Width = 15
                Height = 15
                BevelInner = bvLowered
                Color = clGreen
                ParentBackground = False
                TabOrder = 3
              end
              object Panel32: TPanel
                Left = 220
                Top = 3
                Width = 15
                Height = 15
                BevelInner = bvLowered
                Color = clRed
                ParentBackground = False
                TabOrder = 4
              end
            end
            object Panel18: TPanel
              Left = 0
              Top = 457
              Width = 327
              Height = 34
              Align = alBottom
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 3
              object Label2: TLabel
                AlignWithMargins = True
                Left = 11
                Top = 3
                Width = 65
                Height = 19
                Align = alLeft
                Alignment = taRightJustify
                BiDiMode = bdLeftToRight
                Caption = 'Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                Layout = tlCenter
              end
              object Panel20: TPanel
                Left = 0
                Top = 0
                Width = 8
                Height = 34
                Align = alLeft
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 0
              end
              object Panel21: TPanel
                Left = 79
                Top = 0
                Width = 248
                Height = 34
                Align = alClient
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 1
                object EdtCodprod: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 145
                  Height = 28
                  Align = alLeft
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 14
                  ParentFont = False
                  TabOrder = 0
                  OnEnter = EdtCodprodEnter
                  OnExit = EdtCodprodExit
                  OnKeyPress = EdtCodprodKeyPress
                  ExplicitHeight = 27
                end
              end
            end
          end
        end
      end
    end
  end
  object PnOperacoes: TPanel
    Left = 0
    Top = 538
    Width = 1381
    Height = 139
    Align = alBottom
    BevelOuter = bvNone
    Color = 12615680
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object GBCaixaVar: TGroupBox
      Tag = 1
      Left = 264
      Top = 0
      Width = 364
      Height = 139
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alRight
      Caption = ' Caixa '
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object SBAbertura: TSpeedButton
        Left = 8
        Top = 18
        Width = 125
        Height = 20
        Action = ActAbreCaixa
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBRetirada: TSpeedButton
        Left = 174
        Top = 18
        Width = 106
        Height = 20
        Action = ActSangria
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBFechamento: TSpeedButton
        Left = 8
        Top = 40
        Width = 125
        Height = 20
        Action = ActFechaCaixa
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBSuprimento: TSpeedButton
        Left = 174
        Top = 40
        Width = 105
        Height = 20
        Action = ActSuprimento
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBImpFechamento: TSpeedButton
        Left = 8
        Top = 64
        Width = 125
        Height = 20
        Action = ActImprimeCaixa
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SbVendaRapida: TSpeedButton
        Left = 174
        Top = 66
        Width = 168
        Height = 20
        Action = ActVendaRapida
        Caption = '[F10] Venda R'#225'pida'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SpeedButton5: TSpeedButton
        Left = 176
        Top = 92
        Width = 168
        Height = 20
        Action = ActReimprimirComprovantes
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
    end
    object GBFuncoes: TGroupBox
      Tag = 1
      AlignWithMargins = True
      Left = 1015
      Top = 0
      Width = 361
      Height = 139
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alRight
      Caption = ' Fun'#231#245'es '
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object SBCancelaItem: TSpeedButton
        Left = 8
        Top = 39
        Width = 160
        Height = 20
        Action = ActCancelaItem
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        StyleElements = []
      end
      object SBProduto: TSpeedButton
        Left = 10
        Top = 18
        Width = 160
        Height = 20
        Caption = '[F8] Produto'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        StyleElements = []
        OnClick = SBProdutoClick
      end
      object SBFechaMesa: TSpeedButton
        Left = 183
        Top = 14
        Width = 175
        Height = 20
        Action = ActFechaMesa
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        StyleElements = []
      end
      object SpeedButton6: TSpeedButton
        Left = 183
        Top = 40
        Width = 175
        Height = 20
        Action = ActIniciaFechamento
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        StyleElements = []
      end
      object SBSair: TSpeedButton
        Left = 183
        Top = 108
        Width = 175
        Height = 20
        BiDiMode = bdLeftToRight
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        ParentBiDiMode = False
        StyleElements = []
        OnClick = SBSairClick
      end
      object SBCancelaPedido: TSpeedButton
        Left = 8
        Top = 65
        Width = 160
        Height = 20
        Action = ActCancelaTodos
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        StyleElements = []
      end
      object SbFechaDelivery: TSpeedButton
        Left = 183
        Top = 64
        Width = 175
        Height = 20
        Action = ActReceberDelivery
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        StyleElements = []
      end
      object SpeedButton1: TSpeedButton
        Left = 8
        Top = 91
        Width = 160
        Height = 20
        Action = ActReceberConvenio
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        StyleElements = []
      end
    end
    object GBUtilitarios: TGroupBox
      Tag = 1
      Left = 628
      Top = 0
      Width = 387
      Height = 139
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alRight
      Caption = ' Utilit'#225'rios '
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object SBTransfMesa: TSpeedButton
        Left = 3
        Top = 18
        Width = 190
        Height = 20
        Action = ActTranferirMesas
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBReabreMesa: TSpeedButton
        Left = 3
        Top = 40
        Width = 190
        Height = 20
        Action = ActReabirMesa
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBPedido: TSpeedButton
        Left = 200
        Top = 65
        Width = 160
        Height = 20
        Caption = 'Reimprimir Pedido'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        StyleElements = []
        OnClick = SBPedidoClick
      end
      object SBJuntarMesas: TSpeedButton
        Left = 3
        Top = 64
        Width = 190
        Height = 20
        Action = ActJuntarMesas
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBImpComanda: TSpeedButton
        Left = 200
        Top = 16
        Width = 160
        Height = 20
        Caption = 'Imprimir Resumo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        OnClick = SBImpComandaClick
      end
      object SbRecebimentos: TSpeedButton
        Left = 200
        Top = 42
        Width = 160
        Height = 20
        Action = ActReemissaoFechamento
        BiDiMode = bdLeftToRight
        Caption = '2'#186' Via Fechamento'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        ParentBiDiMode = False
        StyleElements = []
      end
      object SpeedButton2: TSpeedButton
        Left = 3
        Top = 90
        Width = 190
        Height = 20
        Action = ActExcluirJuncao
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SpeedButton3: TSpeedButton
        Left = 199
        Top = 91
        Width = 107
        Height = 20
        Action = ActGaveta
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
    end
    object GBSalvar: TGroupBox
      Tag = 10
      Left = 0
      Top = 0
      Width = 264
      Height = 139
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alClient
      Caption = ' Estado das Impressoras '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object plImp: TPanel
        Left = 1
        Top = 17
        Width = 262
        Height = 121
        Align = alClient
        BevelOuter = bvNone
        Color = clGray
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object TmCozinha: TTimer
    Enabled = False
    Interval = 350
    OnTimer = TmCozinhaTimer
    Left = 568
    Top = 159
  end
  object dproc: TUniDataSource
    DataSet = DmDados.proc
    OnDataChange = dprocDataChange
    Left = 568
    Top = 248
  end
  object dGrp: TUniDataSource
    DataSet = DmDados.grp
    OnDataChange = dGrpDataChange
    Left = 400
    Top = 136
  end
  object PUMenuRelatorios: TPopupMenu
    Left = 780
    Top = 175
  end
  object TmMesa: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TmMesaTimer
    Left = 189
    Top = 352
  end
  object Acoes: TActionList
    OnExecute = AcoesExecute
    Left = 669
    Top = 192
    object ActAbreCaixa: TAction
      Category = 'Caixa'
      Caption = 'Abre Caixa'
      OnExecute = ActAbreCaixaExecute
    end
    object ActFechaCaixa: TAction
      Category = 'Caixa'
      Caption = 'Fecha Caixa'
      OnExecute = ActFechaCaixaExecute
    end
    object ActSangria: TAction
      Category = 'Caixa'
      Caption = 'Sangria'
      OnExecute = ActSangriaExecute
    end
    object ActSuprimento: TAction
      Category = 'Caixa'
      Caption = 'Suprimento'
      OnExecute = ActSuprimentoExecute
    end
    object ActImprimeCaixa: TAction
      Category = 'Caixa'
      Caption = 'Imprime Caixa'
      OnExecute = ActImprimeCaixaExecute
    end
    object ActFechaMesa: TAction
      Category = 'Fun'#231#245'es'
      Caption = '[F6] Fecha Mesa'
      ShortCut = 117
      OnExecute = ActFechaMesaExecute
    end
    object ActJuntarMesas: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Juntar Mesas'
      OnExecute = ActJuntarMesasExecute
    end
    object ActTranferirMesas: TAction
      Category = 'Utilit'#225'rios'
      Caption = '[F4] Transferir Mesas'
      ShortCut = 115
      OnExecute = ActTranferirMesasExecute
    end
    object ActIniciaFechamento: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Iniciar Fechamento'
      OnExecute = ActIniciaFechamentoExecute
    end
    object ActReemissaoFechamento: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Reemiss'#227'o Fechamento'
      OnExecute = ActReemissaoFechamentoExecute
    end
    object ActReabirMesa: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Reabir Mesa'
      OnExecute = ActReabirMesaExecute
    end
    object ActReceberConvenio: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Receber Conv'#234'nio'
      OnExecute = ActReceberConvenioExecute
    end
    object ActExcluirJuncao: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Excluir Jun'#231#227'o'
      OnExecute = ActExcluirJuncaoExecute
    end
    object ActReceberDelivery: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Receber Delivery'
      OnExecute = ActReceberDeliveryExecute
    end
    object ActGaveta: TAction
      Category = 'Caixa'
      Caption = 'Abre Gaveta'
      OnExecute = ActGavetaExecute
    end
    object ActCancelaItem: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Cancela Item'
      OnExecute = ActCancelaItemExecute
    end
    object ActCancelaTodos: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Cancela Todos'
      OnExecute = ActCancelaTodosExecute
    end
    object ActVendaRapida: TAction
      Category = 'Caixa'
      Caption = 'Venda R'#225'pida'
      ShortCut = 121
      OnExecute = ActVendaRapidaExecute
    end
    object ActReimprimeNFCe: TAction
      Category = 'Caixa'
      Caption = 'Reimprime NFCEs'
      OnExecute = ActReimprimeNFCeExecute
    end
    object ActReimprimirComprovantes: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Comprovantes'
      OnExecute = ActReimprimirComprovantesExecute
    end
    object ActiCancelarDelivery: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Cancelar Delivery'
      OnExecute = ActiCancelarDeliveryExecute
    end
  end
  object ACBrValidador: TACBrValidador
    TipoDocto = docGTIN
    IgnorarChar = './-'
    AjustarTamanho = True
    PermiteVazio = True
    Left = 376
    Top = 200
  end
  object ListaImagemMesas: TPngImageList
    Height = 32
    Width = 32
    PngImages = <
      item
        Background = clWindow
        Name = 'restaurant-table-and-chairs (3)'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000473424954080808087C0864880000000970485973000009D8000009
          D801C7A0B9AD0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000002A54944415478DAED96CB4B55511487CFED41
          56943D21B2AE501114053D2028D2AC49B7614452104A4A83FC072AD1CC8AB47F
          20E9819104BD8886E9A45207511046528348410B69D02D7B5264DDBEE559FBB2
          3BEC738F39B80E3A1B3ED63D6BAFB5F6EFECBDCFD2442693F12672246201B180
          58006C80D9087990D785138932CC2711F016E6C30A440CE469F162CC2B488B80
          67B0162A11D096270115982BD02B022EC0216841408D23586296C2A47F5CE737
          BCCE382E1925CF610EC345297E105AE129B1EB1DC17731A971BE6C3B3577396A
          F660D641950858052FE0171492F035102C5B55314E016DD4AB0CD49B89F90893
          61B50810DEC31CD841C27D87E2691A678F42CFBFC0321669517BC8EEFF70D4DA
          8EB907C3306FB40FE06CE76127D4F2DC3496572347047FD0C7B9E40D8F31EF18
          E60C74909332021A709C8041E809C9FD0CA7887F994B00FE95987A98155247EE
          5952D623A7D108D88CA30BA644BC403DF1A72304D489D0883A23504ACEC36C2B
          26B1042347312324A919CE5A0B850910FF11381A52E71BA488EF1E8DB7049462
          3A55DD132B61392CD0C5B34573DD01E69A54C03BE8B36A6DD45DDE467C5750C0
          4DCC5EB885AFDC2A66FA441A9630F73D6207E48B79A3A2ABF05FB66ADDC094DB
          6B983BB098DF03AAAE0C5FA79554A005E5EF453573AD11024C9BFD4BB0CE6DC5
          74EB2E173337640434E2380ECF795E133C34E69BF55CB3DD32878047984DC123
          B36A992E7892F906692E533DFFF393665283B3C591249F4DBFE777AF1275D782
          69B3D2AEE5DB96C6F3D8F3BBEA326A0D3A6A55632E797E134B8A8022DD62799B
          24495F5C5797C46B987D2212B6C08140C855DDDEF3709D3AFB43EA4CD7E35E28
          47648E40BAE010BF7BBD90418CDC8F3D7047EFC36EDD3D193FD59F56FF6D6A8D
          E4A825C75C444CC7C4FF4B160B8805FCF702FE00C7085F1CE7BAE76A00000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'azul'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE9000000097048597300000EC300000EC301C7
          6FA864000001134944415478DAED95DB0E82300C863723A7A889F7FAB07B581F
          C00B544023B632228CAD3B78C08B2D818CF66FFB510A7036F3E21120024480F9
          0144DB3E7782FF1646D6FD0380FEC20C80F636B08C3956D67C01505DE8FDDE77
          69C9A70158C3F9F4658015E42B87003807779298B18C4DDF984AE95CAEF8D157
          5B3AB0E023A3EF20860EF0A0167F2BD90762A60064B052C804E091CB3DB00BD8
          C271B400741A7B2E160240B63324975F4B052F184E3FADCFC05EE98AE9F42E43
          9883EF62017303D6C4B8BF053ABFABCD029080B121837489D5672C1C3FEB634D
          8AA21D180ED2B0817349066262D3800D7D6680023467A9D9BBFC0DFBB504DD15
          74F8596E0C1D48C15EC33E81FD8DCC36FA1BCEB822400488000FB221C03E7D27
          DD3A0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'restaurant-table-and-chairs (5)'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002000000020080300000044A48A
          C6000000E4504C5445000000D60029D70028D90026D80027D60029D80027D900
          26D70028D80027FF0000D5002BD70028D80027D80027D80027DA0025D80027D1
          002ED70028D80027D80027DB0024DF0020D3002CD80027D70028DF0020D90026
          D80027D80027D80027D70028D70028D80027D90026D80027D70028DA0025D700
          28D80027D80027D80027D80027D80027D80027D70028D80027D90026D70028D9
          0026D80027CC0033D80027D80027D80027D90026D80027D90026D80027D5002B
          D70028D70028E3001CD80027D70028D70028BF0040D90026D5002BD60029D900
          26D80027D60029D80027000000048EF8680000004A74524E53003240E8FB1FD2
          5E9A96011E2061CFB729FC0BA1EF41070817B879107FE1B0A326397C3DF5873E
          C8EB88AAECA91A3F623C81D4C905E769B635631BEE0CA76609EA472D04570619
          6A6F2C54472C9600000001624B47440088051D48000000097048597300000DD7
          00000DD70142289B780000000774494D4507E00A12172F2C539DD7EC0000017A
          4944415478DADD92ED2FC25114C7CF612A3F22A55A9E454D88F2B8D02C599B7F
          B989174593AD9491450FA63CC6A489D85CF7F4BB6BBCC02B9BB92FEE3DE77B3E
          67E7DC732FC20F0BFF0780F8F64DB8816123E2EB97F126C650B11AA87E0928BD
          EBA85AD97C225BC28FED3056A1A3D9B3816A77E881ECF6C54FB95B25DADB9682
          A85908E31DB775F39F809D5BBE69996B1B25696EF786240395C02988322A714D
          927E3652413039F7CEEB89DD93102FD4BD2E47EC02A167621FC548720218604C
          6ED59EC8230C9EF944C2514600E611A1F87BB33C7908AD35EFB8521040B764A9
          292996A6B7B00EFB877801733659EFC162C9F02269DF498A80D181DC2180DA7D
          5ABC1280416B0E9601C6FB7800C19EF4E51300C6CEFE425C004A2FC1E0E8F2DB
          F8059CA6CB2815B40DF291CAC0B491CAD1202F623883FA6284BC1685EB1C943A
          B8ADAAB4E19747925C1D370C1734250CD57A76AB8B5763FC3CE86F2D076BCA32
          4AF7081EDC902FED455AFC21F90AC8D2DAF3E69FF8D5BF0FBC03494685C87414
          D65C0000002574455874646174653A63726561746500323031362D31302D3138
          5432333A34373A34342B30323A30304DF748FF0000002574455874646174653A
          6D6F6469667900323031362D31302D31385432333A34373A34342B30323A3030
          3CAAF0430000001974455874536F667477617265007777772E696E6B73636170
          652E6F72679BEE3C1A0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'restaurant-table-and-chairs (4)'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002000000020080300000044A48A
          C6000000E4504C54450000008FDB5C8FDB5C91DC5A91DC5A94DE5A91DC5A90DC
          5A92DC5991DB5AFFFF0091DD5E8FDF5891DD5991DD5A91DC5B8FDA5791DC5A8B
          D15D92DC5A91DC5A91DC5A92DB499FDF6090DE5992DC5A91DB5B8FDF6091DD5A
          91DC5A91DC5A91DD5B94DD578FDB5992DC5A92DE5C91DC5A91DB5B90DA5A91DD
          5B91DC5A90DB5A92DD5A91DC5A91DC5B93D85892DB5992DD5B91DD5990DB5B92
          DC5A91DB5A99CC6691DC5B92DD5A90DC5A90DD5B90DB5A8ED95E91DC5A95D555
          91DC5A91DC5A8EE35591DC5A90DB5A93DD5B80BF4090DC5B80D5558FE05C90DB
          5991DD5A91DC5D91DC5A000000683767B90000004A74524E53003240E8FB1FD2
          5E9A96011E2061CFB729FC0BA1EF41070817B879107FE1B0A326397C3DF5873E
          C8EB88AAECA91A3F623C81D4C905E769B635631BEE0CA76609EA472D04570619
          6A6F2C54472C9600000001624B47440088051D48000000097048597300000DD7
          00000DD70142289B780000000774494D4507E00A12172F252A416F480000017A
          4944415478DADD92ED2FC25114C7CF612A3F22A55A9E454D88F2B8D02C599B7F
          B989174593AD9491450FA63CC6A489D85CF7F4BB6BBCC02B9BB92FEE3DE77B3E
          67E7DC732FC20F0BFF0780F8F64DB8816123E2EB97F126C650B11AA87E0928BD
          EBA85AD97C225BC28FED3056A1A3D9B3816A77E881ECF6C54FB95B25DADB9682
          A85908E31DB775F39F809D5BBE69996B1B25696EF786240395C02988322A714D
          927E3652413039F7CEEB89DD93102FD4BD2E47EC02A167621FC548720218604C
          6ED59EC8230C9EF944C2514600E611A1F87BB33C7908AD35EFB8521040B764A9
          292996A6B7B00EFB877801733659EFC162C9F02269DF498A80D181DC2180DA7D
          5ABC1280416B0E9601C6FB7800C19EF4E51300C6CEFE425C004A2FC1E0E8F2DB
          F8059CA6CB2815B40DF291CAC0B491CAD1202F623883FA6284BC1685EB1C943A
          B8ADAAB4E19747925C1D370C1734250CD57A76AB8B5763FC3CE86F2D076BCA32
          4AF7081EDC902FED455AFC21F90AC8D2DAF3E69FF8D5BF0FBC03494685C87414
          D65C0000002574455874646174653A63726561746500323031362D31302D3138
          5432333A34373A33372B30323A303076DA5B7B0000002574455874646174653A
          6D6F6469667900323031362D31302D31385432333A34373A33372B30323A3030
          0787E3C70000001974455874536F667477617265007777772E696E6B73636170
          652E6F72679BEE3C1A0000000049454E44AE426082}
      end>
    Left = 435
    Top = 240
    Bitmap = {}
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 224
    Top = 408
  end
end
