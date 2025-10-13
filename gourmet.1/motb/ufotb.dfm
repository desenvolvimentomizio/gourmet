inherited fotb: Tfotb
  Caption = 'Opera'#231#227'o Tribut'#225'ria'
  ClientHeight = 602
  ClientWidth = 794
  ExplicitWidth = 810
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 573
    Width = 794
    ExplicitTop = 573
    ExplicitWidth = 794
    inherited bconfirma: TBitBtn
      Left = 640
      ExplicitLeft = 640
    end
    inherited bcancela: TBitBtn
      Left = 715
      ExplicitLeft = 715
    end
    inherited bfechar: TBitBtn
      Left = 575
      ExplicitLeft = 575
    end
  end
  inherited paginas: TPageControl
    Width = 794
    Height = 573
    ExplicitWidth = 794
    ExplicitHeight = 573
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 786
      ExplicitHeight = 545
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = otbcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = otbidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Condi'#231#227'o do ICM'
        FocusControl = otbcondicm
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza o ICM'
        FocusControl = otbcontbicm
      end
      object Label5: TLabel
        Left = 8
        Top = 157
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Condi'#231#227'o do PIS'
        FocusControl = otbcondpis
      end
      object Label6: TLabel
        Left = 8
        Top = 184
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza o PIS'
        FocusControl = otbcontpis
      end
      object Label7: TLabel
        Left = 8
        Top = 254
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Condi'#231#227'o do IPI'
        FocusControl = otbcondipi
      end
      object Label8: TLabel
        Left = 8
        Top = 281
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza o IPI'
        FocusControl = otbcontipi
      end
      object Label9: TLabel
        Left = 7
        Top = 351
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Condi'#231#227'o do COFINS'
        FocusControl = otbcondcofins
      end
      object Label10: TLabel
        Left = 8
        Top = 378
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza o COFINS'
        FocusControl = otbcontconfins
      end
      object Label12: TLabel
        Left = 8
        Top = 475
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta a D'#233'bito'
        FocusControl = pcgcodigo
      end
      object Label14: TLabel
        Left = 8
        Top = 502
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico Padr'#227'o'
        FocusControl = phgcodigo
      end
      object Label11: TLabel
        Left = 8
        Top = 448
        Width = 52
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contabiliza'
        FocusControl = otbcontabiliza
      end
      object Label16: TLabel
        Left = 8
        Top = 114
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CST ICM'
        FocusControl = cstcodigo
      end
      object Label17: TLabel
        Left = 8
        Top = 211
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CST PIS'
        FocusControl = cspcodigo
      end
      object Label18: TLabel
        Left = 8
        Top = 308
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CST IPI'
        FocusControl = csicodigo
      end
      object Label19: TLabel
        Left = 8
        Top = 405
        Width = 60
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CST COFINS'
        FocusControl = csfcodigo
      end
      object otbcodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object otbidentificacao: TDBEdit
        Left = 148
        Top = 30
        Width = 590
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object otbcondicm: TDBEdit
        Left = 148
        Top = 57
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcondicm'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = otbcondicmExit
      end
      object otbcontbicm: TDBEdit
        Left = 148
        Top = 84
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcontbicm'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object otbcondpis: TDBEdit
        Left = 148
        Top = 154
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcondpis'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = otbcondpisExit
      end
      object otbcontpis: TDBEdit
        Left = 148
        Top = 181
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcontpis'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object otbcondipi: TDBEdit
        Left = 148
        Top = 251
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcondipi'
        DataSource = DSRegistro
        TabOrder = 8
        OnExit = otbcondipiExit
      end
      object otbcontipi: TDBEdit
        Left = 148
        Top = 278
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcontipi'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object otbcondcofins: TDBEdit
        Left = 148
        Top = 348
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcondcofins'
        DataSource = DSRegistro
        TabOrder = 11
        OnExit = otbcondcofinsExit
      end
      object otbcontconfins: TDBEdit
        Left = 148
        Top = 375
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcontconfins'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object pcgcodigo: TDBEdit
        Left = 148
        Top = 472
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 15
      end
      object phgcodigo: TDBEdit
        Left = 148
        Top = 499
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 16
      end
      object otbcontabiliza: TDBEdit
        Left = 148
        Top = 445
        Width = 20
        Height = 21
        CustomHint = BalloonHint
        DataField = 'otbcontabiliza'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object cstcodigo: TDBEdit
        Left = 148
        Top = 111
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cstcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cspcodigo: TDBEdit
        Left = 148
        Top = 208
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cspcodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object csicodigo: TDBEdit
        Left = 148
        Top = 305
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csicodigo'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object csfcodigo: TDBEdit
        Left = 148
        Top = 402
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'csfcodigo'
        DataSource = DSRegistro
        TabOrder = 13
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 636
    Top = 184
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  otbcodigo,'
      '  otbidentificacao,'
      '  otbcondicm,'
      '  otbcontbicm,'
      '  cstcodigo,'
      '  otbcondpis,'
      '  otbcontpis,'
      '  cspcodigo,'
      '  otbcondipi,'
      '  otbcontipi,'
      '  csicodigo,'
      '  otbcondcofins,'
      '  otbcontconfins,'
      '  csfcodigo, '
      '  otbcontabiliza,'
      '  pcgcodigo,'
      '  phgcodigo'
      'FROM otb'
      'WHERE otbcodigo = :otbcodigo')
    Left = 644
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'otbcodigo'
        Value = nil
      end>
    object registrootbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'otbcodigo'
    end
    object registrootbidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'otbidentificacao'
      Required = True
      Size = 50
    end
    object registrootbcondicm: TIntegerField
      DisplayLabel = 'Condi'#231#227'o do ICM'
      FieldName = 'otbcondicm'
      Required = True
    end
    object registrociootbcondicm: TStringField
      FieldKind = fkLookup
      FieldName = 'ciootbcondicm'
      LookupDataSet = cio
      LookupKeyFields = 'ciocodigo'
      LookupResultField = 'cioidentificacao'
      KeyFields = 'otbcondicm'
      Size = 50
      Lookup = True
    end
    object registrootbcontbicm: TIntegerField
      DisplayLabel = 'Contabiliza o ICM'
      FieldName = 'otbcontbicm'
      Required = True
    end
    object registrosenotbcontbicm: TStringField
      FieldKind = fkLookup
      FieldName = 'senotbcontbicm'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'otbcontbicm'
      Size = 5
      Lookup = True
    end
    object registrootbcondpis: TIntegerField
      DisplayLabel = 'Condi'#231#227'o do PIS'
      FieldName = 'otbcondpis'
      Required = True
    end
    object registrociootbcondpis: TStringField
      FieldKind = fkLookup
      FieldName = 'ciootbcondpis'
      LookupDataSet = cio
      LookupKeyFields = 'ciocodigo'
      LookupResultField = 'cioidentificacao'
      KeyFields = 'otbcondpis'
      Size = 50
      Lookup = True
    end
    object registrootbcontpis: TIntegerField
      FieldName = 'otbcontpis'
      Required = True
    end
    object registrosenotbcontpis: TStringField
      FieldKind = fkLookup
      FieldName = 'senotbcontpis'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'otbcontpis'
      Size = 5
      Lookup = True
    end
    object registrootbcondipi: TIntegerField
      DisplayLabel = 'Condi'#231#227'o do IPI'
      FieldName = 'otbcondipi'
      Required = True
    end
    object registrociootbcondipi: TStringField
      FieldKind = fkLookup
      FieldName = 'ciootbcondipi'
      LookupDataSet = cio
      LookupKeyFields = 'ciocodigo'
      LookupResultField = 'cioidentificacao'
      KeyFields = 'otbcondipi'
      Size = 50
      Lookup = True
    end
    object registrootbcontipi: TIntegerField
      FieldName = 'otbcontipi'
      Required = True
    end
    object registrosenotbcontipi: TStringField
      FieldKind = fkLookup
      FieldName = 'senotbcontipi'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'otbcontipi'
      Size = 5
      Lookup = True
    end
    object registrootbcondcofins: TIntegerField
      DisplayLabel = 'Condi'#231#227'o do COFINS'
      FieldName = 'otbcondcofins'
      Required = True
    end
    object registrociootbcondcofins: TStringField
      FieldKind = fkLookup
      FieldName = 'ciootbcondcofins'
      LookupDataSet = cio
      LookupKeyFields = 'ciocodigo'
      LookupResultField = 'cioidentificacao'
      KeyFields = 'otbcondcofins'
      Size = 50
      Lookup = True
    end
    object registrootbcontconfins: TIntegerField
      FieldName = 'otbcontconfins'
      Required = True
    end
    object registrosenotbcontconfins: TStringField
      FieldKind = fkLookup
      FieldName = 'senotbcontconfins'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'otbcontconfins'
      Size = 5
      Lookup = True
    end
    object registrootbcontabiliza: TIntegerField
      FieldName = 'otbcontabiliza'
      Required = True
    end
    object registrosenotbcontabiliza: TStringField
      FieldKind = fkLookup
      FieldName = 'senotbcontabiliza'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'otbcontabiliza'
      Size = 5
      Lookup = True
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object registropcgpcgidentificacao: TStringField
      DisplayLabel = 'pcgpcgidentificacao'
      FieldKind = fkLookup
      FieldName = 'pcgpcgcodigo'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Required = True
      Size = 80
      Lookup = True
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico Padr'#227'o'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 50
      Lookup = True
    end
    object registrocstcodigo: TStringField
      DisplayLabel = 'CST ICM'
      FieldName = 'cstcodigo'
      Size = 4
    end
    object registrocstidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cstidentificacao'
      LookupDataSet = cst
      LookupKeyFields = 'cstcodigo'
      LookupResultField = 'cstidentificacao'
      KeyFields = 'cstcodigo'
      Size = 50
      Lookup = True
    end
    object registrocspcodigo: TStringField
      DisplayLabel = 'CST PIS'
      FieldName = 'cspcodigo'
      Size = 4
    end
    object registrocspidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cspidentificacao'
      LookupDataSet = csp
      LookupKeyFields = 'cspcodigo'
      LookupResultField = 'cspidentificacao'
      KeyFields = 'cspcodigo'
      Size = 50
      Lookup = True
    end
    object registrocsicodigo: TStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'csicodigo'
      Size = 4
    end
    object registrocsiidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'csiidentificacao'
      LookupDataSet = csi
      LookupKeyFields = 'csicodigo'
      LookupResultField = 'csiidentificacao'
      KeyFields = 'csicodigo'
      Size = 50
      Lookup = True
    end
    object registrocsfcodigo: TStringField
      DisplayLabel = 'CST COFINS'
      FieldName = 'csfcodigo'
      Size = 4
    end
    object registrocsfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'csfidentificacao'
      LookupDataSet = csf
      LookupKeyFields = 'csfcodigo'
      LookupResultField = 'csfidentificacao'
      KeyFields = 'csfcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 608
    Top = 364
  end
  inherited dtb: TUniQuery
    Left = 564
    Top = 364
  end
  inherited coa: TUniQuery
    Left = 528
    Top = 364
  end
  inherited cpg: TUniQuery
    Left = 524
    Top = 400
  end
  inherited cpc: TUniQuery
    Left = 525
    Top = 449
  end
  inherited ImgBusca: TPngImageList
    Left = 404
    Top = 224
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 448
    Top = 328
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo, pcgidentificacao from pcg')
    Left = 352
    Top = 328
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
    Left = 408
    Top = 328
    object phgphgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 80
    end
  end
  object cfo: TUniQuery
    SQL.Strings = (
      'select cfocfop, cfoidentificacao from cfo')
    Left = 312
    Top = 328
    object cfocfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object cfocfoidentificacao: TStringField
      FieldName = 'cfoidentificacao'
      Size = 200
    end
  end
  object cio: TUniQuery
    SQL.Strings = (
      'select ciocodigo, cioidentificacao from cio')
    Left = 656
    Top = 240
    object ciociocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ciocodigo'
    end
    object ciocioidentificacao: TStringField
      FieldName = 'cioidentificacao'
      Size = 35
    end
  end
  object cst: TUniQuery
    SQL.Strings = (
      'select cstcodigo, cstidentificacao from cst')
    Left = 728
    Top = 88
    object cstcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object cstcstidentificacao: TStringField
      FieldName = 'cstidentificacao'
      Required = True
      Size = 500
    end
  end
  object csi: TUniQuery
    SQL.Strings = (
      'select csicodigo, csiidentificacao from csi')
    Left = 728
    Top = 144
    object csicsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object csicsiidentificacao: TStringField
      FieldName = 'csiidentificacao'
      Required = True
      Size = 50
    end
  end
  object csf: TUniQuery
    SQL.Strings = (
      'select csfcodigo, csfidentificacao from csf')
    Left = 728
    Top = 200
    object csfcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object csfcsfidentificacao: TStringField
      FieldName = 'csfidentificacao'
      Required = True
      Size = 50
    end
  end
  object csp: TUniQuery
    SQL.Strings = (
      'select cspcodigo, cspidentificacao from csp')
    Left = 728
    Top = 264
    object cspcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object cspcspidentificacao: TStringField
      FieldName = 'cspidentificacao'
      Required = True
      Size = 50
    end
  end
end
