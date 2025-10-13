object fprocessacsm: Tfprocessacsm
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Processamento - Consumo Interno'
  ClientHeight = 345
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 24
    Top = 24
    Width = 161
    Height = 33
    Caption = 'Aguarde ...'
    TabOrder = 0
  end
  object Processar: TTimer
    Enabled = False
    Interval = 50
    OnTimer = ProcessarTimer
    Left = 168
    Top = 40
  end
  object registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mes.meschave,'
      '  mes.etdcodigo,'
      '  mes.mesemissao,'
      '  mes.mesregistro,'
      '  mes.tdfcodigo,'
      '  mes.sdecodigo,'
      '  mes.messerie,'
      '  mes.mesnumero,'
      '  mes.meschavenfe,'
      '  mes.toecodigo,'
      '  mes.mesvalor,'
      '  mes.tfpcodigo,'
      '  mes.mesdesconto,'
      '  mes.mestotal,'
      '  mes.refcodigo,'
      '  mes.mesfrete,'
      '  mes.edritem,'
      '  mes.messeguro,'
      '  mes.mesoutras,'
      '  mes.mesbicm,'
      '  mes.mesicm,'
      '  mes.mesbicms,'
      '  mes.mesicms,'
      '  mes.trfcodigo,'
      '  mes.mesipi,'
      '  mes.mespis,'
      '  mes.mescofins,'
      '  mes.mespiss,'
      '  mes.mescofinss,'
      '  mes.clbcodigo,'
      '  mes.trmcodigo,'
      '  mes.temcodigo,'
      '  mes.mesprotocolo,'
      '  mes.mesprodutos,'
      '  mes.messervicos,'
      ' mes.tdecodigo'
      'FROM mes limit 0')
    AfterInsert = registroAfterInsert
    Left = 204
    Top = 64
    object registromeschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registromesemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'mesemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registromesregistro: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'mesregistro'
      EditMask = '!99/99/9999;1;_'
    end
    object registrotdfcodigo: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object registrosdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 2
    end
    object registromesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object registromesnumero: TIntegerField
      DisplayLabel = 'N'#250'mero do Controle'
      FieldName = 'mesnumero'
    end
    object registromeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
    object registrotoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object registromesvalor: TFloatField
      FieldName = 'mesvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesdesconto: TFloatField
      FieldName = 'mesdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromestotal: TFloatField
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object registrorefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object registromesfrete: TFloatField
      FieldName = 'mesfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesseguro: TFloatField
      FieldName = 'messeguro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesoutras: TFloatField
      FieldName = 'mesoutras'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesbicm: TFloatField
      FieldName = 'mesbicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesicm: TFloatField
      FieldName = 'mesicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesbicms: TFloatField
      FieldName = 'mesbicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesicms: TFloatField
      FieldName = 'mesicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesipi: TFloatField
      FieldName = 'mesipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromespis: TFloatField
      FieldName = 'mespis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromescofins: TFloatField
      FieldName = 'mescofins'
    end
    object registromespiss: TFloatField
      FieldName = 'mespiss'
    end
    object registromescofinss: TFloatField
      FieldName = 'mescofinss'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object registromesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 50
    end
    object registrotrfcodigo: TStringField
      FieldName = 'trfcodigo'
      Size = 1
    end
    object registrotemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object registroedritem: TIntegerField
      FieldName = 'edritem'
    end
    object registromesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object registromesservicos: TFloatField
      FieldName = 'messervicos'
    end
    object registrotdecodigo: TIntegerField
      FieldName = 'tdecodigo'
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ufs.ufssigla,'
      '  etd.etddoc1,'
      ''
      '  cfgmcfg.cfgetdempresa,'
      ''
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmnfe.cfgnumeronfe,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgmnfe.cfgnumecertif,'
      ''
      '  cfgment.cfgprouso,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      '  cfgmsai.cfgtoeconsumointerno,'
      '  cfgmsai.cfgcompro,'
      '  toe.cstcodigo'
      ''
      'FROM cfgmcfg,'
      '     ufs,'
      '     etd,'
      '     cfgmnfe,'
      '     cfgment,'
      '     cfgmsai,'
      ''
      '     edr,'
      '     cfg,'
      '     toe'
      'WHERE ufs.ufscodigo = edr.ufscodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND cfgmsai.cfgtoeconsumointerno = toe.toecodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1')
    Left = 252
    Top = 62
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
    object cfgcfgtoeconsumointerno: TIntegerField
      FieldName = 'cfgtoeconsumointerno'
    end
    object cfgcfgcompro: TIntegerField
      FieldName = 'cfgcompro'
    end
    object cfgcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
  end
  object consulta: TUniQuery
    Left = 200
    Top = 136
  end
  object itm: TUniQuery
    SQL.Strings = (
      
        'SELECT procodigo, sum(itmquantidade) itmquantidade FROM itm,mes ' +
        'WHERE itm.meschave=mes.meschave AND mesemissao=:mesemissao and  ' +
        'procodigo IN (SELECT procodigo FROM pco) group by procodigo')
    Left = 264
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mesemissao'
        Value = nil
      end>
    object itmprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object itmitmquantidade: TFloatField
      FieldName = 'itmquantidade'
    end
  end
  object pco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcocodigo,'
      '  procodigo,'
      '  pcosubproduto,'
      '  unicodigo,'
      '  pcoquantidade'
      'FROM pco where procodigo=:procodigo')
    Left = 320
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object pcopcocodigo: TIntegerField
      FieldName = 'pcocodigo'
    end
    object pcoprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object pcopcosubproduto: TIntegerField
      FieldName = 'pcosubproduto'
    end
    object pcounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object pcopcoquantidade: TFloatField
      FieldName = 'pcoquantidade'
    end
  end
  object itmpco: TUniQuery
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
      ' WHERE  meschave = :meschave')
    AfterInsert = itmpcoAfterInsert
    Left = 280
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmpcoitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
    end
    object itmpcomeschave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'meschave'
    end
    object itmpcoitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object itmpcotoecodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object itmpcoprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object itmpcocfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Size = 5
    end
    object itmpcocstcodigo: TStringField
      DisplayLabel = 'C'#243'digo CST'
      FieldName = 'cstcodigo'
      Size = 3
    end
    object itmpcopuncodigo: TIntegerField
      DisplayLabel = 'Unidade de Venda'
      FieldName = 'puncodigo'
      Required = True
    end
    object itmpcoitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
    end
    object itmpcoitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
    object itmpcoitmtotal: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmfrete: TFloatField
      DisplayLabel = 'Frete R$'
      FieldName = 'itmfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmseguro: TFloatField
      DisplayLabel = 'Seguro R$'
      FieldName = 'itmseguro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmoutras: TFloatField
      DisplayLabel = 'Outras R$'
      FieldName = 'itmoutras'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmtotalgeral: TFloatField
      DisplayLabel = 'Total Geral R$'
      FieldKind = fkCalculated
      FieldName = 'itmtotalgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object itmpcoitmbicm: TFloatField
      DisplayLabel = 'Base do ICMS'
      FieldName = 'itmbicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoicmcodigo: TStringField
      DisplayLabel = 'Al'#237'quota do ICMS'
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmpcoitmicm: TFloatField
      DisplayLabel = 'Valor do ICMS'
      FieldName = 'itmicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmbicms: TFloatField
      DisplayLabel = 'Base do ICMS Substitui'#231#227'o'
      FieldName = 'itmbicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmaliqicms: TFloatField
      DisplayLabel = 'Al'#237'quota ICMS Substitui'#231#227'o'
      FieldName = 'itmaliqicms'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmpcoitmicms: TFloatField
      DisplayLabel = 'Valor do ICMS Substitui'#231#227'o'
      FieldName = 'itmicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmaliqipi: TFloatField
      DisplayLabel = 'Percentual IPI'
      FieldName = 'itmaliqipi'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmpcoitmipi: TFloatField
      DisplayLabel = 'Valor do IPI'
      FieldName = 'itmipi'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmpcoitmapuipi: TStringField
      FieldName = 'itmapuipi'
      FixedChar = True
      Size = 1
    end
    object itmpcocsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object itmpcounicodigo: TIntegerField
      DisplayLabel = 'Unidade de Compra'
      FieldName = 'unicodigo'
    end
    object itmpcoitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      FixedChar = True
      Size = 1
    end
    object itmpcoitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Size = 6
    end
    object itmpcoitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmpcoceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmpcoitmbipi: TFloatField
      FieldName = 'itmbipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcocspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object itmpcoitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmpcoitmbpis: TFloatField
      FieldName = 'itmbpis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
    end
    object itmpcoitmquantpis: TFloatField
      FieldName = 'itmquantpis'
    end
    object itmpcoitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
    end
    object itmpcocsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object itmpcoitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpcoitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
    end
    object itmpcoitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
    end
    object itmpcoitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
    end
    object itmpcoitmcofins: TFloatField
      FieldName = 'itmcofins'
    end
    object itmpcopcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 60
    end
    object itmpcounicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object itmpcocfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmpcoitmcontendo: TFloatField
      FieldName = 'itmcontendo'
    end
  end
  object pun: TUniQuery
    SQL.Strings = (
      
        'Select puncodigo, punidentificacao,procodigo,pun.unicodigo,pun.t' +
        'uncodigo,punprecoav,punprecoap,punmultiplicador from pun')
    Left = 382
    Top = 20
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
  object toe: TUniQuery
    SQL.Strings = (
      'SELECT toe.toecodigo'
      '     , toe.toeidentificacao'
      '     , toe.toecfopsaida'
      '     , toe.ttocodigo'
      'FROM toe')
    Left = 422
    Top = 24
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
  end
end
