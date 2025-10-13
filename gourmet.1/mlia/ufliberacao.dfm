object fliberacao: Tfliberacao
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Libera'#231#227'o de Acesso'
  ClientHeight = 325
  ClientWidth = 626
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GBLogin: TGroupBox
    AlignWithMargins = True
    Left = 20
    Top = 69
    Width = 586
    Height = 205
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object LUsuario: TLabel
      Left = 15
      Top = 3
      Width = 107
      Height = 14
      Caption = 'Nome do Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LSenha: TLabel
      Left = 15
      Top = 55
      Width = 42
      Height = 14
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LHistorico: TLabel
      Left = 15
      Top = 112
      Width = 58
      Height = 14
      Caption = 'Hist'#243'rico:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object usuario: TEdit
      Left = 15
      Top = 28
      Width = 114
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = usuarioKeyDown
      OnKeyPress = FormKeyPress
    end
    object senha: TEdit
      Left = 15
      Top = 78
      Width = 114
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object MHistorico: TMemo
      Left = 15
      Top = 136
      Width = 218
      Height = 50
      TabStop = False
      TabOrder = 2
    end
  end
  object pbotoes: TPanel
    Left = 0
    Top = 294
    Width = 626
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 1
    object bconfirma: TBitBtn
      Left = 472
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 547
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = bcancelaClick
    end
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 626
    Height = 49
    Align = alTop
    BorderWidth = 4
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Image1: TImage
      Left = 5
      Top = 5
      Width = 44
      Height = 39
      Align = alLeft
      Picture.Data = {
        0A544A504547496D61676508060000FFD8FFE000104A46494600010101006000
        600000FFE1001645786966000049492A0008000000000000000000FFDB004300
        080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A
        1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432
        FFDB0043010909090C0B0C180D0D1832211C2132323232323232323232323232
        3232323232323232323232323232323232323232323232323232323232323232
        3232323232FFC0001108002E002A03012200021101031101FFC4001F00000105
        01010101010100000000000000000102030405060708090A0BFFC400B5100002
        010303020403050504040000017D010203000411051221314106135161072271
        14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
        3435363738393A434445464748494A535455565758595A636465666768696A73
        7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
        AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
        E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
        0000000000000102030405060708090A0BFFC400B51100020102040403040705
        040400010277000102031104052131061241510761711322328108144291A1B1
        C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
        B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
        F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F4BD47C7ACB773C1A369
        66FA2B67D935DCF3F916FBB76CDA8DB58B1DC0AF403208049071BFA0EB90EBB6
        4D324325BCF13F973DBCA4168DB19EA0904104104763D882079F6B3E1EBCD02C
        6C8C9650DDDBDACA9042EB3EDDA30155C820F27D39F98F5E735A5E19965B0D2C
        EA16F72273AAE2E7CC29811A81B5620B93F771C93D5893C74ADA34D495A2F530
        955707792D0A7AB49A878F75ABAB2B1BD36DA359318EE667042C641E54A71BE4
        3D70DF2A2904825B1552FBC296BE0E9F46BCD0F57B98E4BFBB5B71B9224EAACD
        BC88D1032AE3E65607E5CE0822B7EF35182CEC99A77B5B2B5DFB9CAA045673DC
        81CB31C7419271D2B9C9209FC7DE3158227F2F47B24FB1279A7CB91A22A3CF90
        4670D9907EE81FE152EDD48ACEAD250D1BF7874EAFB4774B43D4746BF6D5742D
        3F51688C2D776D1CE633D50B286C7E19C55EA4555450AA02A818000C00296A4D
        886EADA1BDB49AD6E103C332346EA7BA91822BCFF40D0B54D1D751D0AE227960
        B6BA371A7DC6D01648A4E5C71C021CE4838E58E3815DEEA0243A7DC08B3BF61C
        63AD726F0DC5E787B52B3B79D903A2EE8D376E68F9DEA9B4120B0F9720123390
        09C56B4D34BDA2E8615249C9536B739BD4AF12E42DC464B42EA56CC95C661CFC
        D37D6461853FF3CD07F7CE5F7D0C56BA74036113FCA410E4156C649183C11D88
        C11D88ACEB2D4ED353D63FD25D2D1CC9B520930818AF023420953B7006D07200
        E956B57919F50753C08C0503F5FEB5F258BAF52A57751E8FA1EBD1A71853E546
        E685E2CBF8EE22B4B86FB4A3B045F30E1F24E061BFA11D7F8874AEFE391258D6
        4460C8C03291DC1AF29D22DA796E6216A337D3968ED78C88B18F3276FF006503
        0C7ABB28F523D4EDADA3B4B486DA2CF970A2C6BB8E4E00C0C9EF5ED602756747
        9AABF4F4392AA8A95A2487A1AF3CBFD561D0EE628E7B7B99AF08F316088AA145
        CE033B37DD048380012707B0AF44AE4FC55E116D66E05F5ABA2CFB1639A3691A
        2F35549231228250F2C3383C1E3079AF46151C534BA9CB529A9B4FB1C6CF6B69
        F11BC4A905D582E9EFE5B33B427323803E52C7016419006082074EA41AB63E1E
        EB7A5994C77D15E59C63291056321183C2063C638F94B9073C6C1C55DF0E7833
        538FC5F6DACDE4D6B05AE9EB2C50DBC12B4AF2B32852CEC5540E0670075FCABD
        1AB9ABE1E9D6569A36A739C4E77C29A24BA6DABDDDF44B1DF5C00BE52B6E16F1
        2E76459E84F2CCC475666EC063A2A28AD52495908FFFD9}
    end
    object Panel2: TPanel
      Left = 49
      Top = 5
      Width = 572
      Height = 39
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      Caption = 'A U T O R I Z A '#199' '#195' O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object clb: TUniQuery
    Left = 76
    Top = 28
  end
  object dau: TUniQuery
    SQL.Strings = (
      'select * from dau')
    Left = 168
    Top = 4
    object dauclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object dauactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object daudauativo: TIntegerField
      FieldName = 'dauativo'
    end
  end
  object consulta: TUniQuery
    Left = 136
    Top = 65517
  end
  object cau: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cau.cauchave,'
      '  cau.caudata,'
      '  cau.cauhora,'
      '  cau.usrautorizou,'
      '  cau.usrsolicitou'
      'FROM cau'
      'WHERE cau.cauchave = :cauchave')
    Left = 375
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cauchave'
        Value = nil
      end>
    object caucauchave: TIntegerField
      FieldName = 'cauchave'
    end
    object caucaudata: TDateField
      FieldName = 'caudata'
    end
    object caucauhora: TTimeField
      FieldName = 'cauhora'
    end
    object cauusrautorizou: TIntegerField
      FieldName = 'usrautorizou'
    end
    object cauusrsolicitou: TIntegerField
      FieldName = 'usrsolicitou'
    end
  end
  object aac: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  aac.aaccodigo,'
      '  aac.cauchave,'
      '  aac.actcodigo,'
      '  aac.aachistorico,'
      '  aac.aacnometabela,'
      '  aac.aacchaveregistro'
      'FROM aac'
      'WHERE aac.aaccodigo = :aaccodigo')
    Left = 328
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aaccodigo'
        Value = nil
      end>
    object aacaaccodigo: TIntegerField
      FieldName = 'aaccodigo'
    end
    object aaccauchave: TIntegerField
      FieldName = 'cauchave'
    end
    object aacactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object aacaachistorico: TStringField
      FieldName = 'aachistorico'
      Size = 200
    end
    object aacaacnometabela: TStringField
      FieldName = 'aacnometabela'
      Size = 50
    end
    object aacaacchaveregistro: TStringField
      FieldName = 'aacchaveregistro'
      Size = 50
    end
  end
  object adt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adt.adtcodigo,'
      '  adt.cauchave,'
      '  adt.tdecodigo,'
      '  adt.orcchave,'
      '  adt.meschave'
      'FROM adt'
      'WHERE adt.adtcodigo = :adtcodigo')
    Left = 328
    Top = 99
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'adtcodigo'
        Value = nil
      end>
    object adtadtcodigo: TIntegerField
      FieldName = 'adtcodigo'
    end
    object adtcauchave: TIntegerField
      FieldName = 'cauchave'
    end
    object adttdecodigo: TIntegerField
      FieldName = 'tdecodigo'
    end
    object adtorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object adtmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object adf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adf.adfcodigo,'
      '  adf.cauchave,'
      '  adf.ltechave,'
      '  adf.ddfcodigo'
      'FROM adf'
      'WHERE adf.adfcodigo = :adfcodigo')
    Left = 328
    Top = 142
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'adfcodigo'
        Value = nil
      end>
    object adfadfcodigo: TIntegerField
      FieldName = 'adfcodigo'
    end
    object adfcauchave: TIntegerField
      FieldName = 'cauchave'
    end
    object adfltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object adfddfcodigo: TIntegerField
      FieldName = 'ddfcodigo'
    end
  end
  object aat: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  aatcodigo,'
      '  cauchave,'
      '  actcodigo,'
      '  trmcodigo,'
      '  orcchave'
      'FROM aat'
      'WHERE aatcodigo = :aatcodigo')
    Left = 374
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aatcodigo'
        Value = nil
      end>
    object aataatcodigo: TIntegerField
      FieldName = 'aatcodigo'
    end
    object aatcauchave: TIntegerField
      FieldName = 'cauchave'
    end
    object aatactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object aattrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object aatorcchave: TIntegerField
      FieldName = 'orcchave'
    end
  end
  object alc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  alc.alccodigo,'
      '  alc.cauchave,'
      '  alc.orcchave,'
      '  alc.alclimitesolic'
      'FROM alc'
      'WHERE alc.alccodigo = :alccodigo')
    Left = 374
    Top = 99
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'alccodigo'
        Value = nil
      end>
    object alcalccodigo: TIntegerField
      FieldName = 'alccodigo'
    end
    object alccauchave: TIntegerField
      FieldName = 'cauchave'
    end
    object alcorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object alcalclimitesolic: TFloatField
      FieldName = 'alclimitesolic'
    end
  end
  object regdau: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  daucodigo,'
      '  clbcodigo,'
      '  actcodigo,'
      '  dauativo,'
      '  actformulario,'
      '  actacao'
      'FROM dau')
    Left = 240
    Top = 16
    object regdaudaucodigo: TIntegerField
      FieldName = 'daucodigo'
    end
    object regdauclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object regdauactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object regdaudauativo: TIntegerField
      FieldName = 'dauativo'
    end
    object regdauactformulario: TStringField
      FieldName = 'actformulario'
      Size = 50
    end
    object regdauactacao: TStringField
      FieldName = 'actacao'
      Size = 30
    end
  end
end
