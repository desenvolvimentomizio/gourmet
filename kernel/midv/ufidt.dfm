inherited fidt: Tfidt
  ActiveControl = idtquantidade
  Caption = 'Quantidade a Devolver'
  ClientHeight = 318
  ClientWidth = 853
  ExplicitWidth = 869
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 289
    Width = 853
    ExplicitTop = 125
    ExplicitWidth = 853
    object Label3: TLabel [0]
      Left = 120
      Top = 6
      Width = 249
      Height = 13
      CustomHint = BalloonHint
      AutoSize = False
      Caption = 'Label3'
      Visible = False
    end
    inherited bconfirma: TBitBtn
      Left = 699
      ExplicitLeft = 699
    end
    inherited bcancela: TBitBtn
      Left = 774
      ExplicitLeft = 774
    end
    inherited bfechar: TBitBtn
      Left = 634
      ExplicitLeft = 634
    end
  end
  inherited paginas: TPageControl
    Width = 853
    Height = 289
    ExplicitWidth = 853
    ExplicitHeight = 125
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 845
      ExplicitHeight = 97
      object Label1: TLabel
        Left = 9
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = idtchave
      end
      object Label2: TLabel
        Left = 9
        Top = 33
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade a Devolver'
        FocusControl = idtquantidade
      end
      object Label4: TLabel
        Left = 9
        Top = 60
        Width = 151
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o fiscal para devolu'#231#227'o'
        FocusControl = toecodigo
      end
      object idtchave: TDBEdit
        Left = 166
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'idtchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object idtquantidade: TDBEdit
        Left = 166
        Top = 30
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        DataField = 'idtquantidade'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = idtquantidadeExit
      end
      object toecodigo: TDBEdit
        Left = 166
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toecodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = toecodigoEnter
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ufs.ufssigla,'
      '  etd.etddoc1,'
      '  cfgment.cfgprouso,'
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfg.cfgdtinictb,'
      '  cfg.cfgdatapadrao,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmcfg.cfgetdempresa,'
      '  cfgmnfe.cfgnumeronfe,'
      '  cfgmnfe.cfgnumecertif,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      '  cfgmspd.cfgetdsped,'
      '  cfgmcfg.crtcodigo'
      'FROM cfgmcfg,'
      '     ufs,'
      '     etd,'
      '     cfgmnfe,'
      '     cfgment,'
      '     edr,'
      '     cfg,'
      '     cfgmspd'
      'WHERE ufs.ufscodigo = edr.ufscodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo')
    object cfgufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      ReadOnly = True
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgcfgobs1: TIntegerField
      FieldName = 'cfgobs1'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs2: TIntegerField
      FieldName = 'cfgobs2'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs3: TIntegerField
      FieldName = 'cfgobs3'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs4: TIntegerField
      FieldName = 'cfgobs4'
      ReadOnly = True
      Required = True
    end
    object cfgcfgnumeronfe: TIntegerField
      FieldName = 'cfgnumeronfe'
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 5
    end
    object cfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 50
    end
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
    end
    object cfgcfgdtinictb: TDateField
      FieldName = 'cfgdtinictb'
    end
    object cfgcfgdatapadrao: TDateField
      FieldName = 'cfgdatapadrao'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  idtchave,'
      '  mdtchave,'
      '  itmchave,'
      '  meschave,'
      '  flacodigo,'
      '  idtquantidade,'
      '  idtmotivo,'
      '  unicodigo,'
      '  idtvalor,'
      '  idtdesconto,'
      '  idttotal,'
      '  toecodigo'
      '  FROM'
      '  idt where idtchave=:idtchave ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idtchave'
        Value = nil
      end>
    object registroidtchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'idtchave'
    end
    object registromdtchave: TIntegerField
      FieldName = 'mdtchave'
    end
    object registroitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object registroidtmotivo: TStringField
      FieldName = 'idtmotivo'
      Size = 100
    end
    object registrounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object registroidtvalor: TFloatField
      FieldName = 'idtvalor'
    end
    object registroidtdesconto: TFloatField
      FieldName = 'idtdesconto'
    end
    object registroidttotal: TFloatField
      FieldName = 'idttotal'
    end
    object registroidtquantidade: TFloatField
      FieldName = 'idtquantidade'
      Required = True
    end
    object registrotoecodigo: TIntegerField
      FieldName = 'toecodigo'
      Required = True
    end
    object registrotoeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 150
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object toe: TUniQuery
    SQL.Strings = (
      
        'select toecodigo, concat(toecfopsaida,'#39'-'#39',toeidentificacao) toei' +
        'dentificacao from toe order by toecfopsaida')
    Left = 280
    Top = 216
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 150
    end
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'Select ufs.ufssigla, edr.tedcodigo, etd.etdcodigo'
      'From cdd Inner Join'
      '  ufs On ufs.ufscodigo = cdd.ufscodigo Inner Join'
      '  edr On cdd.cddcodigo = edr.cddcodigo Inner Join'
      '  etd On etd.etdcodigo = edr.etdcodigo'
      'Where edr.tedcodigo = 1  and'
      'etd.etdcodigo=:etdcodigo')
    Left = 312
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object ufsufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
    object ufstedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      ReadOnly = True
      Required = True
    end
    object ufsetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
    end
  end
end
