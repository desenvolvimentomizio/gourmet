object FrmJuncaoMesa: TFrmJuncaoMesa
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 527
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 50
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 12615680
    ParentBackground = False
    TabOrder = 0
    object Lbtitulo: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 3
      Width = 752
      Height = 43
      Align = alClient
      Caption = 'Jun'#231#227'o de mesa '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 263
      ExplicitHeight = 39
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 9
      Height = 46
      Align = alLeft
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 50
    Width = 771
    Height = 439
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 413
      Top = 119
      Width = 358
      Height = 320
      Align = alClient
      BevelOuter = bvNone
      Color = 13816530
      ParentBackground = False
      TabOrder = 0
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 2
        Height = 320
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel19: TPanel
        Left = 2
        Top = 0
        Width = 356
        Height = 320
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 356
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
            Width = 346
            Height = 25
            Align = alClient
            Alignment = taCenter
            Caption = 'Mesas selecionadas'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 168
            ExplicitHeight = 21
          end
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 32
          Width = 356
          Height = 288
          Align = alClient
          Color = 13303807
          DataSource = DmDados.dvtmsajuncao
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
          OnDblClick = DBGrid4DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'mesa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 310
              Visible = True
            end>
        end
      end
    end
    object Panel5: TPanel
      Left = 358
      Top = 119
      Width = 55
      Height = 320
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object BtnIncSabores: TBitBtn
        Left = 4
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
        Left = 4
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
    object Panel13: TPanel
      Left = 0
      Top = 119
      Width = 358
      Height = 320
      Align = alLeft
      BevelOuter = bvNone
      Color = 13816530
      ParentBackground = False
      TabOrder = 2
      object DBGridMesas: TDBGrid
        Left = 2
        Top = 0
        Width = 356
        Height = 320
        Align = alClient
        Color = 13303807
        DataSource = DmDados.dvtmesa
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridMesasDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'mesa'
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
            Width = 310
            Visible = True
          end>
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 2
        Height = 320
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 11
      Width = 771
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 3
      object LbMesa: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 765
        Height = 59
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'M E S A'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 86
        ExplicitTop = 38
        ExplicitWidth = 691
        ExplicitHeight = 41
      end
    end
    object Panel17: TPanel
      Left = 0
      Top = 73
      Width = 771
      Height = 14
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 4
    end
    object Panel12: TPanel
      Left = 0
      Top = 0
      Width = 771
      Height = 11
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 5
    end
    object Panel10: TPanel
      Left = 0
      Top = 87
      Width = 771
      Height = 32
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 6
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 761
        Height = 25
        Align = alClient
        Alignment = taCenter
        Caption = 'Selecione as mesas a serem transferidas'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 345
        ExplicitHeight = 21
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 489
    Width = 771
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    Color = 12615680
    ParentBackground = False
    TabOrder = 2
    object Panel9: TPanel
      Left = 509
      Top = 0
      Width = 262
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BtnCardRetornar: TButton
        Left = 2
        Top = 4
        Width = 120
        Height = 31
        Caption = '&Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BtnCardRetornarClick
      end
      object Button2: TButton
        Left = 128
        Top = 4
        Width = 120
        Height = 31
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
end
