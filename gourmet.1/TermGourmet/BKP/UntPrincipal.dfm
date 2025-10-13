object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 169
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = 'Gourmet - Controle de Mesas'
  ClientHeight = 670
  ClientWidth = 1259
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
    Width = 1259
    Height = 556
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1259
      Height = 556
      Align = alClient
      BevelOuter = bvNone
      Color = clMenu
      ParentBackground = False
      TabOrder = 0
      object PnSuperior: TPanel
        Left = 0
        Top = 0
        Width = 1259
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
          Width = 1255
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
            Width = 1243
            Height = -3
            Align = alClient
            Alignment = taCenter
            Caption = 'Cozinha Fechada, Aguarde Libera'#231#227'o ...'
            ExplicitWidth = 411
            ExplicitHeight = 25
          end
        end
        object pnInfoTopo: TPanel
          Left = 0
          Top = 0
          Width = 1255
          Height = 37
          Align = alTop
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 1
          object GBdescmax: TGroupBox
            Tag = 1
            Left = 1044
            Top = 0
            Width = 80
            Height = 37
            Align = alRight
            Caption = '% Desc.'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object LbDescMaximo: TLabel
              Left = 2
              Top = 15
              Width = 76
              Height = 20
              Align = alClient
              Alignment = taCenter
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 4
              ExplicitHeight = 16
            end
          end
          object pversao: TPanel
            Left = 1184
            Top = 0
            Width = 71
            Height = 37
            Align = alRight
            BevelOuter = bvNone
            BorderWidth = 2
            TabOrder = 1
            object LbVersao: TLabel
              Left = 2
              Top = 19
              Width = 67
              Height = 16
              Align = alBottom
              Alignment = taCenter
              Caption = '0.0.0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = LbVersaoClick
              ExplicitWidth = 32
            end
            object lbtitversao: TLabel
              Left = 2
              Top = 2
              Width = 67
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Vers'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnDblClick = lbtitversaoDblClick
              ExplicitWidth = 37
            end
          end
          object GroupBox3: TGroupBox
            Tag = 1
            Left = 844
            Top = 0
            Width = 200
            Height = 37
            Align = alRight
            Caption = ' Servidor '
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            object LbHost: TLabel
              Left = 2
              Top = 15
              Width = 196
              Height = 20
              Align = alClient
              Alignment = taCenter
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 4
              ExplicitHeight = 16
            end
          end
          object GroupBox7: TGroupBox
            Tag = 1
            Left = 10
            Top = 0
            Width = 354
            Height = 37
            Align = alClient
            Caption = ' Identifica'#231#227'o '
            Color = 12615680
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            object LbEmpresa: TLabel
              Left = 2
              Top = 15
              Width = 350
              Height = 20
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Caption = 'DADOS DA EMPRESA'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 797
              ExplicitHeight = 41
            end
          end
          object GroupBox13: TGroupBox
            Tag = 1
            Left = 644
            Top = 0
            Width = 200
            Height = 37
            Align = alRight
            Caption = ' Dados '
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            object LbDados: TLabel
              Left = 2
              Top = 15
              Width = 196
              Height = 20
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 41
            end
          end
          object GBTerminal: TGroupBox
            Tag = 1
            Left = 1124
            Top = 0
            Width = 60
            Height = 37
            Align = alRight
            Caption = ' Trm '
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 5
            object LbTerminal: TLabel
              Tag = 1
              Left = 2
              Top = 15
              Width = 56
              Height = 20
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              StyleElements = []
              ExplicitHeight = 41
            end
          end
          object GBModoNFs: TGroupBox
            Tag = 1
            Left = 444
            Top = 0
            Width = 200
            Height = 37
            Align = alRight
            Caption = ' Modo NFC-e '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            object LbModoNFe: TLabel
              Left = 2
              Top = 15
              Width = 196
              Height = 20
              Align = alClient
              Alignment = taCenter
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 4
              ExplicitHeight = 16
            end
          end
          object GBCaixa: TGroupBox
            Tag = 1
            Left = 364
            Top = 0
            Width = 80
            Height = 37
            Align = alRight
            Caption = ' Cx.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            Visible = False
            object Label1: TLabel
              Left = 2
              Top = 15
              Width = 76
              Height = 20
              Hint = 'N'#250'mero do Atendimento'
              Margins.Left = 25
              Margins.Top = 0
              Margins.Right = 25
              Align = alClient
              Alignment = taCenter
              Caption = '00000'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 40
              ExplicitHeight = 16
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
            TabOrder = 8
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 47
        Width = 1259
        Height = 509
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1259
          Height = 509
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel13: TPanel
            Left = 327
            Top = 0
            Width = 932
            Height = 509
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 932
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 0
              object LbMesa: TLabel
                Left = 92
                Top = 0
                Width = 764
                Height = 33
                Align = alLeft
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
                ExplicitLeft = 95
                ExplicitTop = 3
                ExplicitHeight = 29
              end
              object LbColaborador: TLabel
                AlignWithMargins = True
                Left = 745
                Top = 0
                Width = 52
                Height = 33
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
                ExplicitHeight = 19
              end
              object LbOrcChave: TLabel
                Left = 10
                Top = 0
                Width = 82
                Height = 33
                Hint = 'N'#250'mero do Atendimento'
                Margins.Left = 25
                Margins.Top = 0
                Margins.Right = 25
                Align = alLeft
                Alignment = taCenter
                Caption = 'N'#186': 00000'
                Color = clBlack
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                ExplicitHeight = 19
              end
              object plAgora: TPanel
                Left = 822
                Top = 0
                Width = 110
                Height = 33
                Margins.Left = 25
                Margins.Top = 0
                Margins.Right = 25
                Margins.Bottom = 0
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object LbData: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 104
                  Height = 30
                  Align = alBottom
                  AutoSize = False
                  Caption = '00/00/0000'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitTop = 10
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
                TabOrder = 1
              end
            end
            object PCMesa: TPageControl
              Left = 0
              Top = 33
              Width = 932
              Height = 476
              ActivePage = TabCardapio
              Align = alClient
              TabOrder = 1
              object TabItens: TTabSheet
                Caption = ' Itens '
                object DBGrid1: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 924
                  Height = 375
                  Align = alClient
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
                      Width = 408
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
                    end>
                end
                object Panel12: TPanel
                  Left = 0
                  Top = 375
                  Width = 924
                  Height = 73
                  Align = alBottom
                  BevelKind = bkFlat
                  BevelOuter = bvNone
                  Color = 12615680
                  ParentBackground = False
                  TabOrder = 1
                  object LbItemGeral: TLabel
                    Left = 707
                    Top = 1
                    Width = 182
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
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
                    Height = 69
                    Hint = 'Quantidade de Itens'
                    Margins.Left = 25
                    Margins.Top = 0
                    Margins.Right = 25
                    Align = alLeft
                    Alignment = taCenter
                    Caption = 'Itens: 0'
                    Color = clBlack
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Layout = tlCenter
                    ExplicitHeight = 19
                  end
                  object LbRecebido: TLabel
                    Left = 405
                    Top = 23
                    Width = 140
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
                    Left = 707
                    Top = 23
                    Width = 182
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object LbItemTotal: TLabel
                    Left = 707
                    Top = 45
                    Width = 182
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object LbReceber: TLabel
                    Left = 403
                    Top = 45
                    Width = 142
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
                    Left = 575
                    Top = 23
                    Width = 142
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Desconto R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label8: TLabel
                    Left = 627
                    Top = 1
                    Width = 90
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Geral R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label9: TLabel
                    Left = 619
                    Top = 45
                    Width = 98
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Total R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label10: TLabel
                    Left = 216
                    Top = 23
                    Width = 183
                    Height = 22
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'Total Recebido R$:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clMoneyGreen
                    Font.Height = -19
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label11: TLabel
                    Left = 216
                    Top = 45
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
                    Top = 46
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
                end
              end
              object TabCardapio: TTabSheet
                Caption = 'Card'#225'pio'
                ImageIndex = 1
                OnShow = TabCardapioShow
                object Panel5: TPanel
                  Left = 0
                  Top = 409
                  Width = 924
                  Height = 39
                  Align = alBottom
                  BevelKind = bkFlat
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Panel8: TPanel
                    Left = 787
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
                  Width = 544
                  Height = 409
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 1
                  object Panel10: TPanel
                    Left = 0
                    Top = 0
                    Width = 544
                    Height = 409
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    object Panel11: TPanel
                      Left = 0
                      Top = 0
                      Width = 544
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
                        Width = 534
                        Height = 27
                        Align = alClient
                        Alignment = taCenter
                        Caption = 'Op'#231#245'es'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWhite
                        Font.Height = -17
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        ExplicitWidth = 63
                        ExplicitHeight = 21
                      end
                    end
                    object DBGrid3: TDBGrid
                      Left = 0
                      Top = 34
                      Width = 544
                      Height = 249
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
                      OnKeyDown = DBGrid3KeyDown
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
                        end>
                    end
                    object PnSabores: TPanel
                      Left = 0
                      Top = 283
                      Width = 544
                      Height = 126
                      Align = alBottom
                      BevelOuter = bvNone
                      TabOrder = 2
                      object Panel14: TPanel
                        Left = 0
                        Top = 0
                        Width = 544
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
                          Width = 534
                          Height = 25
                          Align = alClient
                          Alignment = taCenter
                          Caption = 'Ingredientes'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWhite
                          Font.Height = -17
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                          ExplicitWidth = 110
                          ExplicitHeight = 21
                        end
                      end
                      object Panel15: TPanel
                        Left = 374
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
                          DataSource = DmDados.dpun
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
                        Width = 374
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
                  Height = 409
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
                      Height = 27
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
                      ExplicitHeight = 19
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
                        OnKeyPress = EdtProdutoKeyPress
                        ExplicitHeight = 27
                      end
                    end
                  end
                  object DBGrid2: TDBGrid
                    Left = 0
                    Top = 34
                    Width = 380
                    Height = 375
                    Align = alClient
                    DataSource = dGrp
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
                    OnDblClick = DBGrid2DblClick
                    OnKeyDown = DBGrid2KeyDown
                    OnKeyPress = DBGrid2KeyPress
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
            Height = 509
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
            object PnMesas: TPanel
              Left = 0
              Top = 33
              Width = 327
              Height = 453
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
                Left = 16
                Top = 3
                Width = 114
                Height = 30
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
                ExplicitHeight = 19
              end
              object Panel23: TPanel
                Left = 133
                Top = 0
                Width = 12
                Height = 33
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
              end
              object Panel24: TPanel
                Left = 0
                Top = 0
                Width = 13
                Height = 33
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
              end
              object Panel25: TPanel
                Left = 145
                Top = 0
                Width = 93
                Height = 33
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object EdtOperador: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 87
                  Height = 27
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 4
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
              Top = 486
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
          end
        end
      end
    end
  end
  object PnOperacoes: TPanel
    Left = 0
    Top = 556
    Width = 1259
    Height = 114
    Align = alBottom
    BevelOuter = bvNone
    Color = 12615680
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object GBCaixaVar: TGroupBox
      Tag = 1
      Left = 339
      Top = 0
      Width = 239
      Height = 114
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
        Left = 9
        Top = 18
        Width = 120
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
        Left = 137
        Top = 18
        Width = 101
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
        Top = 42
        Width = 120
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
        Left = 137
        Top = 42
        Width = 101
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
        Top = 66
        Width = 120
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
      object SBRelatorio: TSpeedButton
        Left = 9
        Top = 90
        Width = 97
        Height = 20
        Caption = 'Relat'#243'rios'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        Visible = False
      end
    end
    object GBFuncoes: TGroupBox
      Tag = 1
      AlignWithMargins = True
      Left = 923
      Top = 0
      Width = 331
      Height = 114
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
        Left = 10
        Top = 42
        Width = 134
        Height = 20
        Caption = 'Cancela Item'
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
        Width = 134
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
        Left = 168
        Top = 18
        Width = 160
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
        Left = 168
        Top = 41
        Width = 160
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
        Left = 168
        Top = 90
        Width = 160
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
        Left = 10
        Top = 66
        Width = 134
        Height = 20
        Caption = 'Cancela Todos'
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
        Left = 168
        Top = 66
        Width = 160
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
        Left = 10
        Top = 89
        Width = 152
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
      Left = 578
      Top = 0
      Width = 345
      Height = 114
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
        Left = 8
        Top = 18
        Width = 180
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
        Left = 9
        Top = 42
        Width = 180
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
        Left = 183
        Top = 65
        Width = 158
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
      end
      object SBJuntarMesas: TSpeedButton
        Left = 8
        Top = 66
        Width = 166
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
        Left = 183
        Top = 18
        Width = 144
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
      end
      object SbRecebimentos: TSpeedButton
        Left = 183
        Top = 42
        Width = 162
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
        Left = 8
        Top = 90
        Width = 166
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
        Visible = False
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 324
      Height = 108
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object Image2: TImage
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 318
        Height = 102
        Align = alClient
        AutoSize = True
        Center = True
        Picture.Data = {
          07544269746D6170CE690100424DCE6901000000000036000000280000000E01
          0000720000000100180000000000986901000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFFFFFFFFFFFFFDFFFFFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFDFFFFFD
          FFFFFFFEFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFEFFFDFFFFFDFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFDFFFEFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFDFFFEFDFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFDFFFEFFFFFEFFFFFFFFFFFFFDFFFFFDFF
          FFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFDFFFEFDFFFFFFFEFFFFFEFFFF
          FEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFFFFFFFFFFFFFDFFFFFDFFFFFBFEFCFFFDFCFFFDFCFFFEFEFFFD
          FDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFEFFFFFDFF
          FFFDFFFFFFFFFFFFFEFFFFFEFFFFFEFDFFFEFFFFFEFFFFFFFFFEFFFFFEFFFFFE
          FFFFFFFFFDFFFFFFFFFEFFFFFEFFFEFFFFFFFFFFFFFFFFFFFEFDFFFEFDFFFEFF
          FFFEFFFFFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFBFFFFFDFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFEFFFFFFFFFFFFFEFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFDFFFFFDFFFFFFFFFFFFFFFEFFFFFFFFFF
          FFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFF
          FFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FDFFFFFFFEFF
          FFFEFFFFFEFFFFFFFFFDFFFEFDFFFFFFFFFFFFFCFEFEFDFFFFFEFFFEFDFFFFFF
          FFFFFFFFFEFDFFFFFCFFFFFCFFFFFDFFFBF9F8FAFFFEF6FFFEF6FFFFFAFFFFFF
          FFFFFFFFFFFDFFFFFBFFFFFBFEFFFBFCFFFFFDFFFFFEFFFFFDFFFFFDFFFFFDFF
          FFFEFFFBFCFFFAFFFFFBFFFEFBFEFCFFFFFFFFFEFFFFFCFFFFFAFFFEFDFFFDFF
          FFFCFDFBFFFFFEFEFDFFFDFFFFFAFFFAFBFFFBFCFFFDFFFFFFFCFDFBFFFFFFFF
          FEFFFFFCFEFFFFFEFFFDFCFCFEFFFDFEFFFEFCFFFFFEFFFFFEFFFFFFFFFFFEFF
          FFFEFFFDFFFFFBFFFFFBFFFFFBFFFFFAFFFEFDFFFFFFFDFFFFFCFFFFFDFFFFFC
          FDFEFFFDFBFFFCF8FFFCFAFFFCFDFFFEFFFFFFFFFFFEFFFFFFFFFDFFFFFDFFFF
          FFFEFFFFFCFFFEFFFFFFFFFDFFFEFDFFFEFFFEFFFFFEFFFFFEFFFFFFFEFFFFFE
          FDFFFEFBFFFEFBFFFFFDFFFFFFFEFFFFFEFFFFFDFDFCFFFDFBFFFCFBFFFCFCFF
          FBFFFEFDFEFEFEFAFFFFFBFFFFFFFFFEFFFCFCFFFDFFFFFCFFFFFFFFFEFFFDFB
          FFFCFAFFFDFFFCFFFFFDFFFEFDFFFAFCFDFDFFFEFEFFFBFFFFFCFFFDFCFDFFFF
          F9FDFEF9FDFEFDFFFFFFFEFFFFFCFFFFFCFFFFFDFFFCFEFEFAFFFFF6FFFCF7FD
          F8FFFFFBBEADAA492C28CDB4B0FFFFFCFBFCFAFFFAF9FFFDFCFFFFFEFFFFFFFF
          FFFFFFFEFFFFFEFFFDFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFDFC
          FFFFFCFFFFFEFFFDFFFFF6FFFFF9FFFFFDFFFFFFFBFFFFF9FDFFF9F9FFF9FCFF
          FBFFFEFFFFFDFFFFFDFFFFFCFFFDFFFFFBFFFFFDFEFAFFFFFBFFFDFFFFFDFFFF
          FFFEFCFFFAF7FFF5FBFFFBFFFFFCFFFFFFFCF9FFFFFCFFFFFFFEFFFFFCFDFFFE
          FDFFFFFEFDFFFFFEFFFFFFFFFFFEFEFFFFFEFFFFFEFFFFFFFCFEFEFAFFFFFAFF
          FFFDFEFFFFFEFFFDFFFFFDFFFFFFFEFFFFFEFFFAFFFEF6FFFFFAFEFFFBFDFFFD
          FDFFFDFFFFFDFFFEFEFFFDFFFCFFFFFCFFFCFAF9FCFFFBFAFFFEFAFFFEFDFFFF
          FFFFFFFDFFFFFDFFFFFAFDFBFFFFFEFFFEFFFFFBFEFFFCFFFFFEFFF9FCFFFAFF
          FFFDFFFEFFFEFAFFFFFEFFFEFFFCFEFEFAFEFFFFFEFFFFFCFEFFFFFFFFFFFFFF
          FFFEFDFFFEFBFFFEFBFFFEFDFFFEFFFFFFFFFDFFFFFDFFFDFFFFFDFFFFFFFFFE
          FFFFFEFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFEFFFF
          FEFFFFFE0000FBFFFFFFFEFFFFFCFDFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FFFFFEFFFEFDFFFFFCFEFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFFFEFA
          FFFEF6FFFEFAFFFFF9FEFDFFFFFFFDFDFDFAFFFEFAFFFFFBFFFFFDFFFFFFFEFF
          FFFDFFFFFEFFFFFDFEFFFDFFFFFDFFFBFCFFF7FBFCFBFFFEFDFFFCFFFFFEFFFD
          FDFFFCFFFFFDFFFFFEFFFDFFFFFDFEFCFFFFFEFFFEFFFFFEFFFDFFFBFAFEF8FD
          FFFEFDFDFDFFFFFFFEFEFEFFFEFFFFFDFFFFFBFAFFFFFEFCFEFEFBFEFFF9F9FF
          FDFCFFFFFEFFFFFFFFFFFEFFFDFFFFFFFEFFFFFFFFFDFFFFFDFFFFFDFFFFFDFF
          FFFFFEFFFFFEFFFFFDFFFFFEFFFFFFFEF9FFFAF9FFFBFAFFFEFDFFFFFFFFFFFF
          FEFDFFFCFDFFFCFFFFFDFFFFFFFEFFFFFCFFFEFFFDFFFFFBFFFEFDFFFEFFFEFF
          FFFEFFFFFEFFFFFFFEFFFFFEFDFFFEFBFFFEFBFFFFFFFEFFFFFEFFFFFEFFFFFF
          FFFDFFFFFBFFFEF8FEF9FCFFFDFFFFFFFFFFFFF8FDFEFAFFFFFFFFFBFFFFFEFF
          FCFFFEFAFFFFFFFEFFFFFBF8FFF8FDFFFCFFFCFFFFF9FFFDFEFFFBFFFFFEFFFD
          FFFFFCFFFFFCFFFFFCFCFEFEFAFEFFFBFFFFFAFCFCFEFBFDFFFDFFFFFDFFFFFD
          FFF7FCFBF3FEFCF6FFFEFBFFFEFFF7F5967B77572824512722FFFEFBFFFFFEFF
          FFFCFFFFFCFDFEFCFFFFFFFFFEFFFFFEFFFDFFFFFDFFFFFDFFFFFFFFFEFFFFFF
          FFFFFFFFFEFEFDFDFDFFFFFCFFFFFCFAFDFBFEFDFFFFFAFFFFF8FFFFFDFFFDFF
          FBFCFFF8FAFFF7FBFFF9FDFFFCFFFDFFFFFAFFFEFAFFFEFDFFFBFFFFFBFFFEFF
          FFFBFFFFFEFFFDFFFFFCFFFFFFFFFCFFFBFAFFFBFBFFFBFBFCF8FFFFFFFDFAFF
          FFFDFFFFFFFEFFFFFCFAFDFBFDFFFFFCFBFDFFFEFFFFFEFEFFFFFEFFFFFCFFFF
          FCFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFDFFFFFBFFFFFDFFFFFFFEFFFFFEFFFB
          FFFEFAFFFEFAFEFFFBFDFFFDFEFFFDFFFFFAFEF9FCFFFDFFFCFFFFF9FFFFFFFC
          FDFFFBFBFFFEFBFFFFFFFFFFFFFFFEFCFFFDFCFFFDFCFFFBFFFFFEFFFEFFFFFD
          FFFFFDFFFFFEFFF9FEFFFAFFFFFBFFFAFFFFFCFFFFFCFFFDFCFCFCFCFDFFFFFF
          FEFFFFFEFFFDFBFBFFFFFFFDFFFEFBFFFCFBFFFEFBFFFEFDFFFFFFFEFFFFFDFF
          FFFDFFFEFDFFFDFFFFFFFFFFFFFFFEFFFFFFFFFEFEFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFE0000FDFFFEFBFDFDFFFFFFFFFEFFFFFE
          FFFEF9FBFFFBFCFEFEFEFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFBFDFDFAFDFBFF
          FEFDFDFBFAFAFFFEFAFFFFF6FAFBFCFBFDFFFEFFFFFEFFFFFEFFFBFEFCF8FFFE
          F7FFFBFDFEFCFFFFFEFCFFFDFBFFFCFCFFFAFDFFFBFCFFFDFBFDFEFFFEFFFFFE
          FFF7F9F9FBFFFAFFFFFBFEFFFAFFFFFEF9FCFAF9FEFCF7FCFAFDFFFCFEFFFDFF
          FEFFFAF6FBFFFFFFFFFEFEF9F8FAFFFEFFFFFEFFFDFCFEFDFDFFFAFAFFFDFDFD
          FFFFFCFCFFFBFAFFFDFBFFFFFBFFFFFFFEFFFDFFFFF8FFFFFAFFFFFFFEFFFFFE
          FEFFFFFEFFFFFEFFFFFEFCFCFCFFFDFFFFFEFFF8FCFFF8FDFEFAFFFDFDFFFEFF
          FFFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFFFDFFFFFEFFFDFFFFFAFFFEF8FFFF
          F8FFFFFBFFFEFDFFFCFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFDFFFFFFFF
          FFFFFFFFFFFEFFFFFCFEFFFCFEFFFEFFFFFEFFFFFEFFFFFDFFFFFDFEFEFCFCFB
          FFFFFAFFFEFBFFFEFBFEFCFCFEFFFFFFFFFDFFF9FEFFF8FFFFF9FFFFFEFFFDFF
          FDF6FDFBFFFFFAFFFFFFFEFFFFFAFBFFFEFAFBFBF5FDFFFCFDFFFEFCFAF9FFFF
          FEFDFFFFFDFFFFFFFBFCFFFFFFFAFFFFF3FEFCF6FEFEFDFCFEFFFCFFAC87896D
          2E2A6F312BBC9898FFFAFBFBFCF8F9FFFBF9FBFBFFFEFFFFFEFFFFFFFFFBFFFF
          FAFFFFFBFFFFFDFFFFFDFFFFFDFFFFFFFFFEFBFFFEF6FFFCF2FCF6FBFFFCFFFF
          FEFFFBFFFDFDFFF5FFFEF4FFFCF8FFFCF8FFF8FCFFFAFFFFFCFFFEFFFDFEFFFB
          FFFFFAFFFFFAFFFBF9FDF7FDFEFAFFFFFFFDFDFFFDFCFFFBF9FFFDFEFFF6FBFC
          FAFFFFFFFEFFFEFCFCFFFFFFFAFBF9FDFFFEF9FCFAFDFFFFFBFDFDFBFFFFFDFF
          FFF8F8F8FFFFFEFFFFFCFFFFFBFFFFFBFFFFFBFFFFFCFFFFFEFDFFFEFAFFFEFD
          FFFFFFFFFFFFFFFEFFFEFEFFFFFCFFFFFCFDFFFFFBFFFFFBFBFBFFFFFEFBFFFC
          FAFFFDFFFEFFFFFEFFFFFFFAFEFEF8FFFDFFFFFCFFFFFDFDFFFFFCFFFFFBFFFF
          FBFFFFFCFFFDFCFCFAFAFFFEFFFAFCFDF7FCFBFDFFFEF7FAF8FFFFFCFFFFFCFF
          FFFCFFFFFCFFFFFEFFFEFFFCFBFDFFFEFFFFFFFFFDFEFCFBFFFCFBFFFCFBFFFE
          FBFFFFFDFFFFFDFEFFFFFEFFFFFDFFFFFCFFFFFBFFF8FCFDF8FEFDFBFFFFFDFF
          FFFFFEFFFEFDFFFFFEFFFFFEFFFFFEFFFFFFFFFDFFFFFAFFFFFAFFFF0000FFFF
          FEFDFFFFFDFFFFFFFEFFFFFBFDFFFBFCFFFEFFFFFFFEFDFFFEFDFEFCFFFDFCFF
          FFFEFEFFFDFBFDFDFDFFFCFFFFF7FFFFF8FFFFFEFFFEFFFCFEFFFFFEFFFFFDFF
          FFFCFEFFFDFEFFFFFFFBFFFEFBFFFEFFFFFCFFFFFBFAFEF9F6FEF7FAFFF8FBFF
          FBF6FDFAFBFFFFFFFDFFFFFEFFFFFFFFFDFCF8FFFEF9FDFAF5F7FBF6FAFFFEF7
          FEFBFAFFFCF6FCF7FDFFFCFBFAFCFFFDFFFFFCFFFFFDFEFFFEFFF8FAFBFFFEFF
          FCFDFFF9FDFFFAFFFFFCFFFDFCFDF9FBFDF7FFFFFCF9FEFCFBFFFFFDFFFFFDFF
          FFFAFFFFFBFFFFFFFEFFFFFEFEFFFFFCFFFFFCFFFFFEFCFCFCFFFEFFFBFEFFF8
          FFFFF6FFFFFBFFFFFFFFFFFFFEFFFFFDFFFFFCFFFFFCFEFFFFFBFFFFFCFFFEFF
          FDFFFFF8FFFFF6FFFFF6FFFFFAFFFFFFFFFFFFFFFCFFFFFEFFFFFEFDFFFEFDFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFBFFFFFDFFFF
          FCFFFFFBFFFFFEFFFFFEFFFFFFFFF7F9F9FAFFFEF9FFFDFDFFFFFCFEFEFBFFF9
          FDFFF9FCFEF8FFFFFBFFFDFFFFFDFFFBFFFFF1F6F7FFFEFFFFFEFFFCFDFBFFFF
          FCFBFFFAFEFFFDFFFFFEFFFDFCFDFFFFFAFCFCFEFEFEFDFFFFF8FFFEF7FFFDFB
          FFFFFFFDFFFFFCFFD1AEB2712C29823A335F2F2DFFFDFBFDFFF9F6FFFAFBFFFF
          FCFBFFFFFFFFFFFFFFFDFFFFFBFFFFFDFFFFFFFEFFFFFEFFFFFEFFFEFEFEFBFF
          FFF8FFFFF7FFFEFDFFFCF8F9F7FFFEFFF6FAFBF2FFFCF3FFFEFAFFFFFDFFFFFD
          FFFEFCFEFEFAFBFFF8FBFFF9FEFFF9FFFEFAFEF8FCFFFAFFFFFFFDFFFFF9FCFF
          FBFEFFFAF9FFFEFCFFFCFBFDFFFEFFFFFCFEFFFDFDFFFFFCFDFFFBF4FAF9FAFF
          FFF8FAFBFDFFFFF7FCFDF9FEFFFAFCFCFEFEFEFFFFFEFFFFFCFFFFFBFFFFFBFF
          FFFCFFFFFCFDFFFEFBFFFFFDFFFFFFFEFFFFFFFEFFFFFCFFFEFCFFFEFEFFFFFF
          FDFFFFFFFFFEF6F7F5FBFEFCFDFFFFF8FAFBFDFFFFFDFFFCFFFFFCFFFDFFFFFC
          FFFFFFFFFDFFFCFBFFF9FAFCF6FFFFFCFFFFFFFFFEFFFDFFFFFBFDFEFDFFFFFC
          FDFBFFFFFEFAF8F7FDFEFCFDFFFCFCFFFBFCF8F7FFFCFDFEFEFEFCFEFEFFFFFF
          FDFEFCFDFFFEFDFFFEFDFFFFFDFFFFFDFEFFFBFEFFFBFEFFFDFEFFFFFDFFFFFE
          FFFBFFFFFAFFFFFDFFFFFEFEFEFFFEFFFDFFFFFDFFFFFFFEFFFFFEFFFFFEFFFA
          FFFFF8FFFFF8FFFF0000FFFDFFFFFFFFFDFDFDFDFEFCFDFEFAFCFDF9FAFEF9FC
          FFFBFBFFFCFDFFFCFDFFFCFDFFFEFBFFFEFAFDFBFFFEF9FFFFF26B5647AF908D
          FFFBFDFCFCFCF7FDFCFFFAF9FFFDFDFFFDFFFFFEFFFFFDFFFFFEFEFFFFFEFEFF
          FBFFFFFCFDFFFCFBFFFEF6FCFBFBFFFFFAFCFDFFFEFFFFFEFFFFFCFCFFFEFCFF
          FDFEFFFDFFFDFFFFF7FFFFF9FDFEFBFFFFF6FDF8FAFFFCFBFFFFFEFEFEFFFFFE
          FFFDF9F9FCFAFAFFFFF9FCFFFBFEFFF6FFFFF5FFFDFAFEF9FDFCF8FFFFFEFFFF
          FEFCFEFEFBFFFFFBFFFFFDFFFFFFFDFFFFFDFFFFFFFFFFFFFEFFFFFCFFFFFEFF
          FCFDFFFEFFFAFFFFF5FCFFFAFFFFFBFFFFFBFDFEFDFAFCFFFCFDFFFEFFFFFEFF
          FFFFFFFFFFFEFEFFFDFCFEFEFAFFFEF6FFFEF8FFFEFBFFFFFFFDFFFFFEFFFFFE
          FEFFFFFFFFFFFEFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFDFFFEFB
          FFFEFAFFFEFBFEFFFDFDFFFBFBFFFCFBFFFFFDFFFFFFFFFFFDFFFFFEFFFAFDFB
          FBFFFEFDFFFFFAFBFFFBFFFFF7FCFAFDFFF9FFFFFBFFFFFFF9FBFCFBFFFFFAFF
          FFFDFFFFF8FCFDF8FFFFF4F9FCFFFFFFFFFDFDFDFDFDFAF8F8FFFCFFFFFEFFFB
          FFFFF7FFFDF8FFFAFBFFFBFFFFFCFFFFFEFFFAFDF6DBDE6C2F2B844039622E28
          9F827BFFFEF4F6FDF8F9FDFFFAFEFFF9FFFEFDFFFEFFFFFFFFFEFFFFFCFFFFFC
          FFFFFEFFFFFEFFFFFDFFFFFDFFF7F7FDFBFCFFFFFEFFFFFFFEFFFEFFFCFEFFFA
          FFFFF8FDFEFDFAFFFFFCFFFAFDFFF9FEFFFBFEFFFDFDFFFFFEFFFFFEFFFDFEFC
          FCFCFCFDFDFFFDFCFFFAFDFFFBFFFFFAFFFFFFFFFFFFFCFAFFFAF8FFFEFFFFFF
          FFFAFEF9F8FEF9F8FFFFF6FBFEFDFEFFFDFFFFF6FBFCF7FCFDFDFFFFFFFCFEFF
          FDFEFFFEFEFBFFFFFAFFFFFBFFFFFBFFFFFDFFFFFDFFFFFDFDFFFFFDFFFFFFFF
          FFFFFEFFFEFFFFFDFFFFFDFFFFFEFFF6FBFAFBFFFFFFFEFFFFFCFEFBFCFFFAFF
          FFF6FFFEF8FFFEFBFCFFFEFDFFFBFFFFFBFFFEFBFFFCFDFFFEFFFFFFFFFEFFFF
          FDFFFCF8FEFBF8FAFFFDFDFFFDFDFFFEFEFFFCFEFEFDFFFCFEFFFDFFFFFFFFFF
          FEFEFEFFFFFFFEFEFEFEFCFCFFFFFFFFFEFEFFFFFFFFFEFFFFFEFFFDFFFFFBFF
          FFFAFFFFFBFFFFFEFCFCFFFDFCFFFFFEFFFFFEFFFEFFFFFFFEFFFFFFFEFEFEFF
          FFFFFFFEFFFFFEFFFFFEFFFAFFFFFAFFFFFBFFFF0000FFFCFFFFFDFFFFFFFFFF
          FFFEFDFFFEFDFFFEFDFFFEFCFDF9FFFFFBFFFFF9FAFEF8F9FFFAFBFFFEFCFEFE
          FFFDF8FFF7E6593B2A633430A78383FFFFFEF5FEFBFFFFFEFFFCFBFFFBFDFFFD
          FFFFFAFFFFFAFDFFFFFEFFFEFAFFFEFAFFFFFBFAFFFEFBFFFFFAFBFFFEFDFFFF
          FDFDFFFFFCFFFEF97E615C6F4947BD9B9BFFFDFBFFFDFEFFFCFEFCFBFDF7FCFA
          F6FDFAFAFFFEFBFCFAFFFCF8FFFFFAFFFFF8FFFFF9FFFDFCFFFFFFF4FBF6F7FF
          FAF8FCF6FFFFFBFFFEFCFFFAF8FEFAF9FDFEFCFBFFFFFFFFFFFFFCFFFFFCFFFF
          FEFFFDFFFFFFFFFEFFFFFEFFFEFFFFFEFFF7FFFFF8FFFFFBFFFEFBFBFBFFFDFF
          FFFDFFFFFDFDFFFEFBFFFCFDFFFDFCFEFFFBFDFFFCFDFFFEFBFFFEFAFFFCFAFF
          FEFFFEFFFFFDFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFEFFFFFFFFFEFFFFFDFFFF
          FEFFFFFEFFFDFFFEFBFFFCFAFFFCF8FFFEFBFFFFFDFEFFFDFCFEFFFEFFFFFEFF
          FFFAFBFFFDFEFFFDFEFDFBFAFCFEFEFDFDFFFCFCFFF1F4F8FDFFFFFFFFFBF9F6
          F1FDFFFEFBFFFFF5F9FAFBFFFFFCFEFEF8FAFAFBFDFEFCFBFDFFFDFEFFFDFDFB
          FAFCFFFDFFFFFDFFFFFEFFFBFFFEF8FFFCFBFFFCFEFFFBFFFAF7FFFEFDFFFEFE
          FFFDFC69352F763830FFE6DB513126F4E5DCFFFFFBFBFCFFF8FCFFF7FFFEFBFF
          FEFFFFFEFFFDFFFFFBFFFFFCFFFFFEFFFFFEFFFFFDFFFEF7FEFFFDFFFFFEFFFF
          FBF8FFFEFBFFFCFAFFFAFAFFFFFEFCFEFFFFFCFFFFFBFFF9FCFFF6FBFEFCFBFF
          FFFCFEFFF9FCFFFFFEFFFFFCFEFFFDFDFDFFFDFCFFFCFEFFF9FCFAFDFFFEFFFB
          F86749447B5751CBB2AEFFFFF9FFFFF9FDFDF7F8FCFDF9FCFFFDFBFBFFFCFBFF
          FFFCFFFAF7FFFAF9FFFEFFFFFCFEFEFDFFFCFEFFFBFFFFFAFFFFFAFFFFFDFFFF
          FFFEFFFDFDFFFDFEFFFFFFFFFFFFFEFFFFFFFFFEFFFFFEFFFFFFFEFFFFFCFFFF
          FBFFFEFCFFFCFDFFFEFFFFFEFFF8FEFDF6FEFDFBFFFFFBFFFFF8FEFDF7FDFCF7
          FCFBFDFFFFFBFAFCFFFEFFFCF8FDFFFEFFFFFEFFFFFCFDFFFAF9FFFCFBFFFDFD
          FFFEFFFFFEFFF7F6F8FDFFFFF9FEFDF9FCFAFDFFFEFEFFFDFFFFFFFFFEFFFFFE
          FFFFFEFFFDFFFFFDFFFEFDFFFEFDFFFEFDFFFEFFFFFCFFFFFCFFFEFDFFFCFDFF
          FBFCFFFCFDFFFEFDFFFFFEFFFFFFFFFFFFFFFEFFFFFEFFFBFFFFFBFFFFFFFEFF
          0000FCFCFCFDFFFFFDFEFFFDFCFFFFFBFFFFFDFFFFFAFFFFFEFEFFFFFBFFFFF7
          FFFFF8FFFFFCFBFDFDFEFDFFFFFEFFFFFFF56E4D3E74403A774C49FFFFFBF1FB
          F5FBFFFEFBFEFCFFFEFFFFFEFFFFFEFFFFFCFDFFFEFEFFFEFCFFFBF7FFFFFBFD
          FEFCFDFFFFFBFAFEFFFEFFFFFFFCFFFEF5EACEC367382A894A3C7B3C2E784A3F
          E4C2BCFFFCFBFFFCFFFFFEFFFBFFFFFAFFFEFFFFFFFDF9F8FFFCF5E0CCBAA189
          75C9B1A5FFFFF8FFFFFBF7FBF6FFFFFCFFFCF8FCE5DDFFFFF5FFFFF9FFFFFBFF
          FFFBFEFFFDFFFDFFFFFCFFFFFEFFFDFFFFFFFFFEFFFFFCFFFFFBFFFFFCF5FFF9
          FAFFFCFFFFFEFFFDFCFFFDFFFFF9FBFFFFFBFFFFF8FFFFFBFFFFFBFDFFF9FDFF
          F9FEFFFAFFFFFBFFFFFCFFFFFEFFFDFFFFFCFFFFFDFFFFFDFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFDFFFFFBFFFEF9FFFAF8FFF9FDFFFB
          FFFFFBFFFFFCFFFEFBFFFEFCFFFEFCFFFFF9FFFCF8FFFEFFFFFDFFF8FAFFF7FA
          FFFDFFFFFCF9F5FFFFF9FFFFFBFBFBFBFBFEFFFCFBFFFFFEFFFFFFFEFFFFFBF6
          E3DEFFFEF9FFFCF7F9FAF8FFFEFFFFFDFFFFFCFFFFFEFDFDFFFCFDFFFCFFFFFF
          FFFDFFFFFBFEFFFFFFF6FDFAFFFFFAA5797269342AE3C1B1D7BDAD6C4B42FFFD
          F9FFFCFBFAFFFEF9FFFEFAFFFDFFFEFDFFFDFEFFFEFFFFFEFFFDFFFEFDFFFEFE
          FDFFFDF8F9FFFFFB897A71623F32A97F73FFDCD6FFFEF8FFFCF5FDFFFCFCFDFF
          F9F9FFFDFEFFFFFFFFFFFEFEFFFEFCFFFFF9FFFFF7FFFFF7FDFFF9FBFFFFFCFE
          FFFFFFFEFFFFFCFFFCF9C3ADA8723C35814338713C2F80594BF1D9CDFFFFF7FF
          FFFEFFFFFFFFF8F1FFFFF7FFEBDFFFF8EEFFFFF8FFFBF8F9FEFDF9FEFFFEFDFF
          FFFDFFFEFDFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFFFFFCFFFFFBFCFFFBFDFF
          FCFDFFFBFFFFF8917B6F5B3B2EA07C72FFE0DAFFFBF8FFFCFCFFFAFBFFFFFEFE
          FDF9FDFFFCFBFFFFF9FEFFF9FDFEFDFFFFFBF9F9FFFFFEFFFFFCFFFFFCFEFBF7
          FFFAF7FFFDF9FFFEF8FEECE5FFFBF5FFFBFDFFFDFFF9F9F9FBFFFEF9FFFBFBFF
          FBFAFEF9FFFFFEFFFEFFFFFEFFFBFFFFFBFFFCFFFFF9FFFFF8FFFEFBFFFFFEFD
          FFFCFFFFFEFFFDFFFFFCFFFFFDFFFFFEFFFBFFFFFBFFFEFFFFFEFFFFFFFFFEFF
          FDFFFFFDFFFFFDFFFFFDFFFF0000FDFFFEFBFFFFFBFBFBFFFCFCFFFEFCFBE5E7
          CFB7B7C0A8A2CBB5AAEAD8C7FFFBEBFFFFF9FFFCFCFFF9FEFFFAFEFFFFF7724C
          408C4E466C3831F7E7E0FDFFFBFCFFFDFDFEFCFFFEFDFFFDFAFFF9F5DBCBC5BD
          A7A2B5A19CB2A49ED2C9C0FFF4ECFFFEFAFFFEFFFFFAFDFFFFFBFFFFF8AF9486
          704231894A36904C39834838673B2E6F5652E3D5D6FFFEFEFFFBFBFFFBFAFEFC
          FBFFFFFEE7D7D0583521784E37694031806257FBEBE4FFFFF9FDEAE55A3E3768
          3E31693E2F9F7F72FFFDF0FFFEF6FFFEF9FFFDFCFFFDFFFFFDFFFFFEFFFFFEFB
          FFFFF7FFFFF4FFFFF7FDFFF7FDFFFCFEFAF9FFFDFEFFF9F5E5CBC5BDAAA3CEBE
          B7EEE0DAFFFDF6FFFFF8FFFFF5FFFEF5FFFFF8FFFEF9FFFDFCFFFBFFFFFAFFFE
          FBFFFDFDFFFFFEFFFFFEFFFFFEFFFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFEFF
          FDFFFEFDFFF9FFFFF6FFFFF5FFFEF0EDD9CEC5B0A8B29E99B4A19CD0BDB5F5E3
          DCFFFEFBFFFEFFF8F8FEF7FAFFFFFFFF706561664C45F7DED4FFFFFBFDFBFBFF
          FBFFFFFEFFFDFEFCFFF9F04D3325745748FFF2E2FFFFF8FEFCFCFEFDFFFDFBFB
          FFFFFEFCFFFAFCFEF8FFFCFDFFFDFFFFFDFFFFFDFAFDFFFBFFFFF8E5C4BB693F
          337A5A47FFFFF0815954B79393FFFDFAFFFEFAFBFDFDFBFDFDFFFEFAFFFDFAFF
          FDFAFFFDFAF9FEFCF6FFFCFDFFFFFFFFFEFFFFF7A191817545338149385E3427
          84695FFFF2E9FFFFF9FFFDFCFFFBFBFFFFF9FEEEE7D6C1B9BEA89DB5A196BDAD
          A1DCD1C3FEF8EBFFFFF8FFFFFAFFFCF7FFFDF8FFFEFC886F6B733F38894A3C8D
          503C814E3A5D3B2E7B6861F5E8E6FFFFFBFFFFF48A6C5B6B402D683A28825F51
          F0DACFFFFFFAFFFEFDFFFDFEFFFDFEFFFEFDFFFFFAFFFFF9FFFFF9FFFFF9FFFF
          F8FFFFF8FFFEF9FBFFF9F9FFFAFAFFF8FFFFF5B09384754A377648365E352684
          6762FBE8E5FFFDFCFFF8F6FFFFFBFEFFFAF8FBF9FFFFFEFFFFFEFFF8F4D1BBB5
          C1ABA0D2C0B5FFF2E6FFFFF7FFFFF6F0DCD153382A634032654336B1958EFFFE
          F9FFFFF9FFFFF9F8FFF6FBFFFBFFFFF9FFFFFBFFFDFCFFFEFBFFFFF9FFFFF8FF
          FFF7FFFEF6FFFDFAFFFDF9FFFFF7E9D9CDC8ABA6C1A3A2D6C2C1F5E8E6FFFDF9
          FFFFF9FFFFFBFFFFFCFFFFFEFDFFFFFDFFFFFFFEFFFFFEFF0000FCFFFDF8FCF6
          FFFFF7FFF7E58F6A5471412F7A46357C4A3670412B6A3E26714A34A6867BFFF5
          F3FFF8FBFFFBFEFFFDF87F524798524585453ACBB3A7FFFFF9FFF8F8FFFCFCFF
          FFF8E5C9BE6D43366E4235613E346F564C7A675F56433656382795786AFFF0EE
          FFFDFEFFFAF7FFFFF9FAEBE28C7264B08A787D4D3B784634FFE5D6F7E8DF7368
          60896D66FFF1EAFFFDF9FFFDF9FFFFFBEDDCD37747358C513E87504768383260
          3C32EDCABDFFD5C8774031944F3E97523E814832774C37D9BEB0FFFFF6FFFBF4
          FFFDFAFFFDFDFFEDEBBE9A90A07564B08973E9CEBAFFFFF8FFFDFDFFF8FBFFFD
          FC855A4B7541306A3F365B353158353161433EB8A29CFFFFF7DFCBC0CFBFB3FF
          FFF9FFFCFCFFF9FFFFFCFFFFFCFFFEFDFFFFFFFFFFFCFBFFFEFFFFFFFEFFFFFE
          FDFFFEFFFEFFFFFEFFFDFCFFFFFBFCFFFFF9FFFFF4FFF4E185604A6A3F2C6B41
          346A48428467626A4D464F322974594BE4D1C4FFFFFAF6F4F4FFFEFFC7B4AF6C
          4132754533DFC2B4FFFEF8FFFCFFFAFDFFF7FEFBFFFFF5A78C77714E346B4D32
          EAD5C0FFFFF8F7FCFAFBFFFFF8FDFCFAFFFAFAFDF4FFFFFBFFFEFBECD2CCF4DE
          D3FFFFF5FFFFF3FFFFF56B4B3E6A4230FFDCCFFFE8E846272AF7E1DBFFFEF8FC
          FAFAFFFFFFFFFBF7FFFEF7FFFDF6FFFDF6FAFFFEEEFEFDF9FEFFFBFDFDFEFFF8
          E7D7CA794632854C37A88875A18C7D54372ECDB0A9FFFEF8FFFFF4D0AD996C43
          2C724933653E2F785B5280645D56392B5A3D2E9F8B7AFFFDEFFFFFF8FFFCF9FF
          FCFEDCCCCD907670A58171844E35824E37FFFDF4E5CECC6955509F867CFFFFF0
          7347308A5137925A3D835238704731AE8C7FFFFBF3FFFFF9FCFCF6FFFFF8FFFF
          F4CEB2A1A07F6CA4806EC3A697FFFFF7FFFFF7FCFEF8FBFFFBF7FEF9FFFFF8F2
          D7C97147347D4F37B38873A5897E4D352FCDB6AEFFFDF6FFFFFAFEFEF8FCFEF8
          FFFFF7F6DCD0774C3D794130854A3670412B68412B91725DFFE9D6DEB3A07D48
          3491553D92543C7E4732805542EBCFBEFFFFF2FAFBF1FEFFFAFFFFFBF9E2DAB6
          9084A27365B58579FEDBD1FFFFFBFCFDF9FFFDFAF9E9DD7F5A407A482A7C432D
          7E46356B3B2F653B2F785548B99E90FFF6E9FFFFF6FFFFFBFDFFFEFDFCFEFFFE
          FFFFFDFF0000FDFFFEFDFEF4FFFEEA7E5A3C8A573695583E8C523C7A4834A479
          64C29782A57D6B69443C5A3B38BAA3A1FFFDF9FFFCF1A17060914C388C4D38A0
          8271FFFFF7FFFBFB8F807EBDA395794F3C9758438F503BC99E8FFFFFF2FFFDF2
          FFFFF5E7C8B96C4A3D60433ED0BCB7FFFEF6FFFFF8FFFAF3FFFFF8FFFFF49775
          65794A35E8BEABFFFFF0FFFFF5C0A39C5D3B35F3DED6FFFBF1FFFFF9FFFAEF7C
          4837965442975E55FFFBF5B793895A35278052409459459E553FA2583E995A3E
          9160465D3C29877061FFF7EBFFFDF1FFF4ED6C453C7E4C3A89543F7A4C346342
          2E96837CFFFDFEFFFDFEE2C2BC7A412B90553BB8887CFFFCF7FFFDF8EFD2CD6B
          5550614A42FFE1D6A084795F4E45CBBFB9FFFCFDFFFDFFFFFCFFFFFEFFF9FAF8
          FFFFFEFFFFFFFFFFFFFFFFFCFDFFFCFFFFFFFFFEFFFFFDFFFFFCFFBBACA9A58A
          7C9A6E578851368F563D9F6C58FFFFF2FFFCF5FFFEF7FEE3D9846857513927BB
          AB9FFFFFF9FFFCFAFFFEF77C4A3491583E73452DAE8F80FFFCFDFEFBFDFBFFF9
          FFFFF5ECCFBA74492E8D5E3F6C472BBDAD9DFFFFF9FEFAF5FFFFFBFFFFF5FFFD
          EFC5AFA37052476A483B5B3B2E806A5EFFFFF3FFFCEFB799887F4F37A06E5AFF
          FDF8B198965E4339FFFCF0FFFFF8FFFAF2FFFBECAB8D7C7A594A826A5EFFFFF7
          FAFFFEF7FBFCFAFCFDFFFFFBFFFFF2814F397F4932FFEBD6FFFEEEFFF5EE7759
          5482655CC29E8C7D4B2D945B3B814D2FEDC0ABFFFEF5FFFBF5FFFBF4CFB3A858
          41326B5849DFD1C5FFFFF8FFFCF9FFFFFBFFFFF9FFFFF08C5D427E4B31F6D3C9
          FFFEF9FFFFF89F8C7F61402D82543C945A3D995C3C8E573898674D6B402D7051
          42D9C9BDFFFFF5FFFFF29776637C4C348350367D5139633F2D745E53FFFFF9FF
          FBF7FFFEFAFAFFFEFFFFFCFFFFF477523E78472DFFE6CEFFFEF0FFFAF1705C51
          816F64F5EAE2FFFFF8FFFFF3FFFFF07E553F8A513B9D5A43894931B6856FC09B
          85775A4565443081523C9559419D573AA0583AA463478C593F5D3A269A8675FF
          FEF2FFFFF3F7DDCF6F4839844F3B8C513E834C3D653D319A8980FFFFF8FFFFF5
          7B5A478B55369858398C533ABF8C78D3A698C79D91956D61614134523C30DBD1
          C7FEFEF8F7FCFAFDFFFFF9F8FAFFFEFF0000FBFCFAFFFFF5BEA88F8255309B61
          3D8E553F875A4DFDE3DDFFFEFCFFFEF8FFFFF9FFFCFACAB2AC664A3F7A5949FF
          E1CEAD7A609C5F3D945E3D7C5A43FFFFF4FFFFFC8C827B6449359161459F593B
          945033F9CBB9FFFFF2FFFFF6FFFDF6FFFAFBFFFDFCB4979255392E806A58F7E9
          D7FFFEF8FFFAF8FFFBF5C4A99B7E4D3384583BFFFFEEFFFFF3FFFDFEC0ABAA55
          3B2DC3AF9EFFFFF7FFFFF5915E4A8A4F3BB08375FFFFF4FFFFF8EEDDD4806655
          7550368E5B3B96603F8F5E3EFFF7DBE8CBB6755B4A62422FE4BCA9BA866F8951
          3896614681533BAA8975C3A89A7C5F5A6B4D48FFE9DFEDBFAD91573A895335D1
          B29DFFFFF2FFFCF1FFFEF9FFFFFCA08F8C623E36FFE1D3EDD3C5554235654F44
          EFDDD6FFFEFEFEFCFBFBFFFEF7FEFBFDFFFFFFFFFFFDFFFCFDFFFCFDFFFEFDFF
          FFFEFCFFFFFCFFCFBCB9684639925A41A36243905032C7947AFFFFEEFFFFF4FF
          FFF7FFFFF7FFFFF4D8C5B6573B308B6C63FFF6ECFFFFF0BA8E718D57349D6340
          874F368C6458FFE7E1FFFFF8FFFEF2FFF4E7784836995A3E9B614466412D8E74
          64F4D7C9FFF0DFDABCA3845F4388533E87544075503CCEAFA08E726B5B3F38F8
          DBCCFBD3BA8D5631814C2BFCE2D2FFFDF2715041916B59FFE7D3EBC5AD825236
          845539815F478B725E654E3FFFF3ECFFFEFEFEFCFCFAF9F5FFFFF5A578638555
          3DA48975FFFFF4FFFDF5FFFFFB7E685D744C399B613E9F603A8D5637FFE7D0FF
          FFF2FFFEF8FFFFFEFFFCFBFFF5F395827B5C3C2F9C7B6BFFF4E2FFFFF2FFFEF5
          FFFFF4B3897284533991705DFFFFF3FFFFF7FFFFF8A898876F5039895A3E935B
          3E91573AF1C0A6FFF1DA9476635F3B2BAF8473EDC0AB824C359E5B40985C3F8F
          6A50D4B9A5977771664746FFEDECFFFDFEF7F6F8FCFDFBFFFEF2A1806D8C543B
          B6846EFFFFF4FFFDF3FFFFF36F64564C392CA88B7CF9D7C092674C8D5739955D
          40834F38D7AF9DFFFFF4FFFFF7FFFFF7CCBFB182634E794A2F9F62429A5A38A6
          6E51FFFDE6D5B7AC6448416C493CEFC4B1A472549057389F5F47864B3BBA978A
          C3AC9D6A544271563CB182668F573A985A428D5844FFF7E9FFFFF6FFFFFBFFFC
          FAFFFEF9FFFFF8A49A93D6D2CDFFFFFEFBFFFFF6FBFCFAFFFFFAFFFB0000FFFF
          FEFFFFF4866B5195613C9C623E85523EE7C3BDFFFDFFFAFAFFFCFBFDFEFCFCFF
          F9F9FFFDF7FFFEEF9075607148319260429A633C9A673F7A5239FFF2E3FFFFFB
          FFFFF9EED3BF825337AC6746A15D407247328A7060D9C7BCFFFFF9FFFEFEFFF8
          F8FFFEF8FFF3E78E7B665344319E8E88FFF9F6FFFEF8D2B0A0935A3B935E3DC3
          AF96FFFFF7FFFAFDFFF8FAD1BAAB5C4432AF9D92FFFFF1B38066935B3E936C56
          FFFFF2FFF7F3FFFEFBFFFFF4E8D6BF9073587C563891674A7A5236F1CFB7FFFF
          EBB898816D442D925A3DA269498F5E3E8B664AFFFFF1FFFFF7FFFDF8C8ABA66F
          4C3E7A4E379B65478F5E3E85674CFFFFEDFFFFF5FAFFF8F4F5F3FFFEFA966F66
          724738FFF3DFFFF3E17D6958FFF6EAFFFCF8FCFAF9F9FFFDFAFFFEFCFEFFFFFF
          FFFDFFFCFDFFFBFDFFFCFCFEFEFCFAFFFFF9FEFFFDFBFFFDF28D59429A5C3EA1
          64447F5031755F46B7AD9BFFFFF2FFFFF5FFFFF6FFFFF7FFFFF794796F614739
          BB9C859C6F4E9F6541A15F3C9D6144AE837263473CBFA99DFFFFF2FFFEEF8853
          3EA15D4098573BFFFEEBA88B7C65433376513B8056399566478C533E946250FF
          EAD9FFFFF0FFFFF7CEB7AF65483A885F489D643D95603B9F826DFFFDEEE8CBBD
          704C3C7C533A8355369360407E4F33FFF6E1FFFFF1A1877960453BDBC5BFFFFE
          F9FFFFF7FFFFF18F5F478B5C41785F4BFFFFF5FDFFF9FFFFFCFFFFF7D7B3A18F
          5637A0623E955F4071482F977D6CE7D9CDFFFFFBF8F9F7FFFFFEFFFAF6FEE1D8
          8B6A5B5F4632B4A08EFFFFF4FFFFF1C5997C8C5B3B7A5236EBD3BFFFFFF8FDFF
          FBFFFFF8FDEADDB1917E80563F8B5942825137B59278FFFFEAF6CEBB7E503E80
          4E3A9B6249A15F428B5336FFE8D0FFFFEFFFFEF8AA8C8B613E3BE8C9C6FFFDFB
          FFFFF9FFFFF28A634D955D4484553FFFFFF3FDFFF9FFFFF6FFFFF7CEBEB26A4D
          3E80543D8E5A3C9F64449A6445744E36FFFAEAFFFEF4F9FFFAF8FEF9FFFFF8FF
          FFF4E6C6B38F634B89593D916344815940FFE7D9FFFEF4A87F7078483097613E
          9A603C965B41AA7D68FFFFF4FFFFF5FFFFEFA4856C8B54359D5C3D93543FE7BA
          ACFFFFF7FDFFFCF8FDFEF6FAFBFFFEFFFEF9F6FFFFFCFFFFFCFBFDFEF7FBFCFA
          FFFFFAFFFFF4FCF50000FFFBF6FFFFF27A5B449767439863428E6352FFFEF8FF
          F8FDF6F9FEFDFFFFFDFFFEF6FBFAFDFFFCFFFFF5FFFFF09A8068865C3F9A633E
          9C65407F5439F0D3C4FFFFF9FFFCF5FFFFF079553D9B6248A56C52F2CDB78D6F
          5C664232907162FCF4E3FFFFF3FFFFF8FFFFF9FFFFF5ECE3D5816761704C46BB
          8F8299634CA45D3C9E5E3F8B6B58FFFFF5FFFDFCFFFFFCFFFFF7E3CEBF5C3F31
          BD9380B8805D99653D765234FDE7D5FFFEFEFFFCFFFFFDF9FFFFF8FFFFF4C0AC
          9A7A4F3A97644A85563ACBA68AFFFFEDE9D4BF835E44845839845B3AB29678FF
          FFF0FFFFF9FFFCFDFFFBF8FFFEF2A287727D5539946244915F43A27C64FFF9E7
          FFFFF5FFFFFAFFFFF9E5BBAE805542947C66FFFFEDFFFFEEFFFFF2FFFFFBFDFF
          FFFDFFFFFEFEFEFFFDFFFFFEFFFDFFFCFDFFFBFDFFFCFEFEFEFBFBFFFDF9FEFF
          FDFEFFFFF6A5816F8E5F44936143F0C9A9A18C705B4A30785744F0D2C7FFFEF7
          FBFEFCFDFEFCFFFEF7CBBBAE71513A945E3DA4623FA25F40C28E77FFFFF1E7DE
          D16B57458E6F56B18463975F3CA767448A5638FFFFF2FFFFF8D7C4B7785D497D
          583E724932A8847AFFFCF8FFFFF9FFFEF4FFFFF4FFFFF5FFF9F4A18176855539
          9766467C553FF2D7C9FFFDF8AF9C95734F3D835A4376543DE1C7B6FFFFF8FFFC
          F8FFFFF99B857A764F40C49782FFD6BFAC7F64985F408F60418D7863FFFFF5FF
          FEFAFFF6F4FFFEFBFFE7DD7F503A966146AD8065EFC9B176563F6A4F3A957E68
          FFFFF1FFFFF7FBFFFAFFFDF9FFFFF9E0D0C3755D4B7C5B48B68E7295653B9B68
          3D935F3BAE896FFFFFF2FEFBF7FFFAFDFFFDFFFFFDFEF4DFD77F5C488A5D428B
          593D9E725AFFFFEDFFFFF19572647E53408E5C40825B3FFFFFEFFFFFF9F9FDF7
          FFFFF8A48A7E6E493BBE998BF7CCBBB6826B905B408C5A3C9E7C64FFFFF7F8F9
          F5FEFCFBFCFBF7FFFFFCFFF7EF98746486543D9A654A8B5C4082674DFFFFF1FF
          FFF7FBFEFCFDFFFFFFFEFFFFFEFDFFFEFCFFFEF9AF95877250328C64417F4C32
          EFC2ADFFFFEDDFC7AF7A53379165467D5737C3AE93FFFFF4F3FEF4FEFEF8FFFF
          F5B2836E9D6149925943E1B9A7FFFDF0F5FBF6F1FAFDF4FDFFF8FAFBFCFDFBFA
          FBF9FDFEFCFAFBFFFBFEFFFAFDFFF8FDFCFFFFFB0000FFFFFCFFFFF37A5B4493
          603F976241A37B69FFFEF8FFFDFFFAFFFFFDFEFCFFFFFEFBFFFFF8FEFDFAFFFB
          FFFFF6FFFFF29A7D68825639926344815841BFA595FFFEF7FFFFFAFFFFF5CFB7
          A57D543E865A43E5C1A9FFFFE8E4B29B7E523A705E47FFFFF2FFFFFBFFFFFBFF
          FFF9FFFBF2FFFEF9E0BFB67D54458D5942AA694A9A5E416F4C3EFFFFF8FEFFFA
          F9FFFAFFFDF5FFFFF5E9CEC478503D94603C9662398C6140C9AB98FFFEFEFFFE
          FFFDFEFCFEFFFAFFFFFBFFFFF7FEE0D58A604D875C417A5436977D65FFFFEDFF
          FFEAB6977E896E54E1CEB9FFFFF7FDFFFCFBFFFFFFFFFEFFFFF8FFFFF4DBC2AE
          7E58408F5D419162477D6149F7E3D2FFFFF4FFFFF2D2A38E8658406A533DFFFF
          EDFFFFEDFFFFF7FAFCFCF8FCFDFFFFFFFFFFFFFFFDFFFFFDFFFCFFFDFAFFFBFF
          FFFCFFFFFEFFFEFFFFFDFFFBFAFCFFFFFBFFEFE06E4D39845C40B48E70FFFFE5
          FFE8CB8D5B44724635E3D7D1FBFFFFF4FCFBFDFFFCFFFFF7FFF9E8A478608853
          38945B45875F4CFFFFF5FFFFF7FFFFF2A98E797B5434915F3B9D66417E5136F6
          E7DEFFFDFCFFFFF9FFFEF3E8CFBBDDC3B2FFFEF9FFFEFEFDFBFAFBFFFCFDFFF9
          FFFFFBFFFCFEFFFDFBC4A38F7951358B5E438E6856FFFEF9FFFEFCDFC7BBAA91
          81F1E1D1FFFEF6FFFDFFFFFCFFFFFBF8FFFFF377523E8C5B418355368A5B3B94
          61417D543BFAEADAFFFFF8FFFCF8FFFDFAFFFCFCFFFFF9B194867A523F855C45
          FFDDC4FFFFEAB991787C57358D7557FFFFF2FAFFFDFAFFFFFBFDFDFFFBF4FFFF
          F4CCAE9D7F573E8D613C96653D9762418F654EFFFFF5FFFDFCFFFDFFFFFBFFFF
          FDFFFFFBF8FFFFF4AB8A767D4F378A5E46765C44F3DEC9FFFFF0D8B7A492725B
          B29A86FFFEFAFBFFFFF0FEF8F8FFF5FFFFF26B4A3A8759488D584491583F9462
          467B563CFCE7D2FFFFF8FFFFFFFFFEFFFDFFFFF9FFFEFFFFFAFFFFF5DDB6A876
          4E3B81604CD0C1AEFFFFF1FEFFF6F8FAFAFAFBFFFDFDFFFBFCFFFBFAFEFEFBFD
          FFFFF9EFDAC48162438C5B41805038AE8F78FFFFEAFFF3DAA789708B765BECE3
          CFFAFFF7F2FFFCF7FDFCFFFCF8BF96878D57409765497A5239E0CDBEFFFEF7F8
          FDFCF4FBFEF7FDFCFBFFFEFFFFFEFEFCFCFFFEFFFDFDFFFDFDFFFDFFFFFEFDF9
          0000FFFAFAFFFFF78C6F5A95613D965E3BB18671FFFDF2FDFEFAF2FDFBFFFFFC
          FFFEFAFFFCFFFFFAFFFFFCFEFAFBF9FFFBFAFFFFF9AC98877C634F806757D3C1
          B6FFFFFBFFFDFCFFFEF9FFFFF7B7A2936F503B7A5138BB8868CE966D8F5B3678
          563ED5BFB3FFFEFCFFFEFFFBFBF5FFFFF7FFFEFAFFFFF9FFFFF1B59C88784D32
          885C45644A3EFFF4EEFFFFFBF9FFF9F7FBF5FFFFFBFFFFFBCBB5A97E563A9A66
          42955C3D9D705BFFFEFBFCFCFCFFFFF8FDFFF3F9FAF6F7F8F6FFFFFEFFFFF9AA
          958078573D8C5D428D5D45F7D4C0FFFFF1FFFFF8FFFDFAFFFEFDFFFFFEFDFBFA
          FFFFFCFFFAF7FFF9F4FFFFFBFBEEE08E6C54895D3E8E6245835439A2715BA16E
          54955C3D91634468533EFFFFF3FFFFFBFFFDFFFFFCFFFDFCFFFEFFFDFFFFFEFF
          FBFFFFFCFFFCFEFEFAFFFBFFFFFCFFFFFEFFFEFFFFFEFFFAFFFFFBFFFFFFFFF6
          F3E0D174513D7C50389A6E51CD997B9C5E408F5C429C897CFFFFFAFCFDF9F9FA
          F6FFFBF8FFFCF8FFFDF7CEB7AF765748654A3CF6F0E5FDFFF9FFFEFAFFFEF7DF
          CDBC7C5E45855C3C79533BD6C6C0FFFDFFFFFAFEFFF8F8FFFFF7FFFFF5FAF6F1
          FDF9F8FFFFFEFDFFFEFCFCFCFEFDFFFBF7FCFFFCFBFFFFF5B399818858348857
          37D7B9AEFFFEFBFFFFF8FFFDF3FFFFFBFFFEFDFFF8FBFFFEFFFEFCFBFFFFF8A8
          94836F50397B593C73513393745DFFE8D9FFFDFEFCF5F8FFFFFBF7FEF7F2F8F7
          F9FCFAFFFFF99C87787B563C815236BD8B74B3806691603A7A5432F7E4D7FFFE
          FFFBFAFEFBFEFFFBFFFFFFFFFCFFFEF9FFF3E7A0827177503A815641765444FF
          FAF6FFFFFFFDFEFCFFFFFEFFFFFEFFFEFBFFFAF6FFFFF7DFC6B67A5B42865D3D
          79502FD1AF92FFFFE8FFFFF4FFFFFBFFF7FDFFFBFFFBFFFEFAFFF6FFFFF7A390
          836E493B7F50427C513E947360F8E8D7FFFFF7F9F8F4FDFFFFFAFCFDFDFFFFFD
          FFFEFFFEFAFFFDF9FFFEFBFFFBF6FFFEF8FFFFF7FDFFF9FAFDFBFAFCFCFDFEFF
          F9F8FCFFFEFFFFFFFFFBFCF8FCFCF6FFFFF7FFFCF0A483747D523F88563F996C
          51FFEFD4FFFFEEFFFFF7FFFFFCFDFEFFFBFEFFFDFEFCFFFFF7D2B19E895A3E94
          623E926240714832DCC0B5FFFFFBFAFDFBF9FFFBF7FDF8FFFCF8FFFFFEFFFDFF
          FFFBFFFCFBFFFBFCFFFEFFFD0000FFFEFFFFFFF6AF947F955F3E9C5F3D966A53
          FFFFF2FFFFF9F8FFFEFFFFFCFFFDFAFFFDFFFFFDFFFFFCFFFFFEFFFDFEFFFFFF
          FFFFFDF6FFFFF7FFFFF6FFFFF9FFFEFBFDFEFCF9FCFAFFFFFCFFFFF8E4D3C696
          7260784B3080512B875D386B4A37FFEDE7FFFEFEFFFEFFFFFFFCFFFFFCFBF9F8
          FFFEFAFFFFF8FFFFF4FBE3D1C0A696F2E0D9FFFFFCFBFCF8FBFFFCFBFFFCFAFE
          F9FFFDFCFFFEF8B89D8985583DA161438B553EFFEEE6FDFDF7FFFFF7FFFFF7FB
          FEFCFBFFFFF6FBFEFFFFFEFFFFF5E6CEBA84553F8B5942775440BAA394FFFEF8
          FFFEFDFFFEFFFFFEFFFFFFFEFEFFFDFFFFFEFFFFFEF8FAFAFFFFFBFFFFED9879
          6079503997685297665083533B8253377C593FDFD0C0FFFBF6FFFDFFFFFBFFFF
          FAFFFFFCFFFCFDFBFFFFFEFFFDFFFFFCFFFDFFFFFBFFFEFFFFFCFFFFFEFFFEFF
          FFFEFFF9FEFFF6FEFEFEFFFBFFFFF8FFEFE0AC8A7A794F3C7A4B358B583E764C
          35C0AFA2FFFFF9FFFFFAFFFFFCFFFDFEFFFCFEFEFDFFFFFEFDFFFEF7FFFFF7FF
          FDF5FDFFFCFBFEFFFBFDFEFFFEF7FFF9ECB99E8A917766F4E7E5FFFAFFFFF9FF
          FFFDFFFAFEF9F7FFF8FFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFFFDFFFCFCFFFDFF
          FFFCFDF4FFFFEEBB96748457367B5549FFF1EDFFFFF9F7FEF7FBFEFCFAFAFAFF
          FEFFFFFFFFFCFDFBFFFFFAFFFFF7F6E7D7EED9C3FFF1DCFFFFF2FFFFF9FFFAFF
          FFFDFFF9FDF8F8FFFCF6FFFFF8FFFFF8F9F7FFFFF8DABFAB8B674F764E3C774C
          378057377E5C3FFFFBF3FFFDFFFFFEFFF8FBFFF6FEFEF4FCFCFBFFFFFFFCFBFF
          FFF9E9CFC8C4A89DFFECE4FFFEFEFCFCFCFFFFFCFEFFFAFFFFFCFFFEFDFCFCFC
          FFFEFDFFFDF3FFF6E4A0785C865A3B7A583B907862FFF1E8FFFEFEFFF8FFFFF9
          FFFFFFFEFBFFF9FEFFF6FFFFF8FFEBE4ECCDC4FFEEE2FFFFF5FFFFF6FFFFFBFE
          FEFEFDFFFFFDFFFFFEFEFEFFFFFEFEFBF7FFFFFEFFFCFBFFFDFCFFFFFEFEFEFE
          FDFFFFF9FDFEFDFFFFFDFCFEFFFEFFFFFFFFFEFFFDFDFFFCFDFFFCFCFFFDFFFF
          FCFFFFF8D5B5A880503E8B5A44795740CCB3A3FFFEF9FFFCFFFFFCFFFEFCFFFF
          FFFEFFFFF7F2D8C87D543B98643FC38F6ABD917A624033E1CEC6FFFFF8FCFDF9
          FCFFFBFFFFFBFFFFFCFEFBFDFEFDFFFFFDFFFEFDFFFFFFFF0000FFFCFDFFFFF5
          E7D3BA8A5132A46445875E45FFFCECFFFFFBFAFCFCFFFFFEFFFEFDFFFFFCFDFF
          FEFAFBF9FFFEFEFFFCFEFCFAFAFFFFFEFDFEFAFFFDFCFFFEFDFFFEFDFFFEFDFB
          FEFCF8FDFBFBFDFDFFFFFEFFFDFBFFF2EAF2E1CCE1D3BDFFF5EBFFFAF7FFFEFF
          FFFFFFFFFFFEFFFFFEFFFFFFFFFFFEFFFFFCFFFFFAFFFCF5FFFFFBFFFEFBFDFB
          FAFFFFFEFCFFFDF8FEF9FDFFFCFFFFFBFFFFFBFFFFF59A79669C5D4190583BC9
          B4A5FFFFF8FAFFF7FAFFFBF8FCFDFDFEFFFDFFFFFCFDFBFFFFF8FFFFF7FFFAED
          987B6C73503C75513982634EF9E4D5FFFEF9FBFFFFF5FFFFF7FFFEFFFFFCFFFF
          FCFEFAF9FFFAF7FFFEF7FFFFF7A99A91CCBBB2FFFFF6FFEFE6F6E6DAFFFDF3FF
          FEF9FFFDFCFFFBFCFFFCFEFFFDFFFFFEFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFF
          FDFFFFFFFFFEFFFFFFFFFFFFFFFEFFFDFFFFFBFDFDFFFFFEFFFEFAFFFBF7FFFF
          F9FFF8F2EADAD3DFCEC5F3E7DDFFFDF8FFFFFCFEFFFBFEFFFDFFFFFEFDFDFDFC
          FCFCFEFCFCFFFCF9FFFCF9FEFCFBFCFDFBFAFCFDFCFCFCFDFBFAFFFDFAFFFFFB
          FFFFFBFFFCFDFEFBFDFFFAFFFFFCFEFBFBFBFAFCFCFEFEFEFFFFFFFFFFFFFFFE
          FFFFFEFFFFFEFFFEFDFFFEFEFEF8FFF8FFFFF5FFFFF1A78D7C784F46A07C74FF
          FFF5FFFFF7FFFFF8FEFEF8FCFFFBFDFFFEFCFFFDFDFEFCFFFEFAFFFFFAFFFFF8
          FFFFF8FFFDF8FFFCFBFEFBFDFDFCFEFEFFFDFCFFFDFAFFFEFBFDFDFCFCFCFFFD
          F9FFFFF8FFFFF8FBEEE6E0D4CAE6D8CCFFFAF0FFFFFAFFFCFBFBFBFBFDFFFFFC
          FEFEFCFEFEFCFEFEFFFDFDFFFBFAFFFBF8FFFDF9FFFEFBFFFEFFFFFFFFFFFFFE
          FCFFFDFBFDFDF9FEFDF7FDFCFAFDFBFEFEF8FFFFF6FFFFF3C7AA9B7052417857
          47684538D0B4ADFFFDFDFFFEFFFCFEFEFBFEFCFCFDFBFEFDF9FFFDFAFFFEFBFF
          FCF8FFFCF9FFFEFAFDFEFCFEFEFEFEFEFEFFFFFFFFFEFFFFFEFFFFFEFFFFFFF9
          FCFFF5FFFFF8FEFFFAFCFCFCFFFEFFFBFBFFFBFBFFFFFEFFFBFBFBFFFFFCFFFF
          FCFBFFFEFBFFFEF8FBF9FFFFFCF9F8F4FFFDF9FFF1E98B685E7A4E417A4C4190
          6961FFEDE7FFFFFCFDFFFEFBFFFEFFFDF8FFFEF87C5546945E3F9F6E4EFFFFF1
          C1ABA0614435FFE5D9FFFCFAFFFEFFFFFFFCFEFFFAFBFFFCFBFFFEFEFEFEFFFE
          FFFFFEFF0000FDFFFFF9FDF2FFFFF09362489B61447F533BEED2C1FFFFF9FAFA
          FAFFFEFFFDFDFDFAFFFBFAFFFAFDFEFAFEFCFCFDFAFCFFFEFFF9FEFDF7FCFBFE
          FEFEFFFDFDFFFDFEFFFEFDFDFFFCFAFFFDF7FCFDF8FBFFFFFBFFFFFEFFFFFFF8
          FFFFF7FEFDF9FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFF5F5
          F5FFFFFFFDFDFDFFFFFFFEFEFEF6F6F6FDFCF8F6F0E5F1E8DAFAEADEF4E2D7FD
          EADDD0AD99995B3D9D5F4186644DFFF1DFFFFFF7F7FBF6FFFEFFFCFBFFFCFCFC
          FFFFFEFEFFFDFFFFFCFFFEF9FFFEF4EBD2C2A8887582634EBEA797FFFFF9F9FC
          FAF9FEFFF6FBFCFFFFFEFAF8F7FFFFFFFFFEFEFDFBFAFFFFFEFDFBFAFFFFFEFF
          FFFEFFFFFEFFFDFCFFFFFEFFFFFFFFFEFEFFFEFEFFFEFEFFFFFFFFFFFFFFFFFF
          FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
          FDFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFDFDFDFFFFFEFFFFFEFFFFFEFDFEFCFC
          FDFBFEFFFDFFFFFEFEFFFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFDFCFEFEFDFFFFFEFFFFFEFFFEFDFFFDFCFEFEFDFFFEFDFFFDFCFEFEFD
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFCFDFBFBFFFCF9FFF9FF
          FFF8FFFFF7A47F7769443CD4C6BAFFFFF1FFFFF8FFFFF9F8FCF7FBFFFEF8FAFA
          FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFEFEFEFFFFFFFEFEFEFFFF
          FFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFCFDF9FDFEFCFFFFFEFB
          FCFAFEFFFDFFFFFEFDFEFCFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFEFEFE
          FFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFBFFFFFAFFFFF9FFFEFAFFFEFDFFFEFFFE
          FAFFFFF8FFFFF8FBE7DCB79B908E6E618A7167FFFDFAFCFEFEFDFFFFFCFEFEFB
          FDFDFBFDFDFCFEFEFCFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFAFFFFFEFFFBFFFBF9FFF6FFFFF5FFFFF6FFFEFBFFFCFDFFFCFDFFFE
          FFF5F7F7FBFEFCFFFFFCFFFFFBFDFFFEFDFFFEFFFFFEFAFDFBFAFFFFFBFFFFFF
          FCF9FFFEF9DEBAB2A67D747E5A50DEC8BDFFFCF4F8FEF9F8FFFCFFFFFEFFFDFC
          B69389935D44804E32FFEADAFFFFF3A88C7B785B4CFFF8F6FFFBFBFFFEFDFBFF
          FCF9FFFAF8FEF9F9FCFAFDFDFDFDFFFF0000F6FFFFF7FFFDFFFFF6D3B5A28155
          3D915E44B38B78FFFFF8FBFFFFF9FBFFFDFDFFFAFCFCFDFFFCFDFEFCFDFFFFFA
          FDFFFBFEFFFDFFFFFBFCFAFFFFFEFEFCFCFFFCFDFFFFFFFFFEFDFFFFFCFDFFFE
          FDFFFFFFFEFFFFFFFFFFFFFEFFFFFCFFFFFEFFFFFFFFFFFFFEFEFEFEFEFEFFFF
          FFFFFFFFFEFEFEFEFEFEFFFFFFFBFBFBFFFFFFF9F9F9FEFEFEFFFFFF837C7363
          49317D593B7A50397C50397F563D835337A36243A66140975B3D7D543BB7A195
          FFFFFBFFFDFEFFFBFDFFFEFFFCFEFFFBFDFEFDFFFFFFFFFCFFFFFAFFFDF8FFFF
          FBFFFFFBFFFFFBFFFFF9FFFFF9FFFFFCFFFEFFFCF8FDFCFCFFF8FDFFF6FBFCFE
          FEFEFFFFFEFFFFFEFDFBFAFFFFFEFFFFFEFEFCFCFEFCFCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFDFDFDFCFCFCFFFFFFFFFFFFFF
          FFFEFFFFFEFEFFFDFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFEFFFFFFFBFFFEFDFFFCFFFFF9FFFFF9FFFDF8957972756C62FFFFF8FFFFF7
          FEFFFAFDFFFCF8FDFBFFFFFFFFFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFEFFFFFEFFFFFEFCFDFBFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFEFFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFFFFFCFCFCFFFDFCFFFFFCFFFDF8FFFFF8FFFFF7FFFFF5FFFFF8FE
          FDF9FBFDFDFDFFFFFDFFFFFDFFFFFDFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFBFDFEF5FFFDF8FFF6CDBEB57C5C
          5197695ED1A79BFFFFF4FFFFF6FAFFFAFBFFFEFFFEFFFDF7F8FFFFFEFFFEFDFF
          FFFEF9FCFAFBFFFFFBFFFFFEFFFDFEFAF5FFFFF8FFFFF4FFFFF5FFFFF5FAFFFB
          F6FFFEFAFFFEFEFFFDFFFBF9FFECE3834F38935E43A98A71FFFFEDFFFFED6753
          419E887CFFFFF8FFFDFEFCFEFFFBFEFCFDFFFEFAFFFDFAFFFDFDFFFE0000F4FF
          FCF2FAFAFFFFFEFFFFF483624F935F48835641FFFBEFFCFDFBFAFDFFFBFBFFFF
          FEFFFFFFFEFFFEFDFDFFFFFBFEFFFAF9FDFFFCF7FFFFF8FFFFF8FFFFFAFEFAF9
          FDFBFBFFFEFFFFFFFEFFFFFEFDFFFEFDFFFFFDFFFFFFFEFEFFFDFDFFFFFFFFFF
          FFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF
          FFFFFBFBFBFFFFFFD7CEC5B09580B69175AE836EAF816FA07760A1755DA26E57
          965D43A0634397624793786AFFFEFAFFFCFCFFFEFFFFFFFFFAFFFEFDFFFFFBFD
          FDFBFFFEFBFEFCFFFFFCFFFEFAFFFBF5FFFEF7BFABA0917D728E7971BFACA7FF
          FBFCFFFDFFF8FDFFF8FFFFFBFDFDFFFFFEFFFDFCFFFEFDFFFFFEFAF8F7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFEFEFEFEFEFEFF
          FFFFFFFFFFFFFFFFFCFCFCFDFEFCFDFEFCFFFFFEFFFFFEFFFFFEFDFEFCFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFF9FBFBFDFFFEFFFFFCFFF9F5FFFCF7
          FFF9F4F7F4ECFBFFF7FEFFFAFCFFFBF8FBF9FCFEFEFFFEFFFFFEFFFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFCFBFCFAFFFFFEFFFFFEFFFFFEFEFFFD
          FFFFFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          FEFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFCFDFBFFFFFCF8
          FCF7FDFFFBF9FEF5FDFFFBFAFDFBFCFEFEFDFFFFFDFFFFFDFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFFF9F9
          F9F6FFFFFBFFFCA5948B775244925C4B814F3BA58A76FFFFEEFBFEF5F9FEFCFF
          FEFFFFFDFFFFFEFEFFFFFCFDFEFCFDFFFFFDFFFFF9FBFCFDFFFFF9FDF8FCFFF8
          FCFFF7F7FFF4F5FFF6F6FFFCF6FFFFFBFFFFFFFFFFFFFEFEFFFEF6BB917E8657
          3C7F583CFFE2C7FFFFEBC2B19C624732ECD5C6FFFEFEFAFBFFFBFAFCFDFFFEFA
          FFFDFAFFFDFDFFFC0000F7FAF8FDFEFFFFFCFFFFFAF8FFE2DB7E4D3F8C5C4AA5
          8C7CFFFFF5FCFCF6FFFFFFFFFDFFFFFBFDFFFEFDFCFAFAFFFAFFFFFAFCFFFFF4
          B19987D1BDABFFFFF2FFFFFBFAF8F8FFFEFFFFFEFFFFFEFEFBFFFFF8FFFFF6FF
          FFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE
          FEFEFEFEFEFFFFFFFCFCFCFDFDFDFDFDFDFFFFFFFFFFFCFFFFF9FFFBF3FFFDFC
          FFFCFBFFFFF9FFFFF8FFFEF9D3B7AC8556408C624BFFFFF7FFFBF8FFFFFEF8F9
          F7F8FDFBFAFFFEFFFFFEFFFFFEFAFFFFFEFFFB96867AFEE0CDFFE8D1986C5469
          46328464519574646A4B3CAB8E80FFFEF6FBF8F4F8FDFCFCFFFDF9FAF8FFFFFE
          FEFFFDFFFFFEFFFFFEFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFDFFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFFFFFF
          FBFCFAFFFFFEFFFCF9FFFFFCFFFFFCFDFEFAF5FBF6FDFFFEFDFFFFFDFFFFFCFE
          FFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFEFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFEFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFFFFFBFFFFFBFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFEFFFFFEFFFE
          F9FBFFFEFFFFFFFFFCFEFEFBFFFFFAFFFFF8FFFEF6FFFCFAFFFEFDFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFEFFF5FAF9FCFFFDFFFFF69884737C5741845B446C
          4D36EEDAC9FFFFF6FCFDFBFDFFFFFCFEFFFFFBFAFFFFFCFFFFFEF9FBFBFCFBFD
          FFFEFFFFFEFFFDFFFFF6FDF8F8FFFBF6FFFBF6FFFCF4FCFBF9FDFEFDFFFFFFFF
          FFFFFEFDFFFCF5FFF8E97E5943936347906243FFFCE4FFFFE87A5436906E56FF
          FFF9FDFFFFF8FCFDFDFFFFFBFCFAFFFFFCFFFFFE0000FFFDFCFFFEFFFFFEFFFF
          FDFEFFFBF6D7B5A8704A3872533ED7BFABFFFFF4FFFFF6FFFEFCFFFDFFFFFCFD
          FFFFFFFFFDFEFFFFF8FCDBC7724B2F7C5C3F68533DF1EAE1FAF8F8FFFAFFFFFC
          FFFFFEFFFDFFFFF8FFFFF4FFFDF8FEFDFCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFEFEFEFAFAFAFFFFFFFBFBFB
          FFFFFFF8FBF9FFFFFFFFF9FEFFFBFFFFFCFEFDFDFDFEFDFFFFFDF98C6F606749
          38E4D8D2FFFDFCFDFBFBFFFFFFFAFFFEF9FFFDFFFFFFFFFFFFF6FBFCFFFFFC7C
          6C5C6E50377D53367A5033D4B5A0FFFFF1FFFFF1D6B9AA5F4130DCC7B8FFFFF9
          FDFFFCFDFEFCFFFFFEFFFFFEFDFEFCFFFFFEFFFFFEFBFBFBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFCFCFCFDFDFD
          FFFFFFFDFEFCFEFFFDFEFFFDFEFFFDFFFFFEFFFFFEFFFFFFFDFDFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFFFFFFFEFFFDFDFDFFFFFFFFFDFCFDF9F8FFFEFDF9FAF8FBFDFDFBFF
          FFFBFFFFFBFFFFFDFFFFFCFBFDFBF8FAFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFEFCFEFFFDFFFFFEFDFEFCFFFFFEFEFFFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFFFFFAFFFFFBFFFFFDFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFCFEFFFEFFF8FAFBFBFFFFFAFFFFF2F7F8
          F9FEFFFBFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFFFEFFFCFEFFF9FCFAFF
          FFF9FFFFF2F3DEC9A28772715746B7A497FFFFF9FEFFFDF9FDFEFBFFFFFFFFFE
          FFFEFDFFFFFFFDFFFFFFFEFFFFFDFFFFFEFFF4F6F6FBFFFEF8FFFCF7FEFBFBFF
          FEFDFFFFFFFEFFFFFDFFFFFFFFFDFEFCFFFCF7FFFFF7DCC4B280513696614680
          583FFFDFC39B6B477B5232E4D5C5FFFFFCFCFEFFFDFFFFFFFDFCFFFFFCFFFFFF
          0000FEFEFEFFFBFAFFFFFCFFFFF9FCFDF3FFFFF2C9BBA57451377A5138D7BBA3
          FFFFF0FFFFF9FFFAFCF7F5FBF9FBFCFFFFF6FFFFEC8963439664409063427553
          3BFCF0E6FFFDFFFFFCFFFFFCFFFFFDFFFFFDFFFBFDFDFAFFFDFDFFFEFFFFFEFF
          FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFC
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFFFFFBFFFFFBFFFFFEFFFDFEFDFFFFF7FC
          FBF9FFFDFFFFF9FFFFF5D2C4B8F4F1ECFBFBFBFFFDFFFFFCFFFBFFFFFBFDFEFF
          F9FFFFFBFFFBFEFFF9FCFAFFFFF292877375664CC5B7A1FFFFF7FBF7F2FFFFFB
          FFFEF887786FC2B6AAFFFFF7F7FBF5FEFFFBFCFDFBFBFBFBFFFFFFFFFFFFFCFC
          FCFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFEFEFEFDFDFDFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFF9FBFBFFFFFFFFFBFCFFFCFDFFFF
          FFFBFFFFFAFFFFFDFFFFFBFDFEFAFEFFF9FDFEFDFFFFFFFEFFFFFEFFFFFDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFCFEFFFDFEFFFDFFFFFFFDFD
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFB
          FFFFFAFFFFFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFEFCFCFFFFFFFFFEFF
          FFFEFFFFFBFFFFFDFFFFFDFFFFFDFFFFFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFFDFFFAFCFCFBFFFEFDFFFBFFFFF7FFFFF7FFFFF7FFFFF8FFFEFAFFFCFB
          FFFFFFFDFFFFFCFEFEF9FBFBFDFFFFFCFCFCFFFFFFFFFEFFFFFCFEFFFDFFFFFE
          FFFFFEFFFFFEFFFFFEFFFFFDFEFFFCFFFFFDFFFFFFFFFDFDFDFBFEFCFCFFFDFD
          FEFAFFFFF7AD89778C5A439A644B8E57389F633F91613D9F8B72FFFFF2FFFBFC
          FEFDFFFEFFFBFFFFFCFFFBFF0000FDFCFEFFFFFEFFFFFBFDFFFBFBFFF9F5FFF2
          FFFFF3EED0BD815A446D4B349E816CFCE2D4FFFFF8FFFDFBFFFFF9ECDFCF7E67
          4D8B613E91613D7F5636DCBFAAFFFFF9F9F8FAFDFDFFFFFDFFFFFDFFFFFEFFFF
          FFFEFFFFFEFFFFFFFFFDFDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFEFEFE
          FEFEFEFCFCFCFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFF
          FBFFFEFAFFFFFEFBFFFFFAFFFFF7FEF9F9FFF7FFFFF9FFFEFAFDFFFEFAFCFDFF
          FBFFFFFCFFFEFDFFFFFEFFFFFBFFFFFBFFFBFCFFFAFCFCFFFFF7FFFFF4FFFFF4
          FFFFF7FBFFFAFBFFFFFDFFFFFCFAF9FFFFFBFFFFF8F7FAF1FCFFF8FCFDF9FEFF
          FDFFFFFFFEFEFEFFFFFFFEFEFEFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFEFEFFFFFFFDFDFDFEFFFDFEFF
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFFFFF9FE
          FDFFFFFFFFFCFDFFFEFFFFFFFFF5FDFDF8FFFFFDFFFFFDFCFEFDFFFFFDFFFFFD
          FCFEFEFDFFFFFEFFFEFDFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFFFF
          FEFFFFFEFEFFFDFFFFFFFEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFEFEFEFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFFFFFF
          FFFFFFFFFFFFFFFDFDFFFDFDFFFEFFFFFDFFFFFDFFFFFCFFFFFAFFFFFEFFFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFEFFFDFFFEFBFFFCFCFFFBFFFFFCFFFEFD
          FFFEFFFFFCFEFFFEFFFFFFFFFEFEFEFFFEFEFFFFFFFDFFFFFDFFFFFFFFFFFFFF
          FFFFFFFFFEFDFFFFFEFFFFFEFFFFFDFFFFFBFEFFFCFFFFFDFFFFFCFFFFFEFFFF
          FFFFFCFCFCFDFFFEF9FEFCF7FCFBFFFDFAFFFFF5976F5D8E5A43A06446A46543
          966342755D41FFFFF1FFFFFCFDFDFDFDFFFCFCFFFBFFFCFF0000FDFDFFFFFEFF
          FFFFFFFFFFFEFBFEFCF9FEFCFDFEFCFFFDFBFFF8F1A98E806D4C38744E36865E
          459F7862976E588857418E5B418F6041734E32C7B29CFFFFF5F9FCFAF6FDFFFB
          FEFFFDFFFFFFFFFCFFFFFBFBFFFCFDFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFEFFFAFFFFFAFFFFF9FFFAF9FFFAF9
          FEFFF9FEFFFAFEFFFFFEFFFFFCFFFFFCFFFFFEFFFFFFFFFFFEFFFFFEFFFFFEFE
          FFFEFDFBFEFCF8FEF9F8FDFBF7FCFAFEFEFEFDFDFDFCFCFCFAFCFCF7FDFCF7FE
          FBF8FFF9FAFFFAFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFFFFFAFFFEFAFFFEFFFFFEFFFFFEFFFEFFFFFEFFF8FFFFF8FFFFFF
          FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFF
          FFFEFFFFFFFFFFFFFFFDFFFEFDFFFEFDFFFEFDFFFEFFFFFEFFFFFFFFFEFFFFFE
          FFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFEFFFDFFFE
          FDFFFCFFFFFCFFFEFFFFFCFFFFFBFFFBFCFFFAFDFFFBFFFFFFFFFFFFFFFEFFFF
          FEFDFFFFFDFFFFFFFEFFFFFEFFFFFFFFFDFFFFFBFFFFFDFFFFFFFEFFFFFDFFFF
          FDFFFFFDFFFFFEFFFFFFFFFDFFFFFDFFFEFCFFFDFEFEFEFBFAFCFFFCFEFFFFFC
          FFFAEF89675088593D9E6649976549715439F7E8D5FFFCF5FFFFFEF8FFF9FAFF
          FBFFFDFF0000FDFDFFFFFEFFFFFFFFFEFFFDFBFDFDFBFCFFFBFCFFFDFDFFFFFC
          FDFFFBF4FFFFF2CCA9959E795F7F5B437C533C8755418D5B49B7907AFFEEDAFF
          FFF2FFFFFCF8FFFFF4FDFFFBFFFFFDFFFCFFFFF9FFFFF9FDFFFEFFFEFFFFFDFF
          FFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFFFEFFFDFFFFFB
          FFFFFAFFFFFBFFF9FAFFFAF7FDFFF9FCFFFBFEFFFFFEFFFFFEFFFFFDFFFFFFFE
          FFFFFEFFFFFEFFFFFEFFFDFEFFFDFEFDFCFEF9FDFEF7FCFDF8FCFDFFFDFFFFFD
          FFFFFDFDFBFDFDF8FEFDF6FEFDF9FFFEFAFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8FFFEFAFFFEFFFFFEFFFFFEFF
          FDFFFFFEFFFAFFFFF8FFFFFFFEFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFDFFFF
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFFFDFFFEFDFFFEFBFFFEFBFF
          FEFDFFFEFFFFFEFFFFFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFFFFFFFDFFFEFFFFFCFFFFFEFFFEFFFFFBFFFFFBFFFBFCFFFAFD
          FFFDFFFFFFFFFEFFFFFEFFFFFEFDFFFFFDFFFFFFFEFFFFFEFFFFFFFEFBFFFEFB
          FFFFFBFFFFFFFEFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFEFDFFFEFDFFFEFCFFFD
          FEFEFEFFFEFFFFFEFFFEFDFFFFFFF8FFFCE985664F7D503B8457426D503BF6E8
          D6FFFFF8FEFFFBF8FFF9FBFFFEFEFCFF0000FFFFFFFFFFFEFFFFFCFCFFFBFCFF
          FDFFFDFFFFFDFFFBFCFFFAF9FBFFFEFEFFFAF8FFFCF6FFFFF8FFFFF5FFFBF1FF
          FAF1FFFFF7FFFDF4FFFFF9FFFDFCFCFBFDF5F9FEF8FDFFFBFFFEFFFFFBFFFFF9
          FFFFFBFFFEFFFFFDFFFFFCFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFFFFFFFFFDFFFEFDFFFBFDFFF8FDFFFBFDFEFFFDFCFFFFFEFF
          FFFEFFFFFFFEFFFFFCFBFFFCFBFFFBFDFFFBFFFFFEFFFDFFFFFAFFFFFBFFFFFC
          FFFFFDFDFDFCFEFFFDFFFFFDFFFFFEFFFEFEFEFEFFFDFFFFFFFFFCFFFFFCFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF8
          FFFEFAFFFEFFFFFEFFFFFEFFFEFEFFFFFEFBFFFFFBFFFFFFFEFFFFFEFFFFFEFF
          FFFFFFFFFFFFFFFFFFFDFFFEFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFFFF
          FFFDFFFEFDFFFEFBFFFEFBFFFEFBFFFCFDFFFCFDFFFCFDFFFEFDFFFEFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFF
          FFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFF
          FEFFFFFEFFFFFFFEFDFFFCFBFFFEFBFFFFFDFFFFFFFEFFFFFEFFFFFEFFFFFFFF
          FFFFFEFFFFFEFDFFFCFDFFFEFEFFFDFFFFFFFDFDFDFBFCFFF8FBF9FFFFF5FFF6
          E5C9AC9EC3A096E6D2C7FFFFF7FFFFF9F9FFF9FAFEF8FBFEFCFDFFFF0000FFFF
          FEFFFFFBFFFFFCFDFFFEFDFFFFFFFDFFFFFDFFFFFFFFFDFFFFFEFEFEFFFEFFFF
          FEFFFFFEFFFDFFFFFCFFFDFFFFFFFAF8F8FFFFFEFFFBFCFFFEFFFFFEFFFDFEFF
          FBFFFFFDFFFCFFFFFBFFFFFBFFFFFCFFFDFFFFFDFFFFFDFFFFFEFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFEFFFFFBFFFFF9
          FFFFFCFFFEFFFFFCFFFFFDFFFFFEFFFFFFFCFDFFFBFAFFFBF9FFFAFBFFF9FFFF
          FCFFFDFFFFFBFFFFFCFFFFFDFFFFFEFEFFFDFFFFFDFFFFFDFFFFFEFFFFFFFFFF
          FFFCFFFFFEFFFCFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFFFFFAFFFEFBFFFEFFFFFEFFFFFEFFFEFEFFFFFEFBFFFF
          FBFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFFFEFFFFFEFFFFFFFFFFFFFFFDFFFEFDFFFEFDFFFEFBFFFEFDFFFEFBFFFCFB
          FFFCFBFFFCFBFFFEFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFF
          FFFFFFFFFFFFFEFFFFFEFDFFFEFDFFFEFDFFFEFFFFFEFFFFFEFFFFFEFDFFFEFD
          FFFEFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFEFDFFFFFFFEFF
          FFFEFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFCFFFFFCFFFFFEFDFFFEFCFFFDFBFD
          FDFBFEFFF9FEFFFAFFFAFFFFF7FFFFF8FFFEF9FFFCF8FFFEFAFAFEF8FBFFFBFD
          FFFCFDFFFEFDFFFF0000F7F3F2F6F2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000F6F2F1F7F3F2FDFFFFFB
          FFFFFBFFFFFDFFFFFCFEFEFDFFFEFFFFFCFFFFFCFFFFFBFFFFFCFFFFFCFFFFF9
          FFFFFBFDFFFCFDFFFBFFFEF6FFFFF9FFFEFAFFFFFFFFFEFFFFFEFFFFFEFFFFFF
          FFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFCFDFFFEFBFFFFFDFDFFFFFDFFFFFDFFFBFFFFFAFF
          FCFFFFFCFFFFFEFFFEFFFFFEFFFFFDFFFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FFFFFFFFFCFFFFFBFFFFFBFDFFFCFBFFFCFAFFFEFBFFFEFBFFFEFDFFFFFBFFFF
          FDFFFFFFFFFFFFFFFEFFFFFEFDFFFEFDFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFDFFFFFBFFFEFBFFFEFDFFFEFDFFFFFDFF
          FFFDFFFFFDFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFFDFFFFFDFFFFFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFFFEFFFDFFFFFDFF
          FFFDFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFEFFFFFFFEFFFEFFFFFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFDFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFFFDFFFFFFFEFFFFFFFFFFFFFFFFFEFFFFFDFFFF
          FDFFFFFEFFFFFEFFFFFEFFFFFFFFFFFEFFFFFEFFFFFDFFFFFEFFFFFEFFFDFFFF
          FDFFFFFDFEFFFDFEFFFFFFFFFFFFFEFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFDFF
          FFFAFFFEFAFFFEFBFFFFFDFFFFFFFDFFFFFEFFFFFFFFFFFDFDFFFEFFFFFEFFFF
          FFFEFFFEFAFFFFFCFEFEFEFFFCFFFFFCFFFFFBFFFAFCFDFBFFFFF9FEFDFFFDFE
          0000F6F2F1F7F3F2F7F3F2F8F4F3F8F4F3F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2
          F7F3F2F7F3F2F7F3F2F7F3F2F7F2F3F9F3F4F6F1F2F8F5F1F0EEE6F2ECE5D7CF
          C8C4B8B2968A849C908A9B938C9491898F908795958F9594908C8789A39EA0C2
          BDBEE2DDDEF7F2F3F8F3F4F7F2F3F8F3F4F8F2F3F9F3F4F8F2F3F8F2F3F8F2F3
          F8F2F3F8F3F2F8F3F2F8F3F2F8F3F2F8F4F3FFFAF7F7EDEDF5E9E5D9CDC1B4AB
          9D928B82908C878A88878C8A89938D8EAAA4A5D3D1D0F0F0F0F8F5F7F6F4F4F5
          F5EFF7F5EDF8F4EFF8F3F0FAF2F2FAF2F2FAF2F3F8F2F3F9F3F4F6F1F2F7F2F3
          F6F2F1EEEEE8F1F2E9D1D0C6BEBCB19994859B93829F9584A09587998F889893
          92959496888A8B999A98B6B7B3DDDCD8F3F1F0F9F4F6F7F1F2FBF2EFFDF4F0F8
          F3F2F7F2F3F7F2F3F7F2F3F7F2F3F7F2F3F7F2F3F7F2F3F8F3F2F7F2F1F8F3F2
          F7F2EFF3ECE9FFF9F4F4EEE9F8F2EBE0D7CEBDB4AA9B948B928C858F8A878985
          84989395949193C0BDBFE6E4E4FCF8F7F9F6F2F7F2EFF8F3F0FAF4F5F9F3F4F8
          F3F2F8F3F2FAF2F3FAF2F3F8F3F2F7F3F2F7F3F2F7F3F2F7F1F2F8F3F4F1EEF0
          F2EFF1F4F0EFEEEAE5CFC4BCA99E96908784918787948888968A8A958B8B938B
          8B908C8B8E8C8C908E8E918F8F989194989091C4BCBDEEE9E8F9F6F2F5F4F0F7
          F3F2F5F3F3F5F2F4F3F2F4F7F2F3F7F3F2FAF3F0F8F3F0F9F5F4F5F3F3F4F2F2
          F7F3F2FCF8F3F3ECE3FAF1E7D1C7BDA99F98928A8A8887898A8B8F908F91B8B4
          B3DED2CCD1C7C0A09E9D8E8C8C948D8ABAB3B0D4D0CFC0BFBB9F99928E88818B
          86858F8A8B928E8DA7A3A2D1CDCCF2EEEDF9F5F4F6F2F1F7F3F2F7F3F2F7F3F2
          F7F3F2F7F3F2F7F3F2F8F3F2F7F2F3F7F0F7F4EFF8F3EDF2FAF5F6F3EEEBF2EC
          E5CEC7BEA29C958C89858D8B8B8F8E928D8F90B9B7B6E4E2DAFCF9EBF5F0E1E1
          DBCEBCB6AB978E8A918989908889938E8F8D8A86BABAB4E6E6E0F4F4EEF8F4F3
          F6F2F1F8F3F4F7F2F3F5F3F3F5F3F2F8F3F2F8F3F4F5F3F3F2F3F1F6F5F1FAF7
          F2F9F5F0F7F1ECEEE7E4E3DDD8CEC5BCAAA0969E9288A0948E9F9496958D8E99
          928F9D9994908E8D8F8E90A4A5A9CACBCFEFEEF0F5F3F3F7F2F3F7F3F2F7F2F3
          F7F2F3F7F2F3F7F2F3F8F3F20000F6F2F1F7F3F2F7F3F2F8F4F3F8F4F3F7F3F2
          F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F2F3F7F2F4F6F1
          F0FFFFF6B8B1A27066555F5040AE9D9088756D907F768D8177827A6D615E4F56
          55479A988EA49D9A8C8485A19B9CCEC9CAF1ECEDF7F2F3F7F2F3F8F3F4F7F1F2
          F8F2F3F8F2F3F8F2F3F8F2F3F8F2F3F8F3F2F8F3F2F8F3F2F8F3F2F7F2EFFFF9
          F6A3979573665E71615075675471685B6E665F55524E7C7877A49F9EC3BEBDDF
          DDDCF1EFEEF4F2F2F3F1F1F5F4F0F7F4EFF7F4F0F8F3F0F8F3F2F8F2F3FAF2F3
          F8F2F3F8F3F2F6F1F0FAF5F2FFF9F4BBB6AD706A5D554E3FA59E8D7C75629188
          7491846E8A7C696B5E505D544B938E8BA0A19F868783979B96BFC0BEE8E6E6FA
          F5F7F7F2F3F7F1ECFBF5F0F8F3F2F7F2F3F7F2F3F7F2F3F7F2F3F7F2F3F7F2F3
          F7F2F3F7F2F1FBF6F5F6F1EEF7F2EFF9F3EEFFFCF7AEA8A36E655C6A5F517367
          556F645670675D6A625B514C49A39D9EB8B3B4D4CFD0EBE9E8F8F5F1F7F4F0F8
          F3F0F7F2F1F8F2F3F8F2F3F8F3F2F8F3F2F8F2F3F8F2F3F7F3F2F7F3F2F7F4F0
          F7F4F0F9F4F3F5EFF0FCF7F8EDE8E9807D79665F5672625579695975665D7666
          5F77676075695F75686072675F70675E6E665F5E585377706D999191938E8DBF
          BBBAEAE6E5F7F5F4F6F4F3F7F3F2F7F3F2F5F3F3F5F3F3F5F3F3F7F3F2F8F3F0
          FAF3F0F8F3F2F7F3F2F2F0F0FBF7F6EFEBE6847D746B60526E615373645B6E63
          5F4E4C4C909090ACA8A393897F7765546A5B4B5C58538D8B8A9A918E887D795F
          5A516C685D6E6557736A5D57504D7C7778A29E9DBFBBBADFDBDAF4F0EFF8F4F3
          F5F1F0F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F8F3F2F8F2F3F6EFF6F5F0
          F9F8F4F9EDE8E7877D736F62526F614E7467576A645D4E4C4B8C8D91A3A5A6CB
          CAC6F1EFE5D0CBBC7A73606E634F7064526F63597166624F4747918C8BA5A3A2
          C9C8C4E6E5E1F6F5F1F9F5F4F5F1F0F6F1F2F6F2F1F7F3F2F7F3F2F6F0F1F9F4
          F6F6F4F4F3F1F0F5F4F0FAF8F0F7F2E9F0E8DB85796D6154469282728F7F6F8D
          7C6F9385798C807A6F655E5D544A787267AFACA88888888D8F90ADB1B2D3D3D3
          F5F6F4F7F3F2F7F3F2F5F3F3F3F3F3F5F3F3F5F3F3F5F3F20000F6F2F1F7F3F2
          F7F3F2F6F2F1F8F4F3F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3
          F2F7F3F2F7F2F3F8F2F7FBF6F5FFFBEDE8DAC4CFBCA1AD967CA88F7BD2B9A9DD
          CABDDECEBEF6EBD7DDD2BC928975524837ACA09A978B89948E8FB8B6B6E6E4E4
          F6F4F4F4EFF0F7F2F3FBF6F7F4EFF0F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3
          F2F7F3F2F8F3F2F8F3F0FFF9F4E3D7D5F6E7DEDFCDB6BBAA90B2A595BEB5AC9C
          98938E8B87C4BFBCE5E0DDF2EFEAF7F6F2F4F0EFF6F1F2F7F2F3F7F2F3F7F2F3
          F7F2F3F7F2F3F7F2F3F8F2F3F8F3F2F9F4F1F8F2EDFFF6EDFFF6EAEBDCCCCBBA
          A7AD9883A7947FC2B4A2D6CCBAE1D3C0F3E5CFE7D6C39F9080584F4297958B95
          958F868987B3B2B4DDD9DEF8F3F5F7F5F5F6F5F1F3F3EDF7F3F2F8F3F2F7F3F2
          F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2FBF6F5F6F1F0F9F4F1F7F2EFFBF5F0F8F2
          EDE8DFDBE8DED4EBDDC7C4B59BB2A390B9AC9EC2B9B0807773BCB7B6DBD7D6EE
          EAE9F2EFEBF7F2EFF8F3F0F7F3F2F7F3F2F7F2F3F7F2F3F7F3F2F7F3F2F8F2F3
          F8F2F3F5F3F3F5F3F2F5F4F0F7F4F0FBF4F1F7EFEFF9F5F4F2EFEBDED8D1EEE5
          D7D0BDA8BDA78EBCA88FD2C1A7E0CFB5D9CBAFDACBB1D5C8AEEFE1CACDBFAC94
          87778E8578A8A29B908D89BFBDBDE4E3E5F7F6F8F5F4F6F5F3F3F7F3F2F5F3F3
          F5F3F3F5F3F3F7F3F2F8F3F0FAF4EFF8F3F0F8F4F3F6F4F4F3F1F0F8F4EFE5DC
          D2F0E2D0C8B7A4B8A695B5A79B837C799B9590C8BBABCEBAA1C6AB90B19B8264
          5B518A8681AB9F9DFDF0E8EFE3D1B6AA92BAAA93C1B3A19A928B8E8A89BCB8B7
          E6E2E1EEEAE9F9F5F4F5F1F0F8F4F3F7F3F2F7F3F2F8F3F2F8F3F2F8F3F2F8F3
          F2F8F3F2F8F3F2F8F4F3F6F2F1F5F1F0FAF0E9EFDECBF5DEC4BEA486BFAA8FB1
          A6987D7974909090B7B7B7E8E4DFFFF7EEF3EADDFAECDAE8D7BDBBAA90B8A897
          B0A49A827976969190BEBCBBE4E5E3F1F2F0F2F3F1F5F3F2F8F3F4F7F3F2F8F3
          F2F8F3F0F8F3F2F8F1F6F8F1F6F8F3F5F6F4F4F3F2EEF8F6EEFCF9EBF6ECDADC
          CAB3B49C84AB907BC3AA96D8C1B1E0CDBEEADECCF2E8D6B2A793716756706B62
          A8A7A3818383989C9DC3C3C3F0F1EFF7F4F0F5F4F0F3F4F2F1F3F3F3F2F4F3F3
          F3F5F3F20000F6F2F1F7F3F2F7F3F2F6F2F1F8F4F3F7F3F2F7F3F2F7F3F2F7F3
          F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F2F3F2EEF3F5EDEDFFFCEBEEDDC3D1
          B99BC4A98EAF9682A99283BAAA9EE4D7C7FFF2DCFFF5DBE1D0B69C8B7865564D
          A299958C8786B1AFAFE1DFDFF9F7F7F9F4F5F5F0F1F8F3F4F9F4F5F7F3F2F7F3
          F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F8F3F0FDF6F3F9F0ECFBEFEDFFF1E5FF
          F1D5CFBA9BAB9B8A998F859A948F9F9A97D3CCC9F3EFEAF8F6EEF8F5F0F9F4F3
          F9F3F4F7F2F3F7F2F4F7F2F4F7F2F4F7F2F4F7F2F3F7F2F3F7F3F2F6F1EEFCF6
          EFFFF8EEFFF9EBE5D4C1D8C3AEBCA28AAA927EA39688AAA194D8CBBDFFF0DFFF
          EFD9EFDDC6998B786057499D9B93888888AEAAAFDFD9DEFBF4F7F3EEEFF0F1EF
          F3F7F2F7F3F2F8F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F6F1F0F6F1
          F0FAF5F2F9F4F1FCF6F1FCF6F1F6EDE9FEF2E6FFF4D9E9D5B6B5A38CA49684A2
          968CA19894C6BFBCF0EBEAFBF8F4F8F5F1F7F2EFF8F3F0F8F4F3F7F3F2F7F2F3
          F4F2F1F5F4F0F5F3F2F7F2F3F7F2F3F5F3F3F3F4F2F5F4F0F7F4EFFBF4F1FDF6
          F3F5F0EFFBF7F2F3EFE4FFF6E4F9E2C8C8AD92A18B72B09F85AE9F85CDC1A5EE
          E2C6FDF1D5FDECD2F6E6CF9789769E9385B1ACA3999691BFC0BEE8EAEBF2F3F7
          EFEEF0F5F3F3F7F3F2F5F3F3F5F3F3F5F3F3F7F3F2F8F3F0FAF4EFF7F2EFF8F5
          F1F5F3F3F5F3F2F8F4EFF7EEE4FFFBE8F2DDC7AC9782B7A797A19992ABA298D4
          BFA9D6BA9BD3B794C8B092776A5A89817A9F9391B4A79FEEDFC5DECCADB19C81
          B2A18EA098919D9998CCC8C7F5F1F0F5F1F0F9F5F4F6F2F1F7F3F2F7F3F2F7F3
          F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F7F4F0F6F3EFF6F4F3FBF5EEFF
          F1DEFFEFD3EFD4B2AE9678BFB19FA09A93918F8EB8B8B8D1CCC9E2DAD3E9DFD8
          EBDED0FFEDD1CFBA9BB29F8A97897D9A8F8BB3AEADDFDDDDF1F1F1F1F1F1F2F3
          F1F5F3F3F6F4F4F7F3F2F8F3F0FAF3F0FAF2F2F7F0F5F7EFF6F7F0F3F8F3F4F4
          F2F1F9F7EFFFF9ECFAEFDBDDC8ADCDB297B2967EAE937FAB9687CDBEAEF1E8D4
          F9EED8FFF4DABCAE985F574A97938E858684959797C2C3C1EAE9E5F7F4EFF7F4
          F0F3F4F2F1F3F3F1F3F4F3F3F3F5F3F20000F6F2F1F7F3F2F7F3F2F6F2F1F8F4
          F3F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F2F3FD
          F8FAFBF4F1FFF6E5EFDFC8E0C8B0967D69C8B4A9C3B5AFCECBC6E7E6DCFFFAE8
          FFEFD8E9CFB7BCA38F6B5E50938E858C8887B1AFAFDDDBDBF4F2F2F6F4F3F3F1
          F0F2F0EFF5F3F2F5F3F2F5F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F8F3F0F8
          F1EEFDF4F0FFF3F1FFF8ECF0D9B9D4BB9994837090847A8D8782A5A09FD4CDCA
          F7F3EEF6F4ECF4F1ECF9F4F3F7F1F2F7F2F3F5F3F3F5F3F3F5F3F3F5F3F3F5F3
          F3F5F3F3F7F3F2F9F4F1FBF5EEFCF3E9FFF9EBECDECCD9C6B1A08B75BBA998C2
          BCB5C7C4C0E9DEDAFFFBEFFFEED9E9D4B9BDAC916D604A938B848A8587AEA6AD
          DED4DAFFF3F5FAF0F0F5F3F3F5F5F5F7F3F2F8F3F2F7F3F2F7F3F2F7F3F2F7F3
          F2F7F3F2F7F3F2F7F3F2F8F4F3F8F3F0F6F1EEF8F2EDF8F2EDF9F3EEFFF9EBFA
          E6C7DCC6A3AE9B80816F5E9B8F85A29793C6BFBCF0EBE8F7F4F0F6F3EFF7F2F1
          F9F4F3F8F3F4F6F1F2F5F3F2F6F4F3F5F4F0F5F3F2F7F2F3F7F2F4F3F3F3F3F4
          F2F5F5EFF7F5EDFDF4F0FBF2EEF7F2EFF6F3EBFDF7EAFFF2DCEBD2B2C9AC9181
          6B5F9E8E8891877DC0B7AAEFE6D8F2E8D7D9CABAECDDCD9F91859F958BD3CDC6
          C0C0BAD9DAD8EBEDEDF9F9F9F5F3F3F7F3F2F7F4F0F7F3F2F7F3F2F5F3F3F7F3
          F2F8F3F0FAF3F0FCF6F1F9F4F1F0F0F0F4F4F4F7F4F0FEF5EBFFEFD8DFCAAF95
          806BAB9C8C9C958CA69D90DEC3A9DAB998CFB591D5C1A29485727A7066B0A9A6
          948981D6C4A7E2CCA9927B61A2907F968E879C9798CCC7C8F7F2F3F7F3F2F8F4
          F3F8F4F3F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F9
          F6F2F6F4F3F0F4F5F1F3F3FCF6EBFCEEDBFBE6CB9D8A6F8C7F6FB5ADA6948F90
          9E9B9DAEA9AAB9B4B3B1ACADB7AEA5D8C3A7C9B08E9A856F8F7F729F9692C3BF
          BEECEAEAF4F4F4F2F2F2F3F3F3F3F3F3F5F3F3F7F3F2F8F3F0FAF3F0FAF3F0F8
          F3F5F7F1F6F9F0F3FBF3F4F8F2F3F9F5F0FDF7ECF7EDDBE2D2BBB8A48B9C8674
          D6C3B6C9BCB4D9D2C9F8F2E5FFFDE9ECD9BED0BCA3877A6A797269918D8C9593
          93BFBBBAF1ECE9FAF4EFF8F4EFF5F3F2F3F3F3F3F2F4F3F3F3F7F3F20000F6F2
          F1F7F3F2F7F3F2F6F2F1F8F4F3F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7
          F3F2F7F3F2F7F3F2F7F3F2F1ECEDFEF7F4FFF8EBF0E4D2E9D5C4957F73EDDCD9
          E3DBDBDCE1DFE3E8DFF5EDDCE2CDB7D4B59EC9AE9A6C615388867C95928EC0BE
          BEE6E4E4F3F1F1F6F4F3F6F4F3F4F2F1F5F3F2F5F3F2F5F3F2F7F3F2F7F3F2F7
          F3F2F7F3F2F7F3F2F8F3F2F9F2EFFCF3F0FCF3F0FFF7EBE7CEACD7BD988E7B66
          8E82788D8481A7A2A1CDC8C7F6F2EDF7F5EDF7F4EFF9F3F4F6F1F2F5F3F2F5F4
          F0F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F7F3F2FAF7F3F6F2EDF8F3EAFFF9ECEB
          E0D2E9DCCC958574E2D7C9DDDCD8E1E1E1EAE1DEF5E4DBEBD3BFD2BCA0C6B495
          786A53887E77968D90BFB2BAE9DBE1FFF5F7FFF3F3F8F3F5F3F0F2F7F2F3F8F3
          F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F8F4F3F6F1EEF7F2EFF9
          F4F1FAF4EFFBF5F0FFF9EBF7E4C3E0C8A4AC977C806E5DA0948A9B928EC7C2BF
          F0EDE9F8F5F1F7F4F0F9F4F3F9F4F3F8F3F4F6F1F2F6F2F1F4F3EFF5F4F0F5F3
          F2F8F2F3F7F2F4F3F3F3F1F4F2F3F5EFF7F5EDFEF5F1F9F0EDFFFAF7F6F3EBFF
          FBECFFF5DDE0C4A2D1B3967461599B9191908986ACA6A1C2BDB4C8C2B7B9AFA5
          F1E7DDB9ADA7B4ACA5F8F4EFE5E4E0ECEDEBF2F3F1EFEDEDF9F5F4F7F4F0F7F4
          F0F7F3F2F7F3F2F5F3F3F7F3F2F8F3F2FAF3F0F8F2EDF8F3F0F4F4F4F7F7F7F7
          F4F0FFFAF0FFF0D6E1CCB095826DA19484A09A8FA99E90D8BAA1CEAC8EB8A384
          FFFCE1C3B29D66584CC6C1C09C948DCDB99AE2CAA68C765D9F8E81968D899F9A
          9BC9C4C5F4EFF0F6F2F1F7F3F2F9F5F4F4F0EFF7F3F2F7F3F2F7F3F2F7F3F2F7
          F3F2F7F3F2F7F3F2F8F3F2FBF3F3F7F2F3EEF1F5EFF3F4F7F4EFF9F2E3F5E5CE
          C5B49A6B5C49BAACA08E847D82797686807B8B857E8D8A829D9486C8B397C1AA
          8A8A77629A8C80ADA4A0D7D2D3F6F4F4F6F4F4F5F3F3F5F3F3F3F3F3F5F3F3F5
          F3F2F7F3F2FAF3F0FAF2F2F8F3F4F8F3F5FAF2F3FBF3F4FAF2F3FAF2F2FAF4ED
          F5EDE0EADECCBAAC9AB2A597F4E9E1E1DBD6E6E2DDEFEAE1E5DBCAD8C1A7D4BB
          A1948473786F668F8A89A6A1A2D7D2D1F6EFECFCF3EFFAF4EFF7F3F2F5F3F3F3
          F2F4F5F3F3F8F3F20000F6F2F1F7F3F2F7F3F2F6F2F1F8F4F3F7F3F2F7F3F2F7
          F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2FBF6F5F5EEEBFCF7EE
          F5EFE4F9E9E2F2E1DEFDF0F2F1ECEDD4D9D7C6CABFB4AA98AC9480D6B5A1BFA3
          92766E61919289ACA9A5D6D2D1F4F0EFF7F3F2F7F3F2F8F4F3F7F3F2F8F4F3F7
          F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F8F3F2F7EFEFFBF3F3
          FFF7EBF3D9B5DBC19994816C8C8076908986A6A2A1CDC9C8F5F2EEF7F5EDFAF7
          F2F6F0F1F8F3F4F5F4F0F3F5EFF5F4F0F5F4F0F7F4F0F7F3F2F7F3F2F7F3F2F5
          F1F0F5F2EEF9F6F1F8F5EDF7F5EBEEE9E0EFE9DEFBF6EDEBECE8DDDCD8D6CAC4
          C2AEA3AA927CCFB89EBAA98E7C6E5B938B84ABA3A4D4C8CEF5E7EDFFF4F6FDEF
          F0F9F1F2F9F3F4F8F3F2F8F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F5
          F1F0F7F3F2F6F2F1F8F5F1FAF7F3F9F4F1F8F3F0FFF7EAF4E1C0E2CCA8A8947B
          807060988C86978F8FC5C1C0E9E7E6F7F5F4F8F4F3F7F1F2F6F0F1F7F1F2F8F3
          F4F8F4F3F6F3EFF7F4F0F7F4F0F8F2F3F8F1F4F3F2F4F1F3F3F3F4F0F7F4EFF9
          F0EDFAF1EEF4F0EFF6F3EEF8F5E7FFF4DCEACEACC8AB8C7163579B9491908C87
          9E9B965F5D5569675F9D9A9299968EC3BEBBEEEBE7F7F3F2F6F4F3F8F6F6F7F2
          F3FAF6F5F8F4F3F7F4F0F7F4F0F7F4F0F7F3F2F5F3F3F7F3F2F8F3F2FAF3F0FB
          F5F0F8F3F0F4F4F4F0F2F3F2F0EFFFF7EDFFECD3DEC8AC8A7B68A89F919F998C
          B1A494D9BCA7B899829B8E78C5BCA8EEDCC56B5B4BBEB9BA9F9B96C9BA9AE2CC
          A98F7B699E8E87968F8CA09E9EC9C4C5F3EEEFF7F2F3F6F1F2F9F4F5F4EFF0F7
          F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2FAF2F2FFEFF2FFF1F5F8F1F6
          F5F2F4F8F5F1FDF9EEF5E8D2F4E1C6A992788B735B8C7664847463887A678177
          5F827A5DA29777CAB697A590758878679B9088BBB6B5E1DFDFF9F4F5F3EEEFF7
          F3F2F7F3F2F5F3F2F5F3F2F5F3F3F7F2F3F8F3F2F8F3F2F4F2F1F6F4F3F8F3F2
          FBF3F4FAF2F3FAF2F3FBF3F3F6F0EBF2EBE2EEE9E0EEE9E0F5F2EAE6E1DED8D2
          CDC6BEB7A59588C3AA90CBB0959282727E746D9C9798BBB8BAE6E1E0FDF6F3FC
          F3EFFCF3EFF7F3F2F5F3F3F5F2F4F7F2F3FAF3F00000F6F2F1F7F3F2F7F3F2F6
          F2F1F8F4F3F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2
          F7F3F2F9F2EFFAF5F2F6F3EEF6F2EDFFF5F3FFF6F4F7EAE8C9BFB89390827D77
          64938268C4AA92CFB09BAB9282918A81B7B8B4D7D5D4EEEAE9F7F3F2F5F1F0F7
          F3F2F7F3F2F5F1F0F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2
          F7F3F2F7F2F1F7F1F2F5F0F1FFFAF0ECD2AED7BD9594816C90837B8F8787A19F
          9FCEC9CAF2F1EDF4F5ECF7F7F1F2EDEFF8F3F5F7F4F0F5F5EFF7F4F0F7F4F0F7
          F4F0F7F3F2F7F3F2F5F3F2F6F4F3F9F7F6F3F2EEF5F2EEF6F3EFFFFBF6FFF6F2
          F6F0E9C9C7BD9B95888673648F7564C3A78FCDB39BB09F8A847C6BBAB7AFD2CE
          CDEEE7EAF9EFF5FBF0F3FBF1F1FBF4F1FAF5F2F8F3F0F8F3F2F7F3F2F7F3F2F7
          F3F2F7F3F2F7F3F2F7F3F2F7F3F2F8F4F3F7F3F2F6F2F1F7F4F0F7F4F0F9F4F1
          FFFBEEF5E3C4DAC6A3AA98817B6E609B928E979293C2C2C2E9E9E9F3F3F3F6F4
          F3F9F4F5FAF4F5F9F3F4F8F3F2F7F4F0F8F5F0F7F4EFF8F3F0FAF2F3F8F1F4F5
          F2F4F1F3F3F3F4F0F5F5EFFDF4F1FFF8F8F2EDEEF7F6F2FCF8EDFFF3DDEACBAA
          CDAE8D7E6C5B958B81867C72B3AAA0A49D946C6A6096948C92918DBCBAB9EBE9
          E9F9F7F7F5F0F1F6F1F2FBF5F6F5F0EFF7F2F1F7F4F0F7F4F0F7F4F0F7F4F0F5
          F3F3F5F3F2F7F3F2F8F4EFFDF4F0F6F1EEF2F1F3F0F2F3F9F7F6FFFDF3FFF3D8
          DEC8AC8D7F6D988F81A09789C1B1A0D7B9A69C827191887BA69F90FBE7CE8D7A
          65999493B5B1ACC2B393DCC8A58976679B8C8A8F8A899D9B9BC8C3C4F3EEEFF6
          F1F2F6F1F2F9F4F5F8F3F4F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2
          FAF2F2FFF0F4FFF3F7FDF2F5F5F0F1F5F3F2F9F7EDF8EEDDF2E2CBCEB69AC0A5
          8ACCB59FE7D4BFE0D2BCE9DDC1FFF5D0CDBA94C0AB8F89786392867AA49E99CD
          C8C9EFECEEF6F1F2FAF5F4F9F4F1F8F3F0F7F4F0F5F3F2F5F3F3F5F3F3F7F2F3
          F7F2F3F4F3EFF6F5F1F7F3F2F9F3F4FAF2F3F8F0F1FAF2F3F9F1F1FAF5F2FCF8
          F3FFFCF3E4DED3ABA2958E807488776AAA9482CFB297CBB096897969AFA6A2C7
          C4C6E0DFE3F2EDEEFAF3F0FCF3EFFAF4EFF7F3F2F3F3F3F5F2F4F7F2F3FAF3F0
          0000F6F2F1F7F3F2F7F3F2F6F2F1F8F4F3F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2
          F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2FAF3F0F9F4F1F4F2F1F3F1F0FFFFFCD0C3
          BB8F7C6F846D579F8A6ABCA57FD7BA95D5B695C7A891AE998AD7D3CEDEE0E0F1
          EFEEF8F4F3F9F4F3F7F2F1FAF5F4FBF6F5F9F4F3F9F4F3F8F3F2F8F3F2F8F3F2
          F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F4F4EFF1F5F2F4FFF7EDEFD7B3D9BF
          9796836E8A7E788C86879F9EA0CECBCDF2F3F1F3F5EFF6F6F0F4F1F3F9F3F8F8
          F2F3FAF2F2F8F3F2F8F3F2F7F3F2F7F2F3F5F3F3F3F3F3F1F2F0F3F1F0F6F4F3
          F5F0EDFEF5F2FFFBF7DBCAC78C7A737F715F928167C0A285D9B799D7B39BC6AB
          979E8E81D5D1C6DFE3D8E9EDE7F8FAFAF6F5F9F1F0F4F8F6F6F5F6EDF5F4EAF8
          F4EFF8F3F0F7F3F2F7F3F2F7F3F2F7F3F2F5F3F2F5F3F2F6F4F3F3F1F0F5F3F2
          F3F1F0F7F3F2F8F4F3F1EEEAFBF3E6F5E6C6DECBAAA695807A6E64968E8E9693
          95BABCBDEBEDEEF5F5F5F0EEEEEFEAEBF3EEEFF8F2F3F7F2F1F5F2EEF6F3EEF8
          F4EFFAF4EFFCF1F3FAF1F4F5F2F4F3F3F3F3F4F0F5F4F0F9EFEFFBF3F4F2EEF3
          F3F3F3FAF7EFFDF2DEE0C3A4DAB795B89D8389715D9F8773BFA8989C8C7C8074
          68A9A39C908D89BFBDBDE7E4E6FDF8FAFAF3F6FBF5F6F6F0F1FBF6F5F6F3EFF7
          F4F0F7F4F0F8F3F0F7F4F0F5F3F3F5F3F2F7F3F2F8F4EFFDF4F0FAF5F2F4F3F5
          F0F1F5F0F0F0FBF2E8FFEFD4E0CBAC90826FA39988AA9C89CFBAA5CAAC998B72
          629E948D9C9689F5E1C2BAA589726861CDC6BDC8BA96DFCDA88D7A6D9B8B8C93
          8D8E9F9D9DCAC8C8F3F1F1F6F4F4F4F2F2F6F1F2F8F3F4F7F2F3F7F2F3F7F2F3
          F7F2F3F7F3F2F7F3F2F7F3F2F7F3F2F7F0F3FAF4F5F7F2EFF5F2EEF7F6F2F7F5
          EDFEF8EDEFE3D1E4CFB99C8771CFBEB1A89990A69A90D0C0AFFFE7C5DDC39FB1
          9C86887B6D968E87B0ACABD8D7D9F7F6FAF3EEEFF8F3F2FDF4F0FCF3EFF8F4EF
          F7F4F0F5F3F3F6F3F5F5F2F4F7F2F3F7F4F0F9F6F2F2F3F1F3F3F3F5F3F3F6F0
          F1F9F1F2FCF1F3FFF6F6F7EDE6A1948483715A957D61B19577C8AA8FD6B89BD2
          B596B0997FC0B2A6E2DDDAE7E8ECEAEDF2F3F2F4F6F2F1F8F3F0F8F3F0F5F3F2
          F1F3F3F3F2F4F5F3F3F8F4EF0000F6F1F2F7F2F3F7F3F2F6F2F1F8F4F3F7F3F2
          F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F8F3F2F7F3F2F8F3F2F8F3F2F8F3F2F8F5
          F1F4F2F1FFFCF7AFA397907C6BB9A189CAB092D8BD9BD6BC98D2B999CFB79BE6
          CEBAFAEADEE8E4E3DADCDDDDDBDBEDE9E8F6F1F0F7F2F1F7F2F1F7F2F1F7F2F1
          F8F3F2F8F3F2F8F3F2F8F3F2F7F3F2F8F3F2F7F3F2F8F3F2F7F3F2F7F1F2F5F0
          F1F7F5F5FFFAF0E9D0AEDBBF9C92806F8B817A8C8887A1A0A2CAC9CBF0F1EFF2
          F3EFF5F4F0F7F5F5F6F1F3FAF2F3FAF2F3FAF2F3F8F2F3F8F3F2F7F3F2F3F3F3
          F3F3F3F3F4F2F7F6F2F5F1F0FCF6F1FFFAF4C4B1A98C766BB59E8FC1AC97D3BC
          A2DCBFA0D3B396D3B49FDEC7B8F2E7DFE4E1DCDDE1DBD6DCD7E3E8E7ECF0F1EE
          EFF3F4F4F4F2F3EAF7F8EEF7F4F0F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F5F3F2
          F5F3F2F6F5F1F4F1EDF8F5F1F7F2EFF7F2EFEDEAE6D5D2CED2CCBFE4D5B5DFCC
          ABA796837A6D65979293959496C0BEBDEEEAE9EEECECD7D4D6CBC6C7D9D5D4EE
          E9EAF7F3F2F7F3F2F8F3F0F8F4EFFAF3F0FCF2F2FAF2F3F7F2F3F5F3F2F5F4F0
          F7F4F0F9F1F2F9F2F5F4F3F7F2F4F5F4F2EAFEF3DFEBCCADD5B08EC6A88FD7BF
          A9F7DCC8FFF0DEA390818A7C70C1B7B09D9895BCBABAE6E3E5E5E0E2E7E0E3EF
          E8EBF3EDEEF8F3F4F8F4F3F7F3F2F7F4F0F8F3F0F7F4F0F5F3F2F5F3F2F7F3F2
          F8F3F0FCF3EFF9F4F1F0EFF1F3F5F6F4F5F3FFF8EEFFF1D6DFCAAB8D7F6CA397
          85BBA690D6BEA6BBA28E86736496908BA69F96E6D4B7E1CCAD64584ECABEB2D4
          C3A2D8C5A28D7A6D978788948E8F9C9A9AC6C4C4F0EEEEF7F5F5F7F5F5F6F1F2
          F8F3F4F7F2F3F7F3F2F7F2F3F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F8F4
          F3F6F1EEF7F3EEF7F6F2F2F2ECFBF5EEF2E9DCF5E4CF8C79649C8D84B9AEAA92
          8985C0B0A3DDC0A1D4B59492816E8B82799D9994BDBBBBECEBEDF4F3F5F8F3F4
          F8F3F0FAF4EFFAF4EFF7F3EEF7F4F0F5F3F3F4F4F4F6F3F5F5F3F3F6F2F1F8F5
          F1F2F1EDF2F3F1F6F4F3F6F1F2FBF3F4FFF4F2F3E1DA8E7B6CAA937DC4AC90D1
          B596DABE9FD5B99BD0B59AD6C1A6EEDFCCF6EDE3E2DEDDD2D3D7DFE2E7EDECEE
          F5F3F2F7F4F0F7F4F0F3F3F3F1F3F3F3F2F4F5F3F3F8F3F00000F6F1F2F7F2F3
          F7F3F2F6F2F1F8F4F3F8F3F2F8F3F2F8F2F3F8F2F3F8F2F3F8F2F3FAF2F3F8F2
          F3FAF2F3F8F3F2F6F2F1F7F6F2F9F6F1E7DED1B7A086CFB391CDB192CAB296BB
          AA95BCAFA1DBD1CAFEF6EFFFFFF5FFF3EDD0CECEB4B3B7B3AEAFD7D1D2F4EEEF
          F9F3F4F6F1F2F6F1F2F7F2F3F7F2F3F7F2F3F7F2F3F7F2F3F5F3F3F7F2F3F5F3
          F3F7F2F3F7F3F2F7F2F1F8F3F0F4F1ECFFFAECEDD0B5DABCA1907F7289807C89
          88849EA19FCBCCCAF0F1EFF8F7F3F6F3EFF8F3F0F6F1F0F8F2F3F7F2F3F7F2F3
          F7F3F2FAF3F0F8F3F0F3F2F4F1F3F4F7F5F4F3F0EBF8F5F1FEF7EEF9EBD9B6A2
          89D0B89CC7AF93C4AD97BDA893C5AF9DDCCAB9FFF1E8FFFEF8F8F3F2DBD9D9B5
          B5B5B1B3B3CFCED0EEEDEFF6F3F5F4F2F2F5F1F0F5F3F2F3F3F3F5F3F3F7F3F2
          F8F3F2F8F3F2F7F3F2F5F3F2F5F4F0F6F3EEF7F3EEFCF4EDFFFBF4FFFFFBEEE9
          E6B9B8B4A29C8FD9C8A7E2CCA8A993817C6C66939092959595CFC5BBFFFBF1EF
          E7E8BBB5BA9F9B9ABDBAB6E2E0DFF8F6F6F6F0F1F7F1F2F7F3F2F7F3F2F8F3F2
          F8F3F0F7F4F0F7F4EFF7F4EFF8F3F0F8F2F3F9F3F8F1F1F7EDF2F1FAF9EFFDF2
          DCE6C7A6D4B39296806EA7978B99877CF4E4D8B3A79B8B8177DED4CDC6C0BBD8
          D6D5D4D4D4C8C3C5BBB6B8D7D2D4EDE9EEF9F3F8F8F3F5F7F2F3F7F3F2F7F4EF
          F7F4EFF5F3F2F5F3F2F7F2F3F8F2F3FEF4F4F7F2F1F4F3F5F2F4F4F4F3EFFFF8
          EBFFEED3E0CAAE8C7D6DAA9B8BCAB098DABFA59F8C778E83758C8985AEABA3E9
          D9C2ECD9BE7D6D60B5A696D6C4A5D9C7A88C7B6E8D817D989293999698C9C7C7
          F3F1F1F3F1F1F4F2F2FAF6F5F5F1F0F8F3F2F8F3F0F8F3F2F8F3F2F8F3F2F8F3
          F2F8F3F2F8F3F0FAF4EFFAF4EFFCF3F0F9F1F1F4F3EFF2F4EEF8F4EFFFF7EAF5
          E4CAC1AD94685B53CFC6C396928DA99E90D6B99AC4A788827567908C87ABA8A4
          D4D2D1F5F3F3F5F3F3F2F0EFF8F4F3F7F4F0F7F4F0F7F4F0F5F3F2F5F3F2F5F3
          F2F5F3F2F5F3F3F6F3F5F7F2F3F8F5EDF8F5EDF5F3F3F4F1F3FCF4F5FFF9F2C9
          AE99D2B394CFB091C6AB90C3AF9DB6A797C8BAA8F4EAD8FDF7EAFFFFF8E7E4DF
          C7C6C2ACAAAAC2C0C0DBD9D9F4F2F2F7F3F2F5F3F3F3F3F3F3F2F4F5F3F3F7F2
          F3F8F3F20000F6F1F2F7F2F3F7F3F2F6F2F1F8F4F3F7F3F2F7F3F2F7F2F3F7F2
          F3F8F2F3F8F3F2F8F2F3F8F3F2F8F2F3F7F3F2F5F3F3F8F7F3F8F2EBE7D9C7DA
          BE9CD0B18AAC9274A08D78958B81B4AFACDCD9DBF4F0EFD7CCC4B9AEA6A09B9C
          8A898D969193C2BCBDEAE4E5F7F1F2F6F1F2F7F2F3F9F4F5F8F4F3F7F2F3F7F3
          F2F7F2F3F5F3F2F7F3F2F5F3F2F7F3F2F7F3F2F6F2F1F9F4F1F7F5EDFFFEEDEF
          D1B8DAB8A0907D708C847D8686809EA29DC8C9C7EDEEECF4F2F1F5F3F2F8F3F0
          FBF6F5F7F2F3F7F2F3F7F2F3F7F3F2FAF4EFFAF3F0F3F2F4F3F2F6F8F4F3F8F4
          EFFAF6F1FBF5EAEFDEC9DAC4A8C4AB89AF9779A593829A8C80B1A59BE0D7CDFA
          F2EBD5CFCABDBAB69C9A998E8D8F929193BBBABEE9E6E8F5F3F3F7F3F2F9F4F1
          F9F6F2F5F3F3F5F3F3F7F3F2F8F3F2F8F3F2F7F3F2F5F3F2F5F3F2FBF8F4F5F1
          ECFFF9F2B3AAA1786F666E665FAFACA8938D82D4C3A2E3CDAAAC968482726C90
          8D8F9A9695AD9D8D8471626E6464B2ACB1848281B1B0ACDEDCDBF4F2F2F8F2F3
          FCF6F7F7F2F3F5F3F3F7F3F2F7F4F0F7F4EFF7F4EFF7F4EFF8F3F0F7F0F3F4F0
          F5EFF2F6F2F4F4F6F6EAFFF6E0EBCCABC8A98A78675A9D938C8E827CE8DCD6CC
          C5BCA09990FDF2EAE5DBD4E6E3DEC8C7C3A5A0A1969193C3C0C2EAE9EBF9F4F6
          F3EEF0F7F2F3F7F3F2F7F4EFF7F4EFF5F3F2F5F3F3F7F2F4F8F2F3F9F1F2FBF6
          F5F4F4F4EEF1EFF5F5EFFFFCEDFFF3D8DDC7AB988774AF9B89D4B699D3B69B90
          827088837A918F8EB6B3AFEFE3D1EFDFC8A594819A8772E2CDAED8C3A48E7C6B
          867B738A85849F9C9ECAC8C8EFEDEDF4F2F2F5F3F3F3EFEEF9F5F4F7F3F2F7F4
          F0F8F3F2F7F3F2F8F3F2F7F3F2F8F3F2F8F3F2F8F4EFFAF3F0FAF2F3F8F2F3F4
          F3EFF3F4F0F8F4F3FFF6EDF4E6CFEADBC16B5C53B6ACA5A6A095B7AB99DABFA4
          A78E74897F7593928EB9B5B4E0DEDDF8F4F3F7F5F4F7F3F2F6F4F3F7F3F2F5F3
          F2F7F3F2F5F3F2F7F3F2F5F4F0F7F3F2F5F3F2F5F2F4F7F2F3FFF6EDFCF5ECF7
          F2F3F5F2F4F6F1F2FFF4EADBC0A5D0B08DBD9E7FAD957D8C82789D9994C7C2B9
          F6F1E8E5E4DABDBBB3A0A09A9F9E9A868483A2A09FD2D0D0F3F1F1F5F3F3F5F3
          F3F7F2F3F7F2F3F7F2F3F7F2F3F8F2F30000F6F1F2F7F2F3F7F2F3F4F2F1F6F4
          F3F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F4F0F5F3F2F5F4F0F3F4F2F3F4F2F5
          F5F5F3EFEEFFF9F0F0E1CEDCC0A1B79B7C8F7B69A89E948B8683A19D9CC7C1BC
          CFC3B78D79676F5F4E645F5E87888C969494C6C2C1F0ECEBFCF8F7F9F5F4F6F2
          F1F7F2F1F7F2EFF8F3F2F8F3F0F8F3F2F7F4F0F8F3F0F7F4F0F8F3F0F7F3F2F3
          F0F2F7F5F5F6F3EEFFF6E5EBCDB0E0BEA0957F6D8980738C89819A9C96B0B0B0
          CDCFD0E0E2E3F2F4F5F5F3F3F6F4F4F7F2F4F8F1F4F8F1F4F8F2F3FCF3F0FAF3
          F0F5F2F4F5F1F6FAF5F4F4EFECF9F4F1FFF9F2EDDDCCDDC7AEC2AA8C8C7761A9
          A39C868484999691B9B4ABD0CABD8880736B655A5C5951908E8D908F91BABBBF
          E9EBECF7F5F5F6F3EEFBF5EAFBF5EAFAF3F0F7F3F2F7F3F2F7F4F0F7F4F0F7F4
          F0F5F3F3F5F2F4F0EFF3F9F7F7FBF5EED6CDC3A79E90665D53B1ACA9928B82C9
          B99CE0CBABA8968570635B908C8B99938ED5C1AFB6A2915C5454A09FA3878787
          B1B2B0DFDADBF6F1F2FBF6F5F4EFEEF7F2F3F5F3F3F5F3F3F5F3F2F5F3F2F5F4
          F0F7F4F0F7F3F2F8F2F3F9F4F6EFF1F2F6F7F5F9F7ECFFF2DCE3C6A7CDAF9271
          6154958C88968D8AA79E9BC0BAB5D9D1CAD4C8BE8D8177544D4477746C9E9996
          938E8FB4B4B4E5E6E4FBF8F3F9F5F0F8F2F3F8F2F3F8F3F0F8F3F0F7F3F2F7F2
          F3F7F2F4F8F2F3F6F0F1F7F3F2F2F4F4EEF1EFF6F8F2FCF7E8FFEED3DFCAAAA6
          8E72B69A7CDBB995C7AD8F766C62858585949599BEBCBBFAF2E5F2E4CEC8B299
          9A8062DFC3A0DABF9D8D7B6484786C948F8C939294A8A7A9D0CFD1E3E3E3F3F3
          F3F2F0F0F5F3F3F5F3F3F5F3F2F7F2F3F5F3F3F7F2F3F5F3F3F7F2F3F5F3F3F5
          F3F3F5F2F4F5F1F6F3F2F4F3F4F2F3F4F2F5F1F6F9F4F3FDF6E7F4EBD7A19282
          857565D2C1ACC5B09AC3AD94917D6B9187809F9B9ACEC8C9F1ECEDF9F3F4F8F3
          F4F8F2F3F5F0F1F8F2F3F7F2F3F8F2F3F7F2F3F8F2F3F7F3F2F8F2F3F7F3F2F4
          F2F1F9F4F1FFF5EDFEF3EBF6F1F2F3F2F6F0F2F3F5EFE8E0CDB8D1B99D8F7B62
          ADA18F93928E898D8EA9A7A7D2CCC7A2968A8075675953488E8B83828381A6A8
          A8C8CACBF3F2F4F7F2F3F8F2F3FAF2F2FAF2F2F8F3F2F7F3F2F5F3F30000F4F2
          F2F5F3F3F7F2F3F4F2F1F6F4F3F5F3F2F5F3F2F3F4F2F3F4F2F3F4F0F3F4F0F3
          F4F0F3F4F0F3F4F0F3F4F0F4F2F1FCF7F4FEF5ECF4E4D3F4DCC0BDA48A726353
          C1B8AF9D999498928BA29789AB9A85CDB79BA99780706C678E9091919191BFBD
          BCE7E5E5F4F2F1F4F2F2F4F2F1F8F4F3F8F5F1F7F4F0F7F4F0F8F3F0F8F3F0F8
          F3F0F8F4EFF8F4EFF7F4F0F9F6F8F3F1F1FFFEF6FFFCE8E7C8A7E1BE9C998169
          8A7C6A9A9487908E86918F8EAFAFAFD6D8D9F0F2F3F3F1F1F5F3F3F7F2F3F7F2
          F3F8F1F4F8F2F3FCF3F0FAF3F0F5F2F4F5F2F4F5F0EFFBF6F3F7F2F1FEF6EFF7
          E8D8F1DEC9BCA78C72614CB8B4AF999A989A978FA0988BA79B89C2B4A1AA9E8C
          6C635694908B8F8F8FB7B8BCE3E6EAF3F3F3F6F3EFFCF6EBFFF6ECFCF3EFF8F3
          F2F5F3F2F5F4F0F7F4EFF7F4F0F7F3F2F5F2F4F3F2F6F4F2F2FEF7EEE1D7C6C3
          B59F7C6D5AC8BEB49A8F81C3AF90DEC8A5B09B857869599D948A988D7FD7BFA7
          CFB7A37168648D8C8E868888ABACAAE2DDDEFAF4F5F6F1F0F8F5F1F7F2F3F7F2
          F3F5F3F3F5F3F3F3F4F2F5F3F2F7F4F0F8F3F0FBF3F3FAF4F5F4F2F2F4F1ECFF
          FFF5FAECD6DFC2A3CAAD8E786956948B7E9E958B9E958CA8A198AFA699B0A090
          D4C1B2998C7E7D746A968F8C928E8DBFBFBFE9EAE8F6F4ECF8F5EDF7F3F2F7F2
          F3F8F3F2F8F3F0F8F3F2F7F2F3F7F2F3F8F2F3FCF7F6F5F0EFF7F5F4F7F6F2F3
          F0E8FFFFF2FFEFD2DCC3A1C0A27FBC9A76D4B189BAA082726A63898C909D9DA3
          D3D1D1FAF4E9F0E2CFEAD4B8B49673D4B38CCBAD8A97846982756595918C8C8C
          8C939092ABABABD0CECEF1EFEFF6F4F4F5F3F3F5F3F3F5F3F3F5F3F3F5F3F3F5
          F3F3F5F3F3F5F2F4F5F2F4F4F1F3F5F2F4F3F2F6F3F2F4F5F3F2F7F3F2F7F2F4
          F7F2F3F9F7EDECE5D4D3C4B1877158C3A98BCAB296B39E88837668958C88ADA8
          A9E1DBDCF8F3F4F8F2F3F6F1F2F6F0F1F6F1F2F8F2F3F7F2F3F8F2F3F7F2F3F8
          F2F3F7F2F3F8F2F3F7F2F3F5F3F2F9F4F1FFF3EDFEF2EEF6F1F2F1F2F6F1F3F4
          F6F3EEE4D6C3D2C1A78678619A907EB3B1A9908E8D9E9794A2948EBDAB9ABCAB
          9874695B8B867D888685A2A4A5CCD0D1F0F2F3F7F2F3F8F3F2FCF3F0FCF3F0FA
          F3F0F7F4F0F3F4F20000F4F2F2F5F3F3F7F2F3F4F2F1F6F4F3F5F3F2F5F3F2F5
          F4F0F5F4F0F5F4F0F5F4F0F5F5EFF5F5EFF5F5EFF5F5EFF5F2EEF8F2EDFEF7EE
          FEF3E5FCE7D1EBD7BE8E7F6C675A4A887E6D90847294856BC3AF90D6BD9BA290
          73787469B4B7B5B1B3B3D0D2D2EEEDEFF5F5F5F5F4F6F4F4F4F4F2F2F3F1F0F5
          F3F2F5F3F2F7F3F2F7F4F0F7F4F0F7F4F0F7F4F0F8F3F0F7F2F1FFFDFAB0A89B
          A89881C6A682D7B48CB4987A816F586F6351988F85B9B3AEBDB8B7D5D0D1F1EF
          EEFCF8F3F9F5F0F7F3F2F5F3F2F7F2F3F7F3F2FAF4EFF8F4EFF5F3F2F5F3F2F9
          F6F2F6F3EEF5F2EEFAF7EFFFF8EAEFE1CEECDBC69B8D77655B4A867B6D8C7D6A
          907B65C5AD95CFB79FAB947E7F6F5EC2B9AFB6B3AFCDCFCFEBEEF2F1F4F8F3F2
          F4F7F2F1F8F1EEFCF3F0F8F3F0F3F3F3F3F4F2F7F4F0F8F4EFFAF3F0F8F3F2F8
          F3F4FAF5F2FFF6E6EBDAC0D5BC9A947B5988745B887358B99F77D9BC90BB9F80
          8871578070598E7A61C6AA88C6AB906E645AACAAA9A9AAA8CACBC9E1DFDFF6F1
          F2FAF6F5F5F2EEF8F3F0F8F3F0F7F3F2F5F3F2F3F4F2F5F3F2F8F3F0FAF4EFFB
          F2EEF9F0ECFBF5F0F2EDE49A9281AF9F88CBAF90CCB08D95825F7A6D4D786B51
          81745E786A577C6B56A28A72C8AE96A08D788B7B6EC0B5B1B1ACADCACCCDEBED
          EEF9F6F2F9F6F1F3F4F2F3F4F2F7F4F0F8F3F0F8F3F0F8F3F2F8F3F2F8F3F0F6
          F0EBFEF8F3F6EFECFFF6F2FBF0E89E8E7DB29C80D0B491D0AC86CDA981D5B58A
          9D8567958F8AADADB3BBBABEDFDBDAFFFBF2FBEDDBF4DCBED2B38CD0AB85D1B1
          8DA89377786D59655F58908E8DB0ABACB5B3B2D9D5D4F4F0EFF7F3F2F7F3F2F7
          F3F2F7F3F2F7F3F2F7F3F2F7F2F3F7F2F3F7F2F3F7F2F3F9F1F1F8F3F2F7F2F3
          F5F3F2FAF4EFFAF4EFFAF2F2F9F2EFF9F6EEF1EADBFBE7CEC2A586C6A480CCB0
          8E917E699B9187ACA7A4C6C4C4EDE8E9F6F4F4F6F2F1F6F4F3F6F2F1F7F5F4F7
          F3F2F5F3F2F7F3F2F5F3F2F7F2F3F5F3F3F7F2F3F5F3F3F4F3F5F4F2F2F7F2F1
          F8F3F2F5F2F4F2F1F3F4F4F4FBF9EFECE3CFFFF8DCB8AD8F6E61478479659687
          778D7869AC9482CFB59DCBB59C776756B6ACA2B2ADACBCBBBDDCDDE1F1F0F4F5
          F3F3F8F3F2FAF4EFFAF4EFF8F4EFF7F4F0F5F3F20000F6F2F1F7F3F2F7F2F3F4
          F2F1F6F4F3F5F3F2F7F3F2F7F4F0F7F4F0F7F4F0F7F4F0F7F4F0F7F4EFF7F4F0
          F8F4EFFDF7F2F9F3EEF8F4EFFFF8EFFAEDDDFCEDDAE4D6C3BCAE9BAA9C89AFA1
          8ABFAE93EDD8BCF7E2C2B4A68A959186E8E9E5D7D9D9E5E7E8EFF1F2F0F2F3F0
          F2F3F3F3F3F4F4F4F4F4F4F5F3F2F5F3F2F5F3F2F5F3F2F7F4F0F7F4F0F7F4F0
          F8F3F0FBF3F3FFF7F3D8CFC1D7C9B2E1C5A3E8C8A4DDC5A7C9B9A2897F6EB1A8
          9FE0D7D4E7DFDFF3EFEEF5F2EEF6F3EBF8F5EDF7F4F0F5F3F2F5F3F2F7F3F2F8
          F4EFF8F4EFF5F3F2F5F3F2F8F5F1F6F3EFF4F2F1FAF7F2FEF5EBFFF4E6F6E9D9
          EBDDCBC2B3A0A79681B7A08AC4AC94EBCEB9FFE6D1BFA7958D7D6DEDE4DADDDA
          D5E2E5E3EDF1F2F0F1F5F2F1F5F7F1F6F9F3F4FCF3F0F8F3F0F3F3F3F1F3F4F5
          F3F2F8F3F0FAF4EFFAF3F0F8F4F3F6F0EBFFFAECEEDDC3FFE4C2DCC19FCAB59A
          C8B397DBC19CE4CAA2E4C8A9CEB79DC6B299C9B69BE1C6A4D8C0A47C7066E4E1
          DDD7D5D4E0E1DFEFEEF0F4F4F4F7F3F2F9F4F1FAF3F0F8F3F0F7F3F2F5F3F3F3
          F3F3F3F4F2F7F4F0FAF4EFFFF6F2FBF3ECFFF9F2F9F3E8CFC6B8D1C3ADDFC8AE
          DDC4A4D3C19CC4B692C3B89ABAAF94C1B59DC1B19AD2B99FE0C7ADAF9A85A696
          89E6DAD8DDD8DAE1E2E6EDEEF2F5F1F0F6F3EFF3F4F2F1F4F2F5F3F2F7F3F2F8
          F3F2F8F3F2F8F3F0F8F3F0F9F5F0FDF7F2FBF2EFFFF4F2FAEDE5D9C9B9D8C2A9
          DCC3A3E6C7A6E5C7A4E0C6A2918065CCC5C2D7D7DDE4E3E7F3EEEFF8F2EDFFF7
          E9F8E5CAF3DAB8E1C09FE6C9AAD5C4A9C0B6A47B736CB0ABA8E0DBD8E2DDDAF0
          EBE8F6F3EFF9F4F1F5F2EEF7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F3F2F7F2F3
          F8F3F2FCF3F0FCF3F0F7F3F2F8F4F3FBF5F0FDF4F0FAF4EFF7F2EFF8F5F1FFF9
          EFF9E7D0F1D8B8DEC09DD4BA9C8D7E6EDBD5CED9D6D2E7E5E4F3F1F1F3F1F0F5
          F3F2F8F6F5F5F3F2F6F5F1F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F3
          F5F3F3F3F2F4F2F1F3F4F1F3F6F3F5F4F3F7F2F1F3F4F2F1F9F7EDFFFBE8ECE5
          CAFCF1D5CCC0A4AF9F88AE9984BDA490DDC2ADFAE1C7DCC6AD817160E3D7CDDE
          D6D6E4DFE1E7E6EAF6F5F9F5F3F3F7F4F0F8F4EFF8F5EDF8F4EFF7F4F0F5F3F2
          0000F5F1F0F6F2F1F5F3F3F6F2F1F8F4F3F7F3F2F8F3F2F8F3F2F8F3F2FAF2F2
          FAF2F2FCF2F2FCF3F0FCF2F2FCF3F0F6EFECFCF7F6F2F1F3F5F4F6FBF7F2F6ED
          E3F0E3D3E1D3C0DECFBCDDCEBBEDDECBFFF8E5F7E8D5E8DECDD2CFC7F8F9F7F5
          F5F5F7F7F7F4F4F4F1F1F1F2F2F2F5F3F2F5F3F2F7F5F4F5F3F2F5F3F2F7F3F2
          F7F3F2F7F3F2F7F3F2F7F3F2F8F3F2FDF5F5FEF5F1F0EADFEFE5D3F3DFC6F5E0
          C5F1E2CFEAE1D3D8D1C8E7E2DFFFF7FAF8F1F4F6F4F4F2F3F1F4F1ECF9F6F1F5
          F3F2F5F3F3F7F2F3F7F3F2F8F3F2F8F3F2F5F3F2F5F3F3F5F1F0F7F3F2F5F3F3
          F6F2F1F9F3EEFEF4EDFFF4ECEEE3D5E5D6C3E4D4BDE3CFBDEEDAC9FFF1E6F4DF
          D7EDDBD4D9CBC5FFFEF7F8F5F0F6F5F1F3F4F2F1F0F2F5F1F6F7F0F7F9F2F5FC
          F3EFFAF4EFF5F2F4F1F1F7F5F2F4F7F2F3F8F3F0F8F3F0F3F1F0FAF6F5FBF3EC
          FBEEE0F9E6D1EFDDC6F2E4D1F3E6D0F4E6CAEFDEC3F8E3CEF2E0CFF5E6D6EBDD
          CBF3E2C8F8E6CFD0C5BDFBF6F5FAF6F5F4F5F3F0F4F5F2F4F4FAF6F5F8F1EEFA
          F3F0F8F3F2F5F3F3F3F2F4F1F2F6F1F3F4F5F3F3F7F3F2F8F3F0FAF4EFF6F2ED
          F7F4ECF0EADFEAE1D3F1E0CDF6E6CFF0E5C9EFE8CDECE6CFE5DFCCEEE7D4EDE1
          CFF8E7D2F5E2CDE8D8C8E6DAD0FFF9F9F8F4F9F4F2F8F4F3F7F7F2F3F9F4F3F5
          F3F2F3F3F3F7F2F3F8F2F3F8F2F3F8F2F3F7F3F2F5F3F2F6F4F3F4F2F1F6F1F2
          F9F4F3FAF1EDF3E9DFF1E3D0F2E4CEF3E2CFEFDECBF0E2CBD4CAB8FFFEFDF5F1
          F6F1F0F4F9F6F8FCF7F6FCF4EDF5ECDEF2E4D1FBE4CEF0DBC5ECE2D0E7E1D4DB
          D3CCE6E0DBFDF7F2FBF5F0F9F3EEF6F2EDFCF6F1F9F5F0F8F3F0F8F3F0F8F3F0
          F8F3F0F8F3F0F8F3F0F8F3F2FAF3F0FDF4F0FCF3F0F8F2F3F7F2F4F9F4F3F9F4
          F1F7F4F0F6F3EFF3F1F1FBF4F1F5E8DAF1E0CBEFDEC4DBCCB9DDD5CEFAF6F5F6
          F2F1F9F6F2F7F3F2F6F3EFF8F5F1F7F4F0F7F4F0F6F3EEF7F4F0F7F4F0F7F4F0
          F7F4F0F7F4F0F7F4F0F7F3F2F7F3F2F5F3F2F5F3F3F3F2F4F2F4F5F4F3F7F5F2
          F4F6F2F1F6F3EBF9F8EAF8F7E3F0ECD4E8DDC7E5D4C1E5D1C0E1CDBCFFF1E0FF
          EAD5F6E5D0D7C7BAFBF0E8FFF8F8F8F3F5F6F2F7F1EEF0F5F3F3F7F4F0F7F4EF
          F7F4EFF7F4F0F7F4F0F7F3F20000F5F0EFF7F2F1F5F3F3F6F2F1F8F4F3F8F3F2
          F8F3F2FAF2F2FAF2F2FAF2F2FCF2F2FCF2F2FCF2F2FEF1F3FCF2F2FBF3F3F8F3
          F4F0F1F5F0F0F6F6F4F4FCF5F2FDF2EAFFFCF0FFFAEEFFFBEFFFF5E9FFF8ECFF
          F8ECFFF6EDFBF6F3F7F5F5F5F3F2F5F3F2F3F1F0F3F1F0F8F4F3F8F5F1F6F2F1
          F6F2F1F7F3F2F7F3F2F7F3F2F7F3F2F8F3F2F7F3F2F7F3F2F8F3F2FAF2F2F8F1
          EEFAF7EFFEF8EDFFF9EBFFFAE9FFF8EEFCF6EFFCF9F5F8F3F4FBF4F9F5EFF4F4
          F3F5F4F7F5F1F0ECF6F5F1F7F3F2F7F2F3F7F2F3F8F3F2F8F3F2F8F3F2F7F3F2
          F7F3F2F7F2F3FAF5F6F4EFF0F6F1F2F9F4F3FBF4F1FCF3EFFFF7EFFFF8E8FFFB
          E9FFFAECFFF8EEFFF5EFFFF4F0FFF6F3FEF7F4F7F2EFF6F1EEF8F5F1F6F3EFF6
          F2F1F9F4F5F7F2F4F8F2F3FCF4EDFAF4EFF5F2F4F3F1F7F3F2F6F5F2F4F7F4F0
          F7F4F0F3F1F0F9F7F6F7F2EFFCF3EFFFF9EFFFF9EDFDF7ECFEF8EBFFF9E8FFF9
          E8FFF8EFFFF8F2FCF4EDFFFCF1FFF9E7FFFAE9FFF6F2FBF3F3F5F0EFF6F4F3EF
          F4F3EEF3F2F3EEEFFCF4F4FAF3F0FAF3F0F7F2F3F3F2F6F1F2F6F1F2F6F5F3F3
          F7F3F2F8F3F0F9F4F1F8F5F1F9F6F1F9F6EEFEF7EEFFFAECFFF8E7FFF9E8FDFA
          EBFEFBEDFBF9EEFCF8EDFFFAEDFFF4E6FFF8EAFFF7EDFFFAF3F8F2F3F3F0F2F1
          F0F4F5F2F4F7F2F1F6F1EEF7F3F2F7F3F2F8F2F3FAF2F3FAF1F4F8F2F3F7F3F2
          F5F3F2F3F3F3F4F4F4F6F3F5F7F2F3F6F1EEFDF7F0FFF9EAFFF9EAFEF7EEFFF9
          F0FFF9ECFFFBF0F8F0F0F9F4F6F5F2F4F4F2F2F5EFF0FBF4F1F6F2EDFEF8EDFF
          F9EBFFFBEDFEF8EDFBF9EFFDF7F0FDF7F0FEF6EFF9F3EEFCF6F1F9F5F0F7F1EC
          F9F4F1F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0FAF4EFFAF3
          F0F7F0F3F7F2F4F7F2F4F5F3F2F5F4F0F4F3EFF5F2F4F5F0F1FFF7F0FFF9EFFE
          F5E7FFFCF2F8F3F2F8F3F4F9F5F4F7F4F0F3EFEEF8F5F1F9F4F1F5F0EDF9F4F1
          F9F5F0F8F3F0F8F3F0F8F3F0F7F4F0F8F3F0F7F4F0F7F3F2F7F4F0F9F4F1F8F5
          F1F6F4F4F2F2F2F3F2F4F7F5F5F8F4F3F4F1ECF6F4ECFAF8EDFBF8EAFFFAEBFF
          FBEDFFF9EDFFF8EEFFF7EDFFF7E9FFF6E8FFFCF2FEF6EFF6F1F0F5F0F1F8F5F7
          F6F3F5F7F2F3F7F3F2F8F3F0F8F3F0F7F4F0F7F3F2F7F2F30000F6F1F0F8F3F2
          F9F4F3F7F3F2F8F4F3F6F2F1F5F3F2F3F1F0F6F4F3F3F4F2F2F3F1EFF2F0F0F3
          F1F0F3F1F0F3F1F0F2F2F4F5F3F7F5EDF4F2E8F7F5EDF5F3EBF7F4EFF5F6F4EF
          F2F6ECF1F4F4F4F4F7F3F2F6F2F1F7F5F5F8F6F6F4F2F2F6F4F4F3F1F1F4EFF0
          F3F1F1F4EFF0F3F1F1F5F2F4F6F3F5F3F0F2F7F4F6F7F4F6F2F1F3F3F0F2F2F1
          F3F5F2F4F5F3F3F6F2F1F7F2EFF8F5F1F3F1F1ECEFF4F0F1F5F5F2EDFBF6EDFE
          F4EDFEF4EDFEF2F0FAF3F0F5F3F2F3F4F2F7F2F3FAF5F4F6F2F1F8F5F1F9F6F2
          F7F4F0F2F2F2F1F1F1F2F0EFF6F4F3EFEEF0F1F0F2F7F5F4F5F3F2F1F0F2F2F1
          F3F4F4F4F5F3F3F5F2F4F4F2F2F6F4F4F6F4F3F6F5F1F2F1EDF4F1EDF6F3EFF7
          F3F2F6F1F2F4EFF1F8F3F5F5F2F4F1F0F2F4F4F4F3F3F3F8F3F4F8F4F3F6F4F3
          F4F5F3F2F3F1F5F3F2FAF5F2FBF2EFFEF3EFF9F1EAF9F3ECF7F4ECF5F2EEF7F4
          F0F6F2F1F9F4F3F9F1F1F6F1F0F6F4F4F3F3F3F4F1F3F5F3F3F3F1F1F4F2F1F8
          F4F3F8F3F2FBEFEFFDF3F3F8F4F3F2F0F0F5F3F3F6F4F4F8F5F1F5F2EEF4F2F2
          F2F2F2F9F4F5F4F0EFFDF5F5F7F2EFF7F6F2F0F1EFF4F3F5F1EDF2FAF4F9F6F1
          F3F2F0F0F5F3F2FDF5F5FBF1F1FAF0F0FCF3F0FFF3F1FAF3F0F5F2EEF1F2F0F6
          F4F4F9F7F7F8F7F9F0F0F0F5F3F3F6F1F2F8F3F4F8F3F2FAF5F2F5F2EEF3F2F4
          EFF1F2F4F2F2F9F5F4FAF4EFFAF4EFF9F5F4F3F2F4F4F3F7F0EFF3F6F1F3FBF5
          F6FAF4F5F7F2F3F8F6F6F4EFF0F9F1F1F3EDEEFAF5F7F7F5F4F7F4ECF5F1ECF6
          F2F7F4F0F5F8F3F2F7F2EFF6F5F1F7F6F2F4F0EFF5F1F0F6F4F3F5F3F3F7F5F5
          F4F3F5F1F0F2F5F4F8F5F4F8EFEEF2F1F0F4F7F6F8F1EEF0F4F1F3F6F1F2F9F5
          F4F5F1F0F5F1F0F3F0F2F7F5F5F4F0EFF7F4F0F7F3EEF6F1EEFFF7F8F3EDEEF7
          F4F0FAF7F2F9F5F4F7F2F1F9F1F1FCF3F0FCF4EDF9F3EEF2F0F0F5F4F6EFEEF0
          F2F1F3F7F5F5F3F1F1F6F4F3F4F2F1F7F5F4F4F2F1F3F1F1F3F1F1F3F0F2F3F2
          F4F2F1F3EDECEEF5F3F3F3F1F0FAF8F7F4F2F1F4F0EFFAF6F5F6F0F1F8F2F3F8
          EFF2FAF1F4FBF3F4F5EDEEF9F4F3F7F3F2F7F5F4F3F3F3F5F4F6F2F1F3F4F4F4
          F3F1F1F7F3F2F5F2EEF8F3F0F5F0EDF7F2EFF8F3F0FDF8F7FAF4F5F5F0F1F8F3
          F5F8F3F50000F3F0F2F5F3F3F7F2F3F6F2F1F8F3F2FBF2EFFFF4F0F9EDE7F7EA
          E2F3E4DBFAEADEFFF7EAF8E7DAFCE9DAFAE7D8F7E6D9FDECDFFBE8DBFFEFE3FE
          F2ECFDF1EBF7E7DBFBEBDEFFFAF0F1E5D9FDEDDDF9E7D6FAEBDBFBEBDAFFEED5
          FEEBD6FDF3E9FBF5EEFCF4EDFCF4EDFDF6EDF7EEE5F3E9DFFAF0E6FFFBEFF6EB
          DDFBEEDEF5E6D6FFF6E4FDEFDDF4E6D3FCEEDBF9ECD6FAEAD3FFECD6FAE8D7FC
          F0ECFDF4F1F0E7DAF5EDE0FAF4EFF8F4F3F5F0F1F4F2F1F7F7F1F5EFE4FBE6D7
          FFE9D9FCE8D7FCECDBFCECDBF9EADAFFF6ECFFF7EDF4E7D7F8EBDBFAF0E6FAF0
          E6FAEADAFBEBDAFAEDDFFFF7E9F5E6D6FBECD9FDEBD4FEECD5FAEBD8FBECDCFA
          ECE0FFFCF2F4EBE2ECE3DAF4EBE1FFFAECF6E9D9FBEDDAFAE9D4FEECD5FFECD6
          FFEDD7F6E7D4FFF9ECF5F3F3EDF0F4F5F4F6F8F3F0FBF1E7F2E6DAF1E8DFFFF7
          EEF9EEE6FAEADEFFEBD9FFE8D2FFEDD7FFEBD9F9E9DCF9EBDFFFF8E8FDECD9F9
          E8D3FFF9E7F7F4E6EBEAE0EDE7E0FDF4F1FAF0F0F9F4F3F2F6F1F1F4EBFDF6ED
          F3E9DFF3EAE0F6EDE3FFF9ECF7ECDEF9E9D8FFECDAFEE9D3FEECD5FBF0DCF0E6
          D4FFFDF0F9E7DCFEE6DAFFEADBFDEAD5FAEAD3FDEEDBF3E7D5FFF7EAFAF1E7F5
          E6DDF8E7DEFFFCEEFEEEE1F9E7DCF3E3DCFEFAF9F2F4F5EFEEF0F4F2F1FCF9F1
          F7EFE2FCECDCF8E8D8FFF9F0F1ECE3F3EADDF9EADAFFECD7FFEBD5FFE9D9F7E4
          D5FFF8E8FBEEDEFAEBD8FBEAD5FEEAD8FFEBDAFFEBDCF8E8DCFDF3ECFCF3EAF6
          E7D4FFEFD8FCE6D4FCEBD8F9EDDBF3EBDAF4EAE0FFFDF3FBECDCF9EADAFEF4EA
          FBF2E9F8EDE5F1E7DDF2E7DFFFF9F0FCF0EAFFF6EFFFF3EDFFF3EDF8ECE6F1E4
          DCFEEFE6FFFBEFF4E3D6FCECDCF8E6D5FCEBD8FEEED7FCEED8F7E7DAFFFAF0F5
          EDE0F2ECE1F9F0EDFDF1EDFEF1E1F5E8D8F3E4E1FFF6F6F6F3EFF6F4F3F5F0F2
          FAF2F3FFF8F1F3E7DBF6EADEFEF1E3FFF5E7F6E9DBFBEEE0F5E8D8F9E9DCF8EB
          DDFBEEE0FFF6E8FFF7EBF3E7DBF0E4DAFEF4EAFFF6E9F1E6D8FEECDBFFEEDCFE
          EAD8FDEBDAF7E8D8F9EFDEFFFAE9F3EADCECE6D9F9F3E8FFF6ECF9EBDFFFEEE2
          FFE5D5FFE6D5FFEADAF9E7DCEEE3DBFFF8F5F8F4F3F5F1F0FAF5F4F9F3EEFAF2
          EBEDE4DBF4EBE2FBF5EEF4EFECF4F2F10000F4F2F2F5F3F3F7F2F3F6F2F1F9F4
          F3FDF4F1FFF6F0E4D4C8B4A192BAA695D7C0B0FFF3E3B79F8DC3A893C4A890C5
          A991C3A691BDA28EF6DDCDFFFAF1E1D2C9B49D8DCDB7A5FFFAEBB7A594BFA78F
          C3A88DC5AD91C2A88ACBAC8BBEA388E2D2C2FFF4ECFFF6EDFFF6EDFFFBEED3C8
          BAB0A08FD0BEADFFFEEEC2B09FB8A38DB7A38AF6E4CDDBCAB0BCA78BC0AB8CC3
          AC8CC2AB8BC5A98AC2AA92FFF4EBFFFAF2AD9E8BB0A08FFAF0E9F8F2F3F5F0F1
          FBF7F6FAF5ECD8CBBBC0A68EC5A78CC4A98EC1AB8FBDA78BBAA68DEFE1CFFFFF
          EFD7C7B0B4A28BE0D2C0E6D6C5B9A189BCA58BE2D4BEFFF5E2B7A38AC0A88CC6
          AB89C8AD8BC4AA8CBDA78ED3C3B2FFFBEEDECFBFAEA08ECDC1AFFFFFF0CEB9A3
          B9A387C7AE8EC6AB89C4A886C7AB8DBAA68DF8EEDDF9F7F6EDEEF2F6F3F5FEF5
          F2EFDED1B3A190B6A99BFFFFF4F4E4D7B7A392C4A98FCCAD8EC8A688C7AB8DBA
          A58FDCCBB6FFEAD4B7A188B7A38AFFFFE8F1E8D4A8A190B4A89CFFF3EDFFF5F3
          F8F3F2F1F5F0F6F9F0FEF5E8B7A898AFA18FF8EAD7FFFBE9B5A693C2A890C7AB
          8DC4A788C7AB8CBDA889C8B397FFFEE9CBB3A1C7A893C7A88FC7AB8CC4AB8BBE
          A688BFA990FFF8E8E7D9CDB4A08FC1AD9BFFFFEEECDAC9B9A18FC1AE9FFFFCF4
          EEF1EFF0F2F2F6F4F3FAF8EEE1D7C6B29D87D0B9A3FFFFF2DACFC1B8A794BFA9
          90C4A689CBAB8EC8AA8FC2A68EF6E1CCD1BCA6C2AA8EC9AD8FC3A58AC7A88FC7
          A891B9A18FFFF0E7FCEFE1BBA387C8AC8AC4A78CC6AB90BFAB8CB4A68ACEC1B1
          FFFDEFDAC5B0B6A18CD8C8B8FFFEF1F0E1D1B0A191B6A89CFFFAF0FFF8F1FBF3
          ECFBF1EAFFFCF2D3C2B5B19E8FD6C5B8FFFBECB9A48FC2AA92C1A78FC4AB91C0
          A88ABEA88CC7B19FFFFFF2CEC0ADA89E8CD7CCC4FFFBF1FFEFDAB29F8AB6A297
          FFF7F1F8F5F0F3F4F0F7F2F3FAF3F0FFFDF0C5B7A5B3A28FECD8C6FBE9D8B4A0
          8EBEA791C1A991C0A892B8A38ED7C5B4FFFCECFDE9D8B5A190B8A898FFFBE9FE
          F0DEB5A48FC0A68EC8AA91C4A68DC4AB91B7A38AD3C3ACFFFFEAB8AD97ACA18D
          EFE2D2FFFDEFBCAA99C1A48FCAA890CAA98FC6A88FC0A793BAA99CFCF4EDF8F4
          F3F7F3F2F4EFEEFFF8F1D5C9BFAC9D8DD2C5B7FFF9F0FDF8F5F5F3F20000F6F2
          F1F7F3F2F8F4F3F8F3F4F7F3F2F7F2EFFFF7EFE9D8C5C3AC92C7AF93DEC6AAFF
          F7E1C0A890D1B293D5B290D3B390D2B394C8AA8FF8DFCBFFFEF0E5D5C8C4AA92
          DCBEA5FFFDEBC0AB96CEB293D4B58ED1B488D4B78BD4B38CC9AC8DEAD6C5FFF8
          F0FAF1EDFBF2EEFFFBEEDACCBABFA78FE2C8B0FFFFF1CEB5A5C8AE90C4AD8DF6
          E8CCDFCEB3CAAE8CD4B38CD7B38DD4B38CD4B28EC9AE93FFF8EAFFF8EAC1A98D
          C3AA90FFEEE7FFF4F6F6EFF2F9F4F3FFF8EEDCCEB8CEB290D5B18BCFB188D1B4
          8DD0B590C2AA8CF8E7D4FFFDEBDECAB1BFAC91E4D2C1F0DAC8CCAD8EC9AC8DE2
          D7C3FFF8E4C6AB90D3B390D7B38FD9B58FD4B18FC9AC91DBCABDFFFBEFE8D0BA
          BEA68ED6C8B2FFFFE9DCBFA4D2AF8DD5B28AD9B68EDAB492D0AE90C4AB91FFF1
          DEF7F3EEF7F7F7F1EBECFFF6F3FBE1D1C5A893C3B29FFFFFF0FCECDBBBA893CA
          B191D5B38FDCB190D9B292C6B192E1D0B5FFEED8BDA893B6A892FFFFEBFAEAD3
          B8A792BFAF9EFFF7EBFFF5F2FAF1EEF5F5EFF9F8EEFFF5E5C3B29DBEAA91FBE9
          D2FFFDEBBDAC99CEB093D8B490D4B08CD7B38DD3B38AD3B893FFFFEAD0B9A3CD
          AF94D4B190D4B28ED3B28BCEAF88C8AC8EFFFCF1EDD8D0C2AB91CDB89CFFFFEF
          ECDDCDC2A890CFB8A2FFFDEFEFF3EEF4F6F6F7F5F5FEF6EFEADAC9C6AB90D7BC
          A1FFFDEDE6D5C8C3A991D3B495D5AF8FD6B090D6AF8FCCAA8DFEE5D1DEC6B0D1
          AF91D8B490D5B08ED6B090D7B191C9AA91FFF5E8FFF0E1C6A788D7B28CD8B593
          CFAF8CD1B28BCAB191D4C6B4FFFEF0DDC8B2C2AA92E0C9B9FFFFEEFAE5CFBBA6
          90C2AFA0FFFAF0FBF6F3F0F1EFF7F6F2FFF9EFDFC6B2C7AB93DCC9BAFFFFF0C5
          AC8CD0B28FD2AE90D5B193D3B291CEB192CAB29CFFFFEEDDC5A9BCA88FDDD4C7
          FFFAEDFFF3D9C1AA90C3A594FFFBEFF8F5EDF0F4EFF6F4F3F8F5EDFFFEEBCABE
          A6C3AD94F1D9C1FFEDD8C2AA94D1B08FD4B08CD3B08ECBAF91DAC9B6FFFBEBFF
          EBDABEA591C2AE9CFFFBE6FFF6DCBDA88CD0B192D7B493D5B291CDAE8DCCB091
          DCC7A8FFFFE8C1B59DBDA893F9E3D1FFFCEFC6B2A0CDAF92D3B18DD5B18DD4B2
          8ED0AF8EC9B199FFF6ECF7F4F0F7F3F2F8F1EEFFFAF2DBCBBBBEA88FDEC9B3FF
          FAF2F7F2F1F5F3F20000F6F3EFF7F3F2F7F3F2F6F4F4F5F3F2F7F2F1FFF8EEEC
          D7C1C7AE8ECBB08EE1C8A8FFF8DEC2AA8ED5B38FD7B489D8B38DD6B490CAAA8D
          F8E0C8FFFEEEE5D7C5C8AC8EDFC0A1FFFCE6C3AC96D2B491D6B489D5B584D7B7
          86D7B38BCAAB8CEAD6C5FFFAF2F7EFEFFAF5F2FFFDF2DED0BDC2AC90E2C7ADFF
          FDEFD0B7A7CBAF90C8AE8AF8E7CCE2D0B3D1AF8BDBB389DCB48AD9B389D8B38D
          C9AF91FFF9E8FFF9E8C5AA88C8AB8CFFF0E8FEF3F5F7F0F3F7F2F1FFF8EEE2D2
          BBCDAD8AD5B287D9B78CD7B78CD2B38CC6AD8DF8E8D7FFFFEFDECDB3BEAA91E9
          D7C6F2DAC8CFAC8BCAAD8EE1D7C5FFF6E4C8AD92D4AF8DD8B490D2B08CD4B28E
          C9AD8FDCCBBEFFFFF4ECD2BAC4A98FD6C8B2FFFFEADFC1A4D7B28CD9B488DAB3
          86DCB28DD8B292C2AA8EFFF8E5F8F5EDF5F3F3F8F2F3FFF4F1FDE0D1C7A893C8
          B5A0FFFAE7F3E5D3B9A893C5B090CBB08BD4AE8CD5AF8FC2AA8CE2CFB4FFEDD9
          BFA997B8A897FFFFEEFFEBD5BDA690C2AE9CFFF6E9FDF1EBFDF6F3F2F1EDFAF9
          EFFFF6E6C3B09BC0AB90FFEBD5FFFBEBC1AD9CCDAE8FD6B18BDCB693D6B28AD8
          B387D8BA91FFFFE9D0B9A3CFB091D7B38FD8B48CD8B58AD9B68BCCAD8CFFF4ED
          EDD8D0C2AA8CCDB898FFFDEDECDFD1C5AB93D1B9A1FFFEF1F1F3EDECEEEEF4F2
          F2FFF7F1EBD9C8C3A788DABE9FFFFFF0E9D6C7C8AA91D5B291D2AF8ED6B090D5
          B08EC9A98CF3DAC6D5BDA9CBAC8DD5B18DD5B290D3B390D6B18FCCAE93FFEFE2
          FDEADBD0AE90DAB38CD4AF89DBB78FDAB48ACDAF8CD3C3B2FFFFF4DEC8AFC2A9
          8FE3CDBBFFFDEBFBE4CAC0A98FC8B1A1FFFAF1F7F4F0F1F3F3EEF1EFFFFBF0DE
          C3AEC5A68FD5C5B5FFF5E4BDA686CDB08BD5B193D4B092D5B291D1B495CFB7A1
          FFFFEAE7CAABC5AD91D4C9BBFFFFF3FEEFD5C5AF93C9AA95FFFBEDFBF5EEF0F4
          EFF3F2EEF8F3EAFFFEE9CDC2A7C4AE92F8DDC3FFEBD6BEA88FD6B391D8B48CD4
          B08AC7AB8CD1C2AFFFF3E5FFE9D7C2AA94C3B29DFFFAE3FFF5D9C3AE8FD2B092
          D5AF8DD9B391DAB593D5B290E1C8A8FFFFEAC3B59EC0A892FEE3CFFFFBECC7B1
          9FD0B190D7B48CD7B489D8B48CD6B18BD0B496FFF8EAF5F5EFF9F4F3F9F3EEFF
          FAF2DDCBBAC3A98BE1CAB0FFFAF2F6F1F2F7F3F20000F6F3EFF7F3F2F7F3F2F5
          F3F3F5F3F2F8F3F2FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD5B38F
          D7B489D8B38DD6B490CAAA8DF8E0C8FFFEEEE5D7C5C8AC8EDFC0A1FFFCE6C2AA
          92D3B390D6B388D9B789D7B587D9B28CCFAF92EDDACBF8F0E9EEE9EAEAE8E7EB
          E6DDCEC4B3B1A086D7C2ACFFEDE2C6B1A2C6AC8EC3AA88F9E5CCE5CEB4D4AF8D
          DEB48ADCB48AD7B489D7B38DCAB092FFF8EAFFF9E8C5AA88C7AA8BFFF1E6FDF3
          F3FAF4F5F7F2EFFFFDF3DCCBB6CFAE8DD8B38DD1AF8BCFAF8CC8AB8CBCA58BE8
          D8CBF6EADECEBFACB3A28DDACABAE2CEBDC5A78CC1A68BD3C8BAEBE2D4BFA58D
          C8A88BC8AC8DC7AB8CC9AE8CC0A98FCABDAFFFF1E5D9C0ACBEA690CFC0B0FFFF
          EDDDC2A7D1B18DD8B688D8B484DCB48AD7B492C5AE94FBEEDEF6F3EEF4F6F7F8
          F5F7F9F0EDF3DBCFBBA391B7A997EAE2D1D9CFBEA99E8AB4A68AB7A685BCA585
          BDA587B9A288D7BFA9F7D8C9BDA196BCA798FFF8E7FFE6D2C3AA96C3AF9EFFF8
          ECFEF5F1F5F3F2E7ECEAE9ECE3F3EADCB4A592B4A18CF1DDCBF9E9DDBBA697CB
          A991CEA888D1AE8CD6B790D3B388D4BA92FFFFEACEB9A3CFB08FD8B38DDAB38C
          D9B58DD1AE86C9AD8EFFF7ECEAD7CFBDA58DCAB59AFFEFE3DECDC4BEA291C6AC
          9BF5EAE2EBE8E4ECEAEAF4EFEEFFF6EEECDAC9C5AB8DDAC0A2FFFEEBDECEBDBD
          A68CC7AB8CC4A889C4A889C4A889BEA68ADDCCB9C6B5A2BAA488BEA583C1AA8A
          C0AB8BC2A989C1AB92FFF1E5FDECDFCCAC8FD8B28FD6B08DD8B38DDBB488D4B4
          90D3C2AFFFFFF1DEC7ADBFA98DDDCCB7FFFEE9F9E2C8C3AA90C6AE9CFFFDF1F7
          F1ECEBE9E8DFDEDAE9E2D9CDB7A5B19987BFB3A9E7DED1AE9F85B8A387BEA68E
          C1A58DC2A487C5AA8FC8B7A4FFFAE7DFC4A9C7AE94DECEC2FFFDF0FCEFD5BBA9
          8CC0A590FFFEEFFEF6EFF3F1F0F8F3F2FEF6EFFFFDEBCCBFA5BBA38BEAD2BAF0
          DFCCB1A18AC4AB8BBEA480C1A886B7A588BEB7A4E5DECFE2D3C0AD9C87B1A690
          EFE8CFF1E3CCBDA88DCFAF92D7AF92DAB393D8B290D0AB89E4C7A8FFFFEAC5B6
          9CC2A890FEE3CFFFFCEBC7B29DD0B28FD9B68BD8B48CD9B58DD6B18BD0B496FF
          F8EAF5F5EFF9F4F3F9F3EEFFF9F1DDCBBAC4AA8CE2CBB1FFFBF3F6F1F2F7F3F2
          0000F6F3EFF7F3F2F7F3F2F5F3F3F5F3F2F8F3F2FFFAF0EBD6C0C6AD8DCBB08E
          E1C8A8FFF8E0C3AA90D4B28ED6B28AD8B38DD6B391CAAA8DF8E0C8FFFEEEE5D7
          C4C8AC8DDFC09FFFFCE4C5AD95D5B592D2AF84D7B587DBB68AD9B18EC9A78FE7
          D6C9F5EFEADDDADCD8D5D7D6D0CBB9B1A4ACA18DB8AA97E0D4CAB6A69ABBA68B
          BCA788F4E3C9E4CFB4D4AF8DDBB28BD9B389D7B38BD7B38FCAAF94FFF9ECFFF9
          EBC5A98AC6AA8BFFF1E4FAF3F0F8F4F3F6F1EEFFFAF0E4D0BFD3B096D4AC8FCC
          AA8DC5A88DBCA28AAF9B89CDC1B7DACFC7BCAFA1A99A8AC5B7ABCCBCACB69E86
          B39E88C0B6ACD4CAC0B39D8BBBA189BAA28AB59F86BAA58AAE9C85BBB2A5DFD3
          C9CAB6A4B8A290C6B8ACFFFAEDD8C2A6CDB08BD6B78AD9B887DBB68AD3B28BC1
          AA90FFF4E4FCF9F4E7E9E9E4E6E7E5E0DFD5C4BBAF9C8FA79E90D1C9BCC3BAAD
          9E9385A69886A99B85AB9D86AC9C85AD9883C5AC9CDABFB5AF958EAD9A92EFDE
          D1EAD3C3B7A090BBAB9BFFF6ECF5EEEBF0EEEEE3E8E7D8DCD7DED8CDAC9F91A8
          9887D5C5B5DDCEC5AB998EBEA08DCFAE94C8AB8CCAAF8ACFB38AD2BB95FFFFEB
          CEB9A3D1B291D8B48CD8B18AD7B28CD2B38CC3AB8DFFF6EAE3D3CCB4A08EB9A5
          93DECEC7C9B6B1B39B8FB8A296D9D0CCD2CECDE0DBDCE9E4E3F9F0E7E3D4C4BB
          A38BCAB399F7E7D6CBBCACB09E87B4A087B29E85B4A087AE9A81AA9782BEB1A3
          B0A395AD9A85AF9B82B2A187B0A187B7A88EA99B88E3DAD1EEE0D4C6A790D2AF
          8ED6B18FD8B38DDBB488D2B08CD4C0AEFFFFF2E3CBAFC3AB8DD9CBB5FFFFEEF8
          E2C9C7AD95C0A797FCE9E1E4D9D5D6D1D0CFCBCAC9C3BCB9A99CA59487ACA39F
          C3BDB69F9584A69983AC9C8BB19D8BBAA28AB49F89B3A696FDEEDED7BFA7BEA6
          90E1D0C7FFFAF0FFF3DCBAAA8DC0A993FFFEEFF8EFEBF7F3F2FDF5F5F4E9E5FB
          F0E2C5B6A3B6A08ED8C1B1D6C7B7A49684B4A28BB6A289AF9D86A69885AAA497
          C5BFB4C7BAACA29684A49E8BD4CEBBDCD3BFB0A089C1A68CCBA88ED2AD91DAB4
          96D3AD8DE6C7A8FFFFEAC6B59BC1A78FFEE3CEFFFCEBC7B29CD1B18ED8B58AD8
          B48CD9B58DD6B18BCFB395FFF7E9F5F5EFF8F3F2F9F3EEFFF9F1DDCBBAC4AA8C
          E2CBB1FFFBF3F7F2F3F6F2F10000F6F3EFF7F3F2F7F3F2F4F2F2F5F3F2F8F3F2
          FFFAF0EBD6C0C6AD8DCBB08EE2C9A9FFF8E0C3AA90D4B28ED6B28AD8B38DD6B3
          91CAAA8DF8E0C8FFFEEEE5D7C4C8AC8DDFC09FFFFEE6C1AA90D3B08EDAB48ADC
          B78BDAB38CDDB192D5B09CE8D6CBECE3E0DDD7DCC5BFC4BCB4B4ABA39C9C9788
          A6A394BDB7B0A49B91B0A28BB5A588EEE0C9E2CEB5CDAF8CD7B38BD9B28BD7B3
          8BD7B38FCAAF94FFF8EEFFF8ECC5A98AC6AA8BFFF4E7F9F2EFFAF7F3F8F5F0FF
          F9F0DFCABBD3AE9AD6AD97CAAB96BDA392AF9889A29286B7ACA8C0B7B3ACA199
          9E9288B2A89EB5A99DA49483A39484B0A5A1BEB3AFA79689AA9685AF9889AE99
          8AA79381A59785A8A198C0B9B0B3A494AB9B8BC0B2ACFFF5E9D8C1A7CCB18CD6
          B78AD5B486D7B688D1B38AC8B092FCEDDAEEE9E0E0E1DDD1D6D4CECDC9C0B6AF
          A0938B9F988FB9B1AAB6A7A4A4918EA4918EA18E89A09089A091889D8F83AFA0
          97BFAFA99C908A9B938CCDC6BDCAC1B3A59A8CACA396EEE5DCF1E9E9F4EFF1DD
          DFE0D6D6D6C9C1BAA0948AA1958BB8ACA2BFB5AEA4978FAF9587BEA18CC0A88C
          C6B08DCCB28DD0BA97FFFFECCEB9A4D2B491D8B58AD7B089D7B18ECFB391C4AF
          94FFF3E7D0C4BEA8988CAD9D91C7B8B5B5A8A69C8C85A59A92BAB6B5B9B9B9D4
          D3D5DEDCDBECE9E1D5CDC0B09E8DBCA897DED0C4BDB3A9A99E90A69C8BA09789
          A4998BA2968AA2958DAFA39FA89996A39289A18F84A39387A295879E94839C95
          86C9C3BCD5C8C0BBA28ECAAC8FD0AF8ED6B28CD9B286D3B18DDEC8B6FFFFEFDF
          C5A7C8AF8FDBCFB7FFFFECF5E0CBBEA493C2AA9EEFDCD5D5C8C6C4BCBCBDB8B7
          B9B2AFA99F989E948D9D9897ACA7A49C958C9B93869A9184A09587A29281A799
          87A49A90DACEC2C3AE99B29C8ADACAC3FFFDF3FFF2DBBCAB90BBA893FFFFEFFB
          F5F0F5F0F1F4E9EBEBDFDDE4DAD3B4A89EAF9C94C5B3ACC5B7B1A29690A3938C
          A4938AA3938CA09490A79D9DB4AAAAB2A6A29A8F87979388B6B3A5B7B2A39F95
          83B5A08BBDA38BC0A289D0AF95D3AE92E4C4A7FFFFEAC9B59CC2A98FFCE4CCFF
          FDEAC7B39AD1B18DD9B389D8B48CD9B58DD6B18BCFB395FFF7E9F5F5EFF8F3F2
          F9F3EEFFF9F1DDCBBAC4AA8CE2CBB1FFFBF3F7F2F3F6F2F10000F6F3EFF7F3F2
          F7F3F2F4F2F2F5F3F3F8F3F2FFFAF0EBD6C0C6AD8DCBB08EE2C9A9FFF8E0C3AA
          90D4B28ED6B28AD8B38DD6B391CAAA8DF8E0C8FFFEEEE5D7C4C8AC8DDFC19EFF
          FCE2C1AA90D6B391DEB790D7B187DAB08BDCAD92D5AA9BF7D9D4FEE9EBDECCD3
          BCABB4B59FA4A69493918B80908E83A29F9A969188AA9C89B0A187EBDDC7E1CD
          B4CBAF8CD7B48CD7B38BD7B38BD7B38FCAAF95FFF8EEFFF8EEC5A98BC6AA8BFF
          F4E7F9F3EEF6F3EFF5F2EDFFF7F0EBD5CAD3A99DDAADA0C19E91B89A8FAD908B
          A38A86A89697AE9C9DA59190A08B89A89590AB9891A48E83A28C86A79295AE99
          9CA48C86A88C85A98B86A88B86A79186A091889491899D9A92A39A8DA29488BA
          ABA8FDECE3D6BFA5CEB38ED6B68BD2B184D7B88BD4B790C4A98EFFEDDDF3E3DD
          DBCFCFACA2A287797A846C6C755C5A6D5857725D5C7356597454597C5A618463
          6A9176799D8887A594919F908D9F92909086868E8B87A9A9A3ABA99E9791849D
          948ADDD1CBF3E3E4F3E2E6EFE1E7DACBCFCCB8B7A08D8A9A8A84A89C98A39C99
          8F8480A39186AE9787B8A289C3AE8ECBB18DD2B999FFFFEECFB7A3D2B590D8B5
          8AD9AF8ADCB392D4B197D0B29FFFEBE3D6C3C0B29995A88F8DAF999BA6949596
          8A86958F8A9D9B9BB1AEB0C7C0C3D7CFCFEEE5E1D3C6BEB39992A88C85A38A86
          836D68725F586F5C556C58536D5856725A5A745C5E846B6F90797D9D8789A38E
          8D9D8A87968882968D83948F86B2ABA8BDB3ACAC9788BDA38BC8AC8ECEAE8AD7
          B489D1B18ED7C3B2FFFAEBEACEB0C9AD8ED8C7B2FFFDEDFAE0D4C0A198B89A95
          AD8F8E896C6F80676B775E62735C606C5456715B5D6F5C5F7564678475739B8C
          899C8E88978B81978B7F978E819B938CC0B7AEB3A393B09D8EC9BDB7F6E9E1F7
          E6D1C3AF96BEAB96FFFAEDFDF7F2F5EDEEEDDFE1EDDADDDCC6C8A68E908B6F6F
          8468687E6668735B5D735959755B5B72575A725B5F7E686D917D82A38E919D8D
          8E9589879D9792A29D94938D80A09383AE9D8AB09B85BAA28AC4A68DDCC1A7FF
          FFE8C9B59CC1AA90FCE4CCFFFCE9C7B39AD4B28EDAB589DAB38CD9B58DD6B08D
          D0B496FFF8EBF5F5EFF9F4F3F9F2EFFFF9F1DDCBBAC4AA8CE2CBB1FFFBF3F7F2
          F3F6F2F10000F6F3EFF8F4F3F7F3F2F4F2F2F4F2F2F7F2F1FFFAF0ECD7C1C6AD
          8DCBB08EE1C8A8FFF8E0C3AA90D4B28ED7B38BD8B38DD6B391CAAA8DF8E0C8FF
          FEEEE6D8C5C8AC8DDFC19EFFFFE5C5AE94CFAC8AD8AF88DDB48DE5BA99A77660
          532115542423491F26471F2B48202C471D28411D233E2B26A0989197908D938B
          84A69886AD9B84EBD7C5E3CBB3CEB18CD7B58AD7B489D7B38BD7B38FCCAF94FF
          F7EEFFF7EEC6A88BC7AA8BFFF1E4FDF7F0F7F4EFFBF7F2FFFCF84C312D562723
          551E1B5727235528254F24274A21264721274923294920284C22294A22244D25
          264C24254B22274A1E2B4B1F2C4920254D22254E1F274C22294222232B181596
          929195958F958F849B9187B5A6A4F9E6DFD8C0A4D1B18DD9B48ED6B18BD8B992
          CCB08ED2B29FD0AEA87A575B40192140151E491721531722561A24501D244C1C
          224F1B22541D264E17264914224B1A22471E23553438695153917A7E9D8E9296
          8E8F98959199978F938E85A89B934A312F4622284D242C4E242F4F262E4A2027
          452226341C1E5F4F509E969689827F9A8C86A39285B09B86BEA68ACCAD8ED7B7
          9AFFFFEFD2B7A3D1B48FD7B489DBB18CE7B89C7A483654231B4E25234922244F
          23294D2127492428402326322321938A879E9697B5AAADE2CED3E7CED2B19797
          6E4F4E4E23264E1D1F4A191B4818174E1D1F532224522024501D244F1A234C18
          224B192343182145232A5C41457D67699F8D8C9A8E8A908783948C8CA79B999E
          9084A99583B7A287C3AA88CCAD86C8AD8BD8C5B6FFFFF4EBCAB0C8A58BEFD5C5
          FFFCF6B08D8A623A3C43171D47161E4F1A24551B264F1520571D28571F2A4F1B
          25491721491D243F191F4222236448478C78739C8F87928A8387827F9F99949F
          93879E9286B7AEAAE8DDD5F6E2D0C1AA94BEA896FFFFF3FFFFFBF8EAECB49DA2
          7352594F212D4914214C1721501B24521E254E1C204E1C204C1D204E1E244A1B
          23461A2140171F45232A5C3D447E676CA493969A93909390888C867B9790819E
          9784A89D89AF9F88CDBBA4FFF4DFC2B099C1AB92FBE5CCFFFCE9CAB49BD5B38F
          D9B488D9B28BD8B48CD6B08DD0B496FFF8EBF5F5EFF9F4F3F9F2EFFFF9F1DDCB
          BAC4AA8CE2CBB1FFFBF3F7F2F3F7F3F20000F7F4F0F8F4F3F7F2F3F4F1F3F4F2
          F2F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD5B38FD7B38BD8
          B38DD6B391CAAA8DF8E0C8FFFEEEE6D8C5C8AC8DDFC19EFFFBE1C4AE92D5B08E
          DFB68FDCB28DE4B697A774605720175E22235F222C5B202E5B22315D22315422
          2C3418189F908D978E8B978D86A79787AC9886EBD5C3E4CAB2CFAF8BD7B489DA
          B48AD9B389D8B38DCCAF94FFF7EEFFF6EDC6A88BC7A98CFFF1E4FEF6EFF5F2ED
          F9F3EEFFFEFC5F3F40551F2464272B5F24285F252A5C232C5E242F5C242F5C24
          2F5E23316023315F242C5F242C5F232D6023315F20345F20345F25305D242D61
          233158202D4F242D331A1E8C838692908F938E85988F85B3A4A1FCE7DFDBC0A5
          D1AE8CDAB191DDB396DBB69AC19C8661382F4415174F1A245F24336122326922
          327121326F213268242F63242D69262F6B2631661F306721326526305B222A56
          232B481D263E16213A1B24523C4181757596928D8A847DA08D888C6D6C4F1E26
          5E222D5D1F2D5E202E60242F59262E4C262C381F239C90908D88859087849A8E
          84AB9A87BBA38BCBAB8ED7B59DFFFFF1D2B7A3CEB38ED4B489DEB491F0BCA560
          1F1765232461242860252D5E202C5E222D58242B4720224D39389D9191A7999B
          B59EA377525A471A2345161E531E275F232E67283267242B69272C67242B6623
          2C67232E68232E6B243469243367253160242F55202D4A1F2A3F182044242975
          5F619E8E8FA19395988C8C9387819D9082A49680B49F83C3AB87BFA789D6C6B9
          FFFEF3E9C4AEDEB39ECFA8A05A323447141C571F2A6125306524336821316E20
          317425336E20316B21336A23336823306727335E252E56232A4B1E213C181849
          34338C8080948E8F979291978F888F887FA49D9ACDC3BCE5D3C2BDA591CCB2A2
          F1D4CB8465663E1C223D141C4E1C285D1F2F66223369243369233068232D6722
          2C6A273069262F66242F66242F6627315D232E56222C491B2741172244222C78
          6469978D8D968D89908B828E8D7F9694829C9582B9AE9AF5E7D4B7A895BDA892
          FBE4CEFFFCE9CAB39DD4B28ED8B288D6B28AD7B28CD5AF8CCFB297FFF7EAF5F4
          F0F8F3F2F8F1EEFFF9F1DDCBBAC4A98EE2CBB1FFFBF3F7F3F2F7F3F20000F6F3
          EFF7F3F2F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FF
          F8E0C2A98FD4B18FD7B38BD8B38DD6B391CAAA8DF8E0C8FFFEEEE5D7C4C8AC8D
          DFC19EFFFDE3C5AF93D4AF8DDFB68FDBAF8AE3B596B88473622620732B316C20
          2C6D24346821326C22345F22303F1C209783829E9290938982A59487A99584EA
          D4C2E3C9B1CEAE8AD9B68BD7B286DAB48AD8B38DCAAC8FFFFBEFFFF5E9C8A88B
          CAAA8DFFF1E4FCF3EFFAF5F2F9F2EFFFFBFC815D6360242F6B263169242E6520
          2A6D27346A233369212E6A2131691F316B21337125316E222E6E23316D21336D
          1C356E20386C25356923306F23356922335D27343E19238C7C83979192988F86
          9C9386B1A39DF9E5DADBBEA3D7B191DEAE96ECBAA6976A5C45160E5E25266324
          2D6723346A22386A20326D1E31701E31711F326B233069222C6E232B71232E73
          23346B1D2E6D232F6E273167212E67223162213059212E4A1F28321419756866
          958A86998683CBA9AA5C262D98525F6B1B2C7020316C243160202C5E2631441B
          23756063978D8D8A8584908881A99A8AB29B85C5A58ED0AF9BFFFFF2D3BBA9C7
          AF8BD2B58ED9B292DAA291661A1B76202A7425307324316F1F306E233369262D
          5423256D5353A08E8FA891953A151D501823652231671E2E6F24346B1F317021
          346F232F6B1F2A70242F6C222E6E24306E222E6E20316D1F3071223070253366
          1F2F652231632231571F2A3F161E4E30359C85899D8D8E948886948D8498907F
          A49880B4A283B5A48ACEC2B8FFFDF6F8CFC0B07C704F181B5B1F2A6924336A20
          326B1F316F2132732133742130751F317420326F1E316F21327122306E222E6C
          212F6B263167242D5E252D4923292C151A6D64679E999A8C87848B8782989493
          B5AFAAD2C3B3BBA391CFADA0380905541A1F63232F6421306924336A21316E23
          336B202E6D202E7323306E1E2B7221306F1E2D7422346E1C2E7323346F22306B
          253266243061212D56212B3D182241262F928184978E8B8B89818E8E828D8C7E
          A5A18FD9D1C0B5A795BAA792F8E3CEFFFBEACAB29ED1B18ED8B58AD8B48CD9B4
          8ED6B08DD0B398FFF8EBF5F4F0F8F3F2F9F2EFFFF9F1DDCBBAC4A98EE2CBB1FF
          FBF3F7F3F2F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFEC
          D7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD6B490CAAA8D
          F8E0C8FFFEEEE5D7C4C8AC8DDFC19EFFFCE2C4AE92D2B08CDEB58EDDB18CE3B5
          96C38F7F61221E792C3373212E7324326D1F306F203364213041181F8C76789D
          918F908881A39387A69384E6D2C1E0C8B0CFAF8CD9B68BD8B58AD6B388D8B48C
          CBAD90FFFAEEFFF7EBC9A98CC7A78AFFF2E7FCF3EFF8F3F0FAF0F0FFFCFF966E
          796425357025356F232F7223306E1C2E722032752133762234721F356F1D3073
          212E701E2B752231711C30741D37721C346A1D2B6E222E721F2E6C1E2F612331
          40121E8E757FC1B3B5ACA096A29587C0B1A8FFEEE1DABFA5D5AE92EDB9A88B50
          46531A18642A2B67232A6E24306E1F346F1D34701F32701E317B2438721E3070
          243072263172242B73222B7424317425336B1F2A6D212C722331732133722134
          6B22325E212F421720735E60958987948583CAAEAE89565D87434E812E3D731E
          2D7122306D2532641F2E55202A4B2D329E9091898485908D89978E81A99A87B9
          A08CCAAE9DFFEEE2C1AF9EC1AF90C1AB88CCA78DB67E736A1A217C2031771E2E
          782030751E3274223468242B4D1B1D89706E9A8887BFA7A95329306927337121
          32792236771D34761E35762137711D2F6F1E2D7424316F202B71222D78293474
          24317221306E1D2C701F2E6F1F307323346F21326B24345D2532491E273F1D23
          927B7F94868789837E918E8097917EA99C82AC9E88C5B7B1FFFBF9E1B2AA5013
          0F65212C6C2234701E31752034792335701C2E76213073202F7623326D1B2D72
          20326C1D2B7323306E1E2B72222F7322317322316920306227354C212C2F141D
          67585CA2979985807F908E8EA29E99C0B5A7B29B8BD2AEA45D28257229337421
          306B1B2C6F1F307726356C1C297727347727346B162479243278203077223173
          1D2F752133701C2E701E306C1F2D6E212F7024306923305F2635481C293B1923
          836E71968C8C86837E8D8C8297958AC6BEB1AC9F91B6A290F6E0CEFFFBECCAB2
          9ECFB18ED7B38BD8B38DD9B48ED6B08DD0B398FFF8EBF5F4F0F8F3F2F9F2EFFF
          F9F1DDCBBAC4A98EE2CBB1FFFBF3F7F3F2F7F3F20000F6F3EFF7F2F3F7F2F3F5
          F2F4F5F3F3F7F2F1FFF9F0ECD7C2C6AC8ECBAF90E1C7A9FFF8E0C2A98FD4B18F
          D9B28BD8B48CD8B490CAAA8DF8E0CAFFFEF0E5D7C5C8AC8DDFC19EFFFCE2C4AE
          92D3B18DDBB48DDDB38EE1B394D39F8E5F211B792F3571222D6F232F6A1F2D6D
          22326322314219217F696B9A948F8B897F9D9187A39386E0D0BFDDC8B2CCB08E
          D7B48CD8B58DD3B088D8B48ECBAF91FFF8EAFFF8ECC8AA8DC7A98CFFF3E7FCF5
          F2F8F3F0FAF0F0FFFCFFAC848F632232752437711F2C792432761D3079203377
          1D30761D30711F3272203277253274222E7624317824367B263C76213573242F
          75272E77262F6F222A69262F4F1C2492707AE4CED0BEAB9EAE9E8DC1B4A6FFF0
          E0DABDA8E1B8A2A1695E5817166521286A232D6C202B732431762234701B2F77
          233573202F751D2D7A253371232E691E2673262A6D202472272F742E35A66269
          6C252F70212E71202F742032732334692232501C26675054938B8B888581B2A6
          A4D2B1B5521B249D535F6E1B2A7122306E212F70233163232F40171E84717491
          8C8E8586848E8C819A9384A89888AF9E91E1D5CBB0A799A9A287AEA084CCAC99
          895751661C287A2337741E30751F31731F316F243262242A471D1E9986839387
          85C9B4B3552D327A35426E1A2C781D32781D34781E35761F3378233776243671
          1F2C75242D79293071232A74252E833540863A46853846702331681A2B6B1D2E
          6A21316623325C222D4E1F273B191F937E819289868F8C848D8C7E9C937FA699
          89C7B6B3FFF5F6672F2E6621247224356F1C32792033761D2D77202E77253270
          202D6F232F7126347227357829367A2E39873D49792F3B6A1B28701F2E6C1A2D
          78253B711F326D24345A24313A131B7F656B9C8F918B86879B9894B1A89BAB98
          8BD3B0A6723C3B7B2D38771F2F7A26386E1C2E741D2B7B253173212D711F2B79
          273473212E76222E711F2B7C2C39752836833848863D4D69212E64192771212E
          71202F681E306624374F1A283E19238B74799589898C888394928AB1AAA1A498
          8CAF9D8CF2DBCBFFFAEECAB2A0D0B190D6B38BD8B38DD9B48ED6B08DD0B398FF
          F8EBF5F4F0F8F3F2F9F2EFFFF9F1DDCBBAC4A98EE2CBB1FFFBF3F7F3F2F7F3F2
          0000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F1F2FFF9F0ECD7C2C6AC8ECBAF90
          E1C7A9FFF8E0C2A98FD4B18FD9B28BD8B48CD8B490CAAA8DF8E0CAFFFEF0E3D7
          C5C6AD8DDDC19FFFFFE4C4AE92D4B28ED9B389DDB48DDEB091E1AD9C61231D7B
          313771222D70212E6D202E702233662332491C25755D5F9D97928C8A809A9086
          A59589DDCEBEDBC8B3CEB192D6B28ED5B38FD2B08CD7B591C9AF91FFF6E8FFF7
          EBC5A88DC8AB90FFF0E7FCF5F2F7F4F0F9F1F1FFFBFEC0979F5D1C2B79293A73
          212E761F2D771E31781F32762130701F2E692232641F2C68252E6B272E692028
          6C232D641C29651D296B25266E27237026246C25226121214A151889676DFFE7
          E7D9C0B0B5A38CCBBEAEFFF8EBDEBFB0BE9184521513722A3072233172233175
          26336C1D2A731E32711F327020317023316A1C27641B235E1E23773B3C925251
          995A56915450985B59945454C07A806D212D6E1D2C751F317521336F2132591E
          2C593F45938D8E828583A7A3A2D8C3C5784F54904C577728356C1D2B72233172
          21306C24314E1D255B3D42988A8E8B87868E8B839990869F8F88A8968FC4B8B2
          A2998F9E9784A69784BE9E93693737651F2C752336752034731F316E1E2F6A24
          315B222A563133998A87938A86CEBCBB643F43702E3A792537731C3077213372
          222F6A202C5F18285B16216B2427833D3D8E4946914F4A914E4B7A3A3A64262C
          662730AC6771984F596114227326346D223267222F662A354C1D253E20259A8C
          8D8A85828A897F958E7FA19486C3AEACCAA2A75013176E2129762437751D3479
          1F3278202E7725316A1E2963222B581D25551E276A31397235396E2E3353191E
          7A3E44BE7B80742B356E1C32701A32781D327721336D273459242E37151C9783
          88908B8C908F8BA39A90A7958AC5A49B844E4D7729347A2232711C307323346C
          1D2A72272F631D235E1B1E621F247D393A914C4997534E8A4A467A3C3C62262C
          5D212BA4656F9C5762691926731E2D7520346C1D30662535521D2A441F299E89
          8C8E85828E8A85A59C98A3968EAB9889E9D5C4FFF7EBCAB09FD0B190D7B48CD8
          B38DD9B48ED6B08ED0B398FFF7EDF5F4F0F8F3F2F9F2EFFFF9F1DDCBBAC4A98E
          E2CBB1FFFBF3F7F3F2F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F1F2
          FFF9F0ECD7C2C6AC8ECBAF90E1C7A9FFF8E0C2A98FD4B18FD9B28BD8B48CD8B4
          90CAAA8DF8E0CAFFFEF0E3D6C6C6AC8EDDC19FFFFEE3C4AE92D4B38CD9B389DC
          B38CDCAF8EE9B6A26729237F323974222F71212E722130732334672132501B28
          6F4F54A398948D8B819E8E87A7948CDACABDD9C5B3D0B093D5AF8FD6B392D4B3
          92D4B491C8B094FFF9ECFFF8ECC1A68BC4A98FFFEFE8F9F4F3F4F3EFFAF3F0FF
          F8FAD2AAAF5B19247D2E3C7223306F1F2C701E307020316B233060202C7D4B55
          7E545B835B5D8E62618D5A58966262A47375B888869C685CA16958A76D5AA66B
          5B9F685B8F6058B69796FFFAF6E7CCB7BEA78DD6C8B6FFFEF3E7C2BA66302F65
          232870222D701C2E7622346D1F306D21336E21366D2238621E2F581C276C3439
          9F6F6EBE9B97FFECE3FFE6D9D3AF9FE1BAA4E8B8A6AF716778312E72272F7021
          2E7421307522317121325E202E50313A978E918385859B9C9AC2B6B6CCADB05E
          222C954B576B1C2A7322316F1E2D6A202C612530431821A2888E978689998A88
          9B8A87A48C8C9D8587AF9A99A08D8A9C8981AC928BB58C8A5C232B692330701F
          32772236731F316C1F2D672530501D256C4B4F9B8C8A958C88D3C2BF75535467
          2A346C212F6B202E65202A591D1D622F2C9F7374CAA19FD4A79ADDB09BE0B69F
          E3BBA2E2B9A2D8B09EFFE8E0CBA09D602725B77675A25A606317227223306D20
          2E69233062263141161F61484C978F908A8783908A7F9F9087D4B6B576474A62
          1E2573242F701B2F752036771E3173212E6C232B5F252A51282D8B6E71B0999D
          E1C7C7DEBAB4D0ABA3E7C6C3BB959357251FD29696752C3C6E1F34721E307524
          33671D2961252F481E295740489994968F8E8AA0978EA49189C3A19B98646473
          2732772231722033651C2C561B235A292B875A56D2A9A0FFDDD1D7AD9AE0B497
          E9BC9BE9C0A0DAB59BF2CFC2ECC7C3663739A76D72A45A66701C2E771E31731F
          31691E2E6224324C1C2864434A97898A948D8A9F9693A0948EA69588E3CEBFFF
          F4E8CAB09FD0B190D7B48CD8B38DD9B48ED6B08ED0B398FFF7EDF5F4F0F8F3F2
          F9F2EFFFF9F1DDCBBAC4A98EE2CBB1FFFBF3F7F3F2F7F3F20000F6F3EFF7F2F3
          F7F2F3F5F2F4F5F3F3F7F1F2FFF9F0ECD7C2C6AC8ECBAF90E1C7A9FFF8E0C2A9
          8FD4B18FD9B28BD8B48CD8B490CAAA8DF8DFCBFFFDF1E3D6C6C6AB90DDC0A1FF
          FDE2C1AC90D3B48DDAB589DCB48AD9AE8DE9B7A373352F7C2F37741F2D72202D
          732231722233682132561D2C644046A297938D8B81998B85A4918CCDC1B7CCBC
          ABC9AB90D1AB8DD0AD93CDAF92CCAD8CC5AE94FEF6E9FFF8EBC3AB8FC3AA90FF
          F3EBF8F3F4F1F2F0F9F4F1FFF9F6E2BBBD5A19227B2D386F202D732432702031
          6E233364222E4F1A24916F75A38E8DA7938EBBA19AC09C94CAA69CF5D8D1FFFF
          F2D6AD96E3B79AE7B99AE5B697E7B79FDDB5A3E6CCC5FFFEF3E6CBB0C5AD8FD3
          C1B0FFFFF7BE929352161C6D26306E1E2B792335751F317323346A2131651D31
          602033511C2A82585FCCA9A6AE9389AF9D92FFF4E7F8E4D2BFA58DD3B495E0B6
          99BC80706D2622782B3271222F72213071202F7121326221304A27319A8C9285
          8486969898B8B3B2EFD9DB6530399E59646B203070212F71222F6C202C67222F
          5F232E461922431E264120243F1D23451E26421823411B21472226492525451A
          1D581F2863212D6E23316E1C2E782135721E306D232F632630471A2383646B9A
          8C8D978E8AD3C4C1896A6B7F495067253051141E622D30AD8075CFAC9EFFE7E0
          E5CCC2CDAE95D4B392D2B28ED0B38ECEB38ECBB193F5DCCCE6C5BCE4B3A97436
          2EB16E6D71272D6F1F2C7625346C1B2A6D273458202B411F2695878B89858494
          8C85A08D85CFA9A760292C6F242C72202D752336711E34731E326E212F64232C
          4B191D92777AA19496B0AAABCFC4C0CBB4A4BFA392E0CCC1FFFFF5BB94855B25
          1EC7828D65192B7222336E1F2C72263168263152222E381B2494898C9591909A
          928B9A8B82B99C97A175767D39447328365A17265D2530C1999BD0B0AAC2A799
          ECD4C2FFE8D4C8AB90D9B68EDAB88AD0B184CDB38FDDC7B5FFFFF5FFFAF66230
          30A9666F752633711C2B7823326E212F6823325E26333E171F9A878A938B8B99
          928F9B918AA39386DCC9BAFFF2E6CEB2A1D2B190D7B38BD8B38DD9B48ED6B08E
          D0B398FFF7EDF5F4F0F8F2F3F9F2EFFFF8F2DDCBBAC4A98EE2CBB1FFFBF3F7F3
          F2F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F1F2FFF9F0ECD7C2C6AC
          8ECBAF90E1C7A9FFF8E0C2A98FD4B18FD9B28BD8B58AD8B48ECAAA8DF8DFCBFF
          FDF1E3D6C8C6AB90DDC0A1FFFDE2C1AC90D3B48DD9B68AD8B288DAB08DE9B8A2
          854741792C34741F2E72202D7221306F20336923345A1F2E563139A09793898A
          81948985988C88BAB3AAB8AE9DBAA088C5A288C2A28BC1A38AC0A285BDA88DE7
          E1D4EEE6D9C0AA8EBFA88EFAEEE8F5F3F3F2F3F1F9F6F1FFF9F3ECC9C65A1D21
          7B2E3673212E762032721E30702233692635491A237B6365968B87948D84AB9F
          93B49B8BB69C8BE0CDBEFFF7E2C6A584DFB891D8B58AD7B489D6B28EC9AD8FD6
          C7B7FFFFEFEAD3B3C4AB8BDBC7B6FFFBF7834E57631E2D6C212F71202F731E2D
          77223073212E6E222E662332511C29836269BAA6A5BDADA1AB9E8EBAAD9FFFFC
          ECFFE9D8C9AA91D1B08FDDB494CA9281631E1B7B2D3472202C71212E6E1F2D72
          2233622130451F2B98868D8A8789939595B3B1B0DFCDCECCA0A7692C36864150
          68202D6B1F2B7627346E1C2E7224356A2534632531591F2A6127325F21336323
          3661202F62232D61222C67222F6F2033701E31722130721F2E781F32721E306E
          24305F232D471D28987D86918385988F8CD5C9C59E8583693C3F441017AF8389
          FCD7D3C3A390CEB39EFFF2E7E5D2C3C9AB8ED5B18BD7B58AD7B689D5B58AC7AC
          8AFAE3D3D9BCB3E0B0A4D79C926626257B353B6F1F2C73202F781F326F1D2F68
          2632441720726067908A8B908581A8908AC194915A1B1D74262D75232F722233
          691D2F6E1F346B213361242E64383FAC979A989293AAA8A8CDC5BED2B7A3C6A7
          90E0CCBBFFFFF1D8B29AAF7B6A843E448A3D4B70212F72222F6F212C67222D61
          26344015226E575F9F9595918E86948F86A59791A78988723D46430E18A27D87
          FFEEF1FFF1EAC9B2A2B8A590EDD8C3FFECDAC5A68FD6B18BD9B286DAB88DC9AD
          8BD9C5B4FFFAF2FFE7E1CDA09C6223257F373D70222D6F202D6A202C6823305B
          202E481D26725F62928A8A96918E948E879F9486D8C8B8FFEFE3CFB4A0D3B08E
          D7B38BD8B38DD9B48ED6B08ED0B398FFF7EDF5F4F0F8F2F3F9F2EFFFF8F2DDCB
          BAC4A98EE2CBB1FFFBF3F7F3F2F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3
          F3F7F2F1FFF9F0ECD7C2C6AC8ECBAF90E1C7A9FFF8E0C2A98FD4B18FD9B28BD8
          B48CD6B490CAAA8DF8E0CAFFFDF1E3D6C8C6AB90DDC19FFFFFE5C3AD91D2B28E
          DBB58BD6B086DCB28FEABAA291564C792C3477223175223171202F701F326B23
          375B1D2D4E232EA496978C8984938787948785ADA7A0AAA194AC9585B69885B3
          9687B29685B19983AC9B86CCC8BDD1CEC0B2A089B4A18CEDE5DEF1EFEFF5F3F2
          FAF5F2FFF8F0EFD1CC5E242580333B772231741B2E7822346F1F306823324E1C
          26695355958F8A939187A49E91A89685B7A28DE0D1BEFFF7DDD0AF8ED4B088D5
          B486D3B586D4B68DC8AF8FD5C9B7FFFFEEE7D2B3C2AB8BDAC6B5FFFBF84F131E
          6C20326E20316E1D2C7B2635761F2D75212D6D242E551E276D494FAD9B9CABA3
          9CBBB2A4A69C8BB8AB9DFFFDF0FFE8D8C5A68FC9AA89D2AC8ECE998C5F1E1D7E
          2F3874222E72222F6B1F2B70233161202F441926957D878A8388979698AFAAAB
          D4C6C8FFE7ED57252F995B6966202D6D232F70202D781F32771E327521336D20
          2E6D2532671E2E6A1F346F22376F1F307324326E212F702031761F33751E3274
          1F2E782331781F32721F2E6C243058212A47242EA692979387879E9290D9CCCA
          B19C9B310F10EFCACCFFFCFBEED5CBBFA68CD1BB9FFFFFF2E7D4C7CCAF90D8B5
          8DD6B486D7B688D5B58AC7AC8AF3DFCDD4BCB0CDA396DEA79E581A1A742E356F
          202D752231731E2D7524336A2131511B2860454E9A8D8F948882A48C86B58583
          601F21782934731E2C70212F7022336F2237672132531B267D565EA495999491
          93ACACACD0C9C0CFB7A1C8AB90DBC7B5FFFFEECCAA8DE9B7A0652423994E566C
          1C2972222F7425306C222E652433501D2B53373DA39797918E898C8A82A09891
          B09D9A341115E1BDC3FFFAFEFFF3F1FFF4E8D3BFADBBA78EF5DFC6FFE9D5C6A7
          90DAB491D9B389D4B48BC9B090D4C4B4FFEFE8FBDFD8CAA09B612126782D356F
          212C7223307125316A25306525314C1D26554043999191979291938D889D9487
          D6C6B9FFEDE1D1B3A0D2AF8DD8B58AD8B38DD9B390D6B08ED0B398FFF7EDF5F4
          F0F8F3F2F9F2EFFFF9F1DDCBBAC4AA8CE2CBB1FFFBF3F7F2F3F7F3F20000F6F3
          EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FF
          F8E0C2A98FD4B18FD9B28BD8B38DD6B391CAAB8CF7E1C8FFFEF0E1D7C6C6AC8E
          DFC09FFFFCE2C6AE92D3B08EDCB58FDBB48ED8B08DE2B697A26C5B72282C7825
          347623327522316E1C2F6E2234661F334E1927AF949D9E91939E90929B8E8CB1
          A4A2A79895A8948FA9918BA7918BA38D87A593889C9386AEAFA5B5B6ACA19988
          A69B8DD7D3CEE5E0E1F4E9EBFBF2EFFFFDF4EDD8D0642B2C7E323D6F1D2F7520
          347520346F1D2F712636581E295E4346968D8A918E86A09C91A8978AB19D8CDD
          CFB9FFFCE3CAA88BD7B18ED5B388D4B588D3B48DC8AE90D8C8B7FFFFF1E4D1B6
          C0AB90DDCCB9F5D5CF5110197425336D1F30722233792131771E2E7621306621
          2C451C21A28E8D9A948FAFA7A0C6B4A9B19B8FBFADA2FFFEF2FAE7D8BAA590BF
          A98DC0A188CEA0955A1E1E7A2C377722306F212C7125306B2330602131431626
          91758291858B9A9597B1A9AACFC1C3F7E2EAAD8B956F3744823B4B6E212F7320
          2F792034761B30751C2F7623326C1D2A6F232F6F21326E1E2F742032721D2B6F
          1F2C6D1E2B742332701C2E73202F78233274213070212F6A26315120285B4448
          9D9595908783A49995D9CAC8EEDCDBFFEEF1FFF9FAFFF9F3EDDBCAC3AC8CD6BE
          A0FFFBF0E9D2CACBAD92D3B28BD6B588D3B487C8AE86BDA889D8CBB5C5B5A5C5
          A294BC8B83591E2267222C71232E6D1E297125306C232D7025355C1E2C532F35
          A08C8B93897FA28F87B087855D1F25782937781F327620327220326E20316522
          31471821896D73998F958F8E92ACACACCDC6BDCFBAA4BDA68CDAC8B7FFFFF0C6
          A88BE6BBA091534B7D343675263173212E72202D73243268202D5B232E401F26
          A09293938E8B8A87829A918DD5C9C5EBD9D8FFF9FAFCF1F3FEF5F2FFFEF2CEBA
          A8C3AA90FBE0C5FFEBD3C5AA90D8B593D0AC86C9AF8ABDA88CC4B5A5EBD9D2EE
          D1CCB485876017277520347A2534701E2B72222F70243069242F57242C452F31
          9991919A9090988C8A9D928AD5C4BBFFEBE4D0B2A1D0B08CD8B78AD8B38DD9B3
          90D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F2EFFFF9F1DDCBBAC4AA8CE2CCB0FF
          FBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFEC
          D7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD7B38BD8B28FD6B391C8AB8C
          F7E1C8FFFFEEE1D7C5C6AC8EDFC09FFFFEE2C6AE92D5AF8FDCB28FDAB38DDAB3
          8DE4BA97B07B666E252779273471202F722130711F317021346C20325B1C2C54
          29364A2B34482A2F4C2D3047282B4E2F3259393E67484B806366998181A18C8A
          998B85A09C9799978F928D84928D84B8B7B3CCCACAE5DADDF3E7E7F8F4E9EBD9
          CE774141782C377222336F1D30721D317624366D202E571B26593B40988C8C8E
          8A859C968FA3948BA9988BD0C2AFFBE9D2C1A18ACFAA8ECDAD89CDB08BC9AE8C
          BDA68CD2C2B2FBEBDED6C3AEBDA892DECCBBCEAAA45C181F7825346D1F306F21
          327721337820307220325F1F2B59393EA2999695958FADAAA2CDB9AEBB9F94C8
          AFA5FFFFF5FFF1E6C1AA9BC0A793C3A292CA9D99652A2E74283474213071222D
          6E222D6B202E602230441525846973968A90918C8DAEA6A6CDC2C4E4DBDEFFF3
          FB43141D995763691E2C6E1D2C741D317C23377B2232711C2A7325306D25316D
          2835722C39782B39792A377B303872272F6E1F2C742332721E30752231722130
          6E222E672531491A226F5F6097948F958D86A49892DFD0CDF9EBECFDF5F6F6EE
          EEFFF8EFE6DBC7BDAA85D4BD9DFFFFF7EAD2CCC4A994CAAE8CCDB08BC2A782BF
          A287B39A86D2BFB0C4ABA1AB817A5A242366252E6C212F6E1E2B72232E6B222A
          6B242E6D22326120304C262CA38E8C948A80A09084B68F8D571D22792B3C731C
          30781F327522316E212F63232F441922836C719890978D8E92AAA8A8CBC4BBC6
          B69FC0AD92D9C9B8FFFFF0C5AB8DDFB89CB47A6E722C2C7B2C3574222F73202F
          7423326D202E5F232E3C1A2094838695908F908D89948B88CEC5C1E7DEDBFAF3
          F0F8F4F3F9F3EEFFF9EDD5C1AFC3AA90F0D5BAFFE8D2BCA68DC2A487CBAC8DBB
          A387B6A18BC1ADA2DCC3BFC5A4A159262A6B1F31751D35721B2F73202F772433
          6E1F2D6C212F5A212A3D25279B91919B9191998D8B9F928AD7C6BDFFEDE6D0B2
          A1CEB18CD5B689D8B38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFF
          F9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5
          F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18F
          D7B38BD8B28FD6B391C8AB8CF7E1C8FFFFEEE1D7C5C6AC8EDFC09FFFFEE2C5AD
          91D7B191DAB08DDBB48EDBB48EE3B996C28D786A21237928376E1F2D6E212F71
          24326E20317020316C21315F212F5D25305E222C60232D62252F5B1F29501823
          511D2746192241181F553034806464A696979D94918E867F8D8A82A1A4A2B0B2
          B2C9C2C5E3D7D7F3EDE2EBD5CA8B52537428336F21327221346F1D30701E306D
          22305F253046282D9B8F8F908B8A97928F9B8F89A1918ABCB3A5DBCFBDB29C8A
          BCA18CBAA187BBA48AB6A289AF9E89BFB2A4E2D4C8C8B5A6B39C8CE0C6BAAC83
          80641E257826336D202E6E212F7321337321336D2230551B2672585EA09A9B90
          9391ABAEA5CABDAFBCA294B08D838E69618D6864724D49714C447349447A484C
          61242E6C213171202F72232E71222B70212E672531471926765B64918A8D8E91
          8FAAA9A5BFBCB8D6D4D3FFFEFE9873777D444C7130396E2430701E3077213373
          1B2B72222F68232D581C26531F29511D27521B24571C24591B21AA676EAA5B68
          6D1C2B731F3172213072213070243065232F46171F8F7F8096928D998F88A89A
          94E8D9D6F2E6E6F7F2F3F7F5F4FDF7F0E7DECAC0AE89D4C19EFFFCF1DECBC6B6
          A291C6AF99B49C84C7AC98BE9E93A5827E966F71683A4053171F6B232F6F2132
          701E3075223172202D7626336E222E6C20325A1C2C4A282EA1908D978B81A290
          85C29D99571F24792E3E701B2F75202F7522316F2230642430471A237D636998
          90978C8D91A6A4A4C8C1B8C4B49DC2AF94DBCBBAFFFFF0C5AC8CD9B395D39C8D
          641E1E7E3139721F2E721F2E7221306E212F63232F3D171D8774779991918984
          81948D8ACDC4C1DED9D8F6F2F1FAF8F8F6F2EDFFFCEFCEBFACBAA48BF2DBC5F3
          E3D2AD9D8DBFA795BCA08FB99F8FA2877D8667666C474B4418195B2126712334
          721D31712033732334721E30721E3072223360222E49292E9C8E8F9E94949C91
          8DA0948ADCCBBEFFF2E8D0B2A1CFB18ED5B58AD8B38DD9B390D6B08ED0B398FF
          F7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F2
          0000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08E
          E1C8A8FFF8E0C2A98FD4B18FD7B38BD8B28FD6B391C8AB8CF7E1C8FFFFEEE1D7
          C5C6AC8EDFC09FFFFEE2C4AC90D8B292DAB08DDBB48EDBB48EDFB592D09B8667
          1D217D2C3B6F202E6E212F6F24326F202E73202F74222F6E2331651D296C202C
          6E1F2D6E212F6C21316D26366623325D223059242E56232B4519204A29309C85
          899C8D8B8B8481909594999E9FB2ADAFCCC2C2EAE1D7E4CBC199616073283075
          28366C1C2D762234701F2E6A1F2D632934411F259A898C988D8F989090988A8B
          9A8E8AAEA49DBFB5ABA6968AAA978AAB9589A89588A69686AA9D8FAA9F97C7BC
          B4B7A69DAA9489D6B8B3A87A79641D2775233071222F70212E72213070223369
          2431491721826B739591968B9091ACB0AAC5BDACBBA391B78A7F46120C501A1F
          4F1B22521C21571F245B1D296924336B1F31711F3177232F75222B73212D6B25
          324F1D29694E578F8A8B8A908BA0A39ABBBCB3CFD1CBF5EEEBFFE3E44F1D2192
          565C631E286F22307322317A25336E1F2C60212AB4848A9D797FA17F85C29DA1
          B78C8FCD9B9DB4767C8F434E75233072213072213072222F6F253161212D4B1F
          26A2929398928D9A8D85A99992ECE0DCF5EDEDF4F4F4F3F4F2F7F4ECE5DBC9BD
          AC8BD1BC9DFFFAF2E6CCCCC4A8A1A6887D89655D623C374C22234C1B23511B28
          591A2A6F24346C1B2A741E307A2436752133721F2E731E2D762534651B2D5921
          2E4E30359C8D8A9A8C80AA9489D2ADA95F2A2D772F3C711F31721F2E73212E70
          2331672531481B2471575D9A90968D8C90A3A1A1C6C1B8C6B69FBCA98EDDCDBC
          FFFFEEC6AD8DD7B193E3AC9D5D1A177F323A6F1E2D73202F72213070212F6624
          304217207C6569998F8F8B8685928B88C8C1BEDFDBDAECEAE9EFEDEDFAF7F3FF
          FCEFD0C0AFBDA392ECCFC0EBD1CAA0868087625E653F3B4D2624471C1F491A22
          57232D5F242C64232C7526346E1C2E6D1E316D1E31711F32731E326F20335D1F
          2D522E34A2908FA89D99A1988FA6998BE6D4C3FFF8ECCEB2A1D0B190D7B48CD8
          B38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8C
          E2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1
          FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD7B38BD8B28FD6B3
          91C8AB8CF7E1C8FFFEF0E3D6C6C6AC8EDFC09FFFFEE2C3AB8FD9B393D9AF8CDA
          B38DDBB48EDDB390DEA994651E217F2D3F7122306D202E7024306F202D77202E
          78222E70212E73243173212E782332731F317221346C1D306B22326A25346522
          31611E2D6629374D1D293B161E84696C988A8B8C8E8F8B9091A09D9FB6AEAED5
          CCC3DAC1B7A872716C242A7B2C3A6F1D2F7721337522316F24325A1E28451E26
          A18A8F9F8E929D8E929B8A8E9C8B8EA39797AB9F9D9D918DA18F8EA89195A790
          94A394919C918D988F8CA59C999A8E8AA48F8DCCADACA9777B681E2A76213076
          243072202C7421306E203165253144192287747D8E8C928E9195AFB0ACC4BAA8
          C2A491D09A8F6825226F2A356922326C24316C21316F2033701E34711E34731F
          317B202F7C202D7A1F2E70212F541E2B604148958D8D8F938D9E9F96BBBCB3D3
          D5CFF4EEE9FFF9F870444592575B68242B702430701F2E74222F712733531D24
          8B666AA18A8E978689AC9799B39797C79D9E9960636C202B7523307122307021
          2F72222F6E24305A1E285D343BA595969C938FA4928BB3A19AEDE1DDF8F3F2EE
          F3F2EFF4F2FFFFF7E8DBCDC1A991E4C5B0FBD3D48B5F665221234A1518561C21
          5D21295E222C5D1F2B661F307324397622347A2232761F2D772230721F2E7622
          34741B2E762234692433511D276951539C8E88A59285B3998DE2BEB86A383A73
          2F3A6F202E72222F70202D7223316725314E1C2667484F9C92988E8D91A19F9F
          C5BFB8C5B49FBAA68DDCCCBBFFFFEDC9AD8ED9B395EAB4A360201B7D323A701F
          2E752133722032702031682330491A2372575BA296968E89888B8685C0BBBAD8
          D6D5EEEFEDFAF8F8F8F3F2FFFCF2D4BEB2C29E9491625E5726284A161D5A1B24
          611F2A611F2B65223165213264213065202B69212D6B1F2B7627356E20316C1D
          307523366D1C2F6E2535541A256A4549AA9593B9ADA7A79E91AE9F8CEEDBC6FF
          FBECCCB2A1D1AF91D8B38DD8B28FD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2
          F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3
          F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A9
          8FD4B18FD7B38BD8B28FD6B391C8AB8CF7E1C8FFFEF0E3D6C6C6AC8EDFC09FFF
          FFE3C3AB8FD8B292D9AF8AD9B28CDAB38DDDB390E6B49D6A25287D2E3C712230
          70212F71222F74222F79212E77212D6F212C6F232E7322317522317624367422
          346F1D2F6A1B296D22306B22326C2032621B2C62243457222F3B121971585C9D
          96998E8F93939092A8A3A2C4BBB2CCB5ADB58581632025772B37731F317A2232
          75202F6B1F2B68263159252F4920284A27314B29334A28324A283247282F482D
          31452A2E492A314A263247252F40282A3826256B5F5D9E9592948886988784C4
          A8A7A1747768222F742332752532711F2B7522316C212F60242F451C2487737F
          928D96919197AFACA8C3B7A5C4A590EAB0A4671D1B792D396E1F32722032711D
          2F751C30741D31722033711D2F7A1F2E7D212E7C213071222F5B212C57353BA3
          9894A5A69DB2B0A8C3C1B9D7D8D4EDE7E2FFF6F2BD94915D24239B555B651924
          6F1E2D71212E6B232F4F1B22543135A18E918D82849F9595A3908DC6A0A07A41
          446A1E2972202D70212F6E212F71222F6A222E521B24755256A192909F9692A5
          928AB5A29AF9EDE9F6F3EFEEF3F2EFF2F0FDF4F0F1DCD4C7A69782544C4B151C
          54172562232D69262F6B232F69212E6925306A24316E1F326F1D30711B2D721D
          2B77232F72202C722130711F317B25376F1F305F202A481B1E99807CA6968AB5
          9C8CBC9D8EEEC9C17B4B4A6F2E376B1E2C742332701F2E712230682330531F29
          5B3A41A1959B8F8E90A09D9FC1BBB4C2B19CBDAC92D9CBB9FFFFEDC8AC8DD9B2
          92ECB9A56A2A257A2F3771202F752133742032722032682332521E2868474EA3
          9597847F7E948F8EC1BDBCD4D2D1EBE9E9F9F2F5FFF4F4FFF8F37C59554B1717
          591C20601F286B25326D1F30701E317322357021366F20356A1E307326347023
          317223316C1D2B7422347321337220326C212F5D202A4A171E9E7A7AB49C96D5
          C6BDB0A393B7A48FF5E0CAFFFCEBCBB3A1D0AE90DAB28FD8B28FD9B390D6B08E
          D0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2
          F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD
          8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD7B38BD8B28FD6B391C8AB8CF7E1C8FF
          FEF0E3D6C6C6AC8EDFC09FFFFFE4C4AC90D8B391DAB08BD8B18BD7B38BDCB58F
          E9B9A1743434772C3A70212F72213073202F78212F7B212E76202C6A212B621D
          276E28356E28356D2532782C38913D49903D466B1F2A6A202C72213472233867
          203164233259212C3E151C816D72999297918C8E9C9897B6AEA7BFACA4BB918C
          5B1F20782E3A731F31771F2F7921317523306B1F2B6B26335F212D5C1F2D5E21
          2F5F20306122325C1E2C5F212F5D202E5E222D5F212D5F262F582C2D3D1C195C
          4944A1988F958C83968B83BBA8A1A7838361232F7229396D22306E222E6F2230
          69233060242F461B24816973998E98948D94ABA4A1C2B3A3C0A08DF5C0B35E1B
          18883F496E212F71212E78233178202E761E2E72233170212F77223078212F79
          24336E24305C232B4C2729B3A59FC0BDB5CFC9C4D7D4D0DCDCDCF7F2EFFFF4EE
          DAB2AD682F2DA0595C72232E7725326F1F2C6B232F612B323D181C8C777A9186
          889C97969B8C89C29A9B5D22266F263074243170212F6E212F70233166222D4D
          1A228E6F729F9391A39B94AA968BB39F94FFF3EDF6F3EFF2F4F4F8F6F5FFFEFB
          E5C4C1501F1D5C1F236C2633661C2E6C24316A202C6E1F2D73243168242B6924
          2E6E212F7323347526347325306E212973262E70212E6E1F2D6F1F3068202C56
          20207C554DB3998DB49E8CC5A58EC8A38FF2CFC19568646C2C326C212F722130
          71202F70212F67222F56212A4E2C33A1959B8E8D8F9E9B9DBCB6AFC1B09DBAA8
          91DACBBBFFFFEEC6AA8BD7B090ECBAA4793B33782D3571202F731F3174203273
          213369223256212B5A383FA6989A8681828F8B8AB7B3B2D8D3D4ECE6E7FFF9FD
          FBE0E44C2429541E25621E296F25317023316F202E742032752034711F326E1D
          306E1F32722435711F31701C2E742032782332741B2E7722316E222D66262B53
          23226D4844BE9D94C4AA9EF4E1D4BAAA99BFA892FAE3CDFFFBEAC9B49FD1AD8F
          DCB28FDAB28FD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCC
          B9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3
          F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD7B38BD8
          B28FD6B391C8AB8CF7E1C8FFFEF0E3D6C6C6AC8EDFC09FFFFFE3C4AC90D9B492
          DAB38DD7B38BD7B38BDBB48EE8B99E7E413F772D3970212F75223175202F7820
          3077202E6F202B6D2E378C576082515986555D8F5B62874C506C2627803636C6
          7F82772E366E1C2E711F32701F326A2131692530541F283C1B229C8C93989194
          908C8BA8A59DB7A89FBE9A94581F207C323E701C2E792030771E2E7A2331711F
          2C6F202E7023316D22326D22326E20317323347020317525367022336F223072
          2533641D2761252B542827543E39A59A92958C82988F82B5A69DB99A975A1F2D
          732C3D671F2C6F243270212F6B2330642731491A237A5F689E8F97928B90A7A0
          9DC3B3A6B69C8BE4BAAD6E37329A5D616F2B32742B2D722729792C3075292D70
          2A306B272E70272F6E252F6E263264252E5422243D1A16BCABA2E4DED3DFD8D5
          E0DBDCE8E7E9F5F1F0FFF5EDD4B1A7B67F7A7733348F4049701E2B7525326921
          2D5F232D491D2460444A9A8C90938E8D988987B88C8D5D1D226E24306F202E70
          212F6F223072253361212D461A20998183A19895A69E97AB9889BFAA9BFFF3ED
          FAF5F2F3F1F0FEF4F4FFE9EA44151863242D69212D6F20336F1E317022336E21
          2F74213071212E6D252B6B252C7223316E1E2F6B202E6C222E6C232D6B222A6E
          252D6A232D631F2A561A2075463EC7A393BCA18CC3A88ED1AA8ED1A990F0CFBC
          AB817A66282E7427356E1C2E73213371213268222F58212A462228A193998B8A
          8C9D9A9CB9B3ACBFB09DB19F88DCCDBDFFFFF0C7AA8BD8B290EBBBA38B4E4479
          2F35762332751F31731F31732133682131571F2A4F2A32A496988D88898D8988
          BAB6B5D1CBCCF3E6E8FFEBF1431821571D286923307121327220326E1F2D7122
          307420327420327420327523356E1F2D70212F731D2F761D30782234731E2D7C
          2533701F2869252657201B664336C5A899BC9B8BD1B2A3FFF3E3C3AF9DC2AA94
          FCE5CFFFFCE9C9B6A1D2AE90DDB390DAB28FD9B390D6B08ED0B398FFF7EDF5F4
          F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3
          EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FF
          F8E0C2A98FD4B18FD7B38BD8B28FD6B391C8AB8CF7E1C8FFFEF0E3D6C6C8AC8E
          DFC09FFFFFE3C6AE92D5B290D8B18BD7B38BDAB68ED7B38BE7BB9E8A4B47772E
          3876243175202F772133721F2E72233064222D5C3037AC91959F8C8F9C8C8DC9
          B6B3D2B6AFDDB1A4B37E715F231DDD999A7B2C396F1D2F722032712230732431
          63212C4A1D26654851A19699918F8FA09D98A89D95C7A59F5721217A323E701C
          2E771F2F761D2D79212F78212F74222F70212E6E212F6D202E6F223072233173
          202F74222F71212E71212E7421306F202E67222D5622294B3335BDB1ADA89C92
          9D9185B6AAA0D8BBB7581B297A2E406F213271202F75202F71212E68232E531E
          276B4C53A29397918A8DA19C99B3A99FAA998CCDB7AB9D7E7576494579453E83
          4C3F804738844D4081493E804940824B468D55547A45487744488658577C5651
          5B3F34C2B3A3FCF4E7F8F1EEF1EEF0ECEFF3F4F2F1FFF7EBCAAD9EE5B6AE6222
          21A6596171212E71222F6C212F65232F5B232E421A259C858D9791929B8B8CA2
          7074611D246E233170212F7322316E1F2D6E23335E222D502B2FA28E8D9B9693
          A9A49BAE9A89BFAB9AFFFBF3F9F4F1F6F1F0FFFCFF7A4E54591D256C24316C1C
          2D732235701F326E23336C212F77233576212F72222971222B751F31711C3268
          1C2E6E253570283567202A6724295A1B1D551F24AB7E7BD1AB99C9A98CCAAA8D
          D2AF8EDBB18ED6AD8DF0CFBBC29B92632328742735701E317320367222336A22
          2F5F232D451C239A8A91908D8F999698B8B2ABBDAE9BB6A48DDBCCBCFFFFF0C7
          AB89D8B28FE5B69B9C625672282E792635741E30731F317121326B24345A202B
          441D25A597998583838D8988B7B2B1D2C7C9FFF8FB7B525A5619277325366E1A
          2C7520347323346C212F6B232F70233170212F72222F71212E71232E75263177
          202E781F2F7A223276243170212A6620215D2219966856CDAF96C0A88CC9A78F
          E2C1ADFFFEEDCAB2A0C4A994FAE2CCFFFBE8C4B49DD2B190DAB38DD8B28FD9B3
          90D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FF
          FBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFEC
          D7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD7B38BD8B28FD6B391C8AB8C
          F7E1C8FFFEF0E3D6C6C8AC8EDFC09FFFFEE2C5AD91D5B290D8B18BD7B38BD9B5
          8DD7B38BE5B99CA96B656B222A792734772231731D2F7220326D22305E222C46
          22289B8A8D8A8485888783B0AEA4B8AB9BC9AA93DFB59ED29F8F642620BE737B
          6D1C2B6E1D2C7323306D1B2772283458202B46212B9A8C90929090969591A49A
          93BF9F9966333178303D6F1D30762032771F2F78203077202E73212E70212E70
          25336E26336B212D6E222E73242F73222B73242D712029772230782633702430
          5A212A44252CDBCBCCB4A39AA9998CBCB0A4FFECE84E121D863A4C6D1F30701E
          30792230741F2D6D232F60242E4E2C32AD9D9E918C8D989793AAA29B9F958BAD
          A399FFFFF5FFF7EADAB2A0E3B89DEABEA1E2B69EE2B8A1DEB39EFFDBCAFFF8EC
          D2ACA7D1AEAAFFFDF7FFF0E1CCB2A1BBAD97FFFCEBFDF6F3F6F3F5F1F4F8F5F6
          F2FFF9E9C4AB97D8B1A3B9827D813B41863843681C287023316D2532601F2E49
          1826795C65A0979A9A898C8A545B671E2872253370203172213070212F6B2232
          571F2A624346998C8AA19C99ADA89FB4A08EC5AF9DFFF7EDFBF4F1FFF5F5F4D9
          DD4A141B661E2A6D1F307422347321336F1F306D2230702331701C2E721D2B77
          242D74212A7620327624376F273466232C5E1B245F1D2265282697635DF3CCCA
          FFE3DAC5A78CD2B28FD0AD8BDAB28FE1B48FD6AB8AECCDB6DBB7AD5A1A1F7A2B
          39711E34731E34711F326E233160222E431920948387918E90989696B5AFA8BB
          AC99B2A28BD8CBBBFFFFEFC9AA89DBB390E3B69BA66F626F252B7A2736741E30
          7420327222336A23335D212C421921A496988886868C8887B6B1B0D5C8CAEBCD
          D248121F6A2131741E30781E317721336F1F306E23316D2531691F2B6E1F2C74
          25306B1D286F262E6C232B73242D72232C671C24581218672628965C56DAA896
          DCB498C6AA88D1B793CFAA8EE9C5ADFFFFEEC9B19FC4A995FCE4CEFFFDEAC6B6
          9FD0B28FD7B38BD8B38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFF
          F9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5
          F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18F
          D7B38BD8B28FD6B391C8AB8CF7E1C8FFFEF0E3D6C6C8AC8EDFC09FFFFEE2C5AD
          91D4B18FD9B28CD7B38BD9B68BD7B38BE2B699C2877E651D237828357421306F
          1D2F7222336D25325F232D421C229984878C8485878480B4B0A5BDAF9CBEA083
          E0B699E4B69EAB7467873D4180303D71222F6E1F2C72232E6F232F6325313E13
          1E78676B9792939593929E938FC0A09A703D3B742E3B701F3271213272213076
          2130741F2E72222F6E2430601C276728326827306B272E6C242A702428732728
          7A2C2D7020256F21286E21295A1E26391620ECD7DAD2B9AFB39F8ECCBCAFFFFB
          F5763D45863E4B691E2E6E20317323307323307324315F202A401B1FA2939192
          908F8E918F9E9B9698928BA6A39BF5E9DDFBDFCECEA98FDAB28FD9B28BD4AF8D
          D7B493CEAD8CF1D1B4FFF1DCBFA595BAA498FFFDEEFFECD8BEA68EC5B39CFFFF
          EDF8EDE9EEE9EAECEEEFF2F2ECFFF9E3C2AC93CAAC99FFE0D75C2223A45F6967
          1B276D1E2C7222336A233358213046232DA4999C9E8B8E733A426C202C6D1F30
          73223573202F70212F6722314F1B257B6363918884A7A4A0B4ADA4AF9987C8B3
          9EFFFBF1F9F2EFFFFDFEB2919553141E73243170212F732231711E2D76233272
          23316A1B297A263877223074232C6D1F266C1D2A5D1620591D1D6D3530965955
          C78C83E4AEA3D3A79AFFEDE6FFEDDEC6AB89D5B58CDCB693DAB08DE1B48FD5AC
          8BE5C8B3F6D3C956161B7D2E3C701D33731E34701E316F243265232F46171F88
          777B948F91959393B2ACA5B9AA97B09F8AD7CABCFFFFEECAAB8ADCB58FDFB598
          B881726B21277D2A39741F2E7421307121326C233361232F4217209183858B89
          89878382B5ADADDACCCEB18F954F0E1D752335751F31741F2E73202F71202F73
          24326B1C2A7A2A3773233071232E6B252C5E2026551C1F57181A682C2C945E5D
          E8B9B5FFEBE4CFA899D5AC93D3AD8BDAB690D0AF88D5AE8EE6C0A8FFFFEFC6AF
          9FC0A695FBE3CFFFFDEAC3B59ECEB28FD6B38BD8B38DD9B390D6B08ED0B398FF
          F7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F2
          0000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08E
          E1C8A8FFF8E0C2A98FD4B18FD7B38BD8B38DD6B391C8AB8CF7E1C8FFFEF0E3D6
          C6C8AC8EDFC09FFFFEE2C5AD91D5B290DBB48DD8B48CD9B68BD8B48CDFB394D1
          988F651F25792A37711F317221346D1F306D253160242E3F191F8F7A7D968B8D
          86837FADABA0B7AE9AC3A788D7B18FD8B093E4B09F651C1E8B3C476F202D6D21
          2D7526316B1F2B68233052202C5640459B95969793929E928EBF9F997D4A4873
          2B377221346E203171213273202F701F2E6E2430672530844F587E4E547E4C50
          825052945C5BAA706B94544F97564E9F5E559C5B529B5A5290595679585CF7E2
          E0E6CEBCBBA48ED0C0B0FFFDF6AA767679343E762E3B6A1C2D76253470202D6E
          1F2D672530461E207863629894938E918F989493908D89989590EAE1D7FEE4D3
          CEAC8FDAB38CDCB78BD8B48ED0B08CCDAF8CECD1AFFFEDD3C1AA94BDAE9BFFFD
          EAFFEAD4C4AC94C2AD97FFEFDEEADFDBE6E0E1E2E2E2EBE9DFFFF6E0CAB59ABE
          A791FFF8E9A37371804248792F3B742332711D2F6F21326122323E131E8D797E
          A88F9361252D742532722134701F3274213070212F622130461922927E7D8C88
          83AEA9A6BAB1A8BBA691C9B49FFFFDF3FCF6F1FFFBFC936E7265212C74233271
          202F71202F72202D7523306F202E6C212F681F2F601B266222277034359C6267
          B78180D1A497E5B8A3E1AE9AE2AF9BDDAE99CAA694FFEEE3FFF1DFC8AE8AD8B8
          8FD5AF8CDDB493D7AF8CD1AD8FDCC3AFFFE1D8591B217D2E3C6E1C2F741F336F
          1D3071243267222F4A19217C686D959092929090AFA9A4B7A796AF9E89D5C8BA
          FFFFEDCAAC89DCB58EDDB494C99584651E217F2C3B721F2E7421307020316A22
          2F68263247182089787B8886868C8A89AFA7A7D8C7CA916D73661F2F76203271
          1E2D72202D72222F70202D71202F7223316A202C5F1A245E1D266830358B6063
          C8A0A1FFD2CED9ADA6D3B0A6FFFAEFFFF2E4C4A994D4B092DAB58FD8B48CD9B4
          8ED7AE8EE8C3ADFFFCEEBFAC9FBBA391F3DEC9FFF9E7C3B39CCEB28FD7B48CD8
          B38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8C
          E2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1
          FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD7B38BD8B38DD6B4
          90C8AB8CF7E1C8FFFEF0E3D6C6C8AC8EDFC09FFFFEE2C5AD91D4B18FDBB48DD8
          B48CD7B58AD7B58ADAB191E8B1A85F1D227A2E3A7020317021346A1F2F6B232F
          5F232B41191E816A6E92898C868785A5A99EADA996C1AC8DD1B390D7B493E7B8
          A3732A2C8836436E1F2C7024306A1E296F253167212E5B2330482E349D929491
          8C8BA19591B6978E925F5C7127337523356C1E2F6F213271202F6D202E662430
          54202ABB999FA58D8FA88F8DB59B95D8BDB3FFECDFDBB4A6E1B8A2DFB898E4BC
          99E3B897DFBAA0E5D0C1FFFFF2E4D2B5BBA98AD5C4AFFFFFF2DAA9A161212193
          49557020316F1B2D731F31722032682330522326472B2BA49697938D8E938E8F
          8F8B8A95908FD5CAC2E8CFBFC7A588D8B18ADAB387D7B18ED7B492CDAE8DECD0
          B1FFF4D9BCA48CBBA893FFFFF0FFE6D5C2A695C4AD9DF0DFD2D5C9C5D4CCCCD7
          D3D2ECE5DCFFF3DEC7B297BBA78EFFEEDAFFE3DB4D181B9B56606B1B28742130
          6F1F30682233531D2A5C3B42AE8A90601D2674222F732134711F327623326D20
          2E5F22304B222A9A8B898D8A85B5AEABBFB4ACB7A08AC9B49EFFFDF2F5F1ECFF
          FBFC71484F66212E75243371202F71202F7722307624316B1E2C65232F521E28
          795057A28080B2948FD9BFB9D2B8AAC7AC91D0B08CD6AE8BDBB08FDAB496C8AC
          94FFF5E7F7EBD9C8AD8BD2AE88D4B294D0AD93CAA88BC6A790CDB8A9FFE7E25B
          1F257B2F3B6F1D2F722032731F3172233168222F511E26705A5F979294908E8E
          ACA6A1B5A795AD9E8BD2C7B9FFFFEDC9AB88DBB48DD8B290D7A591611C1F7D2D
          3A721F2E7421306F202E6A1F2D6C26334C19217C696C8F8D8C838180ACA7A6D8
          CACC805C626D2434781F326F1E2D70212E72252D72242F6C1C2D6D2434581A26
          824F56AC8489B09494BDABACF7E6E3FEE6DAC4AB9BBCA99AFFF9E8FFF2DFBCA6
          8DD0B190DCB892D5B08AD6B08DD4AC93E2C1AEFFEEE3B7A79BB19F8EE8D7C2FF
          F4E2C5B39CCFB18ED8B48CD8B38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2
          F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3
          F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A9
          8FD4B18FD7B38BD8B38DD6B490C8AB8CF7E1C8FFFEF0E3D6C6C8AC8EDFC09FFF
          FEE2C5AD91D3B08ED9B58DD7B38BD6B489D7B58AD5AE8EFFD0C6511319772F3C
          6F21326D1E317023316D212C65252B481D207D6266908588898989A3A7A1AEAC
          9ABCA78CC8AC8AD0B492E3B6A18A40447A253370202D6E222E7127336C222E6F
          24325B1F2A4120279D8F91938B8B9D928EB3988E9D6D676E222D7B25376C1E2F
          6F21327221306E212F5F212D431821A38E91948888978C889C938ABBB0A2F1E1
          D0BEA591CEB097D0B590D1B68AD2B289C8AC8AE1CFBEFFFBEBDED0B3BEAF8FD4
          C5B2FFFDEFF0C6B96A302A9E585F70212F7422356F1D30742234651F2C5D272E
          3F181A775E62A89A9C938D8E8D8889948F8EBCB0AAD4BFB0C3A88ECBAB87D1AE
          86D6B392D1AF92CBAF91EBD1B3FFEFD4C0A68EC0AB96FFFFF0FFE4D9B89B92A8
          9287D9C9C2BBAFADB9B4B3C5C1C0E7E0D7FFF4E1C3AD94C1AC91FFEAD4FFFFF4
          734746914E55732431711E2D7423326E2333601F2E4E212A8F5F65661D277621
          2F711C30731E327522316B202E58202D5C373F998D8B8E8B86BCB3B0C6B6AFBD
          A690CCB89FFEFBEDF8F4EFFFFDFE906A7069243175233572223371202F762130
          7523306C243152182375535AA38E91958683988C86BDB2AABEB1A1C2AF8ED0B7
          8DDBB791D8B38DCFAF8CC1AB8FFFF4E6FDF0E0CAAE8CD5B08ECEAF96C0A591BA
          9F8AB49C8ABCA9A1FFE8E762272F792F3B732431701F2E74203270212F6B2330
          56212A614B50999496928D8EA9A39EB4A694AD9E8BD0C5B7FFFFEEC9AB88DAB4
          8AD7B18EE0AE9A6220217C2D3A6F1E2D73223171202F6C1F2D6F25315019226B
          595A8B8988838482A6A2A1D6C9CB88646A6A21317C2336701F2E72233070232B
          6F232E6D22325B17287F4D57AF8E929984839A8E8CAAA5A4E0DAD3FBEBDBBBA7
          95BFB19FFFFCEAFFF4DFC1AC91D1B593D1AF8BD7B38FD6B294CCAA93CDB0A1E6
          D4CDA99D93A99B89DDCFB9FDEFDDC8B39DD4B190DAB08BDAB28FD9B390D6B08E
          D0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2
          F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD
          8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD7B38BD8B38DD6B490C8AB8CF7E1C8FF
          FEF0E3D6C6C8AB90DFC09FFFFEE2C5AD91D2AF8DDAB68ED7B38BD6B489D7B58A
          D2AC8CFFE1D952192176303D6D1E316F1F3075243370212A6C262C4E1C207455
          5898888F8A85879E9D99AAA295BCA18CCAAA8DC6AA8BDAB19B7A2E3279203074
          21307223306A202C6F253174253363212D3E171FA08D909991919D928EB29C90
          A97B746C1E298128386F202E6F223075202F7122306022303F161E958487928D
          8C8F8B86948F86B2AB9CDACFBBB7A08AC4A98FC2A88AC3A788CBAC8BC0A289CC
          B6B0F5E5DFD2C4AEAC9F85C7B7AAFFEBE0DAB9A9B285776C2D2FA15965641929
          7223366D1C2F70253567283256232A3E181E977D83958A8C8B86878A8485ADA4
          A0B7AEA1AB9D87BCA787C6AE8AC8AB90C6AA92C1A993E1C9B3FFEDD5C4A994BB
          A593FFF3E7CCAFAA30141364504FBAAEAEA39C9FACA9ABB9BAB8D7D4CCFFF3E5
          C7B29DC0AA8EFFEAD0FFFAECB7928E65272D994D586B1B287322316F1D2F6B20
          2E662A346529316E1C287E26347720346F1A2E73202F6A222F511B2878575E95
          8C898E8B86C4B8B6CEBBB4B9A189CFBCA1FFFFF1F3F0EBFFFDFEA680866A2938
          7121326E1E2F74233275202F6E1D2C6C26334D1923947C848D84878E8686938A
          87B4A8A6B6A89CBDA88CC5AB87CEAD8CCFAE8DCFB48FC7B394F5EADCF2E2D5C4
          A285D9B395927867B19E91A99687A29085B0A09AFBDFDF713B42742D37722631
          71212E7421306F202E6C243156212A523C419A9597938E8FA6A09BB1A391AD9E
          8BCDC2B4FFFFF0CCAC89DAB48AD8B28FE4B59F6C2C2C7C303C6F202D72222F71
          202F6E1F2D702430551C255E494B949291848583A4A2A1CBC3C49C7C816D2636
          7C2336721C2E75243371222B691D286D26375217269A767C9A86859186829591
          8C9F9A97D5CBC4EDD4C4BDA28EB9A697FFF7E6FFEDD9C2A78DCBAF8DCCAE8BCF
          B293CAAC93907665C0AA9FC6B8B29B92899F9583D0C5AFF8EAD8CBB49ED9AF92
          DFAF8DDCB28FD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCC
          B9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3
          F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8
          B38DD6B490CAAB8CF7E1C8FFFEF0E3D6C6C8AB90DFC09FFFFFE3C6AE92D3B08E
          DAB68ED7B38BD6B489D8B68BD1AB8BFFE6DD622C3178323F6D1D2E7321347221
          30711F2B6D252B5621246641459F8B908E85889F9B9A9F968DB09688B99B88BD
          A28DBE9487681D25771E2E7621307424316A202C6D232F701E30682332431D23
          9D8D8E989390A09A93B09B8CBB8D856B1E26822A3A6F202E70212F741F2D7223
          3063253142192187787C94908F8D8984918C83A8A499BEB5A7AA9986B49C88B6
          9E8AB59D87B99D85B39989BEA9A8D8C6C7BBB0A2A59B89B3AAA1E2D2CBC5AD9B
          D3AF9D69322DAF6D72752D39671C2C7424356C1E2F6B232F64252F55202A451C
          24967F849A8D8F9088899E9794A19C93999380A4997EB0A083B7A08AB7A18FB1
          9F8ECDBBAAEBD1C0BEA08FCAAA9FAF8C88451E203F1D23503C41AFA6A98E8A8F
          9D9FA0B8B8B8D2CEC9FDEFE3C1AD9BC0A78DFFEED4FFF6E6D7B6AD662D2CA058
          5E7425326F1B2D76223472233168212B672128782632731C2A751F3176223470
          1F2E6A2532491B278A7076968D89908D85CCBFBDD3C0B8BFA88ECCB99EFFFCF1
          F7F3F2FFF6F7D7B7BC591C2A8137496C1D306E1E2F73202F762534651F2C4C18
          22876D7394898C8B83848D8887A59D9DA49991B0A089B7A286C2A58AC5A88DBF
          A789B7A38AE8D7CEEBD4CCC79C8B6A3F2C2C0F06A7948F9E8E87998B85A89B99
          EDD2D5875156712B326F232E7424317421306F202E6C24305720294C32389E95
          98959092A49E99AFA18FAE9D88CCC1B3FFFFF1CAAC89D8B48CD8B48EE5B9A174
          37357E353F6D212D71212E73212E70202D702430561F28553E42918C8D858684
          A19F9EBEB8B9C5AAAE581A268A3948721E30721E3073242F70242F6722314A14
          2188686D97898A8D88858787819A9793C2B8B1D2BDAEB39A8AB6A396F0DDD0F0
          D7C7BCA18DC0A089CDAB93C4A18D65443531160CA28F8AB2A7A3928A83988F81
          C6BCAAF1E4D4CAB29EDAB093DFAF8DDCB28FD9B390D6B08ED0B398FFF7EDF5F4
          F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3
          EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FF
          F8E0C2A98FD4B18FD9B28BD8B38DD6B490CAAB8CF8E0C8FFFEF0E3D6C6C6AC8E
          DFC09FFFFEE2C3AD91D4B18FD8B48CD9B58DD6B489D8B48CD0AD8CFFE7D97745
          47772B37751F31722033752437691C2A6B26305C23265E3638A68F938E83859C
          9796A09A959F8F89B29995AC8D8A5E2F326D2531721D2C771F2F74222F6D212D
          6D232F74243563202F4C282E9F9391999B95A3A395B5A08BCC9F91631D247B29
          3B7323346F202E6E1F2A6E232B65262F44181F7C6B6F9A9495958A869A8E88A4
          9B98B4ABA79F9389A8988CA8968BAD998EAD968EAB9590AD9B9CC1B3B4B2A8A1
          918F859F9F99BBB8B0B9AB99C4A693C295885E211DD38C8F65192470212F6F1D
          2F71212E70212E67222F581E29471A237E5F66A08F929B949195928A92918399
          95839E9784A59585AA998CA39A8DB8ACA2DEC5BBB4908A6D3D3C541C215F232D
          54252E4730359E979A8A8B8F989A9BBBB9B9D8CFCBF7E7DAC5B09BC0A890FFEB
          D5FFF5E5D0B0A3B684786F2C299847566E192F72203371202F72252D6E212975
          2634732133701C2E73202F74243163212D3D1A24A291959389829C968BD0C6BF
          D7C7BBC0AA8ECEB89FFFF7F1F8EFF2FFF4F7FFF1F64A1822A05D6C651A2F6B1C
          2F7526346E1F2C6E24305C1F2951282FAA9195948789908B8A93908C98968C9C
          9788A19785AE9886B59D89B19B89B6A094E2C6C5A67F81592323541E1E421D21
          937C809589898E87849F9595EBD3D39C676A6F293070212F772433721F2E7122
          2F67222C5822294C2B32A08F93978E91A49B97AFA08DAA9A83CCC0B4FFFFF2C5
          A98ADAB78FD4B38CE5BA9F854844742E356B222C71242C77242D701F286D2630
          5421294730359990938883849C9A9ABCB5B8EFDADD4D1A219E5B64681A2B7422
          3472202D72222F6C2430561E2946242B9F8E928D87888987868F9087A8A69CB3
          AAA09D9187A69690D7C4BFD5C2BAB39D92C2A09A996F6A58252353232239181C
          937E80A498968D8782988F86C3B9AFEDE1D5C6B09ED8B292DDB18CDAB28FD9B3
          90D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FF
          FBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFEC
          D7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD8B490CAAB8C
          F8E0C8FFFEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD91D4B18FD8B48CD9B58DD6B4
          89D8B48CD0AD8CFFE3D4936766742B35762032701E316A1B2E752738671F2B63
          252B57262898777B8D767A8B7678806B6D7B636568464C491E295C212F671E2E
          782534771F2F75202E71232E6E222E6D1E315C1D2D55353AA19895A6ABA2AAAA
          9ABCA48CDBAA9A692329802E406F1E3170203178283570242F65212C531F2968
          49507863667C605F7C5E5D7960647E676B755D5D7B62607C605F7D5F5E795C5F
          7B5E6183686C826B6F6F5F60968F8C878B86A3A49BA29887B69D89DFB7A5A06B
          5E7E3B38CD83875E142071243276213079243370212F6720306123314917234C
          2B32867173A29391988C86988F869F928AA48F87AC9690A28F8AA28B89724F4C
          4E1D1F63222B69212D6B202E5B212C44282E9E98998F9094949899B1AFAFCFC7
          C0F4E7D9C7B49FC0AA91FEE8CFFFFBE9C7AB9AE2B7A2682C20A256616F1C3270
          203170202D72212A73222B6A1D2B6D1F307422347423326F202D6224304D3039
          9F92949387819C9288D2C9C0DCCCBFC1AB8FD1BAA0FFF8F5FDF1F7F1EAEDFFFA
          FDA47B827D434E8741526A1E30691C2A7324316F223068222F541C2749222A87
          707597898BA397959C918D958B84A1918AB39790B6978EAF8F897F5C5952262C
          4D182165232E5F212D421623876C75918486918C8B9C9494DFCAC9AA787A6A24
          2B762534751F3173202F7223306B26305C262D421D27A38E96968C92A19B96AF
          A08DAD9D86C9C0B3FFFFF1C6AA8BD7B68FD3B38AE1B99C935652722C33702731
          73262E751F2975222B65202A58252D3F222B9B8D938883849E9C9CB4AFB1E5D4
          D7A17A7C7A4149954F5C65152678233173212E6C202B62232D4B202B43253084
          6F77978A8CA19692A29990A69C95A0918EAA9594CAAFB2B59C9A81626151282D
          4C172063222B60242E3D161E856F749F93918C8681948B87BEB4ADE6DCD2C2AE
          9CD4B392DAB18ADAB38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFF
          F9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5
          F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18F
          D9B28BD8B38DD8B490CAAB8CF8E0C8FFFEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD
          91D4B18FD8B48CD9B58DD6B489D8B48CCEAD8CFFE7D7A37D7B67242D7926356D
          1C2F7625386D1D2E6F232F651F2663252B511B2243121A471820501F274B161F
          5C222D63202F692030712132721E30751F3177223170202D7627346E22345318
          2785696FAEA7A4B7BAB1BDB6A5C2A48BE8B2A175292D812E3D711E34701D3370
          1C2E701E307023386422354E19264E1D25561E23561B234F1A244F1926511926
          5018234E1A214D1A214E1C264819224C1A243F141D3313189A8889898682A09F
          95AC9F8FB39B87C6A68FE2B5A0874C428F4E4DC481885A14216F202E73202F71
          1F317524376C1D32661F33551E2D41131F421921522E34624346694A4D664445
          5D363851252B49161D5D232867242D6E1F2C75223175213365232F3D1B229A8D
          8F8F8E92939798B2B2B2D4D1C9F4EBDDBEB099B9A68BFFF1D4FFFDE6C3AC96DB
          B69AA77460813C3F8437456B1E2C71222F74232C7725316E1E2F702233712132
          691C2A6C222E59212C684D569D9092998B85A4988EDCD1C9E1D2C2C5AD8FD0B7
          9DFFF8F3F9EEF1F9F3F4FFF5F5FFF3F749161DCC8D97762E3A6A1E2A6D1E2C72
          20326B1D2E6A263757202F4117224F2D3464424870515477585B7754586C3E44
          5B282C4E181D541A1F65263066202D6D202E68233046182581646D9487858B85
          8097938EDBCAC7B78A8D601D247E2B3A761E2E711D2F6E212F68232E5E252E38
          142097848D938D92989892A69D89AA9E86C7BEB1FFFEEEC8AB8CD8B48ED5B58C
          E0B89BA568646A232D762A366D1D2A77202E7722306F24325E242F421F299685
          898A8584979594B4B2B2D1C4C6FFE6E94E2026C58793792E3C6E1927731D2977
          22306F2432602131511E2C40142149242C6342467556577056566E515466444B
          552E36471B224F1C245F232E62202C6D232F672530471C25775D639D918F8C86
          81948C85BBB2A9E4DBCEC0AF9AD2B491D8B18AD8B38DD9B390D6B08ED0B398FF
          F7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F2
          0000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08E
          E1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD8B490CAAB8CF8E0C8FFFEF0E3D6
          C6C6AC8EDDC19FFFFEE2C3AD91D4B18FD8B48CD9B58DD6B489D8B48CCCAD8CF6
          DFCFBD9D9863222B772635742235711F32721E307424317325306D242E69242F
          6A263166243067222F6C24316B1E2C742234731F317420327420327723357320
          2F73242F681E2A63202F4A1927B7A1A6B8B3B0D4D2C8CCBFAFCBA991EBB49F86
          3C3C82303C6E1D307321377A26387420326E1C336C1E356D263666212C6F232E
          7024306B23306821316D233569203069253062232D64253560213163232F5D23
          2E41161F9C838795908D949389A09383B39E88C3A88DD8B59BE9B5A483483F80
          4445CD8C956C222E6B1E2C6B1B2C742336752238702136631E32622434622533
          59212E511D27511D27561E295B1F2A62222E67232E681E2A732330772231741C
          2C7B263567222F441E249B8A8D9E999BACABADC6C4C4D8D5CDF2E9DBC0B29BBF
          AD90FEE9CDFFFEE4C1AE93CEAF8EDDAF97632420A45B65691D296E1F2C73212E
          73212E711F3275243770203170233168242F4A171F866B749A8D8F9C8C85A89A
          8EE4D8CEE4D4C4C5AB8DD2BA9EFFF9F2FAEFF1F7F3F2FEF7F4FFFAFAE1B9BA49
          1011E2A0A577333A681F29721F2E7321336F23356521325A1F2E551F2C54202A
          511E264B19234D18225B1D2B66243068232E6E24306A1F2D6E1F2D7A27366E26
          334A19276E4F569E8E888F897E9C9A92D6CAC6B890925E1F2879293678203076
          233272233169212D6226313F192587737F938F9594938FA19A86A99D85C4BBAD
          FFFCEBCBAC8DDBB48DD9B68BE1B898B77B756B252C732733782736782331721F
          2E7022335E202E431924957E828D8683969591A9A7A7CEC6C7F3E1E2EFCED23F
          0C13DC9BA480333B74212A731F2B6C1C297125376622336425355D2230531E28
          4E1B234B1C24491C254D1A28531C2B612331641F2E6B21336D1F307322316823
          2E44172071565AA89B99928A83998E86C0B7AAE8DFD1C1B09BD2B491D7B38BD8
          B38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8C
          E2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1
          FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD8B4
          90CAAB8CF8E0C8FFFEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD91D4B18FD8B48CD9
          B58DD6B489D8B48CCCAD8CF7E0D0D5B2AE5B1A237827367521336F1B2D792433
          701E2B72232E72232E7323307221307121326F1F30742130792131761C2F7C22
          35771E317620326F1D2F7122306E232B66262C430E1BB8959FD2C4C6D7D0CDED
          E4DBD9C7B6D1AE94E6B49D914D46762A2E6D212D7125316F202972202C772335
          731E32731E2C76202C79212F772230701F2E6F202E72222F73233070212E6C21
          2F6B20356720316E23316C27344B16238E6D74938D88A3A397A89C8AB3A288BE
          AB8ACBB08EE0B49CECB8A89359545A1E1FC68489833E4864202B631D2A6C2131
          6C21316B26356421306A23336E25356A21316A1F2F7222337424356E1E2F7524
          33752231762130771F2F78203073202F65212C3E161BA89395BCB3B6C2BDBFD5
          CFD0EBE3DCFFF2E4C1AE99C1AA90FFE8CEFFFFE6C3AE93D5B794E1B59894564E
          90484E8233406C1B2A762032751E32721D33721C346D182C6E212F63242D4216
          1CAB9499A49697A28F87AB9A8DEEDFD6E9D9C9C5AC8CD4B99EFFFAF2F5EBEBF7
          F6F2F2EFEAFFF5EFFFE3DCB6897E4E170EBF84829756586A1B24701E2B701F2E
          6C1F2D6D25326B25326A26316925306624306924336B21336E1F32701E307220
          327523356F1E2D72202D6B232F511F296A4B4EA8968B97907FA6A89CE3DBD4D3
          B1B151191E772E3872202D741F2E711E2D6E1F2C61212D451A2988707CA099A0
          A19E9AAA9F8BAB9D86CBBBAEFFFBEBD1AB8DDFB28CDCB48AE1B394C78C836721
          277B2E3C6F1D2F6D1827762332712334642332461720917477988E87A09E96B4
          B2B1C9C4C5E5DADCFFFCFEEECCCD451416BB7C7EA3595F6B1C2574222E6C1A2C
          7625386D1C2F7122356C233368213168263267243368213570253A6E1F347623
          39711C30772133741F2D6B242E50212965484BC0B1AE9D928AA19387D0C3B5F6
          E9D9C4B29BD0B38EDAB48AD8B38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2
          F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3
          F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A9
          8FD4B18FD9B28BD8B38DD8B490CAAB8CF8E0C8FFFEF0E3D6C6C6AC8EDDC19FFF
          FEE2C3AD91D4B18FD8B48CD9B58DD6B489D8B48CCEAC8EF4DACCF5D1D1581621
          782839701E31721D317A25347722306F1F2C71222D741F2D76212F701E307321
          34721A2A771F2D7E2332751D2B75212D71212E6D22326A2530601E234F1919B7
          9399E6D0D5E1D9DAE2DED9FBF1E7E1CDBBCEAE91EABBA09F6157712B2C6F262E
          6F232E6F222971222B752231751F31771F2D7C2130771E2E751F31701F2E7122
          2F731E2C75212D711F2C7223316E1F326C1E2F70212E671F2B501621926C72B0
          A49EBDB7AAB6A794B8A387C0AD88CAAF8ADDB396E1B09AE2B2A6E9B6B34D181B
          814B509A616A7D3F4B67212E671F2C651E2E6A23336E20316F1D2F7422347521
          33731D2F771E31792433741F2E741F2D73212E6F1E2D7425326D212C5E202636
          1212B29E9DDBD0D2DDD7D8E5E0DFF6EEE7FFF8E8C0AD98BDA28DFFF1D9FFF9E3
          C4AD93D2B28EDDB494DCA296611D1EA459616F202D6F1B2D741F33731E34741F
          357521336C222E5D242751292ACCB5B9B8A6A5AD978BB8A493FCEEE2ECDCCBC5
          AC8CD2B89AFFF7EFFBF2EFF3F4F0F7F7F1FDF4EBEAD6CBD3AF9FD5A998603129
          7B4342B16A6D88394272222F71212E6E1F2C70212E6E222E6D202E6B202E6C21
          2F712033711F32751F31731F3171213270233173222B6B252C5825295C3935BB
          A391AEA08AB5B2A3F2E9E0E0BFBC4F1A1D77333A71222D75202E75202E752631
          65202D4517248E727FBCB1B9BCB5B2B5A794B09E87CDBDB0FFFCECD1AB8BDEB3
          8CDCB48ADFB291DCA0945F1B1C7B313D6F202E7523307626336D1F3065232F50
          1C23916E6BA6958CBDB8AFC8C5C1D6D1D2E8E2E3FBEFEFFFFAF4D3B2A95D2B25
          7C3F3DAE696C8B4048732231681628752034701B316E1C2F6F1F306E212F6E21
          2F6F1F306D1B2E711C32741D31771E31792432721F286E282E4D1E20583A39DE
          CEC8A99D93AB9B8BE3D1C0FFF3E2C7B39AD1B18DDAB48AD8B38DD9B390D6B08E
          D0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2
          F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD
          8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD8B490CAAB8CF8E0C8FF
          FEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD91D4B18FD8B48CD9B58DD6B489D8B48C
          CEAC8EF7D8CFFFE2E7511321BE72847324397624377B2837772734772B377529
          357F2D39762431792E3E7327397C29387E2A367A2A3173262A73282A6A272C53
          1620450F16844F4CBD9590F5E0DFECE4E5EBE9E8F4F1ECFFFAF0E5D4C1C9AC8D
          DFB499A2675E934E5199505A732935732A34772D397726357B27397D293B7D29
          3B78263976273C73293B752C3C7B29367C28347B2C35782B3378293675293577
          2C346A262D55191F895F60C2AFA8E0D3C5C4AC96C7AA8BCEB18AD7B38DDBAC8C
          DCAE96CBA999FFF7F1FFF9FA9A747A461B24612D3787424F8B404E7D34447126
          367523357824366E1F2D70212F7326346E1F2D762431711F2B7728336F232E65
          202A5D1A21541419834F4FB49691EFE1DBEDE6E3EAE8E7F7F5F4F9F6EEFFF6E5
          C0AF9AC3A894FFE9D6FFF5E1C3AC92D2B28ED9B18EF0BBA782433BAF6B6C873E
          46742A367629377624367726357A2B3670292C531E1B714D47E7D0CECCB9B4B7
          9E8EC2AC9AFFF7E9E8DAC8C2A989D3BB9DFFFBEFFAF3F0F1F0ECF9F9F3FFFBF2
          E7D7CAC3A592E1BDABFFFEF4AF827E571B1B7B36398A41498D414C7F313C782A
          357124327022336E24306D232F6E212F7223317A283570212E6F293666232C6B
          1F23611B1B57201D93665BD1AB93BCA187CDBFADFFF6EBF1CBC6521C1BB5757A
          7429317D2A337E2832792A3368252E461622836570E1D2DADACECCC6B5A0B3A2
          88D1C2B2FFFEEDCBAC8BD9B58DD8B68BDCB491E2A89566221DBE787E6A212B7C
          2E35772831702533692732511B1B8E645FB79F93DFD1C5DAD1CDE2DCDDF4ECED
          F9F0EDFFFFF1D3BDABD9B5A5B2817759201F7030358D48538E4351792A3D7E2D
          407223366C213175293471242C701F287C2A3675243372233173242F71232A6D
          22245A1A194D231E8E726BFAE7DFB7A79AB8A290F5DDC9FFFAE9CAB29AD5B18D
          DCB38CDAB38DD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCC
          B9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3
          F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8
          B38DD8B490CAAB8CF8E0C8FFFEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD91D4B18F
          D8B48CD9B58DD6B489D8B48CCCAD8EF0D6CAFFF3F44819215318265517255F1D
          28652128621F245D20245D21226622236523245A1E245B1F25662124661E1E65
          201D6D2B266D2F277E4742C19596FFD9DAD5ADA1C2A295FBEDE7F4F2F1F3F4F0
          F3F4EBFFFEF1D9CBB5D0B593DDB696BB87775317115D1B1C611F245A2025561B
          23621F26621E255F1C25611E2764212A60212B592029591E266620266B212567
          23245F1D1E6A272A642124591D1E571E1F501A197C544FD5BFB9FFF0E0D8BDA3
          C9A887D7B38DDAB38CE1B391D7AD90C6AB97FFEDE0FFF4F1FFFCFEFFF8FCBB95
          9B7741465C1E245E1F2868252E6D242E71262E742C326D282B6822286E282E69
          2225631E215615175E22236B3737C39191FFD5D1CEA79FC3ADA1FFF3E7FBF5F0
          F4F0EFF8F6F5FAF4EDFFF5E5C5B29DC1A894FFE9D5FFFAE5C6AF95CFB188D9B3
          89E3B498CC978352170E5D2121551A1E5C1E246621246721226A232064251D50
          1E12967366FFECE6E1CEC6BCA38FC8B09AFFFDEDE8DDC9C1AA8AD3BB9DFFF9ED
          F9F2EFF5F3F2F1F0ECFDF8EFE6D9CBC1A993D6BAA2FFFFF2FADACFDCADA5AE74
          6E773A386221206925266D26296E27316B26306C272A6B272868232668212467
          1D215F1C21501A2163303492544EC2867ADFAB9EDFB29DD9AF92CEAC8FD6C2B0
          FFFFF4F4CEC264322C4E18185B1E226520236721225F1F1F5621243A151D6952
          5AFFF1F7F0E4E0D6C1ABBBA68BD6C7B7FFFFEFC8AC8AD7B48CD6B38BDAB38DEA
          B49B632A1B541D1A5D232461201F6321225F232B541C214A1A16815B4FC2A999
          FCEDDDEDE7E0EFEBEAF1EAEDFDF6F3FFFCEED0BFAAC6A792FFE3D4FFEDE5A674
          6E70373560222267242969252C6928316827306624296A272A6D252B651D235A
          161D621F24611E1D6E2C2794534ABA8479D6AFA1DFC5B5FFF8EBC1AE9FC0A793
          FFE4CFFFFDEBCAB29CD5B08EDCB38CDAB38DD9B390D6B08ED0B398FFF7EDF5F4
          F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3
          EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FF
          F8E0C2A98FD4B18FD9B28BD8B38DD8B490CAAB8CF8E0C8FFFEF0E3D6C6C6AC8E
          DDC19FFFFEE2C3AD91D4B18FD8B48CD9B58DD6B489D8B48CC8AD8BE5DAC4FFF9
          ECFFF0E9FFECE8FFF1EDE9C5BFCBA194ECC1B2FFF7E9D3AF9FD3A893CEA58FFF
          DECFE6C3B5D6A792E1AA95E4AE9DE6B2A1E8B9A4DDB7A5FFFCF5FFF9F1C7A893
          C7AA95FFF4EAF9F6F2F1F5EFF2F7EEFBFAECDFD2BCCBAF8CD9B48ED6B08ED8AD
          92DAAB96CCA093FBDBD6FFF3EEE6C0B4CCA596F0CDC0F3D0C3D2A99AC9A293E9
          C9BEFFE3DBD1A096D4A094D1A398CFA297D8A79DD1A29AE4BEB9FFF5EDEFC9BD
          C1A194D7C4BCFFFFF4D9C1A5CFAF8BD7B38DDAB38CDBB48ED4B190C2AB91FFF5
          E2FFF7EDFBF2EEFFF6F2FFFEF9FFE9E3CEA79FB79088CA9C95A9736C82473E82
          483C7B4031874B3F8D52488F5A50A87971DFB4ABC19C94CEAFA6FFFDF4FFE3D6
          C3A999BDAE9BFFFCEBFBF3ECF7F2EFF8F0F0FFF4EEFFF6E7C6AE9ABEA993FDEB
          D4FFFCE5C5B192CFB587D7B685DCB58EDCB393D6A994DAAFA0FFF7EED7B0A7D9
          A89ADEA995E0A994DDA992DAAE97CCA896FFF8EEF3DDD1C5A991CEB59BFFFFF1
          E6DDC9C0AB8BCEB89CFFFBEFF8F0F0F7F2F3F7F3F2FEF8F1E6D9CBBEA78DD7BF
          A3FFFFECE8D2C0CFAD96E1B59EE4B5A0DEAC9AC38C7DA36A61A9706E8B534E89
          52458B5342955D4A9A6251B0766AB3827AFFE1E0FFEEE9D8AD9CE0B29ADAB296
          D7AF92DAB28FD1B08FD9C6B1FFFFF1E9C7B7CAA395E5C0BCFFEEECFFD8D1CBA1
          95CCA99FFFF2ECFAEAEBF4EBEEF5EEF1FFF8F2E0C9B3C1AA90DBCBBBFFFFEFCB
          AC8BD7B38BD9B28BDCB28DDBB18ED4AD91CFAFA2FFF9F1EABDB0CD9F94ECC6C4
          FFF1EEFFE5DABEA493BBAA95FFFFEDF5F6ECF1F6F4F4F3F5F8F2F3FFF8F2D4BE
          B2C7A696FBD6C2FFEBD9D7B09AE1B89FDDB095BD8C76A6756594665E8F625E8F
          605C7E4C4C854F54B37D82C59290B5847CD9A595E5B09CEAB5A0DCAD97CDAB93
          DEC6B0FFFFF0C4B3A0C4A792FFE3CEFFFBE9CBB29ED5B291D9B28CD8B28FD9B3
          90D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FF
          FBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFEC
          D7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD8B490CAAB8C
          F8E0C8FFFEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD91D4B18FD8B48CD9B58DD6B4
          89D8B48CC8AD8BE1DDC5FBFEEEFBF9EEFFF9EEFFFBEFE2D0BFC6A994E7C8B1FF
          FFECD0B99FD2B392CCB08EFCE8CFE4CEB5D6B090E0B391D9AF92D8B094D9B395
          CEB097FFF7EAFFF7E9C1A68BC3A88EFFF3E7F9F5F0F3F5EFF3F7ECFBFAECDCD2
          BACCAE8BDBB58BD8B58AD8B58DDAB492CDAB93F8E7DAFFFEF2E4CAB2C8AD92EA
          D5BFF6DFC9C5A88DCDB095E1CCB7F6E2D1BA9C89C5A490C2A491C8A895C9A490
          CAA898E0CABEFFFDF0EBCDBAC5AA96D5C3B8FFFFF4DBC1A3D0B18ADAB38DD9B2
          8CD9B48ED0B28FC4AE92FFF5DFFDF6EDF6F3EEF7F4EFFFFBF2F7E4D7BFA696CC
          B3A3FFFFF0FFF0DEDDB09BE6B69EE9B89EEBB89EE7B79FDFB49FF8D4C2FFF3E3
          C6AC9CBCA798FFFFEEFFEAD6BCA791BCB098FFFDEAFBF4EBF8F3F0F6F1F0FFF4
          EEFFF6E7C6AE9ABAAA93F9EBD4FFFCE5C4B091D0B386D7B684D9B789D7B38DD5
          B193D6B79EFFFFEED2BAA6D6B195DDB192DFB290DFB291DAB093CEAA92FFF9EA
          F5DECEC6A98ED0B59AFFFFEFE6DCCAC0AB8CCEB89CFFFBEFF8F0F0F7F2F4F8F2
          F3FFF7F3E8D8CBC2A98FD6BEA2FFFFECE5D4BFCAAE90D6B392D9B393D7AF92DF
          B199E1B19FFFE5DAF5C8BBE6B7A1E4B697E5B897EABC9DE4B399D5AD9BFFF2EA
          FEEEE2C5A78ED4AF8DD6B28ED7B28CD9B28BD1AE8CD9C4AEFFFFEDE8C8B1C9A8
          95E4C9BFFFFAF2FFE2D3C4AA99C7B3A2FFFDF1FAF6F1F6F4F3F8F3F4FFFAF2E0
          C8B0C2AA8ED9CBB9FFFFEFC8AD8BD6B38BD9B28CDAB38CDAB78CD1B390CAB7A2
          FFFFF1E5C4B0C9A895E9D0C6FFFAF2FFEEDCBDAB94BDAE94FFFFEBF1F5EAEFF4
          F2F5F2F4F9F1F2FFF9F3D2BCB0C6A693FAD8C0FFEDD4CAAC8FD8B692D6B38BDD
          B794D5B193F1D1BEFFFFF2FFF6EBD3AFA7D3ADABFFFCF8FFF4E7D7B29ED8B094
          DBAF90DFB493D8B191CDAE8DDDC5A9FFFFEEC6B39EC4A890FFE4CCFFFBE9C8B3
          9ED1B293D7B18ED8B28FD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFF
          F9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5
          F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18F
          D9B28BD8B38DD8B490CAAB8CF8E0C8FFFEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD
          91D4B18FD8B48CD9B58DD6B489D8B48CC8AD8BDFD5C3FBF9EFF8F6EEFBF5EEFF
          FAF0E0CDBEC4A792E4C5AEFFFFECCDB79ED1B18ECBAD8AF7E6CBE0CDB2D4AE8C
          DCB18AD8B490D3B38FD7B38DCBAF90FFF9E7FFF9E7C3AA8AC5AB8DFFF3E3FCF4
          EDF7F3EEF8F6ECFFF9ECDFD1BACBAD8ADCB48AD9B488D9B389DAB38DCBAB8EF6
          E6D9FFFEF0E3C8ADC7AA8BF0DAC1F5DDC7D2AF95CAA890DAC6B4E1D3C1A89A84
          A99982AA9580B59D87C2A38CBFA48FD2C3B3FFFFF1E9CFB7C4AA92D5C1B6FFFF
          F2DFC2A3D5B28ADEB28DDDB18CD9B48ED0B28FC4AE92FFF2E1FDF4F0F5F3F3F3
          F4F2F9F5F0F0E0D3BBA795C0AF9CFFFFECFFE7D0CBA88EDCB696DCB392D8AD8C
          DBB292D3AB8FF4D0B8FFF1DAC3A894B8A492FFFFEBFFEED5BFAC91BDB096FFFD
          E9F9F4EBF5F4F0F1F2F0F9F5F0FFF7E6C2B099B8AA93F9EBD4FFFBE6C5AE94D2
          B289D8B484D7B587D6B489D1B18ED2B89AFFFFEACABCA0CEB28FD7B38BDAB48A
          DBB28BDCB28FCEAC8FFFFAE8F2DECCC7A98CD0B698FFFFEFE6DCCAC0AB8CCEB8
          9CFFFBEFF6F1F0F7F2F4F8F1F4FFF7F3E9D7CCC5A893D7BBA3FFFFEEE4D5C2C9
          AD8ED1AF8BD3B18DD4B18FD6B092D0AA92FFE3D5E2BEAED3AC90DDB592DBB28B
          DFB48DE3B391D3AB92FFF1E4FCEFDFC8AC8DD8B68BD9B78CD7B488DAB48AD2B0
          8CD9C4AEFFFFEDEAC9AFC9AA91E1CBBFFFFEF3FAE1CDC2A792C2B19CFFFDECFA
          F7EFF6F5F1FAF2F2FFF8EFE4C8B0C4A98ED7CBB9FFFFECC1AD8AD0B48BD4B38C
          D7B48CD9B587CFB38AC6B79DFFFFEDE4C6A9C8AA8FE4D1C2FFFCEFFFF1DAC0AD
          92C0AD92FFFEE8F6F4EAF5F3F2FDF2F4FFF2F3FFFBEFCFBEABC3A88EFADCBFFF
          EDD2C4A889D1B28BD6B489D8B38DCFAE8DE1C9B3FFFBE9FFEDD8BDA591C4AB9B
          FFFAEAFFF0DCC2A58AD1AF8BD9B68BDBB28BD6B28ACFAF8BE1C8A8FFFFEDC6B3
          9EC4A98FFEE5CBFFFCE9C4B39ECEB294D4B18FD7B38FD9B390D6B08ED0B398FF
          F7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F2
          0000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08E
          E1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD8B490CAAB8CF8E0C8FFFEF0E3D6
          C6C6AC8EDDC19FFFFEE2C3AD91D4B18FD8B48CD9B58DD6B489D8B48CC9AC8DE4
          D5C5FDF7F0F6F3EEF7F3EEFFF8EEDFCCBDC4A792E5C6AFFFFFECCCB69DD0B08D
          CAAD88F7E6CBDFCCB1D3AF8BD9B187D4B48BD1B38AD7B489CCB08DFFFAE8FFFB
          E8C3AA88C6AB89FFF3E3FCF4EDFBF2EEFFF5EEFFF9ECE1D0BBCBAD8AD9B389DD
          B58BDCB38CDCB28DCAAA8DF2E5D7FFFDEFE3C9ABCAAB8AE3CBB5EBD0BCC9A18E
          CBA593D7BFB3D4C6BAA39B8A97907C9F9480A4937EB09882B19C86C4BCABFFFC
          E9E2CDB2C3A991D4C3B6FFFFF2DFC3A1D5B189DCB28DDBB18ED8B48ECEB28FC4
          AE92FFF2E1FBF4F1F4F3F5F3F3F3F9F5F0F2E2D2BEAB96C4B69FFFFFE7FFE9CF
          C9AC8DD1B18DD4B189D6B18BD8B28FD4AE8EF1CFB1FFEED5C6AC94BEAC95FFFF
          EAFEE9CEBDA88CBFB195FFFEE7F9F4EBF5F3F2F0F2F2F8F5F0FFF8E6C2B099BA
          AA93FBEAD5FFFAE8CAAE96D5B18DDAB387D9B488D6B388D3B08ED2B89AFFFFE8
          C8BCA0CEB38ED6B489DAB589D9B389DAB38DCDAB8DFFFAE5F1DEC9C6A98ACFB6
          96FFFFEFE6DCCAC2AA8ED0B79DFFFCEFF5F1F0F7F1F6F8F1F4FFF7F3EBD7CCC7
          A893D9BAA3FFFFEFE5D6C3C9AE8CD1B188D4B48BD4B68DD6B490C7A889FFE4D1
          E0C3AED2AF8DDBB88DD6B185DAB387DDB08AD0AC8EFFF4E2FBF1DFC7AD89D4B3
          86D3B487D4B386D8B589D0B08CD8C6AFFFFFEEE8CAAFC7AA8FDBCBBAFFFDEDFA
          E2CCC1A78FC2B099FFFBEAF8F5EDF8F5F1FCF3F0FFF9F0E6C8AFC4A98ED9CBB8
          FFFFECC2AE8BCFB68CD3B48DD7B48CDAB688D2B48BC7B99DFFFFEBE4C8A6C8AB
          8CE2D2C1FFFCEEFFEED7BFAA8FC1AC91FFFEEBF9F4EBF8F3F2FFF2F4FFF3F1FF
          FCEECDBFA8C2AA8EFADEC0FFEFD3C2A989D2B48BD9B68BD5B189D0AF8EE0C8B2
          FFFFEDFFF4DABCAB90C4B29BFFFBE4FFF7DEC3AB8DD6B88FD9B789D8B185DAB4
          8AD2B289E2C9A7FFFFEDC4B39EC2AA8EFEE5CBFFFCE9C2B49ECCB294D2B28FD7
          B38FD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8C
          E2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1
          FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD8B4
          90CAAB8CF8E0C8FFFEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD91D4B18FD8B48CD9
          B58DD6B489D8B48CCBAC8DEAD7C8FFF8F1F9F3EEF9F3EEFFF9EFE1CFBEC5A991
          E3C8AEFFFFEDC9B89ED1B18DCCAC88F6E8CCDFCEB3D2B18AD9B488D4B48BD4B4
          8BDCB48AD1B18EFFF9E9FFFAE9C5AA88C6AB89FFF3E3FCF4EDFFF2F0FFF3F0FF
          F9EFE1D0BDC9AD8BD7B38BDAB38DDAB28FDAB190C8AA8FF3E6D8FFFEF0E6CBB0
          CEAE91B195843111064C1C164C1D193917182E19188E857C9A97898B8578978F
          7EA0907FA59785B9B6A7EDE9D6E0CCB3C1AB92D2C5B7FFFFF2DBC2A2D2B18AD8
          B28FD6B28ED4B58ECDB38EC4AF90FFF5DFFCF6EFF3F3F3F4F2F1FEF7EEF5E1CF
          BFA990C1B298FFFFE4FFEED2CCB18FCFB28BD6B68BD9B990D5B58CD1B18DEFD3
          B1FFEED3BEA68EB9A992FFFFEBFFEAD0C0AA8EC2B196FFFCE9FCF4EDF7F3F2F2
          F2F2F9F5F0FFF7E6C6AF99BEA993FFEAD5FFF9E9CCAC99D6AF8FDDB28BDCB48A
          D8B18AD7B090D7B59DFFFFECCDBCA2D3B390D9B28BDAB38CD9B28BD7B38BC9AD
          8BFFFAE5EFDEC9C5A98ACFB696FFFFEFE8DCCAC4A98ED0B79DFFFCEFF3F1F0F5
          F1F6F7F2F4FFF7F3EBD8C9C8A990DBBDA2FFFFEEE4D6C0CBAF8CD6B588D6B78A
          D6B78AD7B88BC7AA85FAE3C9DDC4AACEAF88D6B486DAB688DDB88CDBB389CDAE
          8DFFF5E1F9F0DCC5AB87D5B487D4B98DD5BA8ED5B487CBB08BD3C6B0FFFFEFE3
          CBAFC3AB8FD9CEBAFFFFEBFCE4CCC6AB91C7B29CFFFBEBFAF4EDF8F3F2FCF2F2
          FFFAF1E6C8AFC6A98EDACBB8FFFFECC6AE8AD5B58CD7B38DD8B48CDCB589D2B3
          8CC7B89EFFFFEBE5C9A6C8AC8AE1D1C0FFFCEEFFEED8BFAA8FBFAB92FFFEECF9
          F3ECF7F2F1FDF0F2FEF2EEFFFCEECDC1A9C1AB8FF7DDBFFFEFD3C3AC8CD6B68D
          DAB48ADDB48DD5AF8FDEC5B1FFFDEBFFF0D7B9A68BC1B096FFFBE1FFF0DAC1A9
          8BD5B78ED6B486DBB488DDB78DD1AE86E0C5A3FFFFEDC2B49EC2AA8EFEE6CAFF
          FDE7C4B49DCEB293D4B28ED7B38FD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2
          F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3
          F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD8DCBB08EE1C8A8FFF8E0C2A9
          8FD4B18FD9B28BD8B38DD8B490CAAB8CF8E0C8FFFEF0E3D6C6C6AC8EDDC19FFF
          FEE2C3AD91D4B18FD8B48CD9B58DD6B489D8B48CCBAC8DE9D6C7FFF6F0F8F2ED
          F9F3ECFFF9EFE2CEBDC3A88EDEC6AAFFFFECC8B79DD2B08CCDAC85F7E6CBDECD
          B2D0B18AD9B488D8B58DD8B58DDFB58BD4B190FFF9EBFFF9EBC6AA8BC8AD8BFE
          F3E5FBF5F0FEF2F2FFF3F1FFF8F0E0D1BEC9AE8CD5B58CD6B28AD8B18BD8B290
          C8A990F4E4D7FFFCEEE2C9AFC9AB8EFDE3D28D6C63602D2B5A23265826304922
          2A2F17199B8C8A9A948D8A857C998D819C9183A7A698E1DDCBD9C7B0BDA893CF
          C4B6FFFFF2DBC1A3D2B08CD7B38FD6B28CD4B58ECEB38EC5AE8EFFF5DEFCF6EF
          F4F2F2F5F1F0FFF8EFF8E2D0C1A78FC7B69CFFFFE6FDE8CCC3AA88D1B48DD5B5
          8AD3B38AD3B28BCAAD88ECD1AFFFEFD4C0AA91BBAA95FFFFEBFFE8D0C4AB91C6
          B097FFFBEAFCF4EDF7F2F3F0F2F3F9F4F1FFF6E7C7AF99BEAA91FFEAD4FFF9E9
          CCAC99D7AF92DEB28DDCB48AD9B28BD8AE91D8B49CFFFFEBCEBAA1D1B18ED7B0
          89D6B18BD6B18BD6B28CC8AD8BFFFAE7ECDECBC5A98AD1B596FFFFEFEADBCBC6
          A98ED2B79DFFFCEFF1F2EEF3F2F4F5F3F3FFF8F1E9D9C8C6AA8CDBBFA1FFFFEF
          E3D4C1CCAE8BD8B589D8B789D4B687D4B687C9B086FBE6CADDC7ABCFB38AD6B5
          87DAB48AD3B085D7B58ACAAF8DFFF5E1FFF2DCCBAD8AD7B489D1B38ACCB087D7
          B689CCB18CD3C5B2FFFFEFE0C9AFC1AB8FD9CEB8FFFFEBF9E1C9C2A98FC7B29D
          FFFCECFAF4EFF6F2F1F9F1F1FFF8F1E3C9B1C4AA8CDACBB8FFFFECC9AD8AD7B5
          8AD8B48CDAB38CDAB288D0B08CC8B69FFFFFECE4C8A5C7AB89E3D1C0FFFBEEFF
          F0DBC0AA91BAAA93FFFEECF9F3ECF6F2F1FBF0F2FEF3EFFFFCEECFC1AAC2AC90
          F6DCBEFFEED3C3AB8DD5B48DD7B187DCB28DD5AF91DEC4B3FFFAE9FFF1D8C0AD
          92C7B69CFFFBE4FFF4DFC4AB91D3B48DD6B185DCB287DBB389D1AC86E7CBACFF
          FFEEC2B3A0C2AA8EFFE5CAFFFCE7C6B49DD1B291D7B18ED8B28FD9B390D6B08E
          D0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCCB9C4AA8CE2CCB0FFFBF3F7F2
          F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3F3F7F2F1FFF9EFECD7C1C6AD
          8DCBB08EE1C8A8FFF8E0C2A98FD4B18FD9B28BD8B38DD8B490CAAB8CF8E0C8FF
          FEF0E3D6C6C6AC8EDDC19FFFFEE2C3AD91D4B18FD8B48CD9B58DD6B489D8B48C
          C9AC8DE7D7C7FFF8F1F8F4EFFAF4EDFFFAF0E1CFBEC2A98FDDC7ABFFFFEDC9B8
          9ED6B08DD2AD87FBE6CBE0CDB2D3B28BDCB48ADAB38DDBB18CDDB28BCEAF90FF
          F6ECFFF7EDC5A78AC9AA8BFFF3E7F8F5F1FAF2F3FDF3F3FFF9F0DDD1BFC5AF8C
          D5B58AD9B789DAB589D9B48ECAAC91F7E5DAFFFCF0DEC8AFC1A98DEDD6C0F8D9
          CA55201DBC7C815E1926601F2E5C253446212B9D90928D888590847E9489819E
          9990D0C7BACCB4A2BDA593CCC0B4FFFFF0DEC0A5D5AF8DD8B38DD7B28CD9B48E
          D4B28EC6AD8DFFF5DFFCF6F1F5F1F6F6F1F3FFF6F2FCE2D4C5A893C2AD98FFFF
          EDFFEED5C4A98ED0B28FD6B58ED7B38FD6B391CEB08DEED3B1FFEFD5C1AA94BB
          AA97FFFDEBFFE5D0C5AB93C6B097FFFBEAFCF3EFF5F2F4EEF2F3F6F5F1FFF7E7
          C6B097BEAC8DFFEDD0FFFAE5CAAD98D4B190DAB38CD8B589D7B489DAB191DAB7
          9DFFFFEDD0BCA3D3B390D7B38BD7B38DD5B48DD2B38CC4AE8BFFFBE7EBE0CCC4
          AB8BD2B698FFFFEFEBDBCBC9A88ED4B69DFFFCEFF1F2EEF1F3F4F3F3F3FFF8F1
          E8DAC8C4AA8CD6BEA0FFFFF0E3D5C3CDAE8FD8B48CD9B68AD6B587D2B485CAB1
          87FEE9CDDBC6ABCCAF8AD6B38BDCB491DBB592D2B38CC4AE8BFFF2DFFFF0DBD2
          AD8BDFB48DD9B591D5B48DDBB68AD1B18DD6C5B2FFFEF1E2C8B0C2A98FDBCDB6
          FFFFE9F7E1C8C0A890C5B19FFFFCEEF9F4F1F6F4F4F6F4F4FFFCF3E0CAB1C0AB
          8CDACBB8FFFFEBC9AE89D8B58ADAB38CD9B28BDBB28BD3B08ECCB7A2FFFFEEE7
          C9A6C8AC8AE4D1C2FFFBF0FFEEDABFA990B8AA94FFFDECF7F3EEF7F2F3F9F4F3
          FEF5F1FFFBEDD4BFAAC8AA91F9DCC1FFECD4C2AA8ED3B48DD8B18ADBB390D1AC
          90DFC6B6FFFDF0FFEFDAB8A48BBEAC95FFFBE6FFF3E1C1A78FD2B08CD9B389E0
          B58EDEB48FD3AD8AE3C5A8FFFFF1C2B2A1C4A98EFFE6C8FFFCE6CAB49BD7B290
          DBB18CDAB28FD9B390D6B08ED0B398FFF7EDF5F4F0F8F3F2F9F3EEFFF9F1DDCC
          B9C4AA8CE2CCB0FFFBF3F7F2F3F7F3F20000F6F3EFF7F2F3F7F2F3F5F2F4F5F3
          F3F6F2F1FFF9EFECD7C1C6AD8DCCB08EE3C7A8FFF9E0C2A98FD4B18FD7B38BDA
          B38DD8B490C8AB8CF7E1C8FFFEF0E5D6C6C8AC8EDFC09FFFFDE3C3AD91D4B18F
          DAB38CD9B58DD6B489D7B48CC9AD8BE6D8C6FFF8F1F8F3F0FAF4EFFFF9EFE0CE
          BDC1AB8FDFC9ADFFFFECC9B89ED6B08ED3AA89FBE5CCDFCBB2D2B08CDCB48ADC
          B28FDCB28FDCB28DCEB192FFFAEDFFFAEDC6A88DC7A98CFFF3E7F8F5F1F7F2F3
          F9F4F3FDF8EFDCD1BDC7AE8CD5B58AD9B68ADAB589D7B28CCAAA8DF6E5D8FFFD
          F0DEC8AFC2AA8EEAD6BDFFE4D0A8756B7B393AA95D696618296B233750192A44
          2A30A498989A8B8990848099918AB8AFA2C3AC9CB69D8DC8BDAFFFFFEDE0BFA5
          D8AF8EDBB48ED9B28BDAB38DD4B18FC5AD8FFFF4E1FCF5F2F4F3F7F4F1F3FFF5
          F1FAE0D2C3A894C5B19FFFFEEBFFEAD4C8AD92D0B28FD2B08CD7B18FD8B391CB
          AF8CEDD4B2FFEFD3BEA690BDA997FFFFEFFFE8D4C2A792C6AF99FFFBEAFCF3EF
          F5F3F3F0F2F3F8F5F1FFF7E7C6B097C1AE8DFFEDCEFFFBE4C6AE96D1B18ED7B3
          8BD7B48CD6B38BD9B18EDAB89AFFFFEBD1BBA2D2B28ED6B28AD4B38CD2B28ED2
          B38CC4AE8BFFFCE8EBE0CCC4AA8CD2B698FFFFEFEDDBCAC7A98ED4B69DFFFCEF
          F1F2EEF1F3F4F3F3F3FFF8F1E8DAC8C2AA8CD5BD9FFFFFF2E4D4C7CCAE91D7B3
          8BD8B58AD8B589D8B78AC7AC87FBE6CBD9C4A9CEB08DD9B48ED5AF8DD8B391D2
          B28EC6AF8FFFF4E1FFF1DCD0AA8ADCB08BD8B290D7B18EDBB389D2B08CD8C4B2
          FFFFEFE2C8B0C5AA8FDECEB7FFFFE9F9E3CABFA892C4B09EFFFAEEF6F3EFF2F1
          F3F3F3F3FFFAF1DECBB0C0AB8CDACBB8FFFFECC9AD8AD8B58AD7B38BD9B28BDA
          B18AD5B08ECDB5A3FFFFEEE4C8A6C6AB89E2CFC2FFF8F0FFEEDABFA990B8AA94
          FFFDEFF8F5EDF5F3F2F4F2F1FAF4EFFFFAEED4BFAAC7AA8FFBDDC0FFEED4C2AA
          8ED5B38FDAB38CD9B28CCFAD90DBC5B9FFFAEEFFEFDAC1AB92C5B09AFFFBE6FF
          F1DFC3A991D6B391DDB48DDBAF8ADBB18ED5AF8DE2C4A7FFFFF1C2B2A1C4A98E
          FFE6C8FFFCE6CBB39BD8B290DDB28BD8B28FD9B390D8B08DD1B398FFF7EBF7F4
          F0F8F3F0FBF2EEFFF9F1DDCBBAC4AA8CE2CBB1FFFBF3F7F2F3F5F3F20000F7F2
          EFF7F2F3F7F2F3F5F2F4F5F3F3F6F2F1FFF9EFECD8BFC8AD8BCEB08DE3C8A6FF
          FADFC0A98FD2B28FD7B38BDAB38CD8B490C5AC8CF3E2C8FFFDF1E6D5C8C9AB90
          DFC09FFFFDE3C5AD91D6B18FDAB38CDBB48DD7B38BD5B58CC6AD8BE4D8C6FEF8
          F1FAF3F0FAF3F0FFF9F1DFCFBEC2AA8EDFC7A9FFFFEBCBB79ED3B08FD1AB8DFB
          E3CFE2CBB5D2B08CDAB38CD8B290D6B090D8B38DCDB091FFF9E9FFF9E9C5A88D
          C6A98EFFF3E5F9F4F1F5F3F3F6F5F1FFF8EEE1D0BBC9AD8ED5B48DD5B38FD7B3
          8DD8B28FCBAC8DF6E7D4FFFEECE1C7AFC4A98FEAD6BDF5DAC5E4B5A073362CB2
          69717B2D3E6B1C31631F30461A215D4141A89392918482918982A79F92B2A08F
          AC9886C0B6A4FFF9E3DEC0A3D9B08FDBB18CDBB18CDAB28FD2B190C3AC92FFF2
          E2F9F5F0F3F3F3F0F2F2FCF6EFF8E1D1C0A892BFB19FFFFFECFFECD1C6AD8DCF
          B58DD2B48BD8B38DD7B38DCBB08BECD4B0FFF1D3BEA78DC1A995FFFEECFFE8D4
          BFA793C2AF9AFFFCEAFAF5ECF5F4F0F4F2F1FBF5F0FFF6E7C7AF97C3AB8FFFEC
          D0FFFCE6C3AE98D1B18DD9B28BD8B290D6B18FD6B38BD7BA95FFFFEAD3BBA3D3
          B18DD7B38BD6B490D2B28ED2B38CC5AC8AFFFCE6ECDECBC3A98BD3B799FFFFEE
          EBDBCAC6A98ED0B79DFFFCEEF5F2EDF3F2F4F5F2F4FFF8F1E9D9C8C2AA8CD4BE
          A2FFFEF2E3D1C6CBAE8FD7B489D7B488D8B589D7B48CCAAB8AF8E4CBDBC5ACCE
          B18CD7B38BD8B38DD8B28FD4B28EC8AC8DFFF5E2FFF0DBC8AC89D8B48CD7B18F
          D9B08FDAB38CCEAE8ADBC6B1FFFFEEDFC9ADC4AC90DFCBB9FFFEECFBE1C9C2A8
          90C4B09FFFFBF1F7F4F0F1F3F3F5F3F3FFFBF1E3CBADC3AA8ADACAB9FFFFF0C7
          AC8AD4B48BD5B58CD7B38BDDB389D6B08DCEB5A1FFFFEEE1C8A6C2AB8BE1CFC4
          FFFAF1FFEFD9C1AA90BBAA97FFFCEEF9F4EBF5F5EFF5F3F2F8F4EFFFFBEFD2BF
          AAC5AB8DFADDBEFFEED3C6AA8CD7B38DD9B389DAB38CCEAE91D7C6B9FFFBF2FF
          EDD7C3AB8FC3AE98FFFCE5FFF4DBC3AB8DD7B38FDCB28DD9B18ED8B290D2AF8D
          E2C6A7FFFFEEC2B49EC2AA8EFFE6C8FFFCE7CBB39DD5B290D9B28BD7B38FD8B4
          90DAB08DD5B396FFF7EBF8F4EFF8F4EFFBF2EEFFF8F1DFCBBAC4AA8CE1CCB1FF
          FAF6F3F2F4F5F3F30000F7F2F1F8F3F2F7F2F3F5F2F4F3F3F3F4F2F1FFF9EFEC
          D8BFC8AD8BCEB08DE4C8A6FFFADFC0A98FD0B28FD7B38BDAB38CD8B490C3AC8C
          F1E2C8FFFDF1E8D4C9C9AB90DFC0A1FFFDE3C5AC92D6B18FDCB38CDBB48DD7B3
          8BD5B58CC6AD8BE4D8C6FEF9F0FAF2F2FCF3F0FFF9F1DFCFBEC2AA8EE1C7A9FF
          FFE9CBB79ED3B08FCFAB8DFBE3D1E2CAB6D2B08CDAB48AD7B290D6B090D7B38D
          CDB18FFFFAE8FFF9E9C3A98BC4A98EFFF2E5FBF5F0F3F3F3F6F5F1FFF9ECE3D1
          BACAAD8ED7B38FD5B290D5B290D8B28FCBAC8BF6E8D2FFFFEBE1C7AFC4A98EEC
          D8BFEFD7BFD5AC93DBA392612022BC748166182968202D5E252D43171D6B4C4F
          A99496A19593B2A9A0AD9A8BAA9986BBB4A1FFF5DFDABEA0D5AF8DDBB18EDBB1
          8CDAB28FD2B190C3AB93FFF2E2FBF5F0F3F3F3F2F3F1FCF6EFFAE2D0C2A792BF
          B19FFFFFECFFECD1C8AD8BCFB58DD2B48BDAB38CD8B38DCDB08BECD4B0FFF2D2
          BEA78DC1A995FFFEECFFE8D4BDA893C2AF9AFFFCEAFAF5ECF5F4F0F4F2F1FDF5
          EEFFF6E7C7AF99C3AA90FFECD1FFFBE8C1AF98D1B18DD9B28BD8B191D6B090D4
          B489D5BB93FFFFEAD3BBA5D3B08ED9B28BD6B490D2B28ED4B38CC7AC8AFFFCE6
          EDDECBC3A88DD3B69BFFFFEEEBDBCAC4A98ED0B79DFFFDECF6F2EDF3F2F4F5F2
          F4FFF8F1E9D9C8C2AA8CD6BEA2FFFCF4E5D1C6CBAF8DD7B488D9B488DAB589D8
          B38DCAAB8CF8E4CBDBC6ABD0B08CD9B389DAB38CD8B38DD6B28EC9AC8DFFF5E2
          FFF1DBC7AD89D5B58CD7B18ED9B08FDAB38CCEAE8BDBC6B1FFFFEEDFCAABC2AC
          90DFCBBAFFFEEDFDE2C8C4A98FC4B09FFFFBF1F7F4F0F1F3F3F7F2F3FFFBF1E5
          CCACC5AA88DACABAFFFFF1C7AC8AD4B48BD5B58CD6B38BDDB389D6B08DCDB6A0
          FFFFEEDFC9A6C0AB8CE0D0C4FFFAF1FFF0D7C1AB8FBDA997FFFCEEF9F5EAF7F4
          EFF5F3F2F8F3F0FFFCEFD0BFAAC5AB8DFADEBCFFEFD1C7AA8BD8B38DDBB389DA
          B38CCEAF90D7C5BAFFFBF2FFEDD5C5AA8FC5AE98FFFCE5FFF5DAC3AC8CD7B38F
          DCB28DD9B08FD7B290D2B08CE2C6A7FFFFEDC2B49EC2AA8EFFE5CAFFFBE9CBB2
          9ED5B291D7B38BD5B38FD8B490DAB08DD5B396FFF7EBF8F4EFF8F3F0FBF2EEFF
          F8F1DFCBBAC4AA8CE1CCB1FFFBF6F1F2F6F5F3F30000F7F2F1F8F3F2F7F3F2F5
          F3F3F3F3F3F4F2F1FFF9EFECD8BFC9AD8BCEB08DE4C8A6FFF9E0BFA990D2B28F
          D7B38BDAB38DD8B490C3AC8CF1E2C8FFFDF1E6D5C8C9AB90DFC0A1FFFEE3C3AC
          92D6B18FDCB28DDBB48DD7B38BD5B58CC6AD8BE6D8C6FFF9F0FCF2F2FEF2F0FF
          F9F1E1CFBEC4A98EE1C8A8FFFFEBCBB79ED5B08ED1AB8BF9E4CFE0CBB5D2B18A
          DAB589D8B28FD7B18FD8B38DCDB091FFF9E9FFF9E9C5A98BC6AA8CFFF2E5FBF5
          F0F3F4F2F6F5F1FFF8EEE1D0BBCCAD8CD7B38DD7B38DD7B38FDAB38DCBAC8DF5
          E7D4FFFEECDFC8AEC4A98EEAD6BDF5DFC6D2AB8FE5B39F98615E854951A7626C
          661F296826315B212C43161F836269BDABB2C5B7B8C0ABA3AA978AB9B3A6FBF3
          E2D3BAA0D2AF8ED8B290D9B18ED8B28FD4B190C7AC92FFF1E2FFF4F0F7F2F3F6
          F2F1FFF6EEFDE2CEC6A790C2B09FFFFEEDFFEAD2C9AC8DD3B48DD6B38BDAB38D
          D8B28FCDB08BEED4B0FFF1D3BEA78DC1A995FFFEECFFE8D4BFA892C4AF9AFFFB
          EBF8F5EDF3F4F2F2F3F1FBF5F0FFF6E7C7AF99C1AA90FFEBD2FFFBE8C1AF98D1
          B28BD9B389D8B290D6B18FD4B48BD5BA95FFFFECD3BBA5D3B08ED9B28BD8B490
          D4B28ED4B38CC7AB8CFFFBE8EDDDCCC5A78ED3B69BFFFFEEEADCCAC4A98ED0B8
          9CFFFCEEF5F2EDF3F2F4F5F2F4FFF8F1E9DAC7C4AB8BD8BEA0FFFDF2E5D2C5CD
          AF8CD9B587D9B488DAB589DAB38CCCAC89FAE5CADBC6AAD2B18ADBB488DCB38C
          DAB38CD7B28CC9AC8DFFF4E3FFF0DDC7AD88D7B58AD7B18ED7B18EDAB38CCEAE
          8BD9C6B1FFFFEEDFCAABC2AC90DDCBBAFFFDEEFBE1C9C4A98FC4B09EFFFBF1F7
          F4F0F3F2F4F5F3F3FFFBF1E5CBADC5A98ADACABAFFFFF1C8AC8AD6B489D7B48C
          D7B489DDB388D5B18BCBB6A0FFFFEEDFC9A6C2AB8BE0D0C3FFFAF1FFF0D7C3AA
          90BFAA95FFFBEEFBF4EBF7F4EFF7F3F2FAF3F0FFFBF1D0BFACC3AB8FFADDBEFF
          EED3C7A98CD8B38DDBB389DCB38CCEAF90D7C6B9FFFBF2FFEDD5C3AB8FC3AE98
          FFFBE6FFF4DBC3AB8DD7B38FDCB28DD9B18ED8B290D4B08CE2C6A7FFFFEDC2B4
          9EC0AA8EFEE5CBFFFBE9CBB29ED5B291D9B28BD5B38FD6B490D8B08DD3B298FF
          F6EDF7F4F0F7F3F2FBF2EEFFF8F1DFCBBAC4AA8CE1CCB1FFFBF4F3F2F4F7F2F3
          0000F7F2F1F8F3F0F8F3F2F5F3F3F3F2F4F4F2F2FFF9F0EED8BFC9AD8BD0B08D
          E4C7A8FFF8E2C0A890D4B18FD9B28BDCB28DD8B490C5AC8CF3E2C8FFFEF0E6D6
          C6C9AB8EDFC09FFFFEE3C3AD91D6B18FDEB38CDBB48DD7B38BD7B48CC9AD8BE7
          D7C6FFF9F0FEF2F0FEF2F0FFFAF0E3CFBDC6AA8CE3C7A8FFFFEBCBB79ED6B18B
          D2AC89F9E4CFE0CBB5D2B289DCB588DAB38CD9B28CD8B48CCDB091FFF9E9FFF9
          E9C6A88BC7AA8BFFF2E5FBF5F0F5F4F0F8F5F0FFF8EEE1D0BBCCAE8BD8B58AD8
          B48CD8B48CDCB38CCDAC8BF5E7D4FFFEECDFC9ADC4AB8BE8D5BAF2DDC2CFAB8D
          D6AD94FFDCD5612F2F9A5E5E7735366F2C3167272D5B252A350D12A18B90F2E0
          E1CCB3A9B59E8FC2BAADFFF7E6D5BBA3D3B08FD9B390D9B28CD7B28CD4B18FC9
          AC91FFF2E1FFF3F1F8F1F4F7F1F2FFF6EEFFE2CDC6A88FC2B09FFFFEEDFFEAD2
          C9AC8DD5B38FD6B38BD8B28FD8B28FCFAF8BEFD3B0FFF1D3BEA68EC1A997FFFE
          ECFFE8D4BFA892C4AF99FFFCEAF8F5EDF3F3F3F2F2F2FBF5F0FFF7E7C6AF99C1
          A991FFEBD2FFFBE8C3AF96D3B28BDBB488DAB28FD7B18FD6B38BD5BA95FFFFEC
          D3BBA5D3B08ED9B28BD9B48ED6B28CD4B38CC7AB8CFFFAE9EDDDCDC5A78ED3B5
          9CFFFFEEEADCCAC4AA8CD0B89CFFFCEEF5F2EEF3F2F4F5F3F3FFF9F0E9DAC7C6
          AA8BD8BEA0FFFEF2E3D3C3CDB08BD9B587D9B488DCB48ADAB38CCCAC88F8E5CA
          D9C7AAD4B189DDB388DCB48ADAB38CD7B28CC9AC8DFFF4E3FFF0DDCAAD88D8B5
          89D7B28CD9B28CDAB48ACEAE8BD9C5B3FFFFEEE1C9ABC4AC8EDBCBBAFFFEEEFB
          E1C9C4A98FC4B09EFFFBEFFAF3F0F5F2F4F5F3F3FFFBF1E5CBADC5A98ADCC9BA
          FFFFF1C8AC89D7B488D8B58AD9B389DDB388D5B18BCBB6A0FFFFEDE1C9A5C2AB
          8BE1D0C3FFFBEFFFEFD9C3AA90C1A995FFFBEEFBF3ECF8F3F0F8F3F2FCF3F0FF
          FBF1D0BFACC3AB8FFADDBEFFEED3C9AA8BD8B38DDBB389DCB48AD0AF8ED9C6B7
          FFFCF0FFEDD5C3AB8FC3AE98FFFBE6FFF4DBC3AB8DD7B38FDCB38CDBB18CDAB2
          8FD4B08CE3C7A5FFFFEDC2B49EBFAA8FFCE5CBFFFAEACBB29ED7B290D9B28BD7
          B38DD6B490D6B08ED1B299FFF7EDF5F3F2F7F3F2F9F2EFFFF8F1DFCBBAC6AA8C
          E2CCB0FFFCF3F5F3F3F7F3F20000F6F2F1FAF3F0F8F3F0F5F3F3F3F2F4F4F2F2
          FFF8F0EFD7BFCDAC8BD2AF8DE6C7A8FFF7E3C2A792D6B18FDDB389DEB38CD9B4
          8EC8AC8AF5E2C7FFFEEEE6D6C5CBAC8DE1C19EFFFFE0C3AE8FD7B18EDFB28CDD
          B58BD9B389DAB48ACBAD8AE9D8C5FFF8F0FEF2F0FFF3EFFFFAEEE5D0BBC7AA8B
          E4C8A6FFFFEBCBB89DD8B18AD4AD86FBE4CEE0CCB3D4B287DEB685DEB489DBB2
          8BDAB48ACFB08FFFF9E9FFF9E9C8A988C9AA89FFF3E3FDF5EEF7F4EFF9F6EEFF
          F9ECE1D0BBCEAE8ADCB589DCB589DCB589DFB38ACFAC8BF5E7D4FFFEECE1C9AB
          C6AB89EBD9BCEFDABECFAE8DCEA98DFFDECFEDC9BF5221136C31226E30257033
          296833265F3529432A28F1DDD8EBCDBAC2A590D1C2B2FFFDEBDABFA5D5B08EDB
          B48ED9B28BD6B38BD2B28EC7AD8FFFF2E0FDF4F1F7F2F4F7F1F2FFF6EEFDE3CB
          C4A98EBFB19EFFFFEDFFEAD4C8AC8ED3B38FD4B48BD7B38FD5B38FCFB089EFD3
          B0FFF1D3BEA68EC1A997FFFEECFFE9D3C0A890C6B097FFFCEAF8F5EDF3F3F3F0
          F2F3F9F4F1FFF7E7C6AF99C1A991FFEBD2FFFBE6C6AF95D6B28ADEB487DEB28D
          D9B18ED6B38BD5BA95FFFFECD3BBA5D3B08EDBB389DBB58BD7B489D6B38BC7AB
          8CFFF9EAEFDCCFC6A68FD3B59CFFFFEEE8DDC9C4AB8BD0B89AFFFCEFF3F1F0F5
          F2F4F7F2F3FFFAEFE9DBC5C6AA8BD8BEA0FFFEF2E0D3C5CAB08CD7B488D9B28B
          DAB38DDAB38CCAAD88F6E5CAD7C7AAD2B289DBB488DAB38CD8B38DD9B28BCBAC
          8DFFF4E3FFF0DDCCAD86DCB686DBB28BDBB28BDCB589CEAE8AD9C6B1FFFFEEE3
          CAA8C6AD8BDBCBBAFFFDF0FBE0CBC4A890C4B19CFFFCEEFCF3F0F7F2F4F5F3F3
          FFFBF1E5CBADC6A98ADEC9BAFFFFF0CCAC88D9B587DAB48AD9B488DDB487D5B1
          8BCBB6A0FFFFEDE1CAA4C4AB89E3D0C1FFFAEFFFEFD9C3A991C2A995FFFBEEFD
          F3ECF8F3F2FCF2F2FFF3EFFFFBEFD2BEACC5AA8FFADDBEFFEED1CBAA89DAB38C
          DDB388DEB489D2AF8DDBC7B6FFFCEFFFEED4C3AB8FC3AE98FFFBE6FFF4DBC3AB
          8DD7B38DDEB48ADEB18BDEB38CD5B189E3C7A4FFFFEBC2B49EBFAA8FFCE4CCFF
          FBE9CBB39DD7B38FD9B389D7B48CD6B58ED6B08ED0B299FFF7EDF3F4F2F5F3F3
          F7F2F1FFF9F1DFCBBAC6AA8CE2CCB0FFFCF2F7F3F2F8F3F00000F6F2F1FAF3F0
          FAF3F0F5F3F3F3F2F4F4F2F2FFF9F0EFD7BFCBAD8AD0B08DE4C6A9FFF8E3C0A8
          92D4B28EDBB389DCB38CD9B390C8AB8CF7E1C8FFFEEEE6D6C5C9AB8EDFC19EFF
          FFE0C2AE8FD7B18FDEB28DDBB58BD7B489DAB38CCDAC8BE9D7C6FFF9F0FCF3F0
          FEF2F0FFF9F0E3CFBDC7AA8BE3C7A8FFFFECC9B89ED8B288D4AD86F9E4CEDECC
          B5D2B287DEB685DEB489DBB28BDAB38CCCB091FFF9EBFFF9EBC8A988C9AA89FF
          F2E5FBF5F0F7F4EFF8F6EEFFF9EEDFD0BDCEAE8BDCB589DAB589DCB589DEB48A
          CFAB8DF5E6D6FFFEEDE1C9ABC6AB89E8D5BAF5E0C5C7AB89CEB192E8D1C1FFF9
          EBDEB59FEDBCA2F0BAA3EFB9A0EEBEA2DCB69EEAD4C9FFFEF3ECCDB4CBAD92D6
          C6B5FFFFEEDDC0A5D5B08EDAB38DD9B28BD7B48CD1B48FC5AE8EFFF3E0FBF4F1
          F5F1F6F6F1F2FFF7EDFBE4CAC2AA8CBFB19EFFFFEDFFEAD4C6AC8ED3B38FD4B4
          8BD5B38FD3B38FCFB089F1D3B0FFF1D3BEA68EC1A997FFFEECFFE9D3C2A890C6
          B097FFFCE9FAF4EFF3F3F3F0F1F5F9F4F1FFF7E7C6AF99C0AA91FFEAD4FFFAE8
          C8AF95D6B28ADEB487DEB28DD9B18ED4B38CD5B997FFFFEDD3BBA5D1B08FD9B2
          8BDDB58BD9B389D6B38BC8AC8AFFF9EAF1DBCFC8A68FD3B59CFFFFEFE8DDC9C4
          AB89D0B999FFFBF1F3F1F1F5F2F4F8F3F2FFFAEFE8DBC5C6AA8BD8BDA2FFFFF2
          DCD3C5C8B08CD6B588D9B28CDAB28FDAB38CCAAD88F4E6CAD5C7AAD2B289DBB4
          88DAB38CD8B38DD7B28CC9AC8DFFF4E4FFEFDECCAD86DCB588D9B28BD9B28CDA
          B589CEAE8AD9C5B3FFFFEEE3CAA8C6AD8BDACCBAFFFDF1F9E0CCC2A890C4B29B
          FFFDECFCF3EFF8F2F3F3F4F2FFFCEFE5CBADC6A88BDCC9BCFFFFF0CCAC88D9B5
          87DAB589D9B488DDB487D3B28BC9B7A0FFFFEDE1CAA4C4AC88E3D0C1FFFAEFFF
          EEDAC1A991C2A995FFFBECFBF2EEF7F3F2FAF2F2FFF3EFFFFAF1D2BEADC3AA90
          F9DDBFFFEED3C9AA8BD8B38DDBB389DCB48AD0B08DDBC7B6FFFCEFFFEED5C1AA
          90C1AE99FFFBE8FFF4DDC3AB8FD7B38FDEB38CDEB289DEB38CD5B08AE3C7A5FF
          FFEDC2B3A0BDA990FBE4CEFFFBEACBB29ED7B290D9B389D8B58AD8B58DD6B08E
          D0B19AFFF7EDF3F4F2F3F3F3F7F2F1FFF9F1DFCBBAC4AA8CE2CCB0FFFCF0F8F3
          F0F8F3F00000F6F1F2FAF4EFFAF4EFF5F3F2F3F3F3F2F2F2FEF9F0ECD9BEC6AE
          8ACBB18DDDC8A8FFF9E3B7A992CEB38ED6B489D8B28FD6B392C7AA8FF3E1CAFF
          FEF0E3D6C6C6AB90DCC0A1FFFFE2BEAE91D4B092DAB190D6B58ED4B48BD8B38D
          C9AB8EE6D6C9FEF8F3F8F3F2F8F3F2FFFAF1DFCFBEC4A98FDFC6ACFFFFF0C5B7
          A1D5B18BD2AD87F5E4D1DACBB8D0B18ADCB588DCB38CD9B18ED5B38FC8AF95FF
          F8EEFFF8EEC5A98BC6AA8CFFF2E6F9F4F1F5F4F0F6F5F1FAF8F0DAD0BFC9AD8E
          D8B48CD7B58AD8B58ADCB28DCBAA90F1E5D9FFFDF0DFC8AEC4AB8BEBD7BEF2DE
          C5C4A889BFA78BE6D8C6FFFAEAC4A389DAB191DAB190DAB38DD9B28BCEAF8ED9
          CABAFFFDEFF1D5B7C5A78AD8C6B5FFFFF0DFC1A8D2AF8DD9B28CDAB38CD8B48E
          D0B28FC3AE8FFFF3E0F9F4F3F3F2F6F6F1F2FFF7EDFAE5CAC0AB8CBDB29EFFFF
          EDFFEAD4C6AC8ED3B38FD6B38BD3B38FD3B38FCFB089F1D4AFFFF0D5BEA690BF
          A898FFFEECFFE8D3C2A98FC7AF97FFFCE9FAF4EFF3F3F3F0F1F5F9F4F1FFF7E7
          C4AF99BEA994FDE9D7FFFAE9C5AF96D3B28BDBB389DAB28FD6B18FD0B28FD2B8
          9AFFFFF0D0BAA8CDAF92D6B28EDBB48ED7B38BD6B38BC8AC8AFFFAE9F1DBCFC8
          A68FD3B59CFFFFEFE6DDC9C4AC88D0B999FFFBF1F3F0F2F7F2F4F8F3F2FFFAEF
          E8DAC7C7AA8BDABEA0FFFFF1DCD4C3C8B18BD6B588D9B18EDAB28FDCB38CCCAD
          86F4E6C9D5C7AAD2B289DDB487DAB38CD7B38DD6B28EC6AB90FFF3E7FEEEE1CA
          AD88DAB589D7B18ED6B18FD7B48CCAAE8CD5C5B4FFFFF0E1C9ABC2AD8ED6CBBD
          FFFDF3F6E0CEBFA990C0B399FFFEEAFAF4EFF7F2F3F1F5F0FEFDEFE0CCADC3A9
          8BD9C9BCFFFFF0C8AE86D6B685D7B689D6B588D9B587D1B28BC7B7A0FFFFEDDF
          CBA2C2AD87E1D1C0FFFBEFFFEFDABEAA91BFAA94FFFCECF6F3EEF3F4F2F7F3F2
          FCF3EFFFFAF2CEBEAEC0A993F5DCC2FFEED4C7A98CD5B290D7B28CDAB38CCEAF
          90D9C6B7FFFCF0FFEDD8BEA993BDAD9CFFFBE9FFF3E0C0AA91D3B291DAB38DDD
          B28BDCB28DD2B08CE0C6A8FFFFEEC1B3A1BBA795F7E3D1FFFAEDC8B2A0D3B291
          D9B28BD8B589D9B68BD6B08ED0B19AFFF7EDF5F3F2F3F3F3F7F2F1FFF9F1DFCB
          BAC4AA8CE2CCB0FFFCF0F8F3F0F8F3F20000F6F1F2FAF3F0F8F4EFF5F3F2F3F3
          F3F2F2F2FEF9F0EAD9BEC6AE8AC9B18DDCC9A8FFF9E3B7A992CEB48CD6B489D7
          B38FD4B294C7AA8FF5E0CBFFFEF0E3D6C6C6AB90DCC0A1FFFFE2BEAE91D2B093
          D8B191D6B58ED2B38CD8B38DC9AB8EE6D6C9FEF8F3F7F3F2F8F3F0FFFAF1DED0
          BEC2A98FDDC5ADFFFFF0C5B6A3D5B18BD1AD87F5E4D1DCCBB8D0B08CDCB589DC
          B28DD7B18ED3B390C6AF95FFF8EFFFF8EEC5A88DC6A98EFFF2E6F9F4F1F7F4F0
          F6F6F0FAF7F2D8CFC1C9AD8ED7B48CD7B58AD7B48CDAB28FCBAA90F1E5DBFFFC
          F2DFC8AEC6AA8CEBD7BEEFDBC2CAAE8FC8B094DFD3C1FFF2DFCDAE8FD5B08AD9
          B58FD5B28AD4B185CEB38ED7CBB9FFFEEDEDD3B5C4A889D7C5B4FFFFF1E0C2A9
          D2AF8DD8B18BDCB38CDBB48ED1B18EC3AE8FFFF3E0F9F4F3F5F1F7F7F1F2FFF6
          EEFAE5CAC0AB8CBFB29CFFFFECFFEBD2C8AC8ED7B38FD7B38BD5B38FD3B38FCF
          B089F1D3B0FFF0D5BEA690BFA898FFFDEDFFE9D3C2A890C7AF97FFFCE9FAF4ED
          F3F3F3F2F1F3F9F4F1FFF7E7C4AF99BCA994FDEAD5FFFAE9C6AE96D3B18DD9B3
          89DAB28FD6B18FD0B28FD0B89CFFFFF0D0B9A9CCB092D4B28ED9B48ED7B38BD4
          B489C7AD89FFFAE8F3DCCDC8A68FD3B49DFFFFEFE6DDC9C4AB89D0B89AFFFBF2
          F3F0F2F8F1F4FAF2F2FFF9F0E8DAC7C7A98CDABEA0FFFFF1DCD5C2C8B18BD6B4
          89D7B18FD8B290DAB38CCAAD86F4E6C9D5C8A8D2B289DBB488D8B38DD7B38FD4
          B28EC6AB90FFF3E7FEEEE1CAAC89DAB48AD6B18FD4B18FD5B48DC9AE8CD5C5B4
          FFFFF0E1C9ABC2AD8ED6CBBDFFFDF3F6E0CEBFA990BFB498FFFEEAFCF4EDF8F3
          F2F1F5F0FEFDEFDECCAFC1A98DD9C9BCFFFFF0C8AD88D6B587D5B58AD6B489D9
          B488D1B18DC7B7A0FFFFEDDFCAA4C2AC88E1D1C0FFFBEFFFEFDCBCAA93BDAB94
          FFFDEBF6F3EEF1F4F2F7F4F0FCF4EDFFFAF1D0BDAEC0A993F5DCC2FFEED4C6A9
          8ED5B290D7B28CD8B38DCEAF90D9C7B6FFFCEFFFEDD8BEA993BDAD9CFFFBE9FF
          F3E0C0AA91D1B291D8B38DDDB28BDAB38CD0B08CDEC6A8FFFFEEC1B3A1BBA795
          F7E3D1FFFAEDCAB2A0D3B291D7B38BDAB589D9B68BD6B08ED0B19AFFF7EBF7F4
          F0F5F3F3F7F2F1FFF9F1DFCBBAC2AA8EE1CCB1FFFCF0F8F3F0F7F3F20000F4F1
          F3F8F3F2F7F2EFF4F2F1F4F2F2F4F2F1FFFAF1EED8BFCBAF8DCFB391DFC5A7FF
          F9E4C1A991D9B58FD9B286DAB38DD8B594C6A88BF9E1C9FFFCEAE9DBC5C9AD8F
          DCC09EFFFFDFC0AC8DD5B193DAB492D5B58CD0B085DCB58ECDAB8DE7D9C7FDF7
          F0F9F3EEFEF8F1FFF7EADDCEBBC1A98DDFC6ACFFFFEFC9B8A3D3AE88D3AE88FD
          E8D2E0CBB5D3AF8BE0B58ADBB28BD9B390D3B390C9B096FFF9EDFFF6E8C8AA8D
          C8AA8DFFF4E7FDF5EEFBF6EDFCF7EEFEFCF2D8CCBAC9AD8ED5B28AD8B68BD7B4
          89DAB38DCCAB91F4E4D7FFFAEEE7CCB1C6A98AF0D7BDF7DEC4CCAB8ACCB091E4
          D6C0FFF6DFCAAA86DCB48AD7B28CD9B48EDCB48ACEAF8ED9CABAFFFDEFEAD2B4
          C1A789D3C3B2FFFFF2DEC1A6D2AD8BDCB38CDEB289E1B48ED4AF8DC7AF93FFF2
          E0FBF3F3F8F2F7FBF0F3FFF6EFFAE2CAC3AD91C4B3A0FFFFECFFE7CFCCAD8EDA
          B491D7B089D8B490D5B591D0B08CEFD3B1FFEFD5BDA591BDA998FFFFF1FDE5D1
          C2AA92C7AF97FFFBE8FBF3ECF4F2F2F3F2F4F8F3F0FFF8E8C3AE98BFAB92FDE9
          D0FFF9E5CBB096D6B28CDBB488DBB28BD9B48ED2B28ED5B99AFFFFECD3BBA7CD
          B091D5B48DDDB68FD7B187D3B68AC8B08CFFFDE8F0D9C9CAAA93D1B49FFFFEED
          E8DFCBC0A989D3BDA1FFFAF3F6F0F5F8EFF2FAF0F0FFF9F2E9DACAC6A98ED9BE
          A3FFFFEFDDD6C2C6B08CD3B58CD5B291D7B193D6B18BCAAF8AF4E6C9D5C8A8D1
          B28BD9B389D5B18DD7B492D5B48DCAAE8FFFF3E3FFEFDED0AE8ADAB387D9B390
          D4B08CD6B489CDB28DD7C4AFFFFFEEE8CDABC6AD8DDACCBAFFFBEFF8E0CEBEA6
          90C2B59BFFFDE9FFF5EFFCF2F2F8F7F3FEFBEDE2CDB2C3A88EDCC9BCFFFFF1C9
          AD8AD5B388D9B68ED7B28CDCB38CD3B08ECEB7A1FFFFEDDFC7A3C5AC8AE6D2C1
          FFF9EEFFEEDCBCA792BFAA95FFFDEDF5F2EAF4F2F1F9F4F1FDF2EAFFFAEDD4BE
          ACC4AC94F9DEC3FFEBD0CBAE8FD3B18DD9B58DDCB68CCEAE8BDEC9B4FFFEEDFF
          EFD6BFA78FC2AF9AFFFBE6FFF3DCC2AB91D2B28FD8B18AE0B48BDDB58BD2B18A
          DEC5A5FFFFEBC4B19CC0AB95FBE3CFFFF9E9CDB59FD5B290D9B389D8B589D9B5
          8DD5AF8FD0B19AFFF7E9F9F6EEF3EFEEF8F3F2FFF7EFDECBBCC0A98FE0CCB3FF
          FEF1F6F1EEF7F2F30000F4F1F3F7F3F2F7F3F2F7F2F3F7F2F3F7F3F2FFFAF2F0
          D9C3C6A88BCBAB8EE3C6ABFFF8E4C2A590D6B08DDDB28BDAB491D2AF8EC7A98E
          FFE8D0FFFCE9E4D6C0C6AC8EDBBF9DFFFFE4C4AF90D0AE90D2AC8CD5B68FD3B5
          8CD7B28CCCAD8EE5D7C5FFFAF1F9F3ECFCF5ECFFF9EBE4D6C0C5AC92DEC5ABFF
          FFEFC9B6A1D4B08CCEAA86FBE4CEE1CAB4D2AD8BE1B68FDAB38DD6B18FD1B291
          C6AF95FFFAECFFFAEAC5A98BC4A88AFEEEDEFFF5EDFEF5EBF9F3E8FFFCF1DDD1
          BFCCB091D5B48DD6B68DD1B188D6B28ECBAD92FAE9DCFFFEF1E2C7ADC6A88BF1
          D8BEF5DAC0CFAD8FC7AA8BE9D9C2FFF9DFCCAC88D8B18AD9B591D3AE8CDBB48E
          CBAC8DD9C9BCFFFFF5E8D2B6C3AB8FD8C8B8FFFFF3DCC0A8D2B190D8B18BDBB2
          8BDBB18ED5B291BFA990FFF4E6FDF5F5FAF3F8FCF1F4FFF8F2FAE5D0BCA68DBD
          AD9CFFFFF1FFEDD5C9AB8ED7B290D8B28FD3B390CEAF8EC8AC8AECD2B4FFEFD7
          BCA994B8A596FFFDEEFEE8D6BCA792C5B09AFFF9E8FEF6EFF6F2F1F5F3F3FAF6
          F1FFF6E6C2B099BBA78EFFEBD2FFFFE9C8AD93D0AE8AD6B388DCB58ED3AF89D1
          B18ED6BA9CFFFFEDD2BBA5CBAF90D0B08CD8B38DD4B189CFB58DBCA885FFF8E3
          F4E0CFBFA28DCFB6A2FFFFF4E2DBC8C0AB8FC9B39AFFF7F0F7F2F4FCF3F6FDF2
          F4FFF7F3E7DACCC1A68CDBC0A5FFFFEEE0D7C3CCB692CCAF88CEAC8ED4B092D6
          B490C8AC89F9EACAD5C6A6CCAF8AD6B28CD6B391D5B592D0B08CC8AC8DFFF3E4
          FFF0DFCBAB88D8B58AD6B28ED6B391D4B48BCBB08BD9C4AFFFFFEFE3C7A8C4AB
          8BDBCCB9FFFFF2FBE2D2C0A894BFAF98FFFAE7FFF6EFFDF0EEF3F0ECFFFEF3DB
          C4AEC1A78FDFC9BDFFFFF0C6AA8BD4B28ED6B391D3AE8CD5AD8AD3AF91CFB6A2
          FFFFEEE4CBABC3A98BE7D3C2FFFBF0FFF2E1BAA694B8A492FFFFEFFDF7F0F8F7
          F3F9F3EEFFF5EDFFFDEED5BDA9BEA68EF5DDC1FFEFD4C9AC8DD1B18ED4B08AD6
          B28ACEAE8BDDC8B2FFFCEBFFF0D8BFA88EC2AD97FFFDE8FFF5DFBFA98DD3B291
          D8B38DDBB187D7B089CFAF8BE3CAAAFFFFEAC7B59EC1AA94F9E2CCFFFAEACCB4
          9ED5B493D4B189D9B68ED2B08CD1AF91CDB29DFFF7E7FCF7EEF8F5F1F6F1F0FF
          FCF6DBCABDBAA58FDECCB5FFFEF4F7F2EFF9F4F50000F2F2F2F5F3F3F5F3F3F7
          F2F3F7F2F3F8F3F2FFF8F0EAD4C2C6AA92CCAE95E4C8B0FFF1E1C2A793D4AE90
          D9B18ED2AF8ECDB091C1A68CF5DEC8FFFDEBE7D8C5C1AB8FD8BEA0FFFBDFBFAA
          8ECFB097CFAF92C9AF8BCFB48FD3B390C4A78CE6D7C7FFFAEFF9F4EBFDF7ECFF
          F9E8DACCB9BBA38BDBC3ADFFFFF1C7B6A3CDAE8FC5A685F5E0CBE3CEB9CEAC8E
          D1AB89D4B190CDAE8FC9AF91C2AE95FFF6E6FFF7E7C1A88EC0A68EFFF4E7FFF8
          F0FDF4EAFAF4E7FFFBF0D9CCBCC1A88ECCB08ECEB28FCEB28FD1B291BFA68CF1
          E1D4FFFDF1DEC6B0C2A78DEED6BEF1D7BFCBAB8EC9AB90E2D1BCFFF8E1C6AA88
          D1AF8BD1B291CDAE8FD1AE8DCBAD94DCCABFFFF9EDE4CEB5BDA58DD4C0B5FFF9
          F1D8BFABCCAF94CCAD8ED3B291D2B093C8AD93BEAD9AFAF1E4F6F1F0F6F1F3F7
          EFF0FCF0ECF1E1D0B8A794BEAEA1FFFDEDFBE6D0C0A88CCDAF92D1B293CBAF91
          C7AF93C1AA90E5CFB6FFECD7B9A895B6A598FFFFF2FBEBDBB5A392BFAE9BFFF8
          E8FEF6EFF5F1F0F4F2F2FAF6F1FFF4E6BDAC97BCAB91FBE7CEFFF9E4C5AD97CD
          B18FD2B28ED7B492CEAE8BCBAE8FCDB599FFFFEDD2BDA8C8B394CCB18FD0B08D
          D2B491C7B18EBBAB8EFFFFEDEFDDCCBAA290C4B09FFFFFF5E1DACBBCAA93C8B5
          A0FFFBF4F6EFF2F7EEF1FDF2F4FFF6F3E6D8CCBFA68CD7BCA1FFFFEDE1D4BEC5
          AF8CCEB18CD6B798D1AF92D2B28FC4A885F8E6C7D7C4A3CDAF8CD4B28ED1B08F
          CAAB8ACDB18FC6AE92FFF0E1FFEDDCC5A889D1B18DCCAD8ECEB192CEB38EC6AD
          8BD8C5B0FFFFF0E0C8ACC0AB8CD9CAB7FFFDEDEFDACBBBA494C1B29FFFFDEBFF
          F2EBFEF2F0FBF6F3FFFCF3DDC9B7C2A995DAC6BBFFFAEEC5AC92CCAF90CDAF92
          CFAF92D0AB8FCFAD95CDB4A4FFFEEDE2CBB1BCA58BE3CDC1FFF8F0FCE9DABBA9
          98BAA798FFFAEEF8F2EBF7F4F0F7F1ECFFF4ECFFFAEAD2BDA8BDA690F2DCC3FF
          EDD5C2A78CCCAF90D1B390D3B18DCCB08EDBC8B3FFFBEAFFF1DBBFA990C0AB96
          FFF9E4FFF2DBBDA88DCEB294D2B190D4AE8BD7B591CAAE8FD6C1A5FFFFEAC1AF
          98BAA38DFDE5D1FFFFF1C4AC9ACAAE90D1B390CAAE8BCCB091CBAD94C7AF9BFF
          F7E9FCF5ECF4F1EDFAF5F4FFF6F2D7C9BDBAA996D8CAB7FFFAF0F7F2EFF4F1F3
          0000F4F2F2F3F3F3F3F3F3F5F3F3F7F3F2F6F1EEFEF6EFEDDDD0C4B2A1CDB7A5
          DAC6B5FFF4E7C6B3A4D8BDA3D7BB9DD5BCA2D2BBA5C9B5A3F3E3D3FFFCEFE6DB
          CDC5B49FDAC8B1FFFFEBC8B7A4CEB5A5D6BDA9D0BDA2CDBB9CD4BBA1CBB6A1E3
          D9CFFFFBF6F7F3EEF8F5EDFFFFF5DFD8C9C1AF9EE4CFC0FFFAEECBBEB0CFB8A2
          D3BCA6F6E7D7E0D1C1CFB7A1DABCA3D4BAA2D6BFA9CCB9A4C8BAA8FFFBEEFFF7
          EBC6B2A1C7B3A2FCEFE7FAF1EDF7F1EAFBF5EEFDFAF2DBD2C8C7B6A3D1BBA2D0
          BAA1D1BBA2D1BBA2C7B6A3F0E6DCFFFCF4E4D1C4C7B3A2EBD9C8F3DFCDCEB39E
          CEB5A1E7DACAFFF5E5CAB39DD6BDA3D0BBA0CDB89DD6BDA3C8B39EDBCBC4FFFE
          F6E6D4C3C5B3A2DBC8C3FFFEFBD0BFB2C8B4A2D1BCA7CCB59FD0BAA8CCBAA9C1
          B6A8F5F0E7FAF7F3F8F6F6FAF4F5FFF6F3EFE5DBBEB3A5C2B8AEFFFFF5FBEDDA
          C5B39CD3BBA3D2BAA2C9B49ED2BFAACCBBA8E2D3C0FFF2E1C0B1A1BFB1A5FFFF
          F5F1E5D9C0B3A5C5B8AAFFFEF2FAF1EDF6F2F1F6F4F4F6F1EEFFFCEFC4B8A6BF
          B19EFEF0DDFFF7EAC7B4A5CFBAA4D0B99FCFB69CD5BCA2D1BBA2D0BDA8FFFFF4
          CABAADC7B9A3CCBBA1D0B8A0D2BAA2CDBCA2C3B79FFFF6E4F0E0D3C8B5A8CDBD
          B1FFFAF1E6E2D7C2B4A2D2C3B3FFF7F3F6F1F2F9F0F3FCF4F5FEF5F2E7DDD3C7
          B3A1D5C0ABFFFFF4E5D8C8C6B59BD4BFA3CFB7A1D0B8A2D1B79FCDB79EF8E9CF
          DECFB5D1BAA0D5BAA0D5BBA3D5BDA5CDB9A0C6B5A0FFF1E5FFF2E6C9B49ED0B9
          9FD3BCA6D0B9A3D1BCA0C8B79DDACABDFFFDF1E5D2BDC6B5A0DACFC1FFFFF3F3
          E5D9C2B2A6C6BCABFFF9EBFFF7EEFBF5F0F6F5F1F9F6EED4C7B7C7B5A4DFCEC5
          FFFFF5C2AE9CCFBAA4D2BBA5D4BCA6D8BBA6CFB5A4CEBBAEFFFFF4D5C7B1C3B4
          A1E4D4C8FFFAF3FFEFE3C0B3A5C5B7ABFFFCF3F2EFEAF5F4F0FCF9F5FAF2EBFF
          FCF0D6C7B7C2B3A3EFDFCEFFEEDDC9B5A3CCB7A1D4BDA3D4BCA0CFB9A0DBCEC0
          FFF6ECFBECDCC3B3A2CABBABFFFCECFCEDDDC2B3A0CCB7A2D4BAA2D7BA9FD4BC
          A0CCB9A4DBCDBAFFFFEFCDBFADC3B0A1F3E2D5FFF7EECBBBAECDB8A3D0B99FD2
          BDA2D3BDA4CDB5A3CFBAABFFF8ECFFFAF1F5F1F0F7F3F2FFF8F6DCCFC7C0B3A3
          DCD2C1FFF9F0F8F3F0F6F3F50000F7F2F1F5F2F4F2F1F3F5F3F3F5F3F2F2F1ED
          F5F5EFF7F5EBFFFFF7FDFAECFFFDF2F3F6EDF9FBEFFFFCE9FFFDE9FFF9E8FFFD
          F3FFF7F0FCF5F2F6F2F1FDFAF6FFFAF1FFF6ECFAF1E8FFF5EFFFFEFAFFF6F0FF
          FBECFFFDECFFFDF1FFF8F0F8F4F3F1F0F2F1F0F2F1F3F3EEF2EDF8F8F2FFFAF6
          FFF7F3F9F2EFFCF7F4FFFFF8FEF5ECFCF9F1FBF5EEFFF6ECFFFAEEFFF8EFFCF1
          E9FFFCF3FDF7F0F5F2EDFAF6F1FFF9F2FFFBF7F8F2F3F7F4F6F3F2F4EEF0F0F4
          F6F6F8F6F5FFF9F2FFFDF3FFFAF0FFFCF2FFFCF2FAF4EDF9F5F4F7F2F3FBF2EF
          FFF7F3FFF8EFFFF6ECFFFCF3FFFAF3F7F2EFFBF6F3FFFAF2FFF6EAFFFBEAFFFF
          EEFFFBEAFFFFF6FFF7F7FCF4F4FFF6ECFFFCF4FEF3F5FDF2F5FFFAF7FFFDF6FF
          F8EFFFFFF6FDF7F2FFFAF5FCF9F1FBF9F1F0F0EAF2F3F1F5F3F3F4F0EFF8F5F0
          FFFCF4FDF9F4F9F3ECFDF6E5FFFDE9FFFDEBFFF8E6FFFDECFFF7E9FFFCEFFFF7
          EAFEF3E5FFFFF2FFFDF3FAF3EAFEF6EFFFF9F2FFFCF3FDF3ECF8F1EEF6F2F1F6
          F4F4F6F3EFF9F2E9FFFDF3FFFCEFF6F1E8FFF9F6FFF9F6FFFAF1FFFAEDFFFCF0
          FFFCF0FFFBEFFFF7EEF2EBE8FFFCF9FFFAF1FFFBF0FFFEF4FFFAF0FFFEF0FFFE
          EFFDF4E6FFF8EBFFF9F2FFFAF4F4F0EBFBF8F0FFF9EFFFF5EBFBF7F2F6F2F1F7
          F1F2F6F0F1FCF4F4F7F1ECFFF8F1FFFBF4F5F0EFF8F3F2FFFDF4FFFAF0FFFFF7
          FFF9F3FFFAF4FCF3EAFFFFF6FCF8EDFFF9EFFFFCF4FFF8F2FFF6EEFFFEF4FFFC
          F3FDF6F3F6EFECFFFAF1FFFEF4FFF5EDFFFDF3FFFDEEFFFFF2FDF6F3FCF4F4FA
          F2EBFFFCF3FFFCF7F3F0EBF9F6EEFCFAF0FCFAEFF9F7ECF1F2E9F1F5F0F0F5F3
          F1F5F0FFFDF2FFF9ECFFFAF1FAF3EAFFFCEFFFFBEAFFFDECFFFCEBFFF8EBFFFF
          F5FFFAEFF4F0E5FFFFF1FDFAEBFEF8F1F7F1EAF9F2E9FFFDF4FCF9F1F8F8F2EE
          F2EDEFF5F0F0F3F1F3F1F0F5F0EDFDF7F2FFFAF5FFF9F4FCF6F1FEF6EFFFFFF6
          FFF8ECFFFCECFFFFF2FCF7F4F6F4F4FEF8F3FFFAF3FEF8F3F6F0EBF9F5F0FCF6
          EFFFFEF6FFF7EBFFF6E9FFFEF0FFF9F2F8F4EFF5F2EAFCF6EFFFFCF5FFF6F2F8
          F2F3F8F3F2FFFFF6FFFBEDFFFBEBFFFBEBFFFAF2FFF7EEFFF8EEF5F3E9F3F1F0
          F5F0F1F6EEEEFFFBF7FFFCF2FEF5EBFBF5EEF8F3F2F6F4F40000}
        ExplicitLeft = 4
        ExplicitTop = 0
        ExplicitWidth = 270
        ExplicitHeight = 89
      end
    end
  end
  object TmCozinha: TTimer
    Enabled = False
    Interval = 350
    OnTimer = TmCozinhaTimer
    Left = 40
    Top = 103
  end
  object dproc: TUniDataSource
    DataSet = DmDados.proc
    OnDataChange = dprocDataChange
    Left = 568
    Top = 264
  end
  object dGrp: TUniDataSource
    DataSet = DmDados.grp
    OnDataChange = dGrpDataChange
    Left = 432
    Top = 288
  end
  object PUMenuRelatorios: TPopupMenu
    Left = 676
    Top = 303
  end
  object TmMesa: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TmMesaTimer
    Left = 37
    Top = 152
  end
  object Acoes: TActionList
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
      Caption = 'Fecha Mesa'
      OnExecute = ActFechaMesaExecute
    end
    object ActJuntarMesas: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Juntar Mesas'
      OnExecute = ActJuntarMesasExecute
    end
    object ActTranferirMesas: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Transferir Mesas'
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
    object ActReceberDelivery: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Receber Delivery'
      OnExecute = ActReceberDeliveryExecute
    end
    object ActReceberConvenio: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Receber Conv'#234'nio'
      OnExecute = ActReceberConvenioExecute
    end
    object ActExcluirJuncao: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Excluir Jun'#231#227'o'
    end
  end
end
