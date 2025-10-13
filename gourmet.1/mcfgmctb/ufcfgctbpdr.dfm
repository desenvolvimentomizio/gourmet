inherited fcfgctbpdr: Tfcfgctbpdr
  ActiveControl = cfgctbpcgdinheiro
  Caption = 'Configura'#231#245'es Padr'#245'es de Contabiliza'#231#245'es '
  ClientHeight = 654
  ExplicitHeight = 693
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 625
    ExplicitTop = 356
  end
  inherited paginas: TPageControl
    Height = 625
    ExplicitHeight = 356
    inherited Principal: TTabSheet
      ExplicitHeight = 597
      object Label28: TLabel
        Left = 8
        Top = 382
        Width = 194
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Receita a Vista com Produtos Produzidos'
        FocusControl = cfgctbpcgrectaprodu
        Visible = False
      end
      object Label29: TLabel
        Left = 8
        Top = 436
        Width = 215
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Receita a Vista com Revenda de Mercadorias'
        FocusControl = cfgctbpcgrectamerca
        Visible = False
      end
      object Label30: TLabel
        Left = 8
        Top = 490
        Width = 197
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Receita a Vista com Preta'#231#227'o de Servi'#231'os'
        FocusControl = cfgctbpcgrectaservi
        Visible = False
      end
      object Label4: TLabel
        Left = 8
        Top = 33
        Width = 187
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'#231#227'o de Vendas em Conv'#234'nio'
        FocusControl = cfgctbpcgconvenio
      end
      object Label6: TLabel
        Left = 8
        Top = 60
        Width = 179
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'#231#227'o de Vendas em Cheque'
        FocusControl = cfgctbpcgcheque
      end
      object Label7: TLabel
        Left = 8
        Top = 87
        Width = 233
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'#231#227'o de Vendas em Cart'#245'es de Cr'#233'dito'
        FocusControl = cfgctbpcgcartao
      end
      object Label8: TLabel
        Left = 8
        Top = 355
        Width = 184
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'#231#227'o de Cheques Devolvidos'
        FocusControl = cfgctbpcgchequedevol
        Visible = False
      end
      object Label9: TLabel
        Left = 8
        Top = 409
        Width = 201
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Receita a Prazo com Produtos Produzidos '
        FocusControl = ctbpcgrectaproduap
        Visible = False
      end
      object Label10: TLabel
        Left = 8
        Top = 464
        Width = 219
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Receita a Prazo com Revenda de Mercadorias'
        FocusControl = cfgctbpcgrectamercaap
        Visible = False
      end
      object Label11: TLabel
        Left = 8
        Top = 517
        Width = 206
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Receita a Prazo com Presta'#231#227'o de Servi'#231'os'
        FocusControl = cfgctbpcgrectaserviap
        Visible = False
      end
      object Label12: TLabel
        Left = 8
        Top = 544
        Width = 222
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sa'#237'das a Vista com Devolu'#231#245'es de Mercadorias'
        FocusControl = cfgctbpcgdevolmerca
        Visible = False
      end
      object Label13: TLabel
        Left = 8
        Top = 571
        Width = 226
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sa'#237'das a Prazo com Devolu'#231#245'es de Mercadorias'
        FocusControl = cfgctbpcgdevolmercaap
        Visible = False
      end
      object Label1: TLabel
        Left = 8
        Top = 114
        Width = 229
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'#231#227'o de Vendas em Cart'#245'es de D'#233'bito'
        FocusControl = cfgctbpcgcartaod
      end
      object Label2: TLabel
        Left = 8
        Top = 141
        Width = 188
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'#231#227'o de Vendas em A Faturar'
        FocusControl = cfgctbpcgafaturar
      end
      object Label3: TLabel
        Left = 8
        Top = 168
        Width = 183
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'#231#227'o de Vendas em Doa'#231#245'es'
        FocusControl = cfgctbpcgdoacao
      end
      object Label5: TLabel
        Left = 8
        Top = 6
        Width = 181
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'#231#227'o de Vendas em Dinheiro'
        FocusControl = cfgctbpcgdinheiro
      end
      object cfgctbpcgrectaprodu: TDBEdit
        Left = 249
        Top = 379
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgctbpcgrectaprodu'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Visible = False
      end
      object cfgctbpcgrectamerca: TDBEdit
        Left = 249
        Top = 433
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgctbpcgrectamerca'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 3
        Visible = False
      end
      object cfgctbpcgrectaservi: TDBEdit
        Left = 249
        Top = 487
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgctbpcgrectaservi'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 5
        Visible = False
      end
      object cfgctbpcgconvenio: TDBEdit
        Left = 249
        Top = 30
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgconvenio'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object cfgctbpcgcheque: TDBEdit
        Left = 249
        Top = 57
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgcheque'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object cfgctbpcgcartao: TDBEdit
        Left = 249
        Top = 84
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgcartao'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object cfgctbpcgchequedevol: TDBEdit
        Left = 249
        Top = 352
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgctbpcgchequedevol'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 13
        Visible = False
      end
      object ctbpcgrectaproduap: TDBEdit
        Left = 249
        Top = 406
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ctbpcgrectaproduap'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Visible = False
      end
      object cfgctbpcgrectamercaap: TDBEdit
        Left = 249
        Top = 460
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgctbpcgrectamercaap'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 4
        Visible = False
      end
      object cfgctbpcgrectaserviap: TDBEdit
        Left = 249
        Top = 514
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgctbpcgrectaserviap'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 6
        Visible = False
      end
      object cfgctbpcgdevolmerca: TDBEdit
        Left = 249
        Top = 541
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgctbpcgdevolmerca'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 7
        Visible = False
      end
      object cfgctbpcgdevolmercaap: TDBEdit
        Left = 249
        Top = 568
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgctbpcgdevolmercaap'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 8
        Visible = False
      end
      object cfgctbpcgcartaod: TDBEdit
        Left = 249
        Top = 111
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgcartaod'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object cfgctbpcgafaturar: TDBEdit
        Left = 249
        Top = 138
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgafaturar'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object cfgctbpcgdoacao: TDBEdit
        Left = 249
        Top = 165
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgdoacao'
        DataSource = DSRegistro
        TabOrder = 15
      end
      object cfgctbpcgdinheiro: TDBEdit
        Left = 249
        Top = 3
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgdinheiro'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 588
    Top = 56
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbforindiv,'
      '  cfgctbcliindiv,'
      '  cfgctbclbindiv,'
      '  cfgctbtrnindiv'
      'FROM cfgmctb')
  end
  inherited consulta: TUniQuery
    Left = 552
    Top = 28
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbcli,'
      '  cfgctbfor,'
      '  cfgctbclb,'
      '  cfgctbtrn,'
      '  cfgctbpcgrectaprodu,'
      '  cfgctbpcgrectamerca,'
      '  cfgctbpcgrectaservi,'
      '  cfgctbpcgcartao,'
      '  cfgctbpcgcheque,'
      '  cfgctbpcgconvenio,'
      '  cfgctbpcgchequedevol,'
      ''
      '  ctbpcgrectaproduap,'
      '  cfgctbpcgrectamercaap,'
      '  cfgctbpcgrectaserviap,'
      '  cfgctbpcgdevolmerca,'
      '  cfgctbpcgdevolmercaap,'
      '  cfgctbpcgcartaod,'
      '  cfgctbpcgafaturar,'
      '  cfgctbpcgdoacao,'
      '  cfgctbpcgdinheiro'
      '  '
      ''
      'FROM cfgmctb where cfgcodigo=:cfgcodigo')
    Left = 492
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgctbcli: TIntegerField
      FieldName = 'cfgctbcli'
    end
    object registroccgcfgctbcli: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbcli'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbcli'
      Size = 50
      Lookup = True
    end
    object registrocfgctbfor: TIntegerField
      FieldName = 'cfgctbfor'
    end
    object registroccgcfgctbfor: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbfor'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbfor'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgrectaprodu: TIntegerField
      FieldName = 'cfgctbpcgrectaprodu'
    end
    object registroccgcfgctbpcgrectaprodu: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgrectaprodu'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgrectaprodu'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgrectamerca: TIntegerField
      DisplayLabel = 'c'
      FieldName = 'cfgctbpcgrectamerca'
    end
    object registroccgcfgctbpcgrectamerca: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgrectamerca'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgrectamerca'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgrectaservi: TIntegerField
      FieldName = 'cfgctbpcgrectaservi'
    end
    object registroccgcfgctbpcgrectaservi: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgrectaservi'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgrectaservi'
      Size = 50
      Lookup = True
    end
    object registrocfgctbclb: TIntegerField
      FieldName = 'cfgctbclb'
    end
    object registroccgcfgctbclb: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbclb'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbclb'
      Size = 50
      Lookup = True
    end
    object registrocfgctbtrn: TIntegerField
      FieldName = 'cfgctbtrn'
    end
    object registroccgcfgctbtrn: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbtrn'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbtrn'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgcartao: TIntegerField
      FieldName = 'cfgctbpcgcartao'
    end
    object registroccgcfgctbpcgcartao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgcartao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgcartao'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgcheque: TIntegerField
      FieldName = 'cfgctbpcgcheque'
    end
    object registroccgcfgctbpcgcheque: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgcheque'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgcheque'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgconvenio: TIntegerField
      FieldName = 'cfgctbpcgconvenio'
    end
    object registroccgcfgctbpcgconvenio: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgconvenio'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgconvenio'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgchequedevol: TIntegerField
      FieldName = 'cfgctbpcgchequedevol'
    end
    object registroccgcfgctbpcgchequedevol: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgchequedevol'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgchequedevol'
      Size = 50
      Lookup = True
    end
    object registroctbpcgrectaproduap: TIntegerField
      DisplayLabel = 'Receita a Prazo com Produtos Produzidos '
      FieldName = 'ctbpcgrectaproduap'
    end
    object registroccgctbpcgrectaproduap: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgctbpcgrectaproduap'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'ctbpcgrectaproduap'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgrectamercaap: TIntegerField
      FieldName = 'cfgctbpcgrectamercaap'
    end
    object registroccgcfgctbpcgrectamercaap: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgrectamercaap'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgrectamercaap'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgrectaserviap: TIntegerField
      FieldName = 'cfgctbpcgrectaserviap'
    end
    object registroccgcfgctbpcgrectaserviap: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgrectaserviap'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgrectaserviap'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgdevolmerca: TIntegerField
      FieldName = 'cfgctbpcgdevolmerca'
    end
    object registroccgcfgctbpcgdevolmerca: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgdevolmerca'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgdevolmerca'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgdevolmercaap: TIntegerField
      FieldName = 'cfgctbpcgdevolmercaap'
    end
    object registroccgcfgctbpcgdevolmercaap: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgdevolmercaap'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgdevolmercaap'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgcartaod: TIntegerField
      FieldName = 'cfgctbpcgcartaod'
    end
    object registroccgcfgctbpcgcartaod: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgcartaod'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgcartaod'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgafaturar: TIntegerField
      DisplayLabel = 'Contabiliza'#231#227'o de Vendas em A Faturar'
      FieldName = 'cfgctbpcgafaturar'
    end
    object registroccgcfgctbpcgafaturar: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgafaturar'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgafaturar'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgdoacao: TIntegerField
      FieldName = 'cfgctbpcgdoacao'
    end
    object registroccgcfgctbpcgdoacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgdoacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgdoacao'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgdinheiro: TIntegerField
      FieldName = 'cfgctbpcgdinheiro'
    end
    object registroccgcfgctbpcgdinheiro: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgcfgctbpcgdinheiro'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgctbpcgdinheiro'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 720
    Top = 252
  end
  inherited dtb: TUniQuery
    Left = 676
    Top = 252
  end
  inherited coa: TUniQuery
    Left = 640
    Top = 252
  end
  inherited cpg: TUniQuery
    Left = 484
    Top = 408
  end
  inherited cpc: TUniQuery
    Left = 429
    Top = 257
  end
  inherited lou: TUniQuery
    Left = 504
    Top = 344
  end
  inherited stg: TUniQuery
    Left = 628
    Top = 336
  end
  inherited consultashema: TUniQuery
    Left = 444
    Top = 312
  end
  inherited stgid: TUniQuery
    Left = 716
    Top = 368
  end
  inherited cfgalterado: TUniQuery
    Left = 668
    Top = 320
  end
  object pcg: TUniQuery
    SQL.Strings = (
      
        'select pcgcodigo,concat(pcgestrutural,'#39' - '#39', pcgidentificacao) a' +
        's pcgidentificacao from pcg')
    Left = 656
    Top = 88
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 80
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 656
    Top = 136
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object ccg: TUniQuery
    SQL.Strings = (
      
        'select ccgcodigo,concat(ccgestrutural,'#39' - '#39', ccgidentificacao) a' +
        's ccgidentificacao from ccg')
    Left = 508
    Top = 36
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
end
