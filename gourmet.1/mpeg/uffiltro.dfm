object ffiltro: Tffiltro
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Construtor de Filtros'
  ClientHeight = 382
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 353
    Width = 580
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
      Caption = 'Filtrando'
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
    object bfechar: TBitBtn
      Left = 501
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = bfecharClick
    end
    object bmostrar: TBitBtn
      Left = 351
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Mostrar'
      TabOrder = 1
      OnClick = bmostrarClick
    end
    object bocultar: TBitBtn
      Left = 426
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Ocultar'
      TabOrder = 2
      OnClick = bocultarClick
    end
  end
  object DBLista: TDBGrid
    Left = 4
    Top = 4
    Width = 573
    Height = 137
    TabStop = False
    DataSource = Difi
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = DBListaColEnter
    OnDrawColumnCell = DBListaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ifidescricao'
        Visible = True
      end>
  end
  object Plifi: TPanel
    Left = 4
    Top = 172
    Width = 573
    Height = 177
    TabOrder = 2
    object Panel1: TPanel
      Left = 4
      Top = -1
      Width = 89
      Height = 171
      BevelOuter = bvLowered
      Caption = 'Panel1'
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Image1: TImage
        Left = 4
        Top = 63
        Width = 113
        Height = 113
        Picture.Data = {
          0A544A504547496D616765600A0000FFD8FFE000104A46494600010100000100
          010000FFDB008400090606141210141411131012151515160F16181517261B14
          141517141514151914151820281E1719251914171F32212327292C2C2C1A1E31
          35302A35272B2C2901090A0A0E0C0E1A0F0F1929241F252C3535322E2C292A2F
          342C322C2F292B322F2C2C2F342A352C2C2D2D342C352C2C352D2C2A2C352C2F
          2F2C2C2F2C2C2C2C29FFC0001108006F006F03012200021101031101FFC4001B
          00000203010101000000000000000000000506000304070201FFC40044100001
          0104040A07040805050000000000010200030411051221910622314151616281
          E1F013325271A1B1D12372C1E2071433428292C2F1245393B2D215174344A2FF
          C4001A010002030101000000000000000000000000050304060102FFC4002B11
          0002010203050901010000000000000000010203110412310513212251324161
          7191A1B1D1F05214FFDA000C03010002110311003F00ED9D26D279DED3A4DA4F
          3BDBD5BA9A5BA9803CF49B49E77B4E93693CEF6F56EA696EA600A9EC404824AD
          3216F36B60794C9CD5477E5BA6DEB0927F547D394AA1649A2E25E640F552D0A1
          587899B58A54B3C5C88673CAEC3244D34F464581DC07C5863FA7DEFF00355B88
          0C49CD16F16275D1711F12D863A8809EBBD29EE4CFF5069639343C4B36A0C7B8
          44F7F9CF46F6A0E15440EABF5FFE4F9A5AB8BFAB0CB12F7FA3F3B652F20FA35F
          B67AA581302A559E61F78E96B2A30FE7D885B975F7083BC3D8A41B5485FBC81F
          A64C6686FA450F1E21DBE77D195A8212A499A6B1C9581914F7DADCD4D2689E2F
          4BBC895C0B14A0140C439333F6AEFF00BC6B62A51A795F008D495F53B3749B49
          E77B4E93693CEF6F56EA696EA6525F3CD4D94F3B9A54D94F3B9A551D93E1EAD2
          A8EC9F0F5600953653CEE6953653CEE6954764F87AB4AA3B27C3D5800761123F
          857D624621E72324D139731E7B99EE98842F1C3C42138CA41026448995832B73
          2A0E9E72A5949210A4929525424410644198B083A5AF619F23456ABDA4CE9500
          8C5EAA79DCC229D4D86C48E7B989516F90A4E2D557BAA07C8B0DA75361C5F268
          A1DB3DCBB273FA4CDA6DF3F460710B36E379B1BA4F29EADC3D181C467B5177CA
          CDE3A141EA52E9667D63E2CC983C7DBB9B67ED1DE9ED8D4CB8E90767F2FCAC7F
          0417D3463A74EAAAD49507AA90B1284281512656661DE434555A5167B82BB3B4
          D4D94F3B9A54D94F3B9A551D93E1EAD2A8EC9F0F56483205C761139744A71DE2
          C654A0CCA7DE24803799B0489C3650EAB903DE79337023CDA9A6E8754285BD77
          378E8AABA92410B4151B4854AD13E73B03791E858C5429275DBE2D9CC5E33130
          9B8BE5FDD473430B4A51CC966FDD0349C327C7320771F5536E86A79EAB293BBF
          76467947BD59C54ACF713EAD47FA4444EC74FAF3EAD5615EB4F8BA8FD4967429
          AD123A63D8B2B414A9E2935814992A444ECB0CE60EB0C9B17F4690AA25482F02
          8DB30A999F7925B03AA29FCAD74F7793EADE8518F8199494F7AB8B49FEBAF4FB
          337EAC856169CB5B7A233C56063D77F6510AEE55BE3361710FA39CE57808D38A
          478B38397A4231C2963564FCCD5A68C2F101E2814A0DA94904A88D76642D7F05
          B4B1B3A8A0B9FCFEF810D6C161E3072972F8AFA12554DC51CAB77F950D99F47C
          42B2AD3B8A47916778EA66A93561A0FF00A018345E11BE2080EDC206C3A48F83
          6D629BEEF7338DAEA2C18178F32E36F9FC58D609D1CF5D45B9523D99E910094A
          A4A292A0142C3908B245A931EF56718A8EF23C98D60F0F6EE6C3F68EF4F6C372
          6AC9827C4ECD2D4BBCFAB496A5DE7D5A4F5AEEE0D27AD777064A313C3E425692
          951494A81490652208910DCCE3688FABBF53B33206320F6907266CB98F73750A
          C7B49BB8B05C29A27A6755924178EE6B4C85AA1F793973CAF01966D2C2EFE95D
          6ABF58BF82C46EA767A30250C6A104194EC393D18D1874019478301A2A241008
          50D3CDAC797118A0D61CEF6414AD1A7C4B35AF9C094E9484D84EEFD99510E6B2
          E523979CCC730862B356E6F61F450026F09B1227CDBA3CDAADF332DD34D4428E
          68F0F56870090995678742065B659546CDEC629A48099094809002520058006D
          58330850ECA94405BC92D53CA07DD4E5CC3C496CF4F2AC368E77B6CF65E1B711
          BBD5FEB0931D5B78ECB4473EA4D369B15CEE607108CB8ABE7F0B1CA514266DE6
          F6051045B69E77B6AA1A089EA52E916F557CFE1663C1D4FB7736287B477FDE35
          32D3A509E53CEF664C1D3FC439026497AEE425B40E968AA68CF71D4ED15F6878
          34AFB43C1BED63DA4DDC5A563DA4DDC5918C8923A137F06923A137F06F953603
          4A9B018013A9C8230EFEB0B1DBD254342579549DF946FD0D6398A9A3333152B4
          607CE948290262693662A8754DFF0016E7A98D2ED4A43C090A492850D046EC8D
          96DA941D19668E8FE475857BF8D9EA8A6977A4AE533B986612D28B72ED0E9D2A
          4B3259329C8033C84B6C43E0A78546AC93AB29CC327736B82834BC38E12A9DA6
          CF50D636260B7D537935CB1F9EE3C6D1AFB98648EAC5B80FA458B7561AABEF4A
          8792E5E0C4BFDD32AFB5854ABB9E11F066F738090EB13A82E97F6C9B147605C2
          3BEB21E7E15FF902DB3CD49BEF33B69A42A3EC398757FD154F5C42A5700C3A27
          0B1D904220DD2679D4B5AC8BD41982260A011FF1C51FC69FF06C6FE2A0821410
          E175B315BC3FA50D328F44C8DBF2165E538F8F52A3BF71DFC54A2C670069378E
          A3DDAD737F5C8718F3C40B201522D9056E364C676CBF5E4938AEDC277151BC86
          3140AE6FDD1354FB4466DB1B2DD9C16577391971E076791D09BF83491D09BF83
          54163B03C1BD097652C98607A96A55FC5A4B52AFE2D2636EE3E8D2636EE3E8C0
          125A957F1641308934B4425684A8153B5C8C89C6748D7A66CFD31B771F464E8D
          7356979DB8EE5DAE76CE6952D06CEE03332FDA0AF493F145DC1CAD2979317308
          120C594A529480B9C84BEE3B5AB24F535D46C448D801DFC5AF101D3524B464C4
          7CA9DB306A840B27A56D4A61BA15C9FA16EADEB5A5075850F8C9ADEC69254259
          B572643B4D375216EE8A1BA0625453A3BBF76C34C2CC8CE7BCF16BE8B5BB5A7D
          9BD42FDD54CF84DB3532E0806C3E2CC20D6628CAF9448A4B29B13E0C0E20E5B1
          1E0C6E924999B3C78B04894E5C517FCCCD63A145EA66766DFB9E0CC340AFDABB
          EAF5D1925DA0CB695806DA9F9BE663D42C23F7AA488670B519835CCC2136CE79
          6D682AD48A5C592C22DBE08EBAE9733201477F16208752CCBBF8B51010B5122B
          1515485620194F56A6D531B771F464C30256DA3770695B68DDC1BD48E9177169
          23A45DC5803CD6DA377065AA7DD4A3A11E5B8C1EB826592C4BC4E6D95333C8E9
          1771615847453C7CED1D1290978E9E25FA0A862CC0524832CC4288683114F794
          DC512D19E49DD8A108FEA52310BC6B109760E9ACAAC736C066A84765EA66A240
          D632F830CA13039E07AF1F4529D95AD417244EAD82432C99B1282048551BB8B7
          30D4DD3A6A2CF5889A9CEEBC3E008FF0421176ADDA09D3544FC9B2AF00613374
          C9F75647933348E917716923A45DC5AC100A0AFA3484394BF3DEB2DE9DFD1940
          0CAECABDE33F8336C8E917716923A45DC5BB7672C8090782306EBA8E5D8FC00F
          9862E84A52249321A00007935923A45DC5A48E917716E1D3CD6DA3770695B68D
          DC1BD48E917716923A45DC5803FFD9}
      end
    end
    object DBGSugestao: TDBGrid
      Left = 244
      Top = 60
      Width = 245
      Height = 69
      DataSource = DSSugestao
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnCellClick = DBGSugestaoCellClick
      OnKeyPress = DBGSugestaoKeyPress
    end
    object ifiexato: TDBCheckBox
      Left = 408
      Top = 150
      Width = 89
      Height = 17
      Caption = 'Filtro EXATO'
      DataField = 'ifiexato'
      DataSource = Difi
      TabOrder = 2
      ValueChecked = '2'
      ValueUnchecked = '1'
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 141
    Width = 573
    Height = 29
    BorderWidth = 3
    TabOrder = 3
    object blimpatodo: TBitBtn
      Left = 448
      Top = 4
      Width = 121
      Height = 21
      Align = alRight
      Caption = 'Limpa TODO Filtro'
      TabOrder = 0
      TabStop = False
      OnClick = blimpatodoClick
    end
    object bexcluiitem: TBitBtn
      Left = 327
      Top = 4
      Width = 121
      Height = 21
      Align = alRight
      Caption = 'Exclui item do Filtro'
      TabOrder = 1
      TabStop = False
      OnClick = bexcluiitemClick
    end
  end
  object fil: TUniQuery
    SQL.Strings = (
      'SELECT filcodigo'
      '     , clscodigo'
      '     , clbcodigo'
      '     , filsqloriginal'
      'FROM fil'
      'WHERE clscodigo = :clscodigo'
      'AND clbcodigo = :clbcodigo')
    Constraints = <>
    Left = 96
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'clscodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'clbcodigo'
        ParamType = ptInput
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
      DisplayWidth = 6000
      FieldName = 'filsqloriginal'
      Size = 6000
    end
  end
  object ifi: TUniQuery
    SQL.Strings = (
      'SELECT ifichave'
      '     , filcodigo'
      '     , ifitipocampo'
      '     , ififiltro'
      '     , ifidescricao'
      '     , ificampo'
      '     , ifimetodo'
      '     , ifititulo'
      '     , ifiexato'
      'FROM ifi'
      'WHERE filcodigo = :filcodigo')
    Constraints = <>
    Left = 92
    Top = 148
    ParamData = <
      item
        DataType = ftInteger
        Name = 'filcodigo'
        ParamType = ptInput
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
    object ifiifiexato: TIntegerField
      FieldName = 'ifiexato'
    end
  end
  object dfi: TUniQuery
    SQL.Strings = (
      
        'select dfichave, ifichave, dfidatainicial, dfidatafinal from dfi' +
        ' where ifichave=:ifichave')
    Constraints = <>
    Left = 92
    Top = 196
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ifichave'
        ParamType = ptInput
        Value = nil
      end>
    object dfidfichave: TIntegerField
      FieldName = 'dfichave'
    end
    object dfiifichave: TIntegerField
      FieldName = 'ifichave'
    end
    object dfidfidatainicial: TDateField
      FieldName = 'dfidatainicial'
      EditMask = '!99/99/9999;1;_'
    end
    object dfidfidatafinal: TDateField
      FieldName = 'dfidatafinal'
      EditMask = '!99/99/9999;1;_'
    end
  end
  object Difi: TUniDataSource
    DataSet = ifi
    Left = 132
    Top = 144
  end
  object vfi: TUniQuery
    SQL.Strings = (
      
        'select vfichave, ifichave, vfivlrinicial, vfivlrfinal from vfi w' +
        'here ifichave=:ifichave')
    Constraints = <>
    Left = 92
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ifichave'
        ParamType = ptInput
        Value = nil
      end>
    object vfivfichave: TIntegerField
      FieldName = 'vfichave'
    end
    object vfiifichave: TIntegerField
      FieldName = 'ifichave'
    end
    object vfivfivlrinicial: TFloatField
      FieldName = 'vfivlrinicial'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vfivfivlrfinal: TFloatField
      FieldName = 'vfivlrfinal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object sfi: TUniQuery
    SQL.Strings = (
      
        'select sfichave, ifichave, sfitexto from sfi where ifichave=:ifi' +
        'chave')
    Constraints = <>
    Left = 92
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ifichave'
        ParamType = ptInput
        Value = nil
      end>
    object sfisfichave: TIntegerField
      FieldName = 'sfichave'
    end
    object sfiifichave: TIntegerField
      FieldName = 'ifichave'
    end
    object sfisfitexto: TStringField
      FieldName = 'sfitexto'
      Size = 50
    end
  end
  object Ddfi: TUniDataSource
    DataSet = dfi
    Left = 60
    Top = 196
  end
  object Dvfi: TUniDataSource
    DataSet = vfi
    Left = 56
    Top = 252
  end
  object Dsfi: TUniDataSource
    DataSet = sfi
    Left = 56
    Top = 300
  end
  object cfi: TUniQuery
    SQL.Strings = (
      
        'select cfichave, ifichave, cficodinicial, cficodfinal from cfi w' +
        'here ifichave=:ifichave')
    Constraints = <>
    Left = 136
    Top = 300
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ifichave'
        ParamType = ptInput
        Value = nil
      end>
    object cficfichave: TIntegerField
      FieldName = 'cfichave'
    end
    object cfiifichave: TIntegerField
      FieldName = 'ifichave'
    end
    object cficficodinicial: TIntegerField
      FieldName = 'cficodinicial'
    end
    object cficficodfinal: TIntegerField
      FieldName = 'cficodfinal'
    end
  end
  object Dcfi: TUniDataSource
    DataSet = cfi
    Left = 172
    Top = 300
  end
  object mpf: TUniQuery
    SQL.Strings = (
      
        'select mpfchave, ifichave,mpftipo, mpftitulo, mpfmarca, mpfcampo' +
        ' from mpf where ifichave=:ifichave')
    Constraints = <>
    Left = 220
    Top = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ifichave'
        Value = nil
      end>
    object ific: TIntegerField
      FieldName = 'mpfchave'
    end
    object mpfifichave: TIntegerField
      FieldName = 'ifichave'
    end
    object mpfmpftipo: TIntegerField
      FieldName = 'mpftipo'
    end
    object mpfmpftitulo: TStringField
      FieldName = 'mpftitulo'
      Size = 50
    end
    object mpfmpfmarca: TIntegerField
      FieldName = 'mpfmarca'
    end
    object mpfmpfcampo: TStringField
      FieldName = 'mpfcampo'
      Size = 50
    end
  end
  object Dmpf: TUniDataSource
    DataSet = mpf
    Left = 220
    Top = 248
  end
  object consulta: TUniQuery
    Constraints = <>
    Left = 276
    Top = 300
  end
  object qrySugestao: TUniQuery
    Constraints = <>
    Left = 516
    Top = 260
  end
  object DSSugestao: TDataSource
    DataSet = qrySugestao
    Left = 516
    Top = 220
  end
end
