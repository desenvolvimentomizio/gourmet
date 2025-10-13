inherited fvrp: Tfvrp
  ActiveControl = vrpreferencia
  Caption = 'Varia'#231#245'es do Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      object Bvregistro: TBevel
        Left = 0
        Top = 0
        Width = 788
        Height = 113
        CustomHint = BalloonHint
        Align = alTop
        Shape = bsBottomLine
      end
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = vrpcodigo
      end
      object Label2: TLabel
        Left = 24
        Top = 59
        Width = 52
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Refer'#234'ncia'
        FocusControl = vrpreferencia
      end
      object Label4: TLabel
        Left = 24
        Top = 86
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Barra Interno'
        FocusControl = vrpbarrasistema
      end
      object vrpcodigo: TDBEdit
        Left = 150
        Top = 29
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vrpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object vrpreferencia: TDBEdit
        Left = 150
        Top = 56
        Width = 235
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vrpreferencia'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object vrpbarra: TDBEdit
        Left = 265
        Top = 83
        Width = 120
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vrpbarra'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = vrpbarraExit
        OnKeyPress = vrpbarraKeyPress
      end
      object vrpbarrasistema: TDBEdit
        Left = 150
        Top = 83
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vrpbarrasistema'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = vrpbarrasistemaExit
      end
      object GBAtributos: TGroupBox
        Left = 16
        Top = 130
        Width = 377
        Height = 50
        CustomHint = BalloonHint
        Caption = 'Atributos'
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vrp.vrpcodigo,'
      '  vrp.procodigo,'
      '  vrp.vrpreferencia,'
      '  vrp.vrpbarra,'
      '  vrp.vrpbarrasistema'
      'FROM vrp'
      'WHERE vrp.vrpcodigo = :vrpcodigo'
      'AND vrp.procodigo = :procodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vrpcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object registrovrpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'vrpcodigo'
    end
    object registroprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object registrovrpreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'vrpreferencia'
      Size = 40
    end
    object registrovrpbarra: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'vrpbarra'
    end
    object registrovrpbarrasistema: TIntegerField
      DisplayLabel = 'C'#243'digo de Barra Interno'
      FieldName = 'vrpbarrasistema'
      Required = True
    end
    object registrosenbarrasistema: TStringField
      FieldKind = fkLookup
      FieldName = 'senbarrasistema'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'vrpbarrasistema'
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Top = 300
  end
  inherited dtb: TUniQuery
    Top = 300
  end
  inherited coa: TUniQuery
    Top = 300
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  sen.sencodigo,'
      '  sen.senidentificacao'
      'FROM sen')
    Left = 460
    Top = 168
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object via: TUniQuery
    KeyFields = 'vrpcodigo'
    SQLInsert.Strings = (
      'INSERT INTO via (vrpcodigo, iatcodigo)'
      '  VALUES (:vrpcodigo, :iatcodigo)')
    SQLUpdate.Strings = (
      'UPDATE via'
      'SET via.iatcodigo = :iatcodigo'
      'WHERE via.viacodigo = :viacodigo')
    SQL.Strings = (
      'SELECT'
      '  via.viacodigo,'
      '  via.vrpcodigo,'
      '  via.iatcodigo'
      'FROM via'
      'WHERE via.viacodigo = :viacodigo')
    MasterSource = DSRegistro
    MasterFields = 'vrpcodigo'
    DetailFields = 'vrpcodigo'
    Left = 236
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'viacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vrpcodigo'
        Value = nil
      end>
    object viaviacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'viacodigo'
    end
    object viavrpcodigo: TIntegerField
      DisplayLabel = 'Varia'#231#227'o'
      FieldName = 'vrpcodigo'
    end
    object viaiatcodigo: TIntegerField
      DisplayLabel = 'Item do Atributo'
      FieldName = 'iatcodigo'
      Required = True
    end
    object viaiatidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'iatidentificacao'
      LookupDataSet = iat
      LookupKeyFields = 'iatcodigo'
      LookupResultField = 'iatidentificacao'
      KeyFields = 'iatcodigo'
      Lookup = True
    end
  end
  object DSvia: TUniDataSource
    DataSet = via
    Left = 240
    Top = 256
  end
  object iat: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  iat.iatcodigo,'
      '  iat.iatidentificacao,'
      '  iat.atrcodigo'
      'FROM iat')
    Left = 284
    Top = 208
    object iatiatcodigo: TIntegerField
      FieldName = 'iatcodigo'
    end
    object iatiatidentificacao: TStringField
      FieldName = 'iatidentificacao'
      Size = 40
    end
  end
  object gra: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gat.atrcodigo,'
      '  atr.atridentificacao'
      'FROM gra'
      '  JOIN gat'
      '    ON gra.gracodigo = gat.gracodigo'
      '  JOIN atr'
      '    ON gat.atrcodigo = atr.atrcodigo'
      '  JOIN pro'
      '    ON gra.gracodigo = pro.gracodigo'
      'WHERE pro.procodigo = :procodigo'
      'GROUP BY gat.atrcodigo'
      'ORDER BY gat.gatcodigo')
    Left = 348
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object graatrcodigo: TIntegerField
      FieldName = 'atrcodigo'
    end
    object graatridentificacao: TStringField
      FieldName = 'atridentificacao'
      Size = 40
    end
  end
  object viavrp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  via.viacodigo,'
      '  iat.atrcodigo'
      'FROM via'
      '  JOIN iat'
      '    ON via.iatcodigo = iat.iatcodigo'
      'WHERE via.vrpcodigo = :vrpcodigo')
    Left = 396
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vrpcodigo'
        Value = nil
      end>
    object viavrpviacodigo: TIntegerField
      FieldName = 'viacodigo'
    end
    object viavrpatrcodigo: TIntegerField
      FieldName = 'atrcodigo'
    end
  end
  object qDuplVrp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  CONCAT(vv.vrpcodigo, '#39' - '#39', vv.pronome)'
      'FROM v_vrp vv'
      '  JOIN (SELECT'
      '      via.vrpcodigo,'
      '      GROUP_CONCAT(via.iatcodigo) AS vrpatributos'
      '    FROM via'
      '    GROUP BY via.vrpcodigo) via'
      '    ON via.vrpcodigo = vv.vrpcodigo'
      'WHERE vv.procodigo = :procodigo'
      'AND via.vrpatributos = :atributos')
    Left = 268
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'atributos'
        Value = nil
      end>
  end
end
