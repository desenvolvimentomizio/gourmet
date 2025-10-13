object FrmIngredientePesado: TFrmIngredientePesado
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 277
  ClientWidth = 631
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 631
    Height = 277
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object Panel11: TPanel
      Left = 0
      Top = 0
      Width = 627
      Height = 50
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 0
      object DBText1: TDBText
        AlignWithMargins = True
        Left = 12
        Top = 3
        Width = 608
        Height = 40
        Align = alClient
        DataField = 'pronome'
        DataSource = DmDados.dstito
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -31
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 15
        ExplicitTop = 6
        ExplicitWidth = 929
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
    object Panel3: TPanel
      Left = 0
      Top = 55
      Width = 627
      Height = 218
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 180
        Width = 627
        Height = 38
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object iBalanca: TImage
          Left = 0
          Top = 0
          Width = 47
          Height = 38
          Align = alLeft
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF40000035B4944415478DAED9779888D5118C6DF3B21
            49C912A36CD9474444A4B18BD130B216CA646B0C652793C632F62659C6F2C734
            F6429435B24D640919EB94A9B1642D42A9B1CCB53D8FF7BDF5F5CDFD66BE7BAF
            F197B77EF5DDF39D7BEE73CEBB9D1B106FEB04268124D01C9482B36029B80B46
            825C9B3B051C91282CE031BE1F8C03C5B6F01D500BA4810E26623AB866F3BB83
            A67F4B401BF0085C027D5CEFE2C042B0025405A9369E03D2C110D01B34046F6D
            232BC18748042C0799E01BA80F3E8599D3055CB113A1ED02DF6DECBC9D5C0298
            0182608CBDF325A0081488FA782AD8ED21FE23986DCF5B6CD725AE3975C03ED0
            0F0C05E72A12D019DC063DC1127B9FE443C04650DB631EDD760CB4026D2B1290
            0D468B06D4043B5AEEEC5D0C02C4763E4034586F7809E0F3733BB2C5A0A66820
            CD07DB6210D000BCB267BA6A8E978044705934FFEFD9D8213B81C41804CC046B
            419E685C3502BFC209D82E9A76098EB111E0B0B9E4459402AE836760157800FA
            838B6E0155C01BB049346F4356CDDCB01AAC8F424033F004A48013268082A6B9
            050C06A74523B5D8B5C84ED05134432215B0C888172DE519609E7D0E3A05ECB1
            A3EF1A669141E08C680A154528E03EB829DA2B68EC298F456BC2C99080EA76CC
            CBC086308BC4997B7688F600BF02DA814271F9DC5CF054B4D7FC11300A1C048D
            C16B096FACF50345FB845F015960B268D4FF748CCF128D33A6E7670A6094D793
            B28DC769AC8CACE5EC01053E0530964ED90F3A8D69CD8C1ACF8D53C01773831F
            CBB49D5524A09B68C52B53F9CCD8B0D837522880FD3E19CC052F3D7E38CD5CD0
            03DCF22180B1C4D46BE1B11E5DB315C453005BEE5550032C309794DA442EC0A6
            946AEFB21D8B780908D846D845333C04702E033B3D94867545038D7D3B683E62
            2F88B7893C9D03AE45BC04F4158D7AFAB8B01C7732AB4ADCDDB08968EF664630
            36D813F2452F1B6EF312C013CB127FF635E0736238F312D052B4005D10CD801F
            61BECB86C7D4CFAB0C01B4B160AF68155C277ABF64D4B7162D402CC72C48C995
            2580C6B2CEA0EDE51A7F0F3683352058990242C64AC866C65AC38B090B5928CB
            E45F0828D7FE0BF02BA0BD68B1721AFB798E3DF3DE97EC7ACF607B18AB00BE3F
            0A8645794AC7C170715C422315102AABB97E7613E6D478136265CD8F56C044D1
            3F27B158AA78FFBD93DFE574DDE555C475F30000000049454E44AE426082}
          ExplicitLeft = 579
          ExplicitTop = 1
          ExplicitHeight = 46
        end
        object Panel9: TPanel
          Left = 365
          Top = 0
          Width = 262
          Height = 38
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object BtnConfirmar: TButton
            Left = 6
            Top = 4
            Width = 120
            Height = 31
            Caption = '&Incluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = BtnConfirmarClick
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
            ModalResult = 2
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
        end
        object Button1: TButton
          Left = 69
          Top = 6
          Width = 120
          Height = 31
          Caption = '&Pesar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 627
        Height = 180
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object PnSabores: TPanel
          Left = 0
          Top = 90
          Width = 627
          Height = 90
          Align = alBottom
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
          TabOrder = 1
          object Label4: TLabel
            Left = 277
            Top = 5
            Width = 29
            Height = 18
            Caption = 'Und'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 369
            Top = 4
            Width = 40
            Height = 18
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 477
            Top = 5
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
          object LbPeso: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 63
            Width = 617
            Height = 23
            Align = alBottom
            Caption = 'Coloque o produto sobre a Balan'#231'a'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 334
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 275
            Top = 25
            Width = 64
            Height = 26
            Ctl3D = True
            DataField = 'puncodigo'
            DataSource = DmDados.dstito
            KeyField = 'puncodigo'
            ListField = 'unisimbolo'
            ListSource = DmDados.dpun
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 345
            Top = 25
            Width = 107
            Height = 26
            Ctl3D = True
            DataField = 'punprecoav'
            DataSource = DmDados.dpun
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EdtQtde: TDBEdit
            Left = 477
            Top = 25
            Width = 93
            Height = 26
            Ctl3D = True
            DataField = 'qtde'
            DataSource = DmDados.dstito
            MaxLength = 6
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = EdtQtdeEnter
            OnExit = EdtQtdeExit
            OnKeyPress = EdtQtdeKeyPress
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 3
          Width = 627
          Height = 87
          Align = alBottom
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
          TabOrder = 0
          object Label7: TLabel
            Left = 5
            Top = 1
            Width = 167
            Height = 23
            Caption = ' Dados adicion'#225'is'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 95
            Top = 26
            Width = 45
            Height = 18
            Caption = 'Copos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 354
            Top = 26
            Width = 49
            Height = 18
            Caption = 'Pratos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdtCopos: TDBEdit
            Left = 93
            Top = 47
            Width = 107
            Height = 26
            Ctl3D = True
            DataField = 'copos'
            DataSource = DmDados.dstito
            MaxLength = 2
            ParentCtl3D = False
            TabOrder = 0
            OnClick = EdtCoposEnter
            OnEnter = EdtCoposEnter
            OnExit = EdtCoposExit
          end
          object EdtPratos: TDBEdit
            Left = 352
            Top = 46
            Width = 107
            Height = 26
            Ctl3D = True
            DataField = 'pratos'
            DataSource = DmDados.dstito
            MaxLength = 2
            ParentCtl3D = False
            TabOrder = 1
            OnClick = EdtPratosEnter
            OnEnter = EdtPratosEnter
            OnExit = EdtPratosExit
          end
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 50
      Width = 627
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object ACBrBAL: TACBrBAL
    Modelo = balToledo
    Porta = 'COM1'
    MonitorarBalanca = True
    OnLePeso = ACBrBALLePeso
    Left = 456
    Top = 23
  end
  object TmBalanca: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TmBalancaTimer
    Left = 272
    Top = 16
  end
end
