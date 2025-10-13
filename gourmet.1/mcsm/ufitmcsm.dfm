inherited fitmcsm: Tfitmcsm
  ActiveControl = procodigo
  Caption = 'Itens de Consumo'
  ClientHeight = 170
  ExplicitHeight = 209
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 141
    ExplicitTop = 141
  end
  inherited paginas: TPageControl
    Height = 141
    ExplicitHeight = 141
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 113
      object Label15: TLabel
        Left = 7
        Top = 6
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Item da Nota'
        FocusControl = itmitem
      end
      object Label3: TLabel
        Left = 7
        Top = 33
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Produto'
        FocusControl = procodigo
      end
      object Label1: TLabel
        Left = 7
        Top = 59
        Width = 101
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade de Consumo'
      end
      object Label5: TLabel
        Left = 7
        Top = 86
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
        FocusControl = itmquantidade
      end
      object itmitem: TDBEdit
        Left = 136
        Top = 3
        Width = 59
        Height = 21
        ParentCustomHint = False
        TabStop = False
        DataField = 'itmitem'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 0
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object puncodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'puncodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object itmquantidade: TDBEdit
        Left = 136
        Top = 84
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itmquantidade'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object meschave: TDBEdit
        Left = 201
        Top = 3
        Width = 59
        Height = 21
        ParentCustomHint = False
        TabStop = False
        DataField = 'meschave'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 1
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgdoisprecos, crtcodigo,cfgcontrolaestoque,'
      'cfgcontrolaestoquedisp '
      'from cfg, cfgmsai, cfgmspd, cfgmnfe '
      
        'where cfg.cfgcodigo=cfgmsai.cfgcodigo and cfg.cfgcodigo=cfgmspd.' +
        'cfgcodigo and cfg.cfgcodigo=cfgmnfe.cfgcodigo and cfg.cfgcodigo=' +
        ':flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgdoisprecos: TIntegerField
      FieldName = 'cfgdoisprecos'
    end
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
    end
    object cfgcfgcontrolaestoque: TIntegerField
      FieldName = 'cfgcontrolaestoque'
    end
    object cfgcfgcontrolaestoquedisp: TIntegerField
      FieldName = 'cfgcontrolaestoquedisp'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itmchave,'
      '  meschave,'
      '  itmitem,'
      '  procodigo,'
      '  cstcodigo,'
      '  itmdesccomple,'
      '  itmquantidade,'
      '  itmvalor,'
      '  itmdesconto,'
      '  itmmovifisico,'
      '  toecodigo,'
      '  cfocfop,'
      '  itmbicm,'
      '  icmcodigo,'
      '  itmaliqicm,'
      '  itmicm,'
      '  itmbicms,'
      '  itmaliqicms,'
      '  itmicms,'
      '  itmapuipi,'
      '  csicodigo,'
      '  ceicodigo,'
      '  itmbipi,'
      '  itmaliqipi,'
      '  itmipi,'
      '  puncodigo,'
      '  itmcontendo,'
      '  cspcodigo,'
      '  itmbpis,'
      '  itmaliqpis,'
      '  itmquantpis,'
      '  itmaliqpisvalor,'
      '  itmpis,'
      '  csfcodigo,'
      '  itmbcofins,'
      '  itmaliqcofins,'
      '  unicodigobase,'
      '  cfocfopdestinacao,'
      '  itmquantcofins,'
      '  itmaliqcofinsvalor,'
      '  itmcofins,'
      '  pcccodigo,'
      '  itmtotal,'
      '  unicodigo,'
      '  itmfrete,'
      '  itmseguro,'
      '  itmoutras'
      'FROM itm'
      'WHERE itmchave = :itmchave'
      'AND meschave = :meschave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registroitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
    end
    object registromeschave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'meschave'
    end
    object registroitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object registrotoecodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Required = True
      Size = 60
      Lookup = True
    end
    object registrocfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Size = 5
    end
    object registrocstcodigo: TStringField
      DisplayLabel = 'C'#243'digo CST'
      FieldName = 'cstcodigo'
      Size = 3
    end
    object registropuncodigo: TIntegerField
      DisplayLabel = 'Unidade de Venda'
      FieldName = 'puncodigo'
      Required = True
    end
    object registropunidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'punidentificacao'
      LookupDataSet = pun
      LookupKeyFields = 'puncodigo'
      LookupResultField = 'punidentificacao'
      KeyFields = 'puncodigo'
      Size = 30
      Lookup = True
    end
    object registroitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
    end
    object registroitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
    object registroitmtotal: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmfrete: TFloatField
      DisplayLabel = 'Frete R$'
      FieldName = 'itmfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmseguro: TFloatField
      DisplayLabel = 'Seguro R$'
      FieldName = 'itmseguro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmoutras: TFloatField
      DisplayLabel = 'Outras R$'
      FieldName = 'itmoutras'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmtotalgeral: TFloatField
      DisplayLabel = 'Total Geral R$'
      FieldKind = fkCalculated
      FieldName = 'itmtotalgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object registroitmbicm: TFloatField
      DisplayLabel = 'Base do ICMS'
      FieldName = 'itmbicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroicmcodigo: TStringField
      DisplayLabel = 'Al'#237'quota do ICMS'
      FieldName = 'icmcodigo'
      Size = 3
    end
    object registroitmicm: TFloatField
      DisplayLabel = 'Valor do ICMS'
      FieldName = 'itmicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmbicms: TFloatField
      DisplayLabel = 'Base do ICMS Substitui'#231#227'o'
      FieldName = 'itmbicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqicms: TFloatField
      DisplayLabel = 'Al'#237'quota ICMS Substitui'#231#227'o'
      FieldName = 'itmaliqicms'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroitmicms: TFloatField
      DisplayLabel = 'Valor do ICMS Substitui'#231#227'o'
      FieldName = 'itmicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqipi: TFloatField
      DisplayLabel = 'Percentual IPI'
      FieldName = 'itmaliqipi'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroitmipi: TFloatField
      DisplayLabel = 'Valor do IPI'
      FieldName = 'itmipi'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroitmapuipi: TStringField
      FieldName = 'itmapuipi'
      FixedChar = True
      Size = 1
    end
    object registrocsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object registrouninome: TStringField
      FieldKind = fkLookup
      FieldName = 'uninome'
      LookupDataSet = uni
      LookupKeyFields = 'unicodigo'
      LookupResultField = 'uninome'
      KeyFields = 'unicodigo'
      Size = 30
      Lookup = True
    end
    object registrounicodigo: TIntegerField
      DisplayLabel = 'Unidade de Compra'
      FieldName = 'unicodigo'
    end
    object registroitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      FixedChar = True
      Size = 1
    end
    object registroitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Size = 6
    end
    object registroitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object registroceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object registroitmbipi: TFloatField
      FieldName = 'itmbipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object registroitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object registroitmbpis: TFloatField
      FieldName = 'itmbpis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
    end
    object registroitmquantpis: TFloatField
      FieldName = 'itmquantpis'
    end
    object registroitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
    end
    object registrocsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object registroitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
    end
    object registroitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
    end
    object registroitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
    end
    object registroitmcofins: TFloatField
      FieldName = 'itmcofins'
    end
    object registropcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 60
    end
    object registrounicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object registrocfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object registroitmcontendo: TFloatField
      FieldName = 'itmcontendo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome, prosaldo from pro')
    Left = 524
    Top = 36
    object proprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object proprosaldo: TFloatField
      FieldName = 'prosaldo'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      'SELECT toe.toecodigo'
      '     , toe.toeidentificacao'
      '     , toe.toecfopsaida'
      '     , toe.ttocodigo'
      '     , toe.cstcodigo'
      'FROM toe')
    Left = 604
    Top = 56
    object toetoecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
    object toetoecfopsaida: TStringField
      FieldName = 'toecfopsaida'
      Size = 5
    end
    object toettocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object toecstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
  end
  object pun: TUniQuery
    SQL.Strings = (
      
        'Select puncodigo, punidentificacao,procodigo,pun.unicodigo,pun.t' +
        'uncodigo,punprecoav,punprecoap,punmultiplicador from pun')
    Left = 580
    Top = 36
    object punpuncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'puncodigo'
    end
    object punpunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 30
    end
    object punprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object pununicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object puntuncodigo: TIntegerField
      FieldName = 'tuncodigo'
    end
    object punpunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
    object punpunprecoap: TFloatField
      FieldName = 'punprecoap'
    end
    object punpunmultiplicador: TFloatField
      FieldName = 'punmultiplicador'
    end
  end
  object uni: TUniQuery
    SQL.Strings = (
      'select unicodigo, uninome from uni')
    Left = 356
    Top = 48
    object uniunicodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'unicodigo'
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
    end
  end
end
