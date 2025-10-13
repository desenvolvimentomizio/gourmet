inherited fmja: Tfmja
  Caption = 'Ajuda de Custo'
  ClientHeight = 229
  ExplicitHeight = 268
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 200
    ExplicitTop = 200
    inherited bconfirma: TBitBtn
      ExplicitLeft = 636
      ExplicitTop = 2
    end
    inherited bfechar: TBitBtn
      Visible = True
    end
  end
  inherited paginas: TPageControl
    Height = 200
    ExplicitHeight = 200
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 172
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = mjachave
      end
      object Label2: TLabel
        Left = 9
        Top = 33
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha de Pagamento'
        FocusControl = flhchave
      end
      object Label3: TLabel
        Left = 9
        Top = 60
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = etdcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Ajuda'
        FocusControl = tjacodigo
      end
      object Label5: TLabel
        Left = 9
        Top = 114
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do lan'#231'amento'
        FocusControl = mjadata
      end
      object vlbmjanumero: TLabel
        Left = 248
        Top = 114
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Comprovante'
        FocusControl = mjanumero
        Visible = False
      end
      object vlbmjaquantidade: TLabel
        Left = 442
        Top = 114
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
        FocusControl = mjaquantidade
        Visible = False
      end
      object vlbmjavalor: TLabel
        Left = 571
        Top = 114
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor Unit. R$'
        FocusControl = mjavalor
        Visible = False
      end
      object Label9: TLabel
        Left = 9
        Top = 141
        Width = 67
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor Total R$'
        FocusControl = mjatotal
      end
      object mjachave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mjachave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tjacodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tjacodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = tjacodigoExit
      end
      object mjadata: TDBEdit
        Left = 136
        Top = 111
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mjadata'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object mjanumero: TDBEdit
        Left = 337
        Top = 111
        Width = 88
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mjanumero'
        DataSource = DSRegistro
        TabOrder = 5
        Visible = False
      end
      object mjaquantidade: TDBEdit
        Left = 504
        Top = 111
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mjaquantidade'
        DataSource = DSRegistro
        TabOrder = 6
        Visible = False
      end
      object mjavalor: TDBEdit
        Left = 643
        Top = 111
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mjavalor'
        DataSource = DSRegistro
        TabOrder = 7
        Visible = False
      end
      object mjatotal: TDBEdit
        Left = 136
        Top = 138
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mjatotal'
        DataSource = DSRegistro
        TabOrder = 8
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 372
    Top = 448
  end
  inherited cfg: TUniQuery
    Left = 484
    Top = 28
  end
  inherited consulta: TUniQuery
    Top = 44
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mjachave,'
      '  flhchave,'
      '  etdcodigo,'
      '  tjacodigo,'
      '  mjadata,'
      '  mjanumero,'
      '  mjaquantidade,'
      '  mjavalor,'
      '  mjatotal,'
      '  clbcodigo,'
      '  mjaregistro,'
      '  fclcodigo'
      'FROM mja where mjachave=:mjachave')
    Left = 300
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mjachave'
        Value = nil
      end>
    object registromjachave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'mjachave'
    end
    object registroflhchave: TIntegerField
      DisplayLabel = 'Folha de Pagamento'
      FieldName = 'flhchave'
      Required = True
    end
    object registroflhidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flhidentificacao'
      LookupDataSet = flh
      LookupKeyFields = 'flhchave'
      LookupResultField = 'flhidentificacao'
      KeyFields = 'flhchave'
      Size = 50
      Lookup = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
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
    object registrotjacodigo: TIntegerField
      DisplayLabel = 'Tipo de Ajuda'
      FieldName = 'tjacodigo'
      Required = True
    end
    object registrotjaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tjaidentificacao'
      LookupDataSet = tja
      LookupKeyFields = 'tjacodigo'
      LookupResultField = 'tjaidentificacao'
      KeyFields = 'tjacodigo'
      Size = 50
      Lookup = True
    end
    object registromjadata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'mjadata'
      Required = True
    end
    object registromjanumero: TStringField
      DisplayLabel = 'Nr. Comprovante'
      FieldName = 'mjanumero'
      Size = 10
    end
    object registromjaquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'mjaquantidade'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object registromjavalor: TFloatField
      DisplayLabel = 'Valor Unit. R$'
      FieldName = 'mjavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromjatotal: TFloatField
      DisplayLabel = 'Valor Total R$'
      FieldName = 'mjatotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registromjaregistro: TDateTimeField
      FieldName = 'mjaregistro'
    end
    object registrofclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 648
    Top = 348
  end
  inherited dtb: TUniQuery
    Left = 604
    Top = 348
  end
  inherited coa: TUniQuery
    Left = 568
    Top = 348
  end
  inherited pfr: TUniQuery
    Left = 568
    Top = 36
  end
  inherited psf: TUniQuery
    Left = 632
    Top = 36
  end
  inherited dcl: TUniQuery
    Left = 732
    Top = 376
  end
  inherited acoesfrm: TActionList
    Left = 388
    Top = 36
  end
  inherited cpg: TUniQuery
    Left = 564
    Top = 408
  end
  inherited cpc: TUniQuery
    Left = 565
    Top = 457
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object flh: TUniQuery
    SQL.Strings = (
      'select flhchave, flhidentificacao from flh')
    Left = 252
    Top = 80
    object flhflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object flhflhidentificacao: TStringField
      FieldName = 'flhidentificacao'
      Size = 50
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      
        'select etd.etdcodigo, etdidentificacao from etd, etv where etd.e' +
        'tdcodigo=etv.etdcodigo and tvicodigo=3')
    Left = 300
    Top = 88
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object tja: TUniQuery
    SQL.Strings = (
      'select tjacodigo, tjaidentificacao from tja')
    Left = 452
    Top = 96
    object tjatjacodigo: TIntegerField
      FieldName = 'tjacodigo'
    end
    object tjatjaidentificacao: TStringField
      FieldName = 'tjaidentificacao'
      Size = 50
    end
  end
  object fcl: TUniQuery
    SQL.Strings = (
      
        'SELECT fclcodigo FROM vhf, pfh WHERE vhf.vhfcodigo=pfh.vhfcodigo' +
        ' AND etdcodigo=:etdcodigo LIMIT 1;')
    Left = 748
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
  end
end
