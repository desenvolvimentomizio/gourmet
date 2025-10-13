inherited fimpcuf: Tfimpcuf
  Caption = 'Importa / Verifica Cupons Fiscais'
  ClientHeight = 203
  ClientWidth = 778
  ExplicitWidth = 794
  ExplicitHeight = 242
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 174
    Width = 778
    ExplicitTop = 174
    ExplicitWidth = 778
    inherited bconfirma: TBitBtn
      Left = 624
      ExplicitLeft = 624
    end
    inherited bcancela: TBitBtn
      Left = 699
      ExplicitLeft = 699
    end
    inherited bfechar: TBitBtn
      Left = 559
      ExplicitLeft = 559
    end
  end
  inherited paginas: TPageControl
    Width = 778
    Height = 174
    ExplicitWidth = 778
    ExplicitHeight = 174
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 770
      ExplicitHeight = 146
      object Label1: TLabel
        Left = 52
        Top = 21
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cupons fiscais emitidos'
      end
      object Label2: TLabel
        Left = 52
        Top = 67
        Width = 133
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Itens do cupom selecionado'
      end
      object cufchave: TDBEdit
        Left = 140
        Top = 3
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cufchave'
        DataSource = DSRegistro
        TabOrder = 0
        Visible = False
      end
      object cufdata: TDBEdit
        Left = 348
        Top = 3
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cufdata'
        DataSource = DSRegistro
        TabOrder = 1
        Visible = False
      end
      object mostracupons: TProgressBar
        Left = 52
        Top = 40
        Width = 705
        Height = 17
        CustomHint = BalloonHint
        TabOrder = 2
      end
      object mostraitens: TProgressBar
        Left = 52
        Top = 84
        Width = 705
        Height = 17
        CustomHint = BalloonHint
        TabOrder = 3
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.04.09.001-06'
  end
  inherited DSRegistro: TUniDataSource
    Left = 605
    Top = 60
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  c.cfgcstcuf'
      'FROM cfgmspd c ')
    Left = 262
    Top = 60
    object cfgcfgcstcuf: TStringField
      FieldName = 'cfgcstcuf'
      Size = 3
    end
  end
  inherited consulta: TUniQuery
    Left = 484
    Top = 104
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cufchave,'
      '  tdfcodigo,'
      '  sdecodigo,'
      '  cufcco,'
      '  cufdata,'
      '  cuftotal,'
      '  cufpis,'
      '  cufcofins,'
      '  cufdoc1,'
      '  cufnome,'
      '  rrzcodigo,'
      '  cufdesconto,'
      '  etdcodigo'
      'FROM cuf'
      'ORDER BY cufcco')
    Left = 660
    Top = 60
    object registrocufchave: TIntegerField
      FieldName = 'cufchave'
    end
    object registrotdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registrocufdata: TDateField
      DisplayLabel = 'Data de emiss'#227'o'
      FieldName = 'cufdata'
      EditMask = '!99/99/9999;1;_'
    end
    object registrosdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 2
    end
    object registrocuftotal: TFloatField
      FieldName = 'cuftotal'
    end
    object registrocufdesconto: TFloatField
      FieldName = 'cufdesconto'
    end
    object registrocufpis: TFloatField
      FieldName = 'cufpis'
    end
    object registrocufcofins: TFloatField
      FieldName = 'cufcofins'
    end
    object registrocufcco: TIntegerField
      FieldName = 'cufcco'
    end
    object registrocufdoc1: TStringField
      FieldName = 'cufdoc1'
    end
    object registrocufnome: TStringField
      FieldName = 'cufnome'
      Size = 50
    end
    object registrorrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 208
    Top = 108
  end
  inherited dtb: TUniQuery
    Left = 169
    Top = 108
  end
  inherited coa: TUniQuery
    Left = 128
    Top = 108
  end
  inherited pfr: TUniQuery
    Left = 544
    Top = 20
  end
  inherited psf: TUniQuery
    Left = 504
    Top = 20
  end
  inherited dcl: TUniQuery
    Left = 383
    Top = 112
  end
  inherited cau: TUniQuery
    Left = 536
    Top = 104
  end
  inherited err: TUniQuery
    Left = 440
    Top = 100
  end
  inherited BalloonHint: TBalloonHint
    Left = 248
    Top = 2
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object icu: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  icuchave,'
      '  cufchave,'
      '  procodigo,'
      '  cstcodigo,'
      '  unicodigo,'
      '  icuquantidade,'
      '  icuquantidadecanc,'
      '  icuvalor,'
      '  cfocfop,'
      '  icualiqicm,'
      '  icupis,'
      '  icucofins,'
      '  icuicm'
      'FROM icu'
      'WHERE cufchave = :cufchave')
    Left = 656
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cufchave'
        Value = nil
      end>
    object icuicuchave: TIntegerField
      FieldName = 'icuchave'
    end
    object icuprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object icucstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object icuunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object icuicuquantidade: TFloatField
      FieldName = 'icuquantidade'
    end
    object icuicuvalor: TFloatField
      FieldName = 'icuvalor'
    end
    object icucfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 4
    end
    object icuicupis: TFloatField
      FieldName = 'icupis'
    end
    object icuicucofins: TFloatField
      FieldName = 'icucofins'
    end
    object icuicuicm: TFloatField
      FieldName = 'icuicm'
    end
    object icucufchave: TIntegerField
      FieldName = 'cufchave'
    end
    object icuicuquantidadecanc: TFloatField
      FieldName = 'icuquantidadecanc'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  meschave,'
      '  etdcodigo,'
      '  mesemissao,'
      '  mesregistro,'
      '  tdfcodigo,'
      '  sdecodigo,'
      '  messerie,'
      '  mesnumero,'
      '  meschavenfe,'
      '  toecodigo,'
      '  mesvalor,'
      '  tfpcodigo,'
      '  mesdesconto,'
      '  mestotal,'
      '  refcodigo,'
      '  mesfrete,'
      '  edritem,'
      '  messeguro,'
      '  mesoutras,'
      '  mesbicm,'
      '  mesicm,'
      '  mesbicms,'
      '  mesicms,'
      '  trfcodigo,'
      '  mesipi,'
      '  mespis,'
      '  mescofins,'
      '  mespiss,'
      '  mescofinss,'
      '  clbcodigo,'
      '  trmcodigo,'
      '  temcodigo,'
      '  mesprotocolo,'
      '  mescoocupom,'
      '  mesccfcupom,'
      '  mesdatacupom'
      'FROM mes')
    Left = 708
    Top = 60
    object mesmeschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object mestdfcodigo: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object mesetdcodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdcodigo'
      Required = True
    end
    object mesmesdatacupom: TDateField
      FieldName = 'mesdatacupom'
    end
    object messdecodigo: TStringField
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object mesmesvalor: TFloatField
      FieldName = 'mesvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesdesconto: TFloatField
      FieldName = 'mesdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesipi: TFloatField
      FieldName = 'mesipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmescofins: TFloatField
      FieldName = 'mescofins'
      Required = True
    end
    object mesmescoocupom: TIntegerField
      FieldName = 'mescoocupom'
    end
    object mesmesccfcupom: TIntegerField
      FieldName = 'mesccfcupom'
    end
    object mesmesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object mesmesnumero: TIntegerField
      FieldName = 'mesnumero'
    end
    object mesmeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
    object mestoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object mesmestotal: TFloatField
      FieldName = 'mestotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mestfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
      Required = True
    end
    object mesrefcodigo: TIntegerField
      FieldName = 'refcodigo'
      Required = True
    end
    object mesmesregistro: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'mesregistro'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object mesmesfrete: TFloatField
      FieldName = 'mesfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesseguro: TFloatField
      FieldName = 'messeguro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'mesemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object mesmesoutras: TFloatField
      FieldName = 'mesoutras'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesbicm: TFloatField
      FieldName = 'mesbicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesicm: TFloatField
      FieldName = 'mesicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesbicms: TFloatField
      FieldName = 'mesbicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesicms: TFloatField
      FieldName = 'mesicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmespis: TFloatField
      FieldName = 'mespis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmespiss: TFloatField
      FieldName = 'mespiss'
    end
    object mesmescofinss: TFloatField
      FieldName = 'mescofinss'
    end
    object mesclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object mestrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
      Required = True
    end
    object mesmesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 50
    end
    object mestrfcodigo: TStringField
      FieldName = 'trfcodigo'
      Size = 1
    end
    object mestemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object mesedritem: TIntegerField
      FieldName = 'edritem'
      Required = True
    end
  end
  object itm: TUniQuery
    SQL.Strings = (
      'select * from itm where meschave=:meschave')
    AfterInsert = itmAfterInsert
    Left = 704
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object itmcstcodigo: TStringField
      DisplayLabel = 'C'#243'digo CST'
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object itmunicodigo: TIntegerField
      DisplayLabel = 'Unidade de Compra'
      FieldName = 'unicodigo'
      Required = True
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmtoecodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object itmitmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
      Required = True
    end
    object itmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmmeschave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'meschave'
      Required = True
    end
    object itmitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmitmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmicms: TFloatField
      DisplayLabel = 'Percentual ICMS Subst R$'
      FieldName = 'itmicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmcsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmitmbipi: TFloatField
      FieldName = 'itmbipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itmitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmipi: TFloatField
      DisplayLabel = 'Percentual de IPI'
      FieldName = 'itmipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmitmbpis: TFloatField
      FieldName = 'itmbpis'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmitmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
      Required = True
    end
    object itmpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmunicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object itmcfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmitmcontendo: TFloatField
      FieldName = 'itmcontendo'
    end
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 608
  end
  object zPCalcDesc: TUniScript
    Left = 316
    Top = 136
  end
end
