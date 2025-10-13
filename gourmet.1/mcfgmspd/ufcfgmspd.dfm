inherited fcfgmspd: Tfcfgmspd
  Caption = 'Configura'#231#245'es de SPED'
  ClientHeight = 657
  ClientWidth = 960
  ExplicitWidth = 976
  ExplicitHeight = 696
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 628
    Width = 960
    ExplicitTop = 628
    ExplicitWidth = 960
    inherited bconfirma: TBitBtn
      Left = 806
      ExplicitLeft = 806
    end
    inherited bcancela: TBitBtn
      Left = 881
      ExplicitLeft = 881
    end
    inherited bfechar: TBitBtn
      Left = 741
      ExplicitLeft = 741
    end
  end
  inherited paginas: TPageControl
    Width = 960
    Height = 628
    ActivePage = Contador
    ExplicitWidth = 960
    ExplicitHeight = 628
    inherited Principal: TTabSheet
      ExplicitWidth = 952
      ExplicitHeight = 600
      object Label26: TLabel
        Left = 8
        Top = 64
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'd. CNAE'
        FocusControl = cfgcnae
      end
      object Label4: TLabel
        Left = 8
        Top = 142
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Faixa do Simples'
        FocusControl = ssncodigo
      end
      object Label44: TLabel
        Left = 8
        Top = 264
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CST para Terceiros'
        FocusControl = cfgcstterceiros
      end
      object Label45: TLabel
        Left = 8
        Top = 289
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CST para Cupons'
        FocusControl = cfgcstcuf
      end
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = cfgcodigo
      end
      object cfgcnae: TDBEdit
        Left = 136
        Top = 61
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcnae'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ssncodigo: TDBEdit
        Left = 136
        Top = 139
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssncodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfgcstterceiros: TDBEdit
        Left = 136
        Top = 261
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcstterceiros'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgcstcuf: TDBEdit
        Left = 136
        Top = 288
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcstcuf'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cfgcodigo: TDBEdit
        Left = 136
        Top = 7
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cfgperfil: TDBRadioGroup
        Left = 136
        Top = 88
        Width = 108
        Height = 45
        CustomHint = BalloonHint
        Caption = ' Perfil Sped '
        Columns = 3
        DataField = 'cfgperfil'
        DataSource = DSRegistro
        Items.Strings = (
          'A'
          'B'
          'C')
        TabOrder = 5
      end
      object cfgspedicms: TDBRadioGroup
        Left = 136
        Top = 166
        Width = 193
        Height = 89
        CustomHint = BalloonHint
        Caption = ' Registro ICM Subst '
        DataField = 'cfgspedicms'
        DataSource = DSRegistro
        Items.Strings = (
          'Registrar Normal'
          'Registrar como Outras Despesas'
          'Registrar Zerado')
        TabOrder = 6
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object cfgtipoatividade: TDBRadioGroup
        Left = 136
        Top = 315
        Width = 233
        Height = 64
        CustomHint = BalloonHint
        Caption = ' Tipo de Atividade '
        DataField = 'cfgtipoatividade'
        DataSource = DSRegistro
        Items.Strings = (
          'Industrial ou Equiparado a IndustriaL'
          'Outros')
        TabOrder = 7
        Values.Strings = (
          '0'
          '1')
      end
    end
    object Contador: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Contador'
      ImageIndex = 2
      object Label43: TLabel
        Left = 8
        Top = 38
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contador Respons'#225'vel'
        FocusControl = ctdidentificacao
      end
      object Label46: TLabel
        Left = 7
        Top = 66
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CPF'
      end
      object Label47: TLabel
        Left = 284
        Top = 66
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CNPJ'
      end
      object Label48: TLabel
        Left = 7
        Top = 93
        Width = 21
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CRC'
        FocusControl = ctdcrc
      end
      object Label49: TLabel
        Left = 7
        Top = 120
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Endere'#231'o'
        FocusControl = ctdendereco
      end
      object Label50: TLabel
        Left = 361
        Top = 120
        Width = 12
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#186
        FocusControl = ctdnumero
      end
      object Label51: TLabel
        Left = 7
        Top = 147
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Bairro'
        FocusControl = ctdbairro
      end
      object Label52: TLabel
        Left = 7
        Top = 174
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
        FocusControl = ctdcomple
      end
      object Label54: TLabel
        Left = 338
        Top = 201
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cep'
      end
      object Label56: TLabel
        Left = 8
        Top = 233
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cidade'
        FocusControl = DBEdit1
      end
      object Label53: TLabel
        Left = 7
        Top = 201
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Telefone'
        FocusControl = ctdfone
      end
      object Label57: TLabel
        Left = 7
        Top = 255
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'email do Escrit'#243'rio'
        FocusControl = ctdemail
      end
      object Label58: TLabel
        Left = 7
        Top = 282
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'email Setor Fiscal'
        FocusControl = ctdboxedominio
      end
      object Label2: TLabel
        Left = 220
        Top = 200
        Width = 18
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fax'
      end
      object Label3: TLabel
        Left = 8
        Top = 11
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Escrit'#243'rio'
        FocusControl = ctdescritorio
      end
      object ctdidentificacao: TDBEdit
        Left = 136
        Top = 35
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdidentificacao'
        DataSource = Dctd
        TabOrder = 0
      end
      object ctdcpf: TDBEdit
        Left = 136
        Top = 63
        Width = 116
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcpf'
        DataSource = Dctd
        TabOrder = 1
      end
      object ctdcnpj: TDBEdit
        Left = 315
        Top = 63
        Width = 120
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcnpj'
        DataSource = Dctd
        TabOrder = 2
      end
      object ctdcrc: TDBEdit
        Left = 136
        Top = 90
        Width = 147
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcrc'
        DataSource = Dctd
        TabOrder = 3
      end
      object ctdendereco: TDBEdit
        Left = 136
        Top = 117
        Width = 220
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdendereco'
        DataSource = Dctd
        TabOrder = 4
      end
      object ctdnumero: TDBEdit
        Left = 378
        Top = 117
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdnumero'
        DataSource = Dctd
        TabOrder = 5
      end
      object ctdbairro: TDBEdit
        Left = 136
        Top = 144
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdbairro'
        DataSource = Dctd
        TabOrder = 6
      end
      object ctdcomple: TDBEdit
        Left = 136
        Top = 171
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcomple'
        DataSource = Dctd
        TabOrder = 7
      end
      object ctdcep: TDBEdit
        Left = 363
        Top = 198
        Width = 72
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcep'
        DataSource = Dctd
        TabOrder = 8
      end
      object ctdfax: TDBEdit
        Left = 245
        Top = 198
        Width = 88
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdfax'
        DataSource = Dctd
        TabOrder = 9
      end
      object ctdfone: TDBEdit
        Left = 136
        Top = 198
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdfone'
        DataSource = Dctd
        TabOrder = 10
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 225
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cddcodigo'
        DataSource = Dctd
        TabOrder = 11
      end
      object ctdemail: TDBEdit
        Left = 136
        Top = 252
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdemail'
        DataSource = Dctd
        TabOrder = 12
      end
      object ctdboxedominio: TDBEdit
        Left = 136
        Top = 279
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdboxedominio'
        DataSource = Dctd
        TabOrder = 13
      end
      object ctdescritorio: TDBEdit
        Left = 136
        Top = 8
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdescritorio'
        DataSource = Dctd
        TabOrder = 14
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 120
    Caption = '01-01-003'
    ExplicitLeft = 120
  end
  inherited DSRegistro: TUniDataSource
    Left = 432
    Top = 504
  end
  inherited cfg: TUniQuery
    Left = 600
    Top = 408
  end
  inherited consulta: TUniQuery
    Left = 576
    Top = 496
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select * from cfgmspd where cfgcodigo=:cfgcodigo')
    Left = 704
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object registrocfgcnae: TStringField
      FieldName = 'cfgcnae'
      Required = True
    end
    object registrocfgperfil: TStringField
      FieldName = 'cfgperfil'
      Required = True
      Size = 1
    end
    object registrossncodigo: TIntegerField
      FieldName = 'ssncodigo'
      Required = True
    end
    object registrossnfaturamento: TStringField
      FieldKind = fkLookup
      FieldName = 'ssnfaturamento'
      LookupDataSet = ssn
      LookupKeyFields = 'ssncodigo'
      LookupResultField = 'ssnfaturamento'
      KeyFields = 'ssncodigo'
      Required = True
      Size = 50
      Lookup = True
    end
    object registrocfgspedicms: TStringField
      FieldName = 'cfgspedicms'
      Required = True
      Size = 3
    end
    object registrocfgcstterceiros: TStringField
      FieldName = 'cfgcstterceiros'
      Required = True
      Size = 3
    end
    object registrocstterceiros: TStringField
      FieldKind = fkLookup
      FieldName = 'cstterceiros'
      LookupDataSet = cst
      LookupKeyFields = 'cstcodigo'
      LookupResultField = 'cstidentificacao'
      KeyFields = 'cfgcstterceiros'
      Size = 50
      Lookup = True
    end
    object registrocfgcstcuf: TStringField
      FieldName = 'cfgcstcuf'
      Required = True
      Size = 3
    end
    object registrocstcuf: TStringField
      FieldKind = fkLookup
      FieldName = 'cstcuf'
      LookupDataSet = cst
      LookupKeyFields = 'cstcodigo'
      LookupResultField = 'cstidentificacao'
      KeyFields = 'cfgcstcuf'
      Required = True
      Size = 50
      Lookup = True
    end
    object registrocfgtipoatividade: TStringField
      FieldName = 'cfgtipoatividade'
      Required = True
      Size = 1
    end
  end
  inherited dcp: TUniQuery
    Left = 572
    Top = 452
  end
  inherited dtb: TUniQuery
    Left = 532
    Top = 384
  end
  inherited coa: TUniQuery
    Left = 304
    Top = 512
  end
  inherited pfr: TUniQuery
    Left = 612
    Top = 184
  end
  inherited dcl: TUniQuery
    Left = 480
  end
  inherited cau: TUniQuery
    Left = 548
  end
  inherited err: TUniQuery
    Left = 540
    Top = 228
  end
  inherited BalloonHint: TBalloonHint
    Left = 484
    Top = 208
  end
  inherited acoesfrm: TActionList
    Left = 812
    Top = 204
  end
  inherited cpg: TUniQuery
    Left = 28
    Top = 416
  end
  inherited cpc: TUniQuery
    Left = 29
    Top = 465
  end
  inherited lou: TUniQuery
    Left = 360
    Top = 376
  end
  inherited consultashema: TUniQuery
    Left = 844
  end
  object crt: TUniQuery
    SQL.Strings = (
      'select crtcodigo,crtidentificacao from crt')
    Left = 668
    Top = 216
    object crtcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
    end
    object crtcrtidentificacao: TStringField
      FieldName = 'crtidentificacao'
      Size = 50
    end
  end
  object ssn: TUniQuery
    SQL.Strings = (
      'select ssncodigo,ssnfaturamento,ssnaliquota from ssn')
    Left = 720
    Top = 340
    object ssnssncodigo: TIntegerField
      FieldName = 'ssncodigo'
    end
    object ssnssnfaturamento: TStringField
      FieldName = 'ssnfaturamento'
      Size = 30
    end
    object ssnssnaliquota: TFloatField
      FieldName = 'ssnaliquota'
    end
  end
  object Dctd: TUniDataSource
    DataSet = ctd
    Left = 712
    Top = 116
  end
  object ctd: TUniQuery
    SQL.Strings = (
      
        'select ctdcodigo,cfgcodigo,ctdidentificacao,ctdcpf,ctdcrc,ctdcnp' +
        'j,ctdcep,ctdboxedominio,'
      
        'ctdendereco,ctdnumero,ctdcomple,ctdbairro,ctdfone,ctdfax,ctdemai' +
        'l,cddcodigo,ctdescritorio from ctd'
      'where cfgcodigo=:cfgcodigo')
    BeforeOpen = ctdBeforeOpen
    BeforePost = ctdBeforePost
    Left = 676
    Top = 116
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object ctdctdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ctdcodigo'
    end
    object ctdcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object ctdctdidentificacao: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'ctdidentificacao'
      Required = True
      Size = 100
    end
    object ctdctdcpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'ctdcpf'
    end
    object ctdctdcrc: TStringField
      DisplayLabel = 'CRC'
      FieldName = 'ctdcrc'
      Required = True
      Size = 15
    end
    object ctdctdcnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ctdcnpj'
    end
    object ctdctdendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ctdendereco'
      Required = True
      Size = 60
    end
    object ctdctdnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ctdnumero'
      Required = True
      Size = 10
    end
    object ctdctdcomple: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'ctdcomple'
      Size = 60
    end
    object ctdctdbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'ctdbairro'
      Required = True
      Size = 60
    end
    object ctdctdfone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'ctdfone'
      Required = True
      Size = 11
    end
    object ctdctdfax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'ctdfax'
      Size = 11
    end
    object ctdctdemail: TStringField
      DisplayLabel = 'email'
      FieldName = 'ctdemail'
      Required = True
      Size = 200
    end
    object ctdcddcodigo: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object ctdcddnome: TStringField
      FieldKind = fkLookup
      FieldName = 'cddnome'
      LookupDataSet = cdd
      LookupKeyFields = 'cddcodigo'
      LookupResultField = 'cddnome'
      KeyFields = 'cddcodigo'
      Required = True
      Size = 30
      Lookup = True
    end
    object ctdctdboxedominio: TStringField
      FieldName = 'ctdboxedominio'
      Size = 200
    end
    object ctdctdcep: TStringField
      FieldName = 'ctdcep'
      Size = 10
    end
    object ctdctdescritorio: TStringField
      FieldName = 'ctdescritorio'
      Size = 50
    end
  end
  object cdd: TUniQuery
    SQL.Strings = (
      'select cddcodigo,cddnome from cdd')
    Left = 472
    Top = 376
    object cddcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Size = 10
    end
    object cddcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
  end
  object cst: TUniQuery
    SQL.Strings = (
      'select cstcodigo, cstidentificacao from cst')
    Left = 420
    Top = 368
    object cstcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object cstcstidentificacao: TStringField
      FieldName = 'cstidentificacao'
      Size = 50
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd ')
    Left = 584
    Top = 344
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
