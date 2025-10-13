object fbca: Tfbca
  Left = 0
  Top = 0
  Caption = 'Localizar'
  ClientHeight = 463
  ClientWidth = 817
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
  object SpFilter: TSplitter
    Left = 0
    Top = 156
    Width = 817
    Height = 4
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Beveled = True
  end
  object pbotoes: TPanel
    Left = 0
    Top = 434
    Width = 817
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
      Left = 663
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
    end
    object bcancela: TBitBtn
      Left = 738
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
    end
  end
  object PlSelecao: TPanel
    Left = 0
    Top = 26
    Width = 817
    Height = 79
    Align = alTop
    BevelOuter = bvLowered
    BorderWidth = 2
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object GBPlSelecao: TGroupBox
      Left = 3
      Top = 3
      Width = 811
      Height = 73
      Align = alClient
      Caption = ' Filtros ativos '
      Color = clWhite
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Image1: TImage
        Left = 2
        Top = 15
        Width = 79
        Height = 56
        Align = alLeft
        Center = True
        Picture.Data = {
          0A544A504547496D616765EB070000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002D002D03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDE4
          DB27ACBF9BFF008551F145E4FA5F86B51BB8CBF99696B2CC9B8395DCA85867A7
          1902B89F1D7ED41F0E7E1A5EBDAEB7E2AD16CEEE27F2E4B7406E268DBFBAC916
          F20FD6A2D3FE3F7833E26E877B6FA3EA33DD25CDBC90F99169D28C6E52B91BC2
          FAFE95E355E24CA68D5F655B1304FAA7257FB8EDFECBC6CA97B48D2959F5B3B7
          DE787FC2FF0088BE3DFDAABC027528AF24D2A78A2DF2BC5A9CE237E392156301
          7FDDC9C7AD7CB7F1D7E35DE7C3EF17B69FAB7C54D574868E4292CB147A84BE47
          B8DA173CFBFE82BB5FD9CFF6AED7FF00640F035FE97F14BE0A7C4BD14959214B
          FD1E0B6D76D2540582C9FB99BCC40546E2A54EDCE32715F157ED7BFB4DF817E2
          DF8BF50D474AD5EF1164727C9BAD2750826539FBA46C2A0FE35FAE70CE2F2DC7
          E2AA47075213A6B6E57197F9FE27C1E6F43154284275A12527DEEBEE3E8AFF00
          827C7EDCBF10BC75FB56783B41B7F1DF89EF740D4F564B4BFB4D4251750DCC2C
          1B2AA252ED19C8043295618EB8241FD720B281C997FF001FFF000AFC08FF0082
          5078DA37FDBC7E1869EBA6EB1FD9F79AD297D47ECD2B44922C6E6350A4F467C2
          97240407386E01FDF1548F9C247FF7CA0FFD9ABCAE32A54A9E322A94525CBD15
          BABEC77F0ECE72C3B7377D7D4F817F6E1FD99AE3E1D78FF4D4D16630780BC4E4
          C11DBF9609D26F00DCF1A4ACA5D524526455DC4029228C00A2B99F10FF00C13C
          FC11E05F054DE275F1078B70B6A6616D2DFA88C90BC827C9E79CD7E807C57F87
          361F17FE1EEA5E1EBF711417E8BE5CE8C0BDACC8C1E29946EEA8E15B1DF183C1
          35F04FC7DF8A5A9D8FC2FD4BC19A998ED7C4F617634C9ED84876B3B3290C8490
          4A303BD5B1CAB03C66BF8AFC4DE1CFEC3C64F30C2C7F775EC925B467D57A3DD7
          CCFE83E16CE7139A50A784BFBD4BE2EF28F46FCD6CDFA1C87EC9FF000A2EBE28
          5FBE9DA6BDE5858EA370C6E1CDC9BA315A42435C4DF32150C7291A10A087901E
          C4578DFEDA1E33D4FE1578AEEB47F0E5E0D174FB5664892DC4292804B6732329
          918924E496CD7A77C1EF1BFED37F0DBC4BAADD7C23F87DE0EF1778225B586C91
          2FA568EF1D235259DE4F3014DF23C8D8C00370C92471E41F1FEDFE227C44D767
          B8F147C27F08E87A94C497171F156CEDE12DDFF7670F8CF60D9ED5FD41E05F02
          AE1CC1AC5E614D3AF59272F85CA29EAA3AD9AEEFCCFC8BC4DE2679AD7FABE166
          D52A6ECB7B49AD1BF3EC8CBFF825B7882F7C41FB687C3F96FAFA7BE9CEBB092F
          3DDF9CDD1BDC9FFF005D7EE8F9A3D5BFEFB7FF00E26BF08FFE097B6FAE695FB7
          C7C359678BC22DA2A6B1B25B3B2BDB89D8BB46CA929999D8318D8860A085240C
          83D2BF7652E1587062C7A86047FE855F73C6EEF8D8BB5BDDFD59F31C391B61E5
          ADF51EF21D9CBCC47FBC7FF88AF83FF6F5F86516B9F193C7F1ADADA1D43C4E3C
          216D6B7534119921FB45D4F68DB6465DC80F9481B6E3A639E95F7CB69CD8FBF1
          FF00DF2DFF00C557857ED45FB31C9F197E23F84A58B5FF00EC5B7BBB8B68F52F
          2ECCCB713AD94ED776DE4C8640B13091E40C5924C86180A464FE4DC51954B30C
          2C29437538CBF1D7F067DE64198FD4B12EA3D9C5AFC53FCD23C0BF66FD7AEFE0
          3693A9E8FE31D5E2F07CEA1D113549BFB36DE6E4F31DC328825CF6DB2B743D2B
          E15FDB93C51A5F89BE20DFBD9DFE99A8B49212AF6B3DB5D799C9E9B49CD7EE77
          863C236FE16D1A1B2B00905BC4814021999F1DD9B7658FB9AB71E8E209032081
          58F3B84673F9EEAFD3B2FE29AF87AF2C47226E5F23E2B1592D3AD4A34B99A48F
          C2CFF82607C15F88977FB45F84759D2BE1EF8CAE74CB4D5E0966D45B467B4D3E
          DE2DE034CD7526D8F6A292C42333903E55248AFDC0D0B49FEC9D3628A49E69A6
          0A3CC72C46E6EF8F93A56BBD8C927DE94363D431FF00D9A9069AC3F8D3FEF96F
          FE2ABCDCE337AB98D655AAA4ACADA1D980C0C3094FD9C1DCFFD9}
      end
      object DBLista: TDBGrid
        Left = 129
        Top = 15
        Width = 680
        Height = 56
        TabStop = False
        Align = alClient
        DataSource = Difi
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ifidescricao'
            Visible = True
          end>
      end
      object PlBotoesFiltros: TPanel
        Left = 81
        Top = 15
        Width = 48
        Height = 56
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object BFiltroIncluir: TBitBtn
          Left = 0
          Top = 0
          Width = 48
          Height = 18
          Align = alTop
          Caption = 'Incluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BFiltroIncluirClick
        end
        object BFiltroExcluir: TBitBtn
          Left = 0
          Top = 36
          Width = 48
          Height = 18
          Align = alTop
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BFiltroExcluirClick
        end
        object BFiltroAlterar: TBitBtn
          Left = 0
          Top = 18
          Width = 48
          Height = 18
          Align = alTop
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BFiltroAlterarClick
        end
      end
    end
  end
  object PlFiltros: TPanel
    Left = 0
    Top = 105
    Width = 817
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
    object PlEdTextoBusca: TPanel
      Left = 0
      Top = 0
      Width = 389
      Height = 51
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 3
      TabOrder = 0
      object GrBTextoProcurar: TGroupBox
        Left = 3
        Top = 3
        Width = 383
        Height = 45
        Align = alClient
        Caption = ' Informa'#231#227'o a Procurar: '
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object PlGbEdtBusca: TPanel
          Left = 2
          Top = 15
          Width = 379
          Height = 28
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 3
          TabOrder = 0
          object edbusca: TEdit
            Left = 3
            Top = 3
            Width = 373
            Height = 21
            Align = alTop
            Color = 14286847
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edbuscaEnter
            OnKeyPress = edbuscaKeyPress
            OnKeyUp = edbuscaKeyUp
          end
        end
      end
    end
  end
  object DBGLista: TDBGrid
    Left = 0
    Top = 160
    Width = 817
    Height = 274
    Align = alClient
    BorderStyle = bsNone
    Color = clCream
    DataSource = DSTabela
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGListaCellClick
    OnColEnter = DBGListaColEnter
    OnDrawColumnCell = DBGListaDrawColumnCell
    OnDblClick = DBGListaDblClick
    OnKeyDown = DBGListaKeyDown
    OnKeyPress = DBGListaKeyPress
    OnKeyUp = DBGListaKeyUp
    OnTitleClick = DBGListaTitleClick
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'T'#237'tulo'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    object plid: TPanel
      Left = 666
      Top = 2
      Width = 126
      Height = 22
      Align = alRight
      BevelOuter = bvNone
      Caption = '00-00-000'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfigurar: TBitBtn
      Left = 792
      Top = 2
      Width = 23
      Height = 22
      Align = alRight
      TabOrder = 1
    end
  end
  object consulta: TUniQuery
    Left = 240
    Top = 108
  end
  object cls: TUniQuery
    SQL.Strings = (
      
        'select * from cls where usrcodigo=:usrcodigo and clsnomeform=:cl' +
        'snomeform')
    Left = 304
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usrcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clsnomeform'
        Value = nil
      end>
    object clsclscodigo: TIntegerField
      FieldName = 'clscodigo'
    end
    object clsclsnomeform: TStringField
      FieldName = 'clsnomeform'
      Required = True
      Size = 50
    end
    object clsclslargura: TIntegerField
      FieldName = 'clslargura'
      Required = True
    end
    object clsclsaltura: TIntegerField
      FieldName = 'clsaltura'
      Required = True
    end
    object clsclscolunas: TBlobField
      FieldName = 'clscolunas'
    end
    object clsusrcodigo: TIntegerField
      FieldName = 'usrcodigo'
    end
    object clsclsmodo: TIntegerField
      FieldName = 'clsmodo'
    end
    object clsclsrodape: TIntegerField
      FieldName = 'clsrodape'
    end
    object clsclsbotoes: TIntegerField
      FieldName = 'clsbotoes'
    end
    object clsclsselecao: TIntegerField
      FieldName = 'clsselecao'
    end
    object clsclspositopo: TIntegerField
      FieldName = 'clspositopo'
    end
    object clsclsposiesquerda: TIntegerField
      FieldName = 'clsposiesquerda'
    end
  end
  object dcl: TUniQuery
    SQL.Strings = (
      
        'select dclcodigo, clscodigo, clbcodigo, dclvisivel, dclpesquisav' +
        'el, dclpesquisa, dclnomecampo,dcltitulo from dcl where clscodigo' +
        '=:clscodigo and clbcodigo=:clbcodigo')
    Left = 304
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clscodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object dcldclcodigo: TIntegerField
      FieldName = 'dclcodigo'
    end
    object dclclscodigo: TIntegerField
      FieldName = 'clscodigo'
    end
    object dclclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object dcldclvisivel: TIntegerField
      DisplayLabel = 'Vis'#237'vel'
      FieldName = 'dclvisivel'
    end
    object dcldclpesquisavel: TIntegerField
      FieldName = 'dclpesquisavel'
    end
    object dcldclpesquisa: TIntegerField
      FieldName = 'dclpesquisa'
    end
    object dcldclnomecampo: TStringField
      FieldName = 'dclnomecampo'
      Size = 50
    end
    object dcldcltitulo: TStringField
      FieldName = 'dcltitulo'
      Size = 50
    end
  end
  object fil: TUniQuery
    ParamCheck = False
    SQL.Strings = (
      
        'select filcodigo, clscodigo, clbcodigo, filsqloriginal from fil ' +
        'where clscodigo=:clscodigo and clbcodigo=:clbcodigo')
    Left = 304
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clscodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object filfilcodigo: TIntegerField
      FieldName = 'filcodigo'
    end
    object filclscodigo: TIntegerField
      FieldName = 'clscodigo'
    end
    object filclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object filfilsqloriginal: TStringField
      FieldName = 'filsqloriginal'
      Size = 4000
    end
  end
  object ifi: TUniQuery
    SQL.Strings = (
      
        'select ifichave, filcodigo, ifitipocampo, ififiltro, ifidescrica' +
        'o, ificampo, ifimetodo, ifititulo from ifi where filcodigo=:filc' +
        'odigo order by ificampo, ifimetodo')
    Left = 304
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'filcodigo'
        Value = nil
      end>
    object ifiifichave: TIntegerField
      FieldName = 'ifichave'
    end
    object ififilcodigo: TIntegerField
      FieldName = 'filcodigo'
    end
    object ifiifitipocampo: TIntegerField
      FieldName = 'ifitipocampo'
    end
    object ifiififiltro: TStringField
      FieldName = 'ififiltro'
      Size = 1000
    end
    object ifiifidescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o do filtro'
      FieldName = 'ifidescricao'
      Size = 1000
    end
    object ifiificampo: TStringField
      FieldName = 'ificampo'
      Size = 50
    end
    object ifiifimetodo: TIntegerField
      FieldName = 'ifimetodo'
    end
    object ifiifititulo: TStringField
      FieldName = 'ifititulo'
      Size = 50
    end
  end
  object Difi: TUniDataSource
    DataSet = ifi
    Left = 308
    Top = 300
  end
  object DSTabela: TUniDataSource
    DataSet = uqtabela
    Left = 524
    Top = 244
  end
  object uqtabela: TUniQuery
    Left = 524
    Top = 188
  end
end
