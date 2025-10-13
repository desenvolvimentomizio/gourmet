inherited fedr: Tfedr
  ActiveControl = tedcodigo
  Caption = 'Endere'#231'o'
  ClientHeight = 377
  ClientWidth = 672
  ExplicitWidth = 688
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 348
    Width = 672
    ExplicitTop = 551
    ExplicitWidth = 825
    inherited bconfirma: TBitBtn
      Left = 518
      ExplicitLeft = 671
    end
    inherited bcancela: TBitBtn
      Left = 593
      ExplicitLeft = 746
    end
    inherited bfechar: TBitBtn
      Left = 453
      ExplicitLeft = 606
    end
  end
  inherited paginas: TPageControl
    Width = 672
    Height = 348
    ExplicitWidth = 825
    ExplicitHeight = 551
    inherited Principal: TTabSheet
      ExplicitWidth = 664
      ExplicitHeight = 320
      object Label8: TLabel
        Left = 8
        Top = 8
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Endere'#231'o'
        FocusControl = tedcodigo
      end
      object Label9: TLabel
        Left = 8
        Top = 33
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Endere'#231'o'
        FocusControl = edrrua
      end
      object Label10: TLabel
        Left = 489
        Top = 36
        Width = 37
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero'
        FocusControl = edrnumero
      end
      object Label11: TLabel
        Left = 8
        Top = 171
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
        FocusControl = edrcomple
      end
      object Label12: TLabel
        Left = 8
        Top = 198
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Bairro'
        FocusControl = edrbairro
      end
      object Label13: TLabel
        Left = 466
        Top = 201
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Caixa Postal'
        FocusControl = edrcxpostal
      end
      object Label14: TLabel
        Left = 8
        Top = 252
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cidade'
        FocusControl = cddcodigo
      end
      object Label16: TLabel
        Left = 492
        Top = 255
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CEP'
        FocusControl = edrcep
      end
      object Label15: TLabel
        Left = 8
        Top = 279
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = edrinscest
      end
      object Label1: TLabel
        Left = 8
        Top = 225
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado (UF)'
        FocusControl = edrbairro
      end
      object Label2: TLabel
        Left = 8
        Top = 114
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Refer'#234'ncia / Obs'
      end
      object Label3: TLabel
        Left = 408
        Top = 228
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = edrinscmun
        Visible = False
      end
      object lbedrrazaofazenda: TLabel
        Left = 8
        Top = 60
        Width = 119
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Raz'#227'o Social da Fazenda'
        FocusControl = edrrazaofazenda
      end
      object lbedrnomefazenda: TLabel
        Left = 8
        Top = 87
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome da Fazenda'
        FocusControl = edrnomefazenda
      end
      object tedcodigo: TDBEdit
        Left = 136
        Top = 6
        Width = 24
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tedcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object edrrua: TDBEdit
        Left = 136
        Top = 33
        Width = 337
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrrua'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object edrnumero: TDBEdit
        Left = 532
        Top = 33
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrnumero'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object edrcomple: TDBEdit
        Left = 136
        Top = 171
        Width = 456
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrcomple'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object edrbairro: TDBEdit
        Left = 136
        Top = 198
        Width = 293
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrbairro'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object edrcxpostal: TDBEdit
        Left = 531
        Top = 198
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrcxpostal'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object cddcodigo: TDBEdit
        Left = 136
        Top = 252
        Width = 62
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cddcodigo'
        DataSource = DSRegistro
        TabOrder = 11
        OnEnter = cddcodigoEnter
        OnExit = cddcodigoExit
      end
      object edrcep: TDBEdit
        Left = 517
        Top = 252
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrcep'
        DataSource = DSRegistro
        TabOrder = 12
        OnExit = edrcepExit
      end
      object edrinscest: TDBEdit
        Left = 136
        Top = 279
        Width = 106
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrinscest'
        DataSource = DSRegistro
        TabOrder = 13
        OnKeyPress = edrinscestKeyPress
      end
      object ufscodigo: TDBEdit
        Left = 136
        Top = 225
        Width = 24
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigo'
        DataSource = DSRegistro
        TabOrder = 10
        OnExit = ufscodigoExit
      end
      object BvalidarDoc2: TBitBtn
        Left = 279
        Top = 279
        Width = 47
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 15
        OnClick = BvalidarDoc2Click
      end
      object ufssigla: TDBEdit
        Left = 248
        Top = 279
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ufssigla'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 14
      end
      object edrobs: TDBMemo
        Left = 137
        Top = 116
        Width = 455
        Height = 44
        CustomHint = BalloonHint
        DataField = 'edrobs'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object edrinscmun: TDBEdit
        Left = 507
        Top = 225
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrinscmun'
        DataSource = DSRegistro
        TabOrder = 9
        Visible = False
      end
      object pltpeidentificacao: TPanel
        Left = 327
        Top = 279
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        BevelOuter = bvLowered
        TabOrder = 16
        Visible = False
      end
      object edrrazaofazenda: TDBEdit
        Left = 136
        Top = 60
        Width = 456
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrrazaofazenda'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object edrnomefazenda: TDBEdit
        Left = 136
        Top = 87
        Width = 456
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrnomefazenda'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '09-01-002'
  end
  inherited DSRegistro: TUniDataSource
    Left = 180
    Top = 8
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cddcodigo, ufscodigo,edrcep from cfgmcfg,cfg,etd,edr '
      '  WHERE '
      '  cfg.cfgcodigo=cfgmcfg.cfgcodigo AND '
      '  etd.etdcodigo=cfgmcfg.cfgetdempresa AND'
      '  edr.etdcodigo=etd.etdcodigo AND'
      '  edr.tedcodigo=1')
    Top = 0
    object cfgcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Size = 10
    end
    object cfgufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 4
    end
    object cfgedrcep: TStringField
      FieldName = 'edrcep'
      Size = 15
    end
  end
  inherited consulta: TUniQuery
    Left = 292
    Top = 65524
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select * from edr where edrcodigo=:edrcodigo and etdcodigo=:edtc' +
        'odigo')
    OnCalcFields = registroCalcFields
    Left = 224
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'edrcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edtcodigo'
        Value = nil
      end>
    object registroedrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'edrcodigo'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object registrotedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      Required = True
    end
    object registrotedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tedidentificacao'
      LookupDataSet = ted
      LookupKeyFields = 'tedcodigo'
      LookupResultField = 'tedidentificacao'
      KeyFields = 'tedcodigo'
      Lookup = True
    end
    object registroedrrua: TStringField
      FieldName = 'edrrua'
      Required = True
      Size = 50
    end
    object registroedrnumero: TStringField
      FieldName = 'edrnumero'
      Required = True
      Size = 10
    end
    object registroedrcxpostal: TStringField
      FieldName = 'edrcxpostal'
      Size = 10
    end
    object registroedrcomple: TStringField
      FieldName = 'edrcomple'
      Size = 50
    end
    object registroedrbairro: TStringField
      DisplayWidth = 60
      FieldName = 'edrbairro'
      Required = True
      Size = 60
    end
    object registrocddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object registrocddnome: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'cddnome'
      LookupDataSet = cdd
      LookupKeyFields = 'cddcodigo'
      LookupResultField = 'cddnome'
      KeyFields = 'cddcodigo'
      Size = 30
      Lookup = True
    end
    object registroufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object registroufsnome: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkLookup
      FieldName = 'ufsnome'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufsnome'
      KeyFields = 'ufscodigo'
      Size = 35
      Lookup = True
    end
    object registroedrobs: TStringField
      FieldName = 'edrobs'
      Size = 250
    end
    object registroedrinscest: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'edrinscest'
    end
    object registroedrcep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'edrcep'
      Required = True
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object registroufssigla: TStringField
      Tag = 777
      FieldKind = fkCalculated
      FieldName = 'ufssigla'
      KeyFields = 'ufscodigo'
      Size = 3
      Calculated = True
    end
    object registroedrinscmun: TStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'edrinscmun'
      Size = 50
    end
    object registroedritem: TIntegerField
      FieldName = 'edritem'
    end
    object registroedrnomefazenda: TStringField
      DisplayLabel = 'Nome da Fazenda'
      FieldName = 'edrnomefazenda'
      Size = 80
    end
    object registroedrrazaofazenda: TStringField
      DisplayLabel = 'Raz'#227'o Social da Fazenda'
      FieldName = 'edrrazaofazenda'
      Size = 80
    end
  end
  inherited dcp: TUniQuery
    Left = 256
    Top = 116
  end
  inherited dtb: TUniQuery
    Left = 220
    Top = 132
  end
  inherited coa: TUniQuery
    Left = 64
    Top = 132
  end
  inherited pfr: TUniQuery
    Left = 476
    Top = 0
  end
  inherited psf: TUniQuery
    Left = 528
    Top = 65528
  end
  inherited dcl: TUniQuery
    Left = 312
    Top = 60
  end
  inherited err: TUniQuery
    Left = 348
    Top = 60
  end
  inherited BalloonHint: TBalloonHint
    Left = 504
    Top = 84
  end
  object ACBrValidador: TACBrValidador
    TipoDocto = docInscEst
    IgnorarChar = './-,;\'
    Left = 324
    Top = 28
  end
  object ted: TUniQuery
    SQL.Strings = (
      'select tedcodigo, tedidentificacao from ted')
    Left = 488
    Top = 40
    object tedtedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      Required = True
    end
    object tedtedidentificacao: TStringField
      FieldName = 'tedidentificacao'
      Required = True
    end
  end
  object cdd: TUniQuery
    SQL.Strings = (
      'select cddcodigo, cddnome from cdd')
    Left = 560
    Top = 48
    object cddcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object cddcddnome: TStringField
      DisplayWidth = 35
      FieldName = 'cddnome'
      Required = True
      Size = 35
    end
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'select ufscodigo, ufsnome, ufssigla from ufs')
    Left = 352
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 10
    end
    object ufsufsnome: TStringField
      FieldName = 'ufsnome'
      Size = 50
    end
    object ufsufssigla: TStringField
      FieldName = 'ufssigla'
      Size = 10
    end
  end
  object ACBrValidadorCEP: TACBrValidador
    TipoDocto = docCEP
    IgnorarChar = './-,;\'
    Left = 440
    Top = 100
  end
end
