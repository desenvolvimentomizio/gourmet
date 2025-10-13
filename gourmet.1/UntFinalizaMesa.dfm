object FrmFinalizaMesa: TFrmFinalizaMesa
  Left = 0
  Top = 0
  ActiveControl = BtnPedConfirma
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 754
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 45
    Width = 1006
    Height = 709
    Align = alClient
    TabOrder = 0
    object PCFechamento: TPageControl
      Left = 1
      Top = 1
      Width = 1004
      Height = 707
      ActivePage = TabPedidos
      Align = alClient
      TabOrder = 0
      object TabItens: TTabSheet
        Caption = 'Items em aberto'
        OnShow = TabItensShow
        object Panel4: TPanel
          Left = 523
          Top = 41
          Width = 473
          Height = 598
          Align = alClient
          BevelOuter = bvNone
          Color = 13816530
          ParentBackground = False
          TabOrder = 0
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 473
            Height = 32
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 113
              Height = 21
              Align = alClient
              Alignment = taCenter
              Caption = 'Selecionados'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object DBGrid4: TDBGrid
            Left = 2
            Top = 32
            Width = 469
            Height = 534
            Align = alClient
            Color = 13303807
            DataSource = DmDados.dtitem
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyDown = DBGrid4KeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'pronome'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ReadOnly = True
                Title.Caption = 'Item'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 304
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ReadOnly = True
                Title.Caption = 'Qtde'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itototalav'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ReadOnly = True
                Title.Caption = 'Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end>
          end
          object Panel16: TPanel
            Left = 0
            Top = 32
            Width = 2
            Height = 534
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
          end
          object Panel37: TPanel
            Left = 471
            Top = 32
            Width = 2
            Height = 534
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
          end
          object Panel13: TPanel
            Left = 0
            Top = 566
            Width = 473
            Height = 32
            Align = alBottom
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 4
            object LbItemTotal: TLabel
              Left = 248
              Top = 2
              Width = 191
              Height = 22
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'R$ 0,00'
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
              Width = 58
              Height = 18
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
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
          end
        end
        object Panel5: TPanel
          Left = 471
          Top = 41
          Width = 52
          Height = 598
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object BtnIncSabores: TBitBtn
            Left = 2
            Top = 124
            Width = 48
            Height = 42
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E000000000000000000000000007B3F23
              7B3F237C3F237D3F237F41247F41248142258343258443258544268644268845
              268A46278B47270000007B3F237B3F237C3F237D3F237F41247F412481422583
              43258443258644268644268845268A46278B47278D48288E48287B3F237C3F23
              7D3F237F41247F41248142258343258443258644268644268845268A46278B47
              278D48288E4828904A297C3F237D3F237F41247F412481422583432584432586
              4426FFFFFF8845268A46278B47278D48288E4828904A29914A297F41247F4124
              814225814225834325844325864426FFFFFFFFFFFFFFFFFF8B47278D48288E48
              28904A29914A29934B297F41247F412481422583432584432585442687452688
              4526FFFFFFFFFFFFFFFFFF8E4828904A29914A29934B29954C2A814225814225
              8343258443258544268745268845268A46278B4727FFFFFFFFFFFFFFFFFF914A
              29934B29954C2A964C2A814225834325844325864426FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF954C2A964C2A974D2B834325844325
              854426FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF974D2B984D2B844325854426874526884526FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF974D2B984D2B994E2B864426864426
              8845268A46278B47278D48288E4828904A29914A29FFFFFFFFFFFFFFFFFF974D
              2B984D2B994E2B9B4F2C8644268845268A46278B47278D48288E4828904A2991
              4A29FFFFFFFFFFFFFFFFFF974D2B984D2B994E2B9B4F2C9C4F2C8845268A4627
              8B47278D48288E4828904A29914A29FFFFFFFFFFFFFFFFFF974D2B984D2B994E
              2B9B4F2C9C4F2C9E512D8A46278B47278D48288E4828904A29914A29934B2995
              4C2AFFFFFF974D2B984D2B994E2B9B4F2C9C4F2C9C4F2C9E512D8B47278D4828
              8E4828904A29914A29934B29954C2A964C2A974D2B984D2B994E2B9B4F2C9C4F
              2C9C4F2C9E512D9F512D0000008E4828904A29914A29934B29954C2A964C2A97
              4D2B984D2B994E2B9B4F2C9C4F2C9C4F2C9E512D9F512D9F512D}
            TabOrder = 0
            OnClick = BtnIncSaboresClick
          end
          object BtnExcSabores: TBitBtn
            Left = 2
            Top = 169
            Width = 48
            Height = 42
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E000000000000000000009F512D9F512D
              9E512D9C4F2C9C4F2C9B4F2C994E2B984D2B974D2B964C2A954C2A934B29914A
              29904A298E48280000009F512D9E512D9C4F2C9C4F2C9B4F2C994E2B984D2B97
              4D2B964C2A954C2A934B29914A29904A298E48288D48288B47279E512D9C4F2C
              9C4F2C9B4F2C994E2B984D2B974D2BFFFFFF954C2A934B29914A29904A298E48
              288D48288B47278A46279E512D9C4F2C9B4F2C994E2B984D2B974D2BFFFFFFFF
              FFFFFFFFFF914A29904A298E48288D48288B47278A46278845269C4F2C9B4F2C
              994E2B984D2B974D2BFFFFFFFFFFFFFFFFFF914A29904A298E48288D48288B47
              278A46278845268644269B4F2C994E2B984D2B974D2BFFFFFFFFFFFFFFFFFF91
              4A29904A298E48288D48288B47278A4627884526864426864426994E2B984D2B
              974D2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8845
              26874526854426844325984D2B974D2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF854426844325834325974D2B964C2A
              954C2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8644
              26844325834325814225964C2A954C2A934B29914A29FFFFFFFFFFFFFFFFFF8B
              47278A4627884526874526854426844325834325814225814225954C2A934B29
              914A29904A298E4828FFFFFFFFFFFFFFFFFF8845268745268544268443258343
              258142257F41247F4124934B29914A29904A298E48288D48288B4727FFFFFFFF
              FFFFFFFFFF8644268443258343258142258142257F41247F4124914A29904A29
              8E48288D48288B47278A4627884526FFFFFF8644268443258343258142257F41
              247F41247D3F237C3F23904A298E48288D48288B47278A462788452686442686
              44268443258343258142257F41247F41247D3F237C3F237B3F238E48288D4828
              8B47278A46278845268644268644268443258343258142257F41247F41247D3F
              237C3F237B3F237B3F230000008B47278A462788452686442685442684432583
              43258142257F41247F41247D3F237C3F237B3F237B3F23000000}
            TabOrder = 1
            OnClick = BtnExcSaboresClick
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 41
          Width = 471
          Height = 598
          Align = alLeft
          BevelOuter = bvNone
          Color = 13816530
          ParentBackground = False
          TabOrder = 2
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 471
            Height = 32
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 99
              Height = 21
              Align = alClient
              Alignment = taCenter
              Caption = 'Dispon'#237'veis'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object DBGridItens: TDBGrid
            Left = 2
            Top = 32
            Width = 469
            Height = 534
            Align = alClient
            Color = 13303807
            DataSource = DmDados.dIto
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyDown = DBGridItensKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'pronome'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Caption = 'Item'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 310
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itoquantidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ReadOnly = True
                Title.Caption = 'Qtde'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itototalav'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ReadOnly = True
                Title.Caption = 'Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 0
            Top = 32
            Width = 2
            Height = 534
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
          end
          object Panel1: TPanel
            Left = 0
            Top = 566
            Width = 471
            Height = 32
            Align = alBottom
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 3
            object LbItemDispValor: TLabel
              Left = 248
              Top = 2
              Width = 191
              Height = 22
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'R$ 0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LbItemDispQtde: TLabel
              AlignWithMargins = True
              Left = 25
              Top = 0
              Width = 58
              Height = 18
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
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 639
          Width = 996
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          object Panel14: TPanel
            Left = 736
            Top = 0
            Width = 260
            Height = 40
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object BtnConfirmar: TButton
              Left = 11
              Top = 4
              Width = 120
              Height = 31
              Caption = 'Confirmar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = BtnConfirmarClick
            end
            object BtnCancelar: TButton
              Left = 137
              Top = 6
              Width = 120
              Height = 31
              Caption = 'Cancelar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = BtnCancelarClick
            end
          end
          object Panel21: TPanel
            Left = 0
            Top = 0
            Width = 130
            Height = 40
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Button1: TButton
              Left = 3
              Top = 4
              Width = 120
              Height = 31
              Caption = 'Recebimentos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Button1Click
            end
          end
        end
        object Panel19: TPanel
          Left = 0
          Top = 0
          Width = 996
          Height = 41
          Align = alTop
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 4
          object LbPendente: TLabel
            AlignWithMargins = True
            Left = 805
            Top = 3
            Width = 184
            Height = 25
            Align = alRight
            Alignment = taRightJustify
            Caption = 'Pendente R$ 0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LbRecebido: TLabel
            AlignWithMargins = True
            Left = 25
            Top = 0
            Width = 181
            Height = 25
            Margins.Left = 25
            Margins.Top = 0
            Margins.Right = 25
            Align = alLeft
            Caption = 'Recebido R$ 0,00'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
        end
      end
      object TabResumo: TTabSheet
        Caption = 'Resumo de Recebimento'
        ImageIndex = 1
        object Panel23: TPanel
          Left = 0
          Top = 0
          Width = 996
          Height = 32
          Align = alTop
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 99
            Height = 21
            Align = alClient
            Alignment = taCenter
            Caption = 'Dispon'#237'veis'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object Panel22: TPanel
          Left = 0
          Top = 641
          Width = 996
          Height = 38
          Align = alBottom
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object Panel24: TPanel
            Left = 856
            Top = 0
            Width = 140
            Height = 38
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Button9: TButton
              Left = 5
              Top = 5
              Width = 120
              Height = 31
              Caption = 'Voltar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Button9Click
            end
          end
          object Button10: TButton
            Left = 5
            Top = 5
            Width = 120
            Height = 31
            Caption = 'Recibo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button10Click
          end
        end
        object PnRecebimentos: TPanel
          Left = 0
          Top = 32
          Width = 996
          Height = 609
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          object PnItensRecebidos: TPanel
            Left = 1
            Top = 458
            Width = 994
            Height = 150
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object DBGrid2: TDBGrid
              Left = 1
              Top = 1
              Width = 992
              Height = 148
              Align = alClient
              DataSource = DmDados.ditoparc
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
              OnKeyDown = DBGrid2KeyDown
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
                  Width = 43
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
                  Width = 56
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
                  Width = 485
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
                  Width = 48
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
                end>
            end
          end
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 994
            Height = 457
            Align = alClient
            Color = 13303807
            DataSource = dolt
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyDown = DBGrid1KeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'lteregistro'
                Title.Caption = 'Data e Hora'
                Width = 121
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lteprincipal'
                Title.Caption = 'Vl. Total'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ltedesconto'
                Title.Caption = 'Desconto'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ltetotal'
                Title.Caption = 'Vlr. Recebido'
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'oltidentificacao'
                Title.Caption = 'Pago por'
                Width = 123
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ctaidentificacao'
                Title.Caption = 'Conta Caixa'
                Width = 202
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clbidentificacao'
                Title.Caption = 'Colaborador'
                Width = 283
                Visible = True
              end>
          end
        end
      end
      object TabPedidos: TTabSheet
        Caption = 'Pedidos'
        ImageIndex = 3
        OnShow = TabPedidosShow
        object Panel25: TPanel
          Left = 0
          Top = 0
          Width = 996
          Height = 32
          Align = alTop
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 986
            Height = 25
            Align = alClient
            Alignment = taCenter
            Caption = 'Pedidos Delivery'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 143
            ExplicitHeight = 21
          end
        end
        object Panel36: TPanel
          Left = 0
          Top = 639
          Width = 996
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Panel41: TPanel
            Left = 736
            Top = 0
            Width = 260
            Height = 40
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object BtnPedConfirma: TButton
              Left = 9
              Top = 4
              Width = 120
              Height = 31
              Caption = 'Confirmar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = BtnPedConfirmaClick
              OnKeyPress = BtnPedConfirmaKeyPress
            end
            object Button3: TButton
              Left = 135
              Top = 4
              Width = 120
              Height = 31
              Caption = 'Cancelar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = Button3Click
            end
          end
          object Panel42: TPanel
            Left = 0
            Top = 0
            Width = 130
            Height = 40
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object BtnImprimir: TButton
              Left = 1
              Top = 5
              Width = 120
              Height = 31
              Caption = 'Imprimir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = BtnImprimirClick
              OnKeyPress = BtnPedConfirmaKeyPress
            end
          end
          object Btcancelar: TButton
            Left = 127
            Top = 6
            Width = 138
            Height = 29
            Caption = 'Cancelar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = BtcancelarClick
          end
        end
        object Panel43: TPanel
          Left = 0
          Top = 100
          Width = 996
          Height = 539
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          object Panel44: TPanel
            Left = 1
            Top = 375
            Width = 994
            Height = 163
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object DBGrid3: TDBGrid
              Left = 1
              Top = 1
              Width = 992
              Height = 161
              TabStop = False
              Align = alClient
              DataSource = DmDados.ditodlv
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
              OnDrawColumnCell = DBGrid3DrawColumnCell
              OnKeyDown = DBGrid2KeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'procodigo'
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
                  Width = 56
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
                  Width = 485
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
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = []
                  Width = 48
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
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = []
                  Width = 82
                  Visible = True
                end>
            end
          end
          object DBGridPedidos: TDBGrid
            Left = 1
            Top = 1
            Width = 994
            Height = 374
            Align = alClient
            Color = 16774094
            DataSource = DmDados.dorcdlv
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGridPedidosCellClick
            OnDrawColumnCell = DBGridPedidosDrawColumnCell
            OnKeyDown = DBGridPedidosKeyDown
            OnKeyPress = DBGridPedidosKeyPress
            OnTitleClick = DBGridPedidosTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'sel'
                Title.Caption = ' '
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'immnumepedido'
                Title.Alignment = taCenter
                Title.Caption = 'Pedido'
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 304
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'orctelefone'
                Width = 133
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'orctotalav'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etgidentificacao'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'immhorapedido'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'immhoraentrega'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'endereco'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'edrbairro'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cidade'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'orcobs'
                Title.Caption = 'Observa'#231#227'o'
                Width = 64
                Visible = True
              end>
          end
        end
        object Panel30: TPanel
          Left = 0
          Top = 32
          Width = 996
          Height = 68
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          object Label5: TLabel
            Left = 8
            Top = 4
            Width = 55
            Height = 13
            Caption = 'Buscar por:'
          end
          object Label17: TLabel
            Left = 15
            Top = 25
            Width = 32
            Height = 13
            Caption = 'Pedido'
          end
          object Label18: TLabel
            Left = 68
            Top = 25
            Width = 33
            Height = 13
            Caption = 'Cliente'
          end
          object Label19: TLabel
            Left = 372
            Top = 25
            Width = 42
            Height = 13
            Caption = 'Telefone'
          end
          object Label21: TLabel
            Left = 589
            Top = 25
            Width = 54
            Height = 13
            Caption = 'Entregador'
          end
          object EdtPedido: TEdit
            Left = 14
            Top = 39
            Width = 51
            Height = 21
            TabOrder = 0
            OnEnter = EdtPedidoEnter
            OnExit = EdtPedidoExit
            OnKeyPress = EdtPedidoKeyPress
          end
          object EdtCliente: TEdit
            Left = 66
            Top = 39
            Width = 303
            Height = 21
            TabOrder = 1
            OnChange = EdtClienteChange
            OnEnter = EdtClienteEnter
            OnKeyPress = EdtClienteKeyPress
          end
          object EdtTelefone: TEdit
            Left = 375
            Top = 39
            Width = 134
            Height = 21
            TabOrder = 2
            OnChange = EdtTelefoneChange
            OnEnter = EdtTelefoneEnter
            OnExit = EdtTelefoneExit
            OnKeyPress = EdtTelefoneKeyPress
          end
          object EdtEntregador: TEdit
            Left = 588
            Top = 39
            Width = 104
            Height = 21
            TabOrder = 3
            OnChange = EdtEntregadorChange
            OnEnter = EdtEntregadorEnter
            OnKeyPress = EdtEntregadorKeyPress
          end
        end
      end
      object TabRecebimento: TTabSheet
        Caption = 'Recebimento'
        ImageIndex = 2
        OnMouseDown = PnModalCardCreMouseDown
        OnShow = TabRecebimentoShow
        object Panel26: TPanel
          Left = 1
          Top = 0
          Width = 460
          Height = 679
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Panel74: TPanel
            Left = 0
            Top = 120
            Width = 460
            Height = 559
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Panel75: TPanel
              Left = 0
              Top = 94
              Width = 460
              Height = 32
              Align = alTop
              BevelKind = bkFlat
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 2
              object Label16: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 284
                Height = 23
                Align = alClient
                Alignment = taCenter
                Caption = 'Modalidades de recebimentos'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
            end
            object Panel76: TPanel
              Left = 0
              Top = 246
              Width = 460
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              ParentBackground = False
              TabOrder = 7
              object Panel77: TPanel
                Left = 418
                Top = 2
                Width = 40
                Height = 26
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F9'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel78: TPanel
                Left = 262
                Top = 2
                Width = 156
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object EdtConvenio: TEdit
                  Left = 0
                  Top = 0
                  Width = 156
                  Height = 26
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  Text = '0,00'
                  OnKeyPress = EdtVlrPagoKeyPress
                end
              end
              object PnModalConvenio: TPanel
                Left = 2
                Top = 2
                Width = 260
                Height = 26
                Cursor = crHandPoint
                Align = alLeft
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Conv'#234'nio R$:  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnMouseDown = PnModalConvenioMouseDown
                OnMouseEnter = PnModalConvenioMouseEnter
                OnMouseLeave = PnModalConvenioMouseLeave
              end
            end
            object Panel81: TPanel
              Left = 0
              Top = 186
              Width = 460
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              ParentBackground = False
              TabOrder = 5
              object Panel82: TPanel
                Left = 418
                Top = 2
                Width = 40
                Height = 26
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F3'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel83: TPanel
                Left = 262
                Top = 2
                Width = 156
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object EdtCardCredito: TEdit
                  Left = 0
                  Top = 0
                  Width = 156
                  Height = 26
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  Text = '0,00'
                  OnExit = EdtCardCreditoExit
                  OnKeyPress = EdtVlrPagoKeyPress
                end
              end
              object PnModalCardCre: TPanel
                Left = 2
                Top = 2
                Width = 260
                Height = 26
                Cursor = crHandPoint
                Align = alLeft
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Cart'#227'o Cr'#233'dito R$:  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnMouseDown = PnModalCardCreMouseDown
                OnMouseEnter = PnModalCardCreMouseEnter
                OnMouseLeave = PnModalCardCreMouseLeave
              end
            end
            object Panel86: TPanel
              Left = 0
              Top = 156
              Width = 460
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              ParentBackground = False
              TabOrder = 4
              OnMouseEnter = Panel86MouseEnter
              OnMouseLeave = Panel86MouseLeave
              object Panel87: TPanel
                Left = 418
                Top = 2
                Width = 40
                Height = 26
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F4'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel88: TPanel
                Left = 262
                Top = 2
                Width = 156
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object EdtCardDebito: TEdit
                  Left = 0
                  Top = 0
                  Width = 156
                  Height = 26
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  Text = '0,00'
                  OnExit = EdtCardDebitoExit
                  OnKeyPress = EdtVlrPagoKeyPress
                end
              end
              object PnModalCardDeb: TPanel
                Left = 2
                Top = 2
                Width = 260
                Height = 26
                Cursor = crHandPoint
                Align = alLeft
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Cart'#227'o D'#233'bito R$:  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnMouseDown = PnModalCardDebMouseDown
                OnMouseEnter = PnModalCardDebMouseEnter
                OnMouseLeave = PnModalCardDebMouseLeave
              end
            end
            object Panel91: TPanel
              Left = 0
              Top = 126
              Width = 460
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              ParentBackground = False
              TabOrder = 3
              object Label20: TLabel
                Left = 2
                Top = 2
                Width = 260
                Height = 26
                Align = alLeft
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Dinheiro R$:  '
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                ExplicitLeft = -6
                ExplicitTop = -3
                ExplicitHeight = 36
              end
              object Panel92: TPanel
                Left = 418
                Top = 2
                Width = 40
                Height = 26
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F6'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel93: TPanel
                Left = 262
                Top = 2
                Width = 156
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object EdtDinherio: TEdit
                  Left = 0
                  Top = 0
                  Width = 156
                  Height = 26
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  Text = '0,00'
                  OnExit = EdtDinherioExit
                  OnKeyPress = EdtVlrPagoKeyPress
                end
              end
            end
            object Panel96: TPanel
              Left = 0
              Top = 216
              Width = 460
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              ParentBackground = False
              TabOrder = 6
              object Panel97: TPanel
                Left = 418
                Top = 2
                Width = 40
                Height = 26
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F5'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel98: TPanel
                Left = 262
                Top = 2
                Width = 156
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object EdtCheque: TEdit
                  Left = 0
                  Top = 0
                  Width = 156
                  Height = 26
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  Text = '0,00'
                  OnKeyPress = EdtVlrPagoKeyPress
                end
              end
              object PnModalCheque: TPanel
                Left = 2
                Top = 2
                Width = 260
                Height = 26
                Cursor = crHandPoint
                Align = alLeft
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Cheque R$:  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnMouseDown = PnModalChequeMouseDown
                OnMouseEnter = PnModalChequeMouseEnter
                OnMouseLeave = PnModalChequeMouseLeave
              end
            end
            object Panel101: TPanel
              Left = 0
              Top = 526
              Width = 460
              Height = 33
              Align = alBottom
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 11
              object Panel102: TPanel
                Left = -1
                Top = 0
                Width = 461
                Height = 33
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object BtnTabRecConfirma: TButton
                  Left = 218
                  Top = 4
                  Width = 116
                  Height = 31
                  Caption = '[C] Confirmar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnClick = BtnTabRecConfirmaClick
                end
                object Button7: TButton
                  Left = 340
                  Top = 4
                  Width = 116
                  Height = 31
                  Caption = 'Cancelar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  OnClick = BtnCancelarClick
                end
                object BtnRecVoltar: TButton
                  Left = 90
                  Top = 4
                  Width = 80
                  Height = 31
                  Caption = 'Voltar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  OnClick = BtnRecVoltarClick
                end
                object BtnRecLimpar: TButton
                  Left = 7
                  Top = 4
                  Width = 80
                  Height = 31
                  Caption = 'Limpar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                  OnClick = BtnRecLimparClick
                end
              end
            end
            object PnCliente: TPanel
              Left = 0
              Top = 35
              Width = 460
              Height = 59
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object LbNomeCliente: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 251
                Height = 26
                Align = alLeft
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Recebido de'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                ExplicitLeft = 6
                ExplicitTop = 2
                ExplicitHeight = 32
              end
              object EdtNomeCliente: TEdit
                Left = 266
                Top = 2
                Width = 183
                Height = 25
                AutoSize = False
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                MaxLength = 20
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnEnter = EdtNomeClienteEnter
                OnExit = EdtNomeClienteExit
                OnKeyPress = EdtNomeClienteKeyPress
              end
              object Panel67: TPanel
                Left = 0
                Top = 29
                Width = 460
                Height = 30
                Align = alBottom
                BevelKind = bkFlat
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 1
                object LbCliente: TLabel
                  AlignWithMargins = True
                  Left = 79
                  Top = 3
                  Width = 270
                  Height = 23
                  Align = alClient
                  AutoSize = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -19
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Layout = tlCenter
                  ExplicitTop = 2
                end
                object Panel73: TPanel
                  Left = 0
                  Top = 0
                  Width = 76
                  Height = 26
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Button8: TButton
                    Left = 4
                    Top = 0
                    Width = 69
                    Height = 22
                    Caption = 'Cliente'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    TabStop = False
                    OnClick = Button8Click
                  end
                end
                object plDisponivel: TPanel
                  Left = 352
                  Top = 0
                  Width = 104
                  Height = 26
                  Align = alRight
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  BorderWidth = 4
                  Caption = '0,00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8454143
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            object Panel28: TPanel
              Left = 0
              Top = 0
              Width = 460
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 0
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 260
                Height = 32
                Align = alLeft
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor do Pagamento:'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                ExplicitLeft = 0
                ExplicitTop = 4
                ExplicitHeight = 37
              end
              object Panel29: TPanel
                Left = 449
                Top = 0
                Width = 11
                Height = 35
                Align = alRight
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 0
              end
              object Panel31: TPanel
                Left = 266
                Top = 0
                Width = 183
                Height = 35
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object EdtVlrPago: TEdit
                  Left = 0
                  Top = 6
                  Width = 183
                  Height = 24
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  Text = '0,00'
                  OnChange = EdtVlrPagoChange
                  OnExit = EdtVlrPagoExit
                  OnKeyPress = EdtVlrPagoKeyPress
                end
                object Panel32: TPanel
                  Left = 0
                  Top = 0
                  Width = 183
                  Height = 6
                  Align = alTop
                  BevelOuter = bvNone
                  ParentBackground = False
                  TabOrder = 1
                end
                object Panel33: TPanel
                  Left = 0
                  Top = 30
                  Width = 183
                  Height = 5
                  Align = alBottom
                  BevelOuter = bvNone
                  ParentBackground = False
                  TabOrder = 2
                end
              end
            end
            object CbRefeicao: TCheckBox
              Left = 6
              Top = 370
              Width = 249
              Height = 29
              Caption = 'Comprovante refei'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
            end
            object Panel45: TPanel
              Left = 0
              Top = 481
              Width = 460
              Height = 45
              Align = alBottom
              BevelKind = bkFlat
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 10
              object Panel46: TPanel
                Left = 447
                Top = 0
                Width = 9
                Height = 41
                Align = alRight
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 0
              end
              object Panel47: TPanel
                Left = 0
                Top = 0
                Width = 447
                Height = 41
                Align = alClient
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 1
                object Label22: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 9
                  Width = 228
                  Height = 27
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Falta R$'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -24
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Layout = tlCenter
                  ExplicitTop = 3
                  ExplicitHeight = 51
                end
                object Panel48: TPanel
                  Left = 0
                  Top = 0
                  Width = 447
                  Height = 6
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 12615680
                  ParentBackground = False
                  TabOrder = 0
                end
                object Panel49: TPanel
                  Left = 0
                  Top = 36
                  Width = 447
                  Height = 5
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 12615680
                  ParentBackground = False
                  TabOrder = 1
                end
                object Panel104: TPanel
                  Left = 417
                  Top = 6
                  Width = 30
                  Height = 30
                  Align = alRight
                  BevelOuter = bvNone
                  Color = 12615680
                  ParentBackground = False
                  TabOrder = 2
                end
                object EdtFalta: TEdit
                  Left = 234
                  Top = 6
                  Width = 183
                  Height = 30
                  TabStop = False
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -27
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                  Text = '0,00'
                end
              end
            end
            object Panel60: TPanel
              Left = 0
              Top = 436
              Width = 460
              Height = 45
              Align = alBottom
              BevelKind = bkFlat
              BevelOuter = bvNone
              Color = 6472704
              ParentBackground = False
              TabOrder = 9
              object Panel61: TPanel
                Left = 447
                Top = 0
                Width = 9
                Height = 41
                Align = alRight
                BevelOuter = bvNone
                Color = 6472704
                ParentBackground = False
                TabOrder = 0
              end
              object Panel62: TPanel
                Left = 0
                Top = 0
                Width = 447
                Height = 41
                Align = alClient
                BevelOuter = bvNone
                Color = 6472704
                ParentBackground = False
                TabOrder = 1
                object Label12: TLabel
                  AlignWithMargins = True
                  Left = 151
                  Top = 9
                  Width = 106
                  Height = 27
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Troco R$'
                  Color = 6472704
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -24
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  Layout = tlCenter
                  ExplicitLeft = 152
                end
                object plvalorinformado: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 9
                  Width = 142
                  Height = 27
                  Align = alLeft
                  AutoSize = False
                  Caption = 'R$ 0,00'
                  Color = 6472704
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 13434879
                  Font.Height = -24
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  Layout = tlCenter
                end
                object Panel63: TPanel
                  Left = 0
                  Top = 0
                  Width = 447
                  Height = 6
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 6472704
                  ParentBackground = False
                  TabOrder = 0
                end
                object Panel64: TPanel
                  Left = 0
                  Top = 36
                  Width = 447
                  Height = 5
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 6472704
                  ParentBackground = False
                  TabOrder = 1
                end
                object Panel65: TPanel
                  Left = 417
                  Top = 6
                  Width = 30
                  Height = 30
                  Align = alRight
                  BevelOuter = bvNone
                  Color = 6472704
                  ParentBackground = False
                  TabOrder = 2
                  object Panel66: TPanel
                    Left = -10
                    Top = 0
                    Width = 40
                    Height = 30
                    Align = alRight
                    Alignment = taRightJustify
                    BevelOuter = bvNone
                    Caption = 'F7'
                    Color = 6472704
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentBackground = False
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object EdtTroco: TEdit
                  Left = 260
                  Top = 6
                  Width = 157
                  Height = 30
                  TabStop = False
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -27
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                  Text = '0,00'
                end
              end
            end
            object Panel103: TPanel
              Left = 0
              Top = 276
              Width = 460
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              ParentBackground = False
              TabOrder = 12
              object Panel105: TPanel
                Left = 418
                Top = 2
                Width = 40
                Height = 26
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F8'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel106: TPanel
                Left = 262
                Top = 2
                Width = 156
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object EdtCredito: TEdit
                  Left = 0
                  Top = 0
                  Width = 156
                  Height = 26
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  Text = '0,00'
                  OnExit = EdtCreditoExit
                  OnKeyPress = EdtVlrPagoKeyPress
                end
              end
              object plVale: TPanel
                Left = 2
                Top = 2
                Width = 260
                Height = 26
                Cursor = crHandPoint
                Align = alLeft
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Cr'#233'dito / Vale R$:  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnMouseDown = PnModalConvenioMouseDown
                OnMouseEnter = PnModalConvenioMouseEnter
                OnMouseLeave = PnModalConvenioMouseLeave
              end
            end
            object Panel109: TPanel
              Left = 0
              Top = 306
              Width = 460
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              ParentBackground = False
              TabOrder = 13
              object Panel110: TPanel
                Left = 418
                Top = 2
                Width = 40
                Height = 26
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F10'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel111: TPanel
                Left = 262
                Top = 2
                Width = 156
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object edtAFaturar: TEdit
                  Left = 0
                  Top = 0
                  Width = 156
                  Height = 26
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  Text = '0,00'
                  OnExit = edtAFaturarExit
                  OnKeyPress = EdtVlrPagoKeyPress
                end
              end
              object plAFaturar: TPanel
                Left = 2
                Top = 2
                Width = 260
                Height = 26
                Cursor = crHandPoint
                Align = alLeft
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'A Faturar R$:  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnMouseDown = plAFaturarMouseDown
                OnMouseEnter = plAFaturarMouseEnter
                OnMouseLeave = plAFaturarMouseLeave
              end
            end
            object Panel79: TPanel
              Left = 0
              Top = 336
              Width = 460
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 2
              ParentBackground = False
              TabOrder = 14
              object Panel80: TPanel
                Left = 418
                Top = 2
                Width = 40
                Height = 26
                Align = alRight
                BevelOuter = bvNone
                Caption = 'F11'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel84: TPanel
                Left = 262
                Top = 2
                Width = 156
                Height = 26
                Align = alClient
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
                object edtDoacao: TEdit
                  Left = 0
                  Top = 0
                  Width = 156
                  Height = 26
                  Align = alClient
                  Alignment = taRightJustify
                  AutoSize = False
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 9
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  Text = '0,00'
                  OnExit = edtDoacaoExit
                  OnKeyPress = EdtVlrPagoKeyPress
                end
              end
              object Panel85: TPanel
                Left = 2
                Top = 2
                Width = 260
                Height = 26
                Cursor = crHandPoint
                Align = alLeft
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Doa'#231#227'o R$:  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnMouseDown = PnModalConvenioMouseDown
                OnMouseEnter = PnModalConvenioMouseEnter
                OnMouseLeave = PnModalConvenioMouseLeave
              end
            end
            object btRegistraAcessórios: TButton
              Left = 261
              Top = 373
              Width = 194
              Height = 25
              Caption = 'Registra Utens'#237'lios '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 15
              OnClick = btRegistraAcessóriosClick
            end
            object plProcessamento: TPanel
              Left = 0
              Top = 404
              Width = 460
              Height = 32
              Align = alBottom
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 16
            end
          end
          object Panel34: TPanel
            Left = 0
            Top = 0
            Width = 460
            Height = 40
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 0
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 258
              Height = 33
              Align = alLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 43
            end
            object Panel35: TPanel
              Left = 447
              Top = 0
              Width = 9
              Height = 36
              Align = alRight
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 0
            end
            object Panel38: TPanel
              Left = 264
              Top = 0
              Width = 183
              Height = 36
              Align = alClient
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 1
              object EdtVlrTotal: TEdit
                Left = 0
                Top = 6
                Width = 183
                Height = 25
                TabStop = False
                Align = alClient
                Alignment = taRightJustify
                AutoSize = False
                Color = 16765650
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                Text = '0,00'
              end
              object Panel39: TPanel
                Left = 0
                Top = 0
                Width = 183
                Height = 6
                Align = alTop
                BevelOuter = bvNone
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -5
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
              object Panel40: TPanel
                Left = 0
                Top = 31
                Width = 183
                Height = 5
                Align = alBottom
                BevelOuter = bvNone
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -5
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBackground = False
                ParentFont = False
                TabOrder = 2
              end
            end
          end
          object Panel55: TPanel
            Left = 0
            Top = 80
            Width = 460
            Height = 40
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 2
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 258
              Height = 33
              Align = alLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor '#224' receber:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 43
            end
            object Panel56: TPanel
              Left = 447
              Top = 0
              Width = 9
              Height = 36
              Align = alRight
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 0
            end
            object Panel57: TPanel
              Left = 264
              Top = 0
              Width = 183
              Height = 36
              Align = alClient
              BevelOuter = bvNone
              Color = 12615680
              ParentBackground = False
              TabOrder = 1
              object EdtVlrReceber: TEdit
                Left = 0
                Top = 6
                Width = 183
                Height = 25
                TabStop = False
                Align = alClient
                Alignment = taRightJustify
                AutoSize = False
                Color = 16765650
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                Text = '0,00'
              end
              object Panel58: TPanel
                Left = 0
                Top = 0
                Width = 183
                Height = 6
                Align = alTop
                BevelOuter = bvNone
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -5
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
              object Panel59: TPanel
                Left = 0
                Top = 31
                Width = 183
                Height = 5
                Align = alBottom
                BevelOuter = bvNone
                Color = 12615680
                ParentBackground = False
                TabOrder = 2
              end
            end
          end
          object Panel50: TPanel
            Left = 0
            Top = 40
            Width = 460
            Height = 40
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = clRed
            ParentBackground = False
            TabOrder = 1
            object Panel51: TPanel
              Left = 447
              Top = 0
              Width = 9
              Height = 36
              Align = alRight
              BevelOuter = bvNone
              Color = 6472704
              ParentBackground = False
              TabOrder = 0
            end
            object Panel52: TPanel
              Left = 0
              Top = 0
              Width = 447
              Height = 36
              Align = alClient
              BevelOuter = bvNone
              Color = 6472704
              ParentBackground = False
              TabOrder = 1
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 9
                Width = 258
                Height = 22
                Align = alLeft
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Desconto R$'
                Color = 6472704
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                ExplicitHeight = 32
              end
              object Panel53: TPanel
                Left = 0
                Top = 0
                Width = 447
                Height = 6
                Align = alTop
                BevelOuter = bvNone
                Color = 6472704
                ParentBackground = False
                TabOrder = 1
              end
              object Panel54: TPanel
                Left = 0
                Top = 31
                Width = 447
                Height = 5
                Align = alBottom
                BevelOuter = bvNone
                Color = 6472704
                ParentBackground = False
                TabOrder = 2
              end
              object EdtDesconto: TEdit
                Left = 264
                Top = 6
                Width = 183
                Height = 25
                Align = alClient
                Alignment = taRightJustify
                AutoSize = False
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                MaxLength = 9
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '0,00'
                OnChange = EdtDescontoChange
                OnExit = EdtDescontoExit
                OnKeyPress = EdtDescontoKeyPress
              end
              object BitBtn1: TBitBtn
                Left = 4
                Top = 9
                Width = 121
                Height = 22
                Caption = 'Desconto %'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                TabStop = False
                OnClick = BitBtn1Click
              end
            end
          end
        end
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 1
          Height = 679
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
        end
        object PnPercentual: TPanel
          Left = 572
          Top = 45
          Width = 280
          Height = 157
          BevelKind = bkTile
          TabOrder = 2
          Visible = False
          object Panel115: TPanel
            Left = 1
            Top = 1
            Width = 274
            Height = 37
            Align = alTop
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12615680
            ParentBackground = False
            TabOrder = 0
            object Label23: TLabel
              AlignWithMargins = True
              Left = 9
              Top = 7
              Width = 222
              Height = 25
              Alignment = taCenter
              Caption = 'Desconto Percentual '
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object Panel116: TPanel
            Left = 1
            Top = 113
            Width = 274
            Height = 39
            Align = alBottom
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 3
            object Panel117: TPanel
              Left = 14
              Top = 0
              Width = 260
              Height = 39
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              object Button4: TButton
                Left = 122
                Top = 6
                Width = 120
                Height = 31
                Caption = 'Calcular'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnClick = Button4Click
              end
            end
          end
          object Panel118: TPanel
            Left = 1
            Top = 38
            Width = 274
            Height = 7
            Align = alTop
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 1
          end
          object Panel119: TPanel
            Left = 1
            Top = 45
            Width = 274
            Height = 68
            Align = alClient
            BevelKind = bkFlat
            BevelOuter = bvNone
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            object Label24: TLabel
              Left = 67
              Top = 33
              Width = 18
              Height = 18
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              AlignWithMargins = True
              Left = 11
              Top = 4
              Width = 166
              Height = 21
              Alignment = taCenter
              Caption = 'Informe Percentual'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object EdtPercentual: TEdit
              Left = 93
              Top = 28
              Width = 161
              Height = 27
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              MaxLength = 9
              ParentFont = False
              TabOrder = 0
              OnChange = EdtVlRestoChange
              OnKeyPress = EdtVlRestoKeyPress
            end
          end
        end
      end
    end
  end
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 45
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 12615680
    ParentBackground = False
    TabOrder = 1
    object LbMesa: TLabel
      AlignWithMargins = True
      Left = 21
      Top = 3
      Width = 978
      Height = 38
      Align = alClient
      Caption = 'Fechamento Mesa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 263
      ExplicitHeight = 35
    end
    object Panel2: TPanel
      Left = 9
      Top = 0
      Width = 9
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 0
    end
    object Panel10: TPanel
      Left = 0
      Top = 0
      Width = 9
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 1
    end
  end
  object PnQuantidade: TPanel
    Left = 577
    Top = 301
    Width = 280
    Height = 140
    BevelKind = bkTile
    TabOrder = 2
    Visible = False
    object Panel15: TPanel
      Left = 1
      Top = 1
      Width = 274
      Height = 32
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 264
        Height = 25
        Align = alClient
        Alignment = taCenter
        Caption = 'Informe a quantidade'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 187
        ExplicitHeight = 21
      end
    end
    object Panel17: TPanel
      Left = 1
      Top = 96
      Width = 274
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 3
      object Panel20: TPanel
        Left = 14
        Top = 0
        Width = 260
        Height = 39
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnqtdeconfirma: TButton
          Left = 9
          Top = 4
          Width = 120
          Height = 31
          Caption = 'Confirma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnqtdeconfirmaClick
        end
        object btnqtdecancela: TButton
          Left = 135
          Top = 4
          Width = 120
          Height = 31
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnqtdecancelaClick
        end
      end
    end
    object Panel18: TPanel
      Left = 1
      Top = 33
      Width = 274
      Height = 7
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
    end
    object PnSabores: TPanel
      Left = 1
      Top = 40
      Width = 274
      Height = 56
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object Label7: TLabel
        Left = 139
        Top = 1
        Width = 36
        Height = 18
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button6: TButton
        Left = 97
        Top = 19
        Width = 40
        Height = 31
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button6Click
      end
      object Button5: TButton
        Left = 191
        Top = 19
        Width = 40
        Height = 31
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button5Click
      end
      object EdtQtde: TEdit
        Left = 139
        Top = 21
        Width = 50
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentFont = False
        TabOrder = 2
        OnExit = EdtQtdeExit
        OnKeyPress = EdtQtdeKeyPress
      end
    end
  end
  object PnTroco: TPanel
    Left = 577
    Top = 457
    Width = 280
    Height = 157
    BevelKind = bkTile
    TabOrder = 3
    Visible = False
    object Panel68: TPanel
      Left = 1
      Top = 1
      Width = 274
      Height = 37
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 0
      object Label15: TLabel
        AlignWithMargins = True
        Left = 41
        Top = 6
        Width = 180
        Height = 25
        Alignment = taCenter
        Caption = 'Calculando Troco'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object Panel69: TPanel
      Left = 1
      Top = 113
      Width = 274
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 3
      object Panel70: TPanel
        Left = 14
        Top = 0
        Width = 260
        Height = 39
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Button2: TButton
          Left = 122
          Top = 6
          Width = 120
          Height = 31
          Caption = 'Calcular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
      end
    end
    object Panel71: TPanel
      Left = 1
      Top = 38
      Width = 274
      Height = 7
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
    end
    object Panel72: TPanel
      Left = 1
      Top = 45
      Width = 274
      Height = 68
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object Label14: TLabel
        Left = 67
        Top = 33
        Width = 21
        Height = 18
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        AlignWithMargins = True
        Left = 11
        Top = 5
        Width = 253
        Height = 21
        Alignment = taCenter
        Caption = 'Informe o montante recebido'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object EdtVlResto: TEdit
        Left = 94
        Top = 29
        Width = 161
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentFont = False
        TabOrder = 0
        OnChange = EdtVlRestoChange
        OnKeyPress = EdtVlRestoKeyPress
      end
    end
  end
  object dolt: TUniDataSource
    DataSet = DmDados.olt
    OnDataChange = doltDataChange
    Left = 56
    Top = 232
  end
end
