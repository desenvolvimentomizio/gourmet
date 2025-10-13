object fimpaje: Tfimpaje
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Importa'#231#227'o de Ajustes de Estoque'
  ClientHeight = 499
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 118
    Height = 13
    Caption = 'Arquivo com a contagem'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 470
    Width = 533
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Importando'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 379
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 454
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object edNomeArquivo: TEdit
    Left = 138
    Top = 8
    Width = 255
    Height = 21
    TabOrder = 1
  end
  object btLocalizaArquivo: TButton
    Left = 407
    Top = 8
    Width = 113
    Height = 22
    Caption = 'Localiza Arquivo'
    TabOrder = 2
    OnClick = btLocalizaArquivoClick
  end
  object dbIto: TDBGrid
    Left = 146
    Top = 35
    Width = 255
    Height = 246
    DataSource = Dito
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'procodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unicodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'itoquantidade'
        Visible = True
      end>
  end
  object dbRegistro: TDBGrid
    Left = 146
    Top = 303
    Width = 255
    Height = 153
    DataSource = Dregistro
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ofSelecionaArquivo: TOpenTextFileDialog
    Title = 'Selecione o arquivo para importa'#231#227'o'
    Left = 40
    Top = 216
  end
  object registro: TUniQuery
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
      '  icmcodigo,'
      '  itmbicm,'
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
      '  cspcodigo,'
      '  itmbpis,'
      '  itmaliqpis,'
      '  itmquantpis,'
      '  itmaliqpisvalor,'
      '  itmpis,'
      '  csfcodigo,'
      '  itmbcofins,'
      '  itmaliqcofins,'
      '  itmquantcofins,'
      '  itmaliqcofinsvalor,'
      '  itmcofins,'
      '  pcccodigo,'
      '  itmtotal,'
      '  unicodigo,'
      '  itmicmsvalor,'
      '  puncodigo,'
      '  itmcontendo,'
      '  cfocfopdestinacao,'
      '  unicodigobase,'
      '  itmcusto,'
      '  itmfrete,'
      '  itmseguro,'
      '  itmoutras,'
      '  itmquanticontada'
      'FROM itm'
      'WHERE meschave = :meschave')
    AfterInsert = registroAfterInsert
    Left = 36
    Top = 160
    ParamData = <
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
    object registrocfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object registrounicodigo: TIntegerField
      DisplayLabel = 'Unidade de Compra'
      FieldName = 'unicodigo'
      Required = True
    end
    object registroitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,#####0.0000'
      EditFormat = '#,#####0.0000'
    end
    object registroitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
    object registroitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmtotal: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmfrete: TFloatField
      DisplayLabel = 'Frete R$'
      FieldName = 'itmfrete'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmseguro: TFloatField
      DisplayLabel = 'Seguro R$'
      FieldName = 'itmseguro'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmoutras: TFloatField
      DisplayLabel = 'Outras R$'
      FieldName = 'itmoutras'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmbicm: TFloatField
      DisplayLabel = 'Base do ICMS'
      FieldName = 'itmbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroicmcodigo: TStringField
      DisplayLabel = 'Al'#237'quota do ICMS'
      FieldName = 'icmcodigo'
      Required = True
      Size = 3
    end
    object registroitmicm: TFloatField
      DisplayLabel = 'Valor do ICMS'
      FieldName = 'itmicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmbicms: TFloatField
      DisplayLabel = 'Base do ICMS Substitui'#231#227'o'
      FieldName = 'itmbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmaliqicms: TFloatField
      DisplayLabel = 'Percentual ICMS Subst'
      FieldName = 'itmaliqicms'
      Required = True
    end
    object registroitmicms: TFloatField
      DisplayLabel = 'Valor do ICMS Subst R$'
      FieldName = 'itmicms'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroitmaliqipi: TFloatField
      DisplayLabel = 'Percentual de IPI'
      FieldName = 'itmaliqipi'
      Required = True
    end
    object registroitmipi: TFloatField
      DisplayLabel = 'Percentual de IPI'
      FieldName = 'itmipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrocstcodigo: TStringField
      DisplayLabel = 'C'#243'digo CST'
      FieldName = 'cstcodigo'
      Size = 3
    end
    object registroitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
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
    object registroitmapuipi: TStringField
      FieldName = 'itmapuipi'
      FixedChar = True
      Size = 1
    end
    object registrocsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
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
    object registropuncodigo: TIntegerField
      FieldName = 'puncodigo'
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
      Required = True
    end
    object registroitmcusto: TFloatField
      FieldName = 'itmcusto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmicmsvalor: TFloatField
      FieldName = 'itmicmsvalor'
    end
    object registroitmquanticontada: TFloatField
      FieldName = 'itmquanticontada'
      Required = True
    end
  end
  object consulta: TUniQuery
    Left = 120
    Top = 160
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ufs.ufssigla,'
      '  etd.etddoc1,'
      '  cfgment.cfgprouso,'
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfgcstterceiros,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmcfg.cfgetdempresa,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgmnfe.cfgnumecertif,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      '  cfgcsosn'
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
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND cfg.flacodigo = :flacodigo')
    Left = 180
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      ReadOnly = True
    end
    object cfgcfgprouso: TIntegerField
      FieldName = 'cfgprouso'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs1: TIntegerField
      FieldName = 'cfgobs1'
    end
    object cfgcfgobs2: TIntegerField
      FieldName = 'cfgobs2'
    end
    object cfgcfgobs3: TIntegerField
      FieldName = 'cfgobs3'
    end
    object cfgcfgobs4: TIntegerField
      FieldName = 'cfgobs4'
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 30
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 5
    end
    object cfgcfgcstterceiros: TStringField
      FieldName = 'cfgcstterceiros'
      Size = 3
    end
    object cfgcfgcsosn: TStringField
      FieldName = 'cfgcsosn'
      Size = 3
    end
  end
  object ito: TUniQuery
    SQL.Strings = (
      
        'select procodigo,  SUM(itoquantidade) as itoquantidade, unicodig' +
        'o,orcchave from ito '
      '  where orcchave in (--orcamentos)'
      '  GROUP BY procodigo')
    Left = 416
    Top = 112
    object itoprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object itounicodigo: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'unicodigo'
    end
    object itoitoquantidade: TFloatField
      DisplayLabel = 'Contato'
      FieldName = 'itoquantidade'
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
    end
  end
  object Dito: TDataSource
    DataSet = ito
    Left = 456
    Top = 120
  end
  object Dregistro: TDataSource
    DataSet = registro
    Left = 464
    Top = 192
  end
end
