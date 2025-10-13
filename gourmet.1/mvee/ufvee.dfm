inherited fvee: Tfvee
  Caption = 'Vincula'#231#227'o de Ve'#237'culos'
  ClientHeight = 184
  ExplicitHeight = 223
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 155
  end
  inherited paginas: TPageControl
    Height = 155
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 33
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ve'#237'culo'
        FocusControl = veicodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Endere'#231'o'
        FocusControl = edrcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = veechave
      end
      object veicodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veicodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object edrcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = edrcodigoEnter
      end
      object veechave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veechave'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  veechave,'
      '  veicodigo,'
      '  etdcodigo,'
      '  edrcodigo'
      
        'FROM vee where veechave=:veechave and etdcodigo=:etdcodigo and e' +
        'drcodigo=:edrcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'veechave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edrcodigo'
        Value = nil
      end>
    object registroveechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'veechave'
    end
    object registroveicodigo: TIntegerField
      DisplayLabel = 'Ve'#237'culo'
      FieldName = 'veicodigo'
      Required = True
    end
    object registroveiidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'veiidentificacao'
      LookupDataSet = vei
      LookupKeyFields = 'veicodigo'
      LookupResultField = 'veiidentificacao'
      KeyFields = 'veicodigo'
      Size = 50
      Lookup = True
    end
    object registroedrcodigo: TIntegerField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'edrcodigo'
      Required = True
    end
    object registroedridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'edridentificacao'
      LookupDataSet = edr
      LookupKeyFields = 'edrcodigo'
      LookupResultField = 'edridentificacao'
      KeyFields = 'edrcodigo'
      Size = 50
      Lookup = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Cliente'
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
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object vei: TUniQuery
    SQL.Strings = (
      
        'select veicodigo, concat(veiplaca, '#39' '#39', veimodelo) as veiidentif' +
        'icacao from vei')
    Left = 460
    Top = 72
    object veiveicodigo: TIntegerField
      FieldName = 'veicodigo'
    end
    object veiveiidentificacao: TStringField
      FieldName = 'veiidentificacao'
      Size = 50
    end
  end
  object edr: TUniQuery
    SQL.Strings = (
      
        'select edrcodigo, concat( edrrua,'#39' '#39', edrnumero, '#39' '#39' , edrcomple' +
        ') as edridentificacao from edr')
    Left = 348
    Top = 176
    object edredrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object edredridentificacao: TStringField
      FieldName = 'edridentificacao'
      Size = 50
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 316
    Top = 240
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
