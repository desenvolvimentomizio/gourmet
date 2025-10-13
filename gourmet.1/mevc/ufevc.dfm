inherited fevc: Tfevc
  ActiveControl = pcgcodigo
  Caption = 'Conta Cont'#225'bil para a Entidade'
  ClientHeight = 178
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 149
    inherited bcancela: TBitBtn
      Visible = False
    end
  end
  inherited paginas: TPageControl
    Height = 149
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = etvcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Entidade'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de V'#237'nculo'
        FocusControl = tvicodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil'
        FocusControl = pcgcodigo
      end
      object etvcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'etvcodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object tvicodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'tvicodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 2
      end
      object pcgcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 284
    Top = 256
  end
  inherited consulta: TUniQuery
    Left = 416
    Top = 308
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etvcodigo,'
      '  etdcodigo,'
      '  tvicodigo,'
      '  pcgcodigo'
      'FROM etv where etvcodigo=:etvcodigo')
    Left = 332
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etvcodigo'
        Value = nil
      end>
    object registroetvcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'etvcodigo'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
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
    object registrotvicodigo: TIntegerField
      DisplayLabel = 'Tipo de V'#237'nculo'
      FieldName = 'tvicodigo'
      Required = True
    end
    object registrotviidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tviidentificacao'
      LookupDataSet = tvi
      LookupKeyFields = 'tvicodigo'
      LookupResultField = 'tviidentificacao'
      KeyFields = 'tvicodigo'
      Size = 25
      Lookup = True
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
  end
  inherited acoesfrm: TActionList
    Left = 468
    Top = 308
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 640
    Top = 264
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object tvi: TUniQuery
    SQL.Strings = (
      'select tvicodigo, tviidentificacao from tvi')
    Left = 704
    Top = 336
    object tvitvicodigo: TIntegerField
      FieldName = 'tvicodigo'
    end
    object tvitviidentificacao: TStringField
      FieldName = 'tviidentificacao'
      Size = 25
    end
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
end
