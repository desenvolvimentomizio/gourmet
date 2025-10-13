inherited fcta: Tfcta
  ActiveControl = ctaidentificacao
  Caption = 'Conta Corrente'
  ClientHeight = 369
  ClientWidth = 698
  ExplicitWidth = 714
  ExplicitHeight = 408
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 336
    Width = 692
    ExplicitTop = 364
    ExplicitWidth = 692
    inherited bconfirma: TBitBtn
      Left = 519
      ExplicitLeft = 519
    end
    inherited bcancela: TBitBtn
      Left = 605
      ExplicitLeft = 605
    end
    inherited bfechar: TBitBtn
      Left = 433
      ExplicitLeft = 433
    end
  end
  inherited paginas: TPageControl
    Width = 698
    Height = 333
    ExplicitWidth = 698
    ExplicitHeight = 361
    inherited Principal: TTabSheet
      ExplicitWidth = 690
      ExplicitHeight = 305
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ctacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 37
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Corrente'
        FocusControl = ctaidentificacao
      end
      object Label4: TLabel
        Left = 8
        Top = 91
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo'
        FocusControl = tctcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 118
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Portador / Banco'
        FocusControl = bcocodigo
      end
      object lctanumero: TLabel
        Left = 8
        Top = 199
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero da Conta'
        FocusControl = ctanumero
        Visible = False
      end
      object lctanumerodig: TLabel
        Left = 304
        Top = 199
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Digito da Conta'
        FocusControl = ctanumerodig
        Visible = False
      end
      object lctaagenciadig: TLabel
        Left = 310
        Top = 226
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Digito Ag'#234'ncia'
        FocusControl = ctaagenciadig
        Visible = False
      end
      object lctaagencia: TLabel
        Left = 8
        Top = 226
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ag'#234'ncia'
        FocusControl = ctaagencia
        Visible = False
      end
      object Label9: TLabel
        Left = 8
        Top = 145
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ativa'
        FocusControl = ctaativa
      end
      object Label10: TLabel
        Left = 237
        Top = 172
        Width = 141
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Integra apura'#231#245'es Gerenciais'
        FocusControl = ctafluxo
      end
      object lbpcgcodigo: TLabel
        Left = 8
        Top = 64
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil'
        FocusControl = pcgcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 172
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Terminal'
        FocusControl = ctaterminal
      end
      object lctalimite: TLabel
        Left = 8
        Top = 253
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Limite de Cr'#233'dito R$'
        FocusControl = ctalimite
      end
      object Label6: TLabel
        Left = 3
        Top = 280
        Width = 117
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CNPJ do Banco da conta'
        FocusControl = ctacnpjbanco
      end
      object ctacodigo: TDBEdit
        Left = 141
        Top = 7
        Width = 72
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ctaidentificacao: TDBEdit
        Left = 141
        Top = 34
        Width = 350
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctaidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tctcodigo: TDBEdit
        Left = 141
        Top = 88
        Width = 28
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tctcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object bcocodigo: TDBEdit
        Left = 141
        Top = 115
        Width = 28
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bcocodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ctanumero: TDBEdit
        Left = 141
        Top = 196
        Width = 108
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctanumero'
        DataSource = DSRegistro
        TabOrder = 8
        Visible = False
      end
      object ctanumerodig: TDBEdit
        Left = 384
        Top = 196
        Width = 36
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctanumerodig'
        DataSource = DSRegistro
        TabOrder = 9
        Visible = False
      end
      object ctaagenciadig: TDBEdit
        Left = 384
        Top = 223
        Width = 36
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctaagenciadig'
        DataSource = DSRegistro
        TabOrder = 11
        Visible = False
      end
      object ctaagencia: TDBEdit
        Left = 141
        Top = 223
        Width = 108
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctaagencia'
        DataSource = DSRegistro
        TabOrder = 10
        Visible = False
      end
      object ctaativa: TDBEdit
        Left = 141
        Top = 142
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctaativa'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object ctafluxo: TDBEdit
        Left = 384
        Top = 169
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctafluxo'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object pcgcodigo: TDBEdit
        Left = 141
        Top = 61
        Width = 72
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ctaterminal: TDBEdit
        Left = 141
        Top = 169
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctaterminal'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ctalimite: TDBEdit
        Left = 141
        Top = 250
        Width = 108
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctalimite'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object ctacnpjbanco: TDBEdit
        Left = 141
        Top = 277
        Width = 108
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacnpjbanco'
        DataSource = DSRegistro
        TabOrder = 13
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 104
    Top = 65528
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgusactb from cfg')
    Left = 572
    Top = 20
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
  end
  inherited consulta: TUniQuery
    Left = 356
    Top = 65516
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT cta.ctacodigo'
      '     , cta.ctaidentificacao'
      '     , cta.tctcodigo'
      '     , cta.bcocodigo'
      '     , cta.ctanumero'
      '     , cta.ctaagencia'
      '     , cta.ctaagenciadig'
      '     , cta.ctanumerodig'
      '     , cta.ctasenha'
      '     , cta.ctaativa'
      '     , cta.ctafluxo'
      '     , cta.ctadtmovi'
      '     , cta.ctasldmovi'
      '     , cta.ctadtatu'
      '     , cta.ctalimite'
      '     , cta.ctavctlimite'
      '     , cta.pcgcodigo'
      '     , cta.ctaterminal'
      '     , cta.ctacnpjbanco'
      ''
      '  FROM cta'
      '  WHERE ctacodigo = :ctacodigo')
    Left = 420
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object registroctacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ctacodigo'
    end
    object registroctaidentificacao: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'ctaidentificacao'
      Required = True
      Size = 50
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object registropcgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgidentificacao'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Size = 50
      Lookup = True
    end
    object registrobcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object registrobconome: TStringField
      DisplayLabel = 'Nome do Banco - Portador'
      FieldKind = fkLookup
      FieldName = 'bconome'
      LookupDataSet = bco
      LookupKeyFields = 'bcocodigo'
      LookupResultField = 'bconome'
      KeyFields = 'bcocodigo'
      Size = 35
      Lookup = True
    end
    object registrotctcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tctcodigo'
      Required = True
    end
    object registrotctidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tctidentificacao'
      LookupDataSet = tct
      LookupKeyFields = 'tctcodigo'
      LookupResultField = 'tctidentificacao'
      KeyFields = 'tctcodigo'
      Lookup = True
    end
    object registroctanumero: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'ctanumero'
      Size = 15
    end
    object registroctaagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'ctaagencia'
      Size = 10
    end
    object registroctanumerodig: TStringField
      DisplayLabel = 'Digito Cont.'
      FieldName = 'ctanumerodig'
      Size = 5
    end
    object registroctaagenciadig: TStringField
      DisplayLabel = 'Digito Ag.'
      FieldName = 'ctaagenciadig'
      Size = 5
    end
    object registroctasenha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'ctasenha'
      Size = 10
    end
    object registroctaativa: TStringField
      FieldName = 'ctaativa'
      Size = 1
    end
    object registrosenativa: TStringField
      FieldKind = fkLookup
      FieldName = 'senativa'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'ctaativa'
      Size = 5
      Lookup = True
    end
    object registroctafluxo: TIntegerField
      FieldName = 'ctafluxo'
    end
    object registrosenfluxo: TStringField
      FieldKind = fkLookup
      FieldName = 'senfluxo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'ctafluxo'
      Size = 5
      Lookup = True
    end
    object registroctadtmovi: TDateField
      FieldName = 'ctadtmovi'
    end
    object registroctadtatu: TDateField
      FieldName = 'ctadtatu'
    end
    object registroctavctlimite: TDateField
      FieldName = 'ctavctlimite'
    end
    object registroctasldmovi: TFloatField
      FieldName = 'ctasldmovi'
    end
    object registroctalimite: TFloatField
      DisplayLabel = 'Limite de Cr'#233'dito R$'
      FieldName = 'ctalimite'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroctaterminal: TIntegerField
      DisplayLabel = 'Conta Terminal'
      FieldName = 'ctaterminal'
    end
    object registrosenterminal: TStringField
      FieldKind = fkLookup
      FieldName = 'senterminal'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'ctaterminal'
      Size = 5
      Lookup = True
    end
    object registroctacnpjbanco: TStringField
      FieldName = 'ctacnpjbanco'
    end
  end
  inherited dcp: TUniQuery
    Left = 304
    Top = 65520
  end
  inherited dtb: TUniQuery
    Left = 272
    Top = 65520
  end
  inherited coa: TUniQuery
    Left = 240
    Top = 65520
  end
  inherited BalloonHint: TBalloonHint
    Left = 180
    Top = 65520
  end
  inherited cpg: TUniQuery
    Left = 620
    Top = 144
  end
  inherited cpc: TUniQuery
    Left = 469
    Top = 233
  end
  inherited lou: TUniQuery
    Left = 616
    Top = 192
  end
  object tct: TUniQuery
    SQL.Strings = (
      'select tctcodigo,tctidentificacao from tct')
    Left = 396
    Top = 65520
    object tcttctcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tctcodigo'
    end
    object tcttctidentificacao: TStringField
      DisplayLabel = 'Tipo da Conta'
      FieldName = 'tctidentificacao'
    end
  end
  object bco: TUniQuery
    SQL.Strings = (
      'select bcocodigo,bconome from bco')
    Left = 460
    Top = 65520
    object bcobcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object bcobconome: TStringField
      DisplayLabel = 'Banco - Portador'
      FieldName = 'bconome'
      Size = 35
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 468
    Top = 16
    object sensencodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      DisplayLabel = 'Sim / n'#227'o'
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo, pcgidentificacao from pcg')
    Left = 456
    Top = 112
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 80
    end
  end
end
