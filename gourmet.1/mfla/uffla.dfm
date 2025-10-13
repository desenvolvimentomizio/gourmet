inherited ffla: Tffla
  ActiveControl = flacodigo
  Caption = 'Filial'
  ClientHeight = 604
  ClientWidth = 697
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 575
    Width = 697
    TabOrder = 1
    ExplicitTop = 575
    ExplicitWidth = 697
    inherited bconfirma: TBitBtn
      Left = 543
      ExplicitLeft = 543
    end
    inherited bcancela: TBitBtn
      Left = 618
      ExplicitLeft = 618
    end
    inherited bfechar: TBitBtn
      Left = 478
      ExplicitLeft = 478
    end
  end
  inherited paginas: TPageControl
    Width = 697
    Height = 575
    TabOrder = 0
    ExplicitWidth = 697
    ExplicitHeight = 575
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = flacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = flaidentificacao
      end
      object Label23: TLabel
        Left = 8
        Top = 60
        Width = 22
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sigla'
        FocusControl = flasigla
      end
      object Label24: TLabel
        Left = 8
        Top = 87
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Empresa'
        FocusControl = etdcodigo
      end
      object flacodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flaidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 400
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flaidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object flasigla: TDBEdit
        Left = 136
        Top = 57
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flasigla'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = etdcodigoExit
      end
    end
    object ContabilizacaoTributaria: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Contabiliza'#231#227'o Tribut'#225'ria'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 8
        Top = 6
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'ICM a Recuperar'
        FocusControl = dcficmrecuperar
      end
      object Label4: TLabel
        Left = 8
        Top = 33
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'IPI a Recuperar'
        FocusControl = dcfpisrecuperar
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'COFINS a Recuperar'
        FocusControl = dcfcofinsrecuperar
      end
      object Label6: TLabel
        Left = 8
        Top = 87
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CSLL a Recuperar'
        FocusControl = dcfcsllrecuperar
      end
      object Label7: TLabel
        Left = 8
        Top = 114
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'IRPJ a Recuperar'
        FocusControl = dcfirpjrecuperar
      end
      object Label8: TLabel
        Left = 8
        Top = 141
        Width = 73
        Height = 13
        CustomHint = BalloonHint
        Caption = 'ICM a Recolher'
        FocusControl = dcficmsrecolher
      end
      object Label9: TLabel
        Left = 8
        Top = 168
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'PIS a Recolher'
        FocusControl = dcfpisrecolher
      end
      object Label10: TLabel
        Left = 8
        Top = 195
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'COFINS a Recolher'
        FocusControl = dcfcofinsrecolher
      end
      object Label11: TLabel
        Left = 8
        Top = 222
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CSLL a Recolher'
        FocusControl = dcfcsllrecolher
      end
      object Label12: TLabel
        Left = 8
        Top = 249
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'IPI a Recolher'
        FocusControl = dcfipirecolher
      end
      object Label13: TLabel
        Left = 8
        Top = 276
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'IRPJ a Recolher'
        FocusControl = dcfirpjrecolher
      end
      object Label14: TLabel
        Left = 8
        Top = 303
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'ISS A Recolher'
        FocusControl = dcfissrecolher
      end
      object Label15: TLabel
        Left = 8
        Top = 330
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'ICM sobre Venda'
        FocusControl = dcficmssvenda
      end
      object Label16: TLabel
        Left = 8
        Top = 357
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'PIS sobre Venda'
        FocusControl = dcfpissvenda
      end
      object Label17: TLabel
        Left = 8
        Top = 384
        Width = 101
        Height = 13
        CustomHint = BalloonHint
        Caption = 'COFINS sobre Venda'
        FocusControl = dcfcofinssvenda
      end
      object Label18: TLabel
        Left = 8
        Top = 411
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CSLL sobre Venda'
        FocusControl = dcfcsllsvenda
      end
      object Label19: TLabel
        Left = 8
        Top = 438
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'ISS sobre Venda'
        FocusControl = dcfisssvenda
      end
      object Label20: TLabel
        Left = 8
        Top = 465
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'IPI sobre Venda'
        FocusControl = dcfipisvenda
      end
      object Label21: TLabel
        Left = 8
        Top = 492
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estoque'
        FocusControl = dcfestoque
      end
      object Label22: TLabel
        Left = 8
        Top = 519
        Width = 21
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CMV'
        FocusControl = dcfcmv
      end
      object dcficmrecuperar: TDBEdit
        Left = 136
        Top = 3
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcficmrecuperar'
        DataSource = Ddcf
        TabOrder = 0
      end
      object dcfpisrecuperar: TDBEdit
        Left = 136
        Top = 30
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfpisrecuperar'
        DataSource = Ddcf
        TabOrder = 1
      end
      object dcfcofinsrecuperar: TDBEdit
        Left = 136
        Top = 57
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfcofinsrecuperar'
        DataSource = Ddcf
        TabOrder = 2
      end
      object dcfcsllrecuperar: TDBEdit
        Left = 136
        Top = 84
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfcsllrecuperar'
        DataSource = Ddcf
        TabOrder = 3
      end
      object dcfirpjrecuperar: TDBEdit
        Left = 136
        Top = 111
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfirpjrecuperar'
        DataSource = Ddcf
        TabOrder = 4
      end
      object dcficmsrecolher: TDBEdit
        Left = 136
        Top = 138
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcficmsrecolher'
        DataSource = Ddcf
        TabOrder = 5
      end
      object dcfpisrecolher: TDBEdit
        Left = 136
        Top = 165
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfpisrecolher'
        DataSource = Ddcf
        TabOrder = 6
      end
      object dcfcofinsrecolher: TDBEdit
        Left = 136
        Top = 192
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfcofinsrecolher'
        DataSource = Ddcf
        TabOrder = 7
      end
      object dcfcsllrecolher: TDBEdit
        Left = 136
        Top = 219
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfcsllrecolher'
        DataSource = Ddcf
        TabOrder = 8
      end
      object dcfipirecolher: TDBEdit
        Left = 136
        Top = 246
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfipirecolher'
        DataSource = Ddcf
        TabOrder = 9
      end
      object dcfirpjrecolher: TDBEdit
        Left = 136
        Top = 273
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfirpjrecolher'
        DataSource = Ddcf
        TabOrder = 10
      end
      object dcfissrecolher: TDBEdit
        Left = 136
        Top = 300
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfissrecolher'
        DataSource = Ddcf
        TabOrder = 11
      end
      object dcficmssvenda: TDBEdit
        Left = 136
        Top = 327
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcficmssvenda'
        DataSource = Ddcf
        TabOrder = 12
      end
      object dcfpissvenda: TDBEdit
        Left = 136
        Top = 354
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfpissvenda'
        DataSource = Ddcf
        TabOrder = 13
      end
      object dcfcofinssvenda: TDBEdit
        Left = 136
        Top = 381
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfcofinssvenda'
        DataSource = Ddcf
        TabOrder = 14
      end
      object dcfcsllsvenda: TDBEdit
        Left = 136
        Top = 408
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfcsllsvenda'
        DataSource = Ddcf
        TabOrder = 15
      end
      object dcfisssvenda: TDBEdit
        Left = 136
        Top = 435
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfisssvenda'
        DataSource = Ddcf
        TabOrder = 16
      end
      object dcfipisvenda: TDBEdit
        Left = 136
        Top = 462
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfipisvenda'
        DataSource = Ddcf
        TabOrder = 17
      end
      object dcfestoque: TDBEdit
        Left = 136
        Top = 489
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfestoque'
        DataSource = Ddcf
        TabOrder = 18
      end
      object dcfcmv: TDBEdit
        Left = 136
        Top = 516
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcfcmv'
        DataSource = Ddcf
        TabOrder = 19
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 292
    Top = 136
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgusactb from cfg where flacodigo=:flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT fla.flacodigo'
      '     , fla.flaidentificacao'
      '     , fla.flasigla'
      '     , fla.etdcodigo'
      '  FROM fla'
      ' WHERE fla.flacodigo = :flacodigo')
    Left = 300
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object registroflacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'flacodigo'
      Required = True
    end
    object registroflaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'flaidentificacao'
      Required = True
      Size = 50
    end
    object registroflasigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'flasigla'
      Required = True
      Size = 3
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 60
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 240
    Top = 268
  end
  inherited dtb: TUniQuery
    Left = 276
    Top = 252
  end
  inherited coa: TUniQuery
    Left = 240
    Top = 340
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object dcf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dcfcodigo,'
      '  flacodigo,'
      '  dcficmrecuperar,'
      '  dcfpisrecuperar,'
      '  dcfcofinsrecuperar,'
      '  dcfcsllrecuperar,'
      '  dcfirpjrecuperar,'
      '  dcficmsrecolher,'
      '  dcfpisrecolher,'
      '  dcfcofinsrecolher,'
      '  dcfcsllrecolher,'
      '  dcfirpjrecolher,'
      '  dcficmssvenda,'
      '  dcfpissvenda,'
      '  dcfcofinssvenda,'
      '  dcfcsllsvenda,'
      '  dcfissrecolher,'
      '  dcfisssvenda,'
      '  dcfipirecolher,'
      '  dcfipisvenda,'
      '  dcfestoque,'
      '  dcfcmv'
      'FROM .dcf;')
    MasterSource = DSRegistro
    MasterFields = 'flacodigo'
    DetailFields = 'flacodigo'
    Left = 344
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object dcfdcfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'dcfcodigo'
    end
    object dcfflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object dcfdcficmrecuperar: TIntegerField
      DisplayLabel = 'ICM a Recuperar'
      FieldName = 'dcficmrecuperar'
      Required = True
    end
    object dcfpcgdcficmrecuperar: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcficmrecuperar'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcficmrecuperar'
      Size = 80
      Lookup = True
    end
    object dcfdcfpisrecuperar: TIntegerField
      FieldName = 'dcfpisrecuperar'
      Required = True
    end
    object dcfpcgdcfpisrecuperar: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfpisrecuperar'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfpisrecuperar'
      Size = 80
      Lookup = True
    end
    object dcfdcfcofinsrecuperar: TIntegerField
      DisplayLabel = 'COFINS a Recuperar'
      FieldName = 'dcfcofinsrecuperar'
      Required = True
    end
    object dcfpcgdcfcofinsrecuperar: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfcofinsrecuperar'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfcofinsrecuperar'
      Size = 80
      Lookup = True
    end
    object dcfdcfcsllrecuperar: TIntegerField
      DisplayLabel = 'CSLL a Recuperar'
      FieldName = 'dcfcsllrecuperar'
      Required = True
    end
    object dcfpcgdcfcsllrecuperar: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfcsllrecuperar'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfcsllrecuperar'
      Size = 80
      Lookup = True
    end
    object dcfdcfirpjrecuperar: TIntegerField
      DisplayLabel = 'IRPJ a Recuperar'
      FieldName = 'dcfirpjrecuperar'
      Required = True
    end
    object dcfpcgdcfirpjrecuperar: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfirpjrecuperar'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfirpjrecuperar'
      Size = 80
      Lookup = True
    end
    object dcfdcficmsrecolher: TIntegerField
      DisplayLabel = 'ICM a Recolher'
      FieldName = 'dcficmsrecolher'
      Required = True
    end
    object dcfpcgdcficmsrecolher: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcficmsrecolher'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcficmsrecolher'
      Size = 80
      Lookup = True
    end
    object dcfdcfpisrecolher: TIntegerField
      DisplayLabel = 'PIS a Recolher'
      FieldName = 'dcfpisrecolher'
      Required = True
    end
    object dcfpcgdcfdcfpisrecolher: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfpisrecolher'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfpisrecolher'
      Size = 80
      Lookup = True
    end
    object dcfdcfcofinsrecolher: TIntegerField
      DisplayLabel = 'COFINS a Recolher'
      FieldName = 'dcfcofinsrecolher'
      Required = True
    end
    object dcfpcgdcfcofinsrecolher: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfcofinsrecolher'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfcofinsrecolher'
      Size = 80
      Lookup = True
    end
    object dcfdcfcsllrecolher: TIntegerField
      DisplayLabel = 'CSLL a Recolher'
      FieldName = 'dcfcsllrecolher'
      Required = True
    end
    object dcfpcgdcfcsllrecolher: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfcsllrecolher'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfcsllrecolher'
      Size = 50
      Lookup = True
    end
    object dcfdcfipirecolher: TIntegerField
      DisplayLabel = 'IPI a Recolher'
      FieldName = 'dcfipirecolher'
      Required = True
    end
    object dcfpcgdcfipirecolher: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfipirecolher'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfipirecolher'
      Size = 80
      Lookup = True
    end
    object dcfdcfirpjrecolher: TIntegerField
      DisplayLabel = 'IRPJ a Recolher'
      FieldName = 'dcfirpjrecolher'
      Required = True
    end
    object dcfpcgdcfirpjrecolher: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfirpjrecolher'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfirpjrecolher'
      Size = 80
      Lookup = True
    end
    object dcfdcfissrecolher: TIntegerField
      DisplayLabel = 'ISS A Recolher'
      FieldName = 'dcfissrecolher'
      Required = True
    end
    object dcfpcgdcfissrecolher: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfissrecolher'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfissrecolher'
      Size = 80
      Lookup = True
    end
    object dcfdcficmssvenda: TIntegerField
      DisplayLabel = 'ICM sobre Venda'
      FieldName = 'dcficmssvenda'
      Required = True
    end
    object dcfpcgdcficmssvenda: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcficmssvenda'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcficmssvenda'
      Size = 80
      Lookup = True
    end
    object dcfdcfpissvenda: TIntegerField
      DisplayLabel = 'PIS sobre Venda'
      FieldName = 'dcfpissvenda'
      Required = True
    end
    object dcfpcgdcfpissvenda: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfpissvenda'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfpissvenda'
      Size = 80
      Lookup = True
    end
    object dcfdcfcofinssvenda: TIntegerField
      DisplayLabel = 'COFINS sobre Venda'
      FieldName = 'dcfcofinssvenda'
      Required = True
    end
    object dcfpcgdcfcofinssvenda: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfcofinssvenda'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfcofinssvenda'
      Size = 80
      Lookup = True
    end
    object dcfdcfcsllsvenda: TIntegerField
      DisplayLabel = 'CSLL sobre Venda'
      FieldName = 'dcfcsllsvenda'
      Required = True
    end
    object dcfpcgdcfcsllsvenda: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfcsllsvenda'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfcsllsvenda'
      Size = 80
      Lookup = True
    end
    object dcfdcfisssvenda: TIntegerField
      DisplayLabel = 'ISS sobre Venda'
      FieldName = 'dcfisssvenda'
      Required = True
    end
    object dcfpcgdcfisssvenda: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfisssvenda'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfisssvenda'
      Size = 80
      Lookup = True
    end
    object dcfdcfipisvenda: TIntegerField
      DisplayLabel = 'PIS sobre Venda'
      FieldName = 'dcfipisvenda'
      Required = True
    end
    object dcfpcgdcfipisvenda: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfipisvenda'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfipisvenda'
      Size = 80
      Lookup = True
    end
    object dcfdcfestoque: TIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'dcfestoque'
      Required = True
    end
    object dcfpcgdcfestoque: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfestoque'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfestoque'
      Size = 80
      Lookup = True
    end
    object dcfdcfcmv: TIntegerField
      DisplayLabel = 'CMV'
      FieldName = 'dcfcmv'
      Required = True
    end
    object dcfpcgdcfcmv: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgdcfcmv'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'dcfcmv'
      Size = 80
      Lookup = True
    end
  end
  object Ddcf: TDataSource
    DataSet = dcf
    Left = 344
    Top = 352
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo, pcgidentificacao from pcg')
    Left = 496
    Top = 328
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 80
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT etd.etdcodigo'
      '     , etd.etdidentificacao '
      '  FROM etd')
    Left = 228
    Top = 152
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
  end
  object VerifEtd: TUniQuery
    SQL.Strings = (
      'SELECT fla.flacodigo'
      '     , fla.flaidentificacao'
      '     , fla.etdcodigo'
      '  FROM fla'
      ' WHERE fla.etdcodigo = :etdcodigo')
    Left = 148
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object VerifEtdflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object VerifEtdflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
    end
  end
end
