inherited fcct: Tfcct
  ActiveControl = cctregistro
  Caption = 'Contrato'
  ClientHeight = 606
  ExplicitHeight = 645
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 577
    ExplicitTop = 577
  end
  inherited paginas: TPageControl
    Height = 577
    ExplicitHeight = 577
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 549
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave do Contrato'
        FocusControl = cctchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Registro'
        FocusControl = cctregistro
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = etdcodigo
      end
      object lbcctvalor: TLabel
        Left = 8
        Top = 361
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor da Parcela'
        FocusControl = cctvalor
      end
      object Label5: TLabel
        Left = 8
        Top = 388
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Inicio'
        FocusControl = cctdatainicio
      end
      object lbcctdatafinal: TLabel
        Left = 8
        Top = 415
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = cctdatafinal
      end
      object lbcctrenovacaoauto: TLabel
        Left = 8
        Top = 442
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Renova'#231#227'o Auto'
        FocusControl = cctrenovacaoauto
      end
      object Label9: TLabel
        Left = 8
        Top = 469
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dia de Vencto padr'#227'o'
        FocusControl = ctrdiavencto
      end
      object lbtcccodigo: TLabel
        Left = 8
        Top = 199
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Contrato'
        FocusControl = tcccodigo
      end
      object Label10: TLabel
        Left = 8
        Top = 496
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Carteira de Cobran'#231'a'
        FocusControl = carcodigo
      end
      object Label11: TLabel
        Left = 8
        Top = 523
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Portador'
        FocusControl = bcocodigo
      end
      object lbcctidentificacao: TLabel
        Left = 8
        Top = 253
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = cctidentificacao
      end
      object Label13: TLabel
        Left = 8
        Top = 307
        Width = 105
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Moeda de Atualiza'#231#227'o'
        FocusControl = moecodigo
      end
      object moesimbolo: TDBText
        Left = 98
        Top = 361
        Width = 32
        Height = 17
        CustomHint = BalloonHint
        DataField = 'moesimbolo'
        DataSource = DSRegistro
      end
      object lbcctvalorfechado: TLabel
        Left = 8
        Top = 280
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor total Fechado'
        FocusControl = cctvalorfechado
      end
      object lbcctpercentual: TLabel
        Left = 8
        Top = 334
        Width = 114
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contrato em Percentual'
        FocusControl = cctpercentual
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 106
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Respons'#225'vel'
        FocusControl = cctnomeresponsavel
      end
      object Label6: TLabel
        Left = 8
        Top = 114
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CPF do Respons'#225'vel'
        FocusControl = cctcpfresponsavel
      end
      object Label7: TLabel
        Left = 8
        Top = 141
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o do Objeto'
        FocusControl = cctcpfresponsavel
      end
      object labtitcodigo: TLabel
        Left = 243
        Top = 415
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro Financeiro'
        FocusControl = titcodigo
      end
      object Label8: TLabel
        Left = 8
        Top = 226
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Atividade Economica'
        FocusControl = atvcodigo
      end
      object cctchave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cctregistro: TDBEdit
        Left = 136
        Top = 30
        Width = 98
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctregistro'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = etdcodigoExit
      end
      object cctvalor: TDBEdit
        Left = 136
        Top = 358
        Width = 98
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctvalor'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object cctdatainicio: TDBEdit
        Left = 136
        Top = 385
        Width = 90
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctdatainicio'
        DataSource = DSRegistro
        TabOrder = 13
      end
      object cctdatafinal: TDBEdit
        Left = 136
        Top = 412
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctdatafinal'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object cctrenovacaoauto: TDBEdit
        Left = 136
        Top = 439
        Width = 26
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctrenovacaoauto'
        DataSource = DSRegistro
        TabOrder = 16
      end
      object ctrdiavencto: TDBEdit
        Left = 136
        Top = 466
        Width = 26
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctrdiavencto'
        DataSource = DSRegistro
        TabOrder = 17
      end
      object tcccodigo: TDBEdit
        Left = 136
        Top = 196
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcccodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object carcodigo: TDBEdit
        Left = 136
        Top = 493
        Width = 26
        Height = 21
        CustomHint = BalloonHint
        DataField = 'carcodigo'
        DataSource = DSRegistro
        TabOrder = 18
      end
      object bcocodigo: TDBEdit
        Left = 136
        Top = 520
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bcocodigo'
        DataSource = DSRegistro
        TabOrder = 19
      end
      object cctidentificacao: TDBEdit
        Left = 136
        Top = 250
        Width = 153
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctidentificacao'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object moecodigo: TDBEdit
        Left = 136
        Top = 304
        Width = 26
        Height = 21
        CustomHint = BalloonHint
        DataField = 'moecodigo'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object cctvalorfechado: TDBEdit
        Left = 136
        Top = 277
        Width = 26
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctvalorfechado'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object cctpercentual: TDBEdit
        Left = 136
        Top = 331
        Width = 26
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctpercentual'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object cctnomeresponsavel: TDBEdit
        Left = 136
        Top = 84
        Width = 297
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctnomeresponsavel'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cctcpfresponsavel: TDBEdit
        Left = 136
        Top = 111
        Width = 145
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctcpfresponsavel'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cctdescricao: TDBMemo
        Left = 136
        Top = 138
        Width = 417
        Height = 52
        CustomHint = BalloonHint
        DataField = 'cctdescricao'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object titcodigo: TDBEdit
        Left = 341
        Top = 412
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'titcodigo'
        DataSource = DSRegistro
        TabOrder = 15
      end
      object atvcodigo: TDBEdit
        Left = 136
        Top = 223
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atvcodigo'
        DataSource = Detdatv
        TabOrder = 7
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 484
    Top = 440
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgmcctipos,'
      '  cfgmcctformavalor,'
      '  cfgmcctidentificador,'
      '  cfgmcctempercentual,'
      '  cfgmcctusarenovacao,'
      '  cfgmcctusadatafinal,'
      '  cfgmccttipovalor'
      'FROM cfgmcct where cfgcodigo=:cfgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgmcctipos: TStringField
      FieldName = 'cfgmcctipos'
      Size = 50
    end
    object cfgcfgmcctformavalor: TStringField
      FieldName = 'cfgmcctformavalor'
      Size = 50
    end
    object cfgcfgmcctidentificador: TStringField
      FieldName = 'cfgmcctidentificador'
      Size = 50
    end
    object cfgcfgmcctempercentual: TIntegerField
      FieldName = 'cfgmcctempercentual'
    end
    object cfgcfgmcctusarenovacao: TIntegerField
      FieldName = 'cfgmcctusarenovacao'
    end
    object cfgcfgmcctusadatafinal: TIntegerField
      FieldName = 'cfgmcctusadatafinal'
    end
    object cfgcfgmccttipovalor: TStringField
      FieldName = 'cfgmccttipovalor'
      Size = 50
    end
  end
  inherited consulta: TUniQuery
    Left = 520
    Top = 372
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cct.cctchave,'
      '  cct.etdcodigo,'
      '  cct.cctregistro,'
      '  cct.cctvalor,'
      '  cct.cctdatainicio,'
      '  cct.cctdatafinal,'
      '  cct.cctperiodicidade,'
      '  cct.cctrenovacaoauto,'
      '  cct.ctrdiavencto, '
      '  cct.tcccodigo,'
      '  cct.carcodigo,'
      '  cct.bcocodigo,'
      '  cct.cctidentificacao,'
      '  moecodigo,'
      '  cctvalorfechado,'
      '  cctpercentual,'
      '  cctcpfresponsavel,'
      '  cctnomeresponsavel,'
      '  cctdescricao,'
      '  titcodigo'
      'FROM cct where cct.cctchave=:cctchave')
    Left = 636
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cctchave'
        Value = nil
      end>
    object registrocctchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Contrato'
      FieldName = 'cctchave'
    end
    object registrocctregistro: TDateField
      DisplayLabel = 'Data de Registro'
      FieldName = 'cctregistro'
      Required = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
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
      Size = 50
      Lookup = True
    end
    object registrocctvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'cctvalor'
      Required = True
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
    end
    object registrocctdatainicio: TDateField
      DisplayLabel = 'Data de Inicio'
      FieldName = 'cctdatainicio'
      Required = True
    end
    object registrocctdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'cctdatafinal'
    end
    object registrocctperiodicidade: TIntegerField
      DisplayLabel = 'Periodicidade'
      FieldName = 'cctperiodicidade'
      Required = True
    end
    object registrocctrenovacaoauto: TIntegerField
      DisplayLabel = 'Renova'#231#227'o Auto'
      FieldName = 'cctrenovacaoauto'
      Required = True
    end
    object registrosencctrenovacaoauto: TStringField
      FieldKind = fkLookup
      FieldName = 'sencctrenovacaoauto'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cctrenovacaoauto'
      Size = 5
      Lookup = True
    end
    object registroctrdiavencto: TIntegerField
      DisplayLabel = 'Dia de Vencto'
      FieldName = 'ctrdiavencto'
      Required = True
    end
    object registrotcccodigo: TIntegerField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'tcccodigo'
      Required = True
    end
    object registrotccidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tccidentificacao'
      LookupDataSet = tcc
      LookupKeyFields = 'tcccodigo'
      LookupResultField = 'tccidentificacao'
      KeyFields = 'tcccodigo'
      Size = 50
      Lookup = True
    end
    object registrocarcodigo: TIntegerField
      DisplayLabel = 'Carteira de Cobran'#231'a'
      FieldName = 'carcodigo'
      Required = True
    end
    object registrocaridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'caridentificacao'
      LookupDataSet = car
      LookupKeyFields = 'carcodigo'
      LookupResultField = 'caridentificacao'
      KeyFields = 'carcodigo'
      Size = 50
      Lookup = True
    end
    object registrobcocodigo: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object registrobconome: TStringField
      FieldKind = fkLookup
      FieldName = 'bconome'
      LookupDataSet = bco
      LookupKeyFields = 'bcocodigo'
      LookupResultField = 'bconome'
      KeyFields = 'bcocodigo'
      Size = 50
      Lookup = True
    end
    object registrocctidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cctidentificacao'
    end
    object registromoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object registromoeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'moeidentificacao'
      LookupDataSet = moe
      LookupKeyFields = 'moecodigo'
      LookupResultField = 'moeidentificacao'
      KeyFields = 'moecodigo'
      Size = 50
      Lookup = True
    end
    object registromoesimbolo: TStringField
      FieldKind = fkLookup
      FieldName = 'moesimbolo'
      LookupDataSet = moe
      LookupKeyFields = 'moecodigo'
      LookupResultField = 'moesimbolo'
      KeyFields = 'moecodigo'
      Size = 5
      Lookup = True
    end
    object registrocctvalorfechado: TIntegerField
      DisplayLabel = 'Valor total Fechado'
      FieldName = 'cctvalorfechado'
      Required = True
    end
    object registrosencctvalorfechado: TStringField
      FieldKind = fkLookup
      FieldName = 'sencctvalorfechado'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cctvalorfechado'
      Size = 5
      Lookup = True
    end
    object registrocctpercentual: TIntegerField
      DisplayLabel = 'Contrato em Percentual'
      FieldName = 'cctpercentual'
      Required = True
    end
    object registrosencctpercentual: TStringField
      FieldKind = fkLookup
      FieldName = 'sencctpercentual'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cctpercentual'
      Size = 5
      Lookup = True
    end
    object registrocctcpfresponsavel: TStringField
      FieldName = 'cctcpfresponsavel'
    end
    object registrocctnomeresponsavel: TStringField
      FieldName = 'cctnomeresponsavel'
      Size = 50
    end
    object registrocctdescricao: TStringField
      FieldName = 'cctdescricao'
      Size = 500
    end
    object registrotitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object registrotitidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'titidentificacao'
      LookupDataSet = tit
      LookupKeyFields = 'titcodigo'
      LookupResultField = 'titidentificacao'
      KeyFields = 'titcodigo'
      Size = 100
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 712
    Top = 156
  end
  inherited dtb: TUniQuery
    Left = 756
    Top = 236
  end
  inherited coa: TUniQuery
    Left = 688
    Top = 220
  end
  inherited acoesfrm: TActionList
    Left = 708
    Top = 340
  end
  inherited cpg: TUniQuery
    Left = 628
    Top = 120
  end
  inherited cpc: TUniQuery
    Left = 645
    Top = 185
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 424
    Top = 80
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Constraints = <>
    Left = 544
    Top = 440
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Constraints = <>
    Left = 520
    Top = 24
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object tcc: TUniQuery
    SQL.Strings = (
      'select tcccodigo, tccidentificacao from tcc')
    Constraints = <>
    Left = 604
    Top = 184
    object tcctcccodigo: TIntegerField
      FieldName = 'tcccodigo'
    end
    object tcctccidentificacao: TStringField
      FieldName = 'tccidentificacao'
      Size = 50
    end
  end
  object car: TUniQuery
    SQL.Strings = (
      'select carcodigo, caridentificacao from car')
    Constraints = <>
    Left = 620
    Top = 88
    object carcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object carcaridentificacao: TStringField
      FieldName = 'caridentificacao'
      Size = 50
    end
  end
  object bco: TUniQuery
    SQL.Strings = (
      'select bcocodigo, bconome from bco')
    Constraints = <>
    Left = 592
    Top = 56
    object bcobcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object bcobconome: TStringField
      FieldName = 'bconome'
      Size = 50
    end
  end
  object moe: TUniQuery
    SQL.Strings = (
      'select moecodigo, moeidentificacao, moesimbolo from moe')
    Constraints = <>
    Left = 404
    Top = 24
    object moemoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object moemoeidentificacao: TStringField
      FieldName = 'moeidentificacao'
      Size = 50
    end
    object moemoesimbolo: TStringField
      FieldName = 'moesimbolo'
      Size = 5
    end
  end
  object Dmoe: TDataSource
    DataSet = moe
    Left = 444
    Top = 32
  end
  object tit: TUniQuery
    SQL.Strings = (
      
        'SELECT tit.titcodigo, CONCAT(etd.etdidentificacao, '#39' '#39' ,titnumer' +
        'o,'#39'    R$ '#39',CAST(FORMAT(titvalor,2) AS CHAR(10))) titidentificac' +
        'ao   FROM tit, etd WHERE etd.etdcodigo=tit.etdcodigo')
    Constraints = <>
    Left = 620
    Top = 424
    object tittitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object tittitidentificacao: TStringField
      FieldName = 'titidentificacao'
      Size = 100
    end
  end
  object etdatv: TUniQuery
    SQL.Strings = (
      'select etdcodigo, atvcodigo from etd')
    Constraints = <>
    Left = 348
    Top = 312
    object etdatvatvcodigo: TIntegerField
      FieldName = 'atvcodigo'
      Required = True
    end
    object etdatvatvidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'atvidentificacao'
      LookupDataSet = atv
      LookupKeyFields = 'atvcodigo'
      LookupResultField = 'atvidentificacao'
      KeyFields = 'atvcodigo'
      Size = 50
      Lookup = True
    end
  end
  object atv: TUniQuery
    SQL.Strings = (
      'select atvcodigo, atvidentificacao from atv')
    Constraints = <>
    Left = 380
    Top = 312
    object atvatvcodigo: TIntegerField
      FieldName = 'atvcodigo'
    end
    object atvatvidentificacao: TStringField
      FieldName = 'atvidentificacao'
      Size = 35
    end
  end
  object Detdatv: TDataSource
    DataSet = etdatv
    Left = 308
    Top = 328
  end
end
