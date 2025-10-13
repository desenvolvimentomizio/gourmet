object fdpm: Tfdpm
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Registro de Troca ou Devolu'#231#227'o'
  ClientHeight = 221
  ClientWidth = 421
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
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgmcfg.cfgetdempresa'
      '     , etd.etddoc1'
      '     , edr.ufscodigo'
      '     , cfgmnfe.cfgserienfe'
      '     , cfgmspd.cfgpccvenda'
      '     , cfgmsai.cfgdefinetoeatendimento'
      '     , cfgmsai.cfgtoemesfora'
      '     , cfgmsai.cfgtoemesinte'
      '     , cfgmsai.cfgtoetransflafora'
      '     , cfgmsai.cfgtoetransflainte'
      '     , cfgmsai.cfgtoedevolconsum'
      '     , cfgmsai.cfgproinativsaldozero'
      ''
      'FROM cfg'
      '   , cfgmcfg'
      '   , cfgmnfe'
      '   , cfgmspd'
      '   , cfgmsai'
      '   , etd'
      '   , edr'
      'WHERE cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1')
    ReadOnly = True
    Left = 192
    Top = 32
    object cfgufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 2
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 5
    end
    object cfgcfgpccvenda: TStringField
      FieldName = 'cfgpccvenda'
      Size = 60
    end
    object cfgcfgdefinetoeatendimento: TIntegerField
      DisplayLabel = 'Define TOE no Atendimento'
      FieldName = 'cfgdefinetoeatendimento'
      Required = True
    end
    object cfgcfgtoemesfora: TIntegerField
      FieldName = 'cfgtoemesfora'
    end
    object cfgcfgtoemesinte: TIntegerField
      FieldName = 'cfgtoemesinte'
    end
    object cfgcfgtoetransflainte: TIntegerField
      FieldName = 'cfgtoetransflainte'
    end
    object cfgcfgtoetransflafora: TIntegerField
      FieldName = 'cfgtoetransflafora'
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      ReadOnly = True
    end
    object cfgcfgtoedevolconsum: TIntegerField
      FieldName = 'cfgtoedevolconsum'
      ReadOnly = True
    end
    object cfgcfgproinativsaldozero: TIntegerField
      FieldName = 'cfgproinativsaldozero'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT meschave'
      '     , etdcodigo'
      '     , clbcodigo'
      '     , mesemissao'
      '     , mesregistro'
      '     , tdfcodigo'
      '     , sdecodigo'
      '     , messerie'
      '     , mesnumero'
      '     , meschavenfe'
      '     , toecodigo'
      '     , mesvalor'
      '     , mesdesconto'
      '     , mestotal'
      '     , tfpcodigo'
      '     , refcodigo'
      '     , mesfrete'
      '     , messeguro'
      '     , mesoutras'
      '     , mesbicm'
      '     , mesicm'
      '     , mesbicms'
      '     , mesicms'
      '     , mesipi'
      '     , mespis'
      '     , mescofins'
      '     , mespiss'
      '     , mescofinss'
      '     , trmcodigo'
      '     , mesprotocolo'
      '     , trfcodigo'
      '     , temcodigo'
      '     , edritem'
      '     , messervicos'
      '     , mesprodutos'
      '     , clbvendedor'
      '     , eqpcodigo'
      '     , flacodigo'
      'FROM mes m'
      'LIMIT 2')
    Left = 188
    Top = 88
    object mesmeschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object mesetdcodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdcodigo'
      Required = True
    end
    object mesclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object mesmesemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'mesemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object mesmesregistro: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'mesregistro'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object mestdfcodigo: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object messdecodigo: TStringField
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object mesmesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Required = True
      Size = 5
    end
    object mesmesnumero: TIntegerField
      FieldName = 'mesnumero'
      Required = True
    end
    object mesmeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
    object mestoecodigo: TIntegerField
      FieldName = 'toecodigo'
      Required = True
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
    object mesmesfrete: TFloatField
      FieldName = 'mesfrete'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesseguro: TFloatField
      FieldName = 'messeguro'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesoutras: TFloatField
      FieldName = 'mesoutras'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesbicm: TFloatField
      FieldName = 'mesbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesicm: TFloatField
      FieldName = 'mesicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesbicms: TFloatField
      FieldName = 'mesbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmesicms: TFloatField
      FieldName = 'mesicms'
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
    object mesmespis: TFloatField
      FieldName = 'mespis'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mesmescofins: TFloatField
      FieldName = 'mescofins'
      Required = True
    end
    object mesmespiss: TFloatField
      FieldName = 'mespiss'
      Required = True
    end
    object mesmescofinss: TFloatField
      FieldName = 'mescofinss'
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
    end
    object mesmesservicos: TFloatField
      FieldName = 'messervicos'
    end
    object mesmesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object mesclbvendedor: TIntegerField
      FieldName = 'clbvendedor'
    end
    object meseqpcodigo: TIntegerField
      FieldName = 'eqpcodigo'
    end
    object mesflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT itmchave'
      '     , meschave'
      '     , itmitem'
      '     , procodigo'
      '     , cstcodigo'
      '     , procodigoori'
      '     , pronomeori'
      '     , itmdesccomple'
      '     , itmquantidade'
      '     , itmvalor'
      '     , itmdesconto'
      '     , itmtotal'
      '     , itmmovifisico'
      '     , toecodigo'
      '     , cfocfop'
      '     , itmbicm'
      '     , icmcodigo'
      '     , itmaliqicm'
      '     , itmicm'
      '     , itmbicms'
      '     , itmaliqicms'
      '     , itmicms'
      '     , itmapuipi'
      '     , csicodigo'
      '     , ceicodigo'
      '     , itmbipi'
      '     , itmaliqipi'
      '     , itmipi'
      '     , cspcodigo'
      '     , itmbpis'
      '     , itmaliqpis'
      '     , itmpis'
      '     , itmquantpis'
      '     , itmaliqpisvalor'
      '     , itmbcofins'
      '     , csfcodigo'
      '     , itmaliqcofins'
      '     , itmquantcofins'
      '     , itmaliqcofinsvalor'
      '     , itmcofins'
      '     , pcccodigo'
      '     , unicodigo'
      '     , puncodigo'
      '     , progtin'
      '     , itmcontendo'
      '     , cfocfopdestinacao'
      '     , unicodigobase'
      '     , itmoutras'
      '     , itmseguro'
      '     , itmfrete'
      '     , itmcusto'
      '     , itmtipodesc'
      '     , itminfadprod'
      '     , itmproservico'
      '     , flacodigo'
      'FROM itm i'
      'LIMIT 2')
    Left = 192
    Top = 140
    object itmitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itmchave'
    end
    object itmmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Nr. Item'
      FieldName = 'itmitem'
      Required = True
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
      Required = True
    end
    object itmcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object itmprocodigoori: TStringField
      DisplayLabel = 'Cod.Forn.'
      FieldName = 'procodigoori'
      Size = 30
    end
    object itmpronomeori: TStringField
      DisplayLabel = 'Nome do Produto para o Fornecedor'
      FieldName = 'pronomeori'
      Size = 80
    end
    object itmitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmvalor: TFloatField
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmdesconto: TFloatField
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object itmcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmitmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
    end
    object itmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmitmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
    end
    object itmitmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
    end
    object itmitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
      Required = True
    end
    object itmitmicms: TFloatField
      FieldName = 'itmicms'
      Required = True
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
    end
    object itmitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
    end
    object itmitmipi: TFloatField
      FieldName = 'itmipi'
      Required = True
    end
    object itmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmitmbpis: TFloatField
      FieldName = 'itmbpis'
      Required = True
    end
    object itmitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmitmbcofins: TFloatField
      FieldName = 'itmbcofins'
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
    object itmunicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object itmpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object itmprogtin: TStringField
      FieldName = 'progtin'
    end
    object itmitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmcfocfopdestinacao: TStringField
      DisplayLabel = 'CFOP Destino'
      FieldName = 'cfocfopdestinacao'
      Required = True
      Size = 5
    end
    object itmunicodigobase: TIntegerField
      DisplayLabel = 'Un Base'
      FieldName = 'unicodigobase'
      Required = True
    end
    object itmitmoutras: TFloatField
      FieldName = 'itmoutras'
    end
    object itmitmseguro: TFloatField
      FieldName = 'itmseguro'
    end
    object itmitmfrete: TFloatField
      FieldName = 'itmfrete'
    end
    object itmitmcusto: TFloatField
      FieldName = 'itmcusto'
    end
    object itmitmtipodesc: TIntegerField
      FieldName = 'itmtipodesc'
    end
    object itmitminfadprod: TStringField
      FieldName = 'itminfadprod'
      Size = 500
    end
    object itmitmproservico: TStringField
      FieldName = 'itmproservico'
      Size = 1000
    end
    object itmflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object finalizador: TTimer
    Enabled = False
    Interval = 10
    OnTimer = finalizadorTimer
    Left = 268
    Top = 40
  end
  object consulta: TUniQuery
    Left = 88
    Top = 80
  end
  object orc: TUniQuery
    SQL.Strings = (
      'SELECT meschave '
      '     , etdcodigo'
      '     , clbcodigo'
      '     , tdecodigo'
      '     , mesregistro '
      '     , mesvalor '
      '     , mestotal '
      '     , mesdesconto '
      '     , mesobs'
      '     , tfpcodigo'
      '     , trmcodigo'
      '     , edritem'
      '     , clbvendedor'
      '     , eqpcodigo'
      '     , tdfcodigo'
      '     , flacodigo'
      '     , messerie'
      '     , meschavenfe'
      '     , mesnumero'
      '     , mesemissao'
      ''
      '     '
      'FROM mes '
      ' WHERE mes.meschave =:meschave')
    Left = 28
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object orcetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object orcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object orctdecodigo: TIntegerField
      FieldName = 'tdecodigo'
      Required = True
    end
    object orctfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object orctrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object orcedritem: TIntegerField
      FieldName = 'edritem'
    end
    object orcclbvendedor: TIntegerField
      FieldName = 'clbvendedor'
    end
    object orceqpcodigo: TIntegerField
      FieldName = 'eqpcodigo'
    end
    object orctdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object orcflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object orcmeschave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'meschave'
    end
    object orcmesregistro: TDateField
      FieldName = 'mesregistro'
      Required = True
    end
    object orcmesvalor: TFloatField
      FieldName = 'mesvalor'
      Required = True
    end
    object orcmesdesconto: TFloatField
      FieldName = 'mesdesconto'
      Required = True
    end
    object orcmestotal: TFloatField
      FieldName = 'mestotal'
      Required = True
    end
    object orcmesobs: TStringField
      FieldName = 'mesobs'
      Size = 50
    end
    object orcmesserie: TStringField
      FieldName = 'messerie'
      Size = 5
    end
    object orcmeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
    object orcmesnumero: TIntegerField
      FieldName = 'mesnumero'
    end
    object orcmesemissao: TDateField
      FieldName = 'mesemissao'
      Required = True
    end
  end
  object ito: TUniQuery
    SQL.Strings = (
      'SELECT '
      '  itm.itmchave,'
      '  itm.meschave,'
      '  itm.procodigo,'
      '  itm.puncodigo,'
      '  itm.unicodigo,'
      '  itm.itmquantidade,'
      '  itm.itmcontendo,'
      '  itm.itmproservico,'
      '  itm.itmitem,'
      '  idt.idtquantidade,'
      '  idt.idtvalor,'
      '  idt.idtdesconto,'
      '  idt.idttotal,'
      '  itm.progtin'
      ''
      'FROM itm, idt'
      'WHERE itm.meschave = idt.meschave'
      'AND idt.itmchave=itm.itmchave and idt.meschave=:meschave')
    ReadOnly = True
    Left = 28
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itoitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itmchave'
    end
    object itomeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object itoprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object itopuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itounicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object itoitmquantidade: TFloatField
      FieldName = 'itmquantidade'
      Required = True
    end
    object itoitmcontendo: TFloatField
      FieldName = 'itmcontendo'
      Required = True
    end
    object itoitmproservico: TStringField
      FieldName = 'itmproservico'
      Size = 1000
    end
    object itoitmitem: TIntegerField
      FieldName = 'itmitem'
      Required = True
    end
    object itoidtquantidade: TFloatField
      FieldName = 'idtquantidade'
      ReadOnly = True
      Required = True
    end
    object itoidtvalor: TFloatField
      FieldName = 'idtvalor'
      ReadOnly = True
      Required = True
    end
    object itoidtdesconto: TFloatField
      FieldName = 'idtdesconto'
      ReadOnly = True
      Required = True
    end
    object itoidttotal: TFloatField
      FieldName = 'idttotal'
      ReadOnly = True
      Required = True
    end
    object itoprogtin: TStringField
      FieldName = 'progtin'
    end
  end
  object itl: TUniQuery
    SQL.Strings = (
      'SELECT i.itlchave'
      '     , i.clbcodigo'
      '     , i.itmchave'
      '     , i.itlpercentual'
      'FROM itl i'
      'LIMIT 2')
    Left = 244
    Top = 92
    object itlclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object itlitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object itlitlpercentual: TFloatField
      FieldName = 'itlpercentual'
    end
  end
  object imv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  imv.imvchave,'
      '  imv.itmchave,'
      '  imv.vrpcodigo,'
      '  imv.imvquantidade'
      'FROM imv'
      'WHERE imv.imvchave = :imvchave')
    Left = 320
    Top = 61
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'imvchave'
        Value = nil
      end>
    object imvimvchave: TIntegerField
      FieldName = 'imvchave'
    end
    object imvitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object imvvrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object imvimvquantidade: TFloatField
      FieldName = 'imvquantidade'
    end
  end
  object ioc: TUniQuery
    SQL.Strings = (
      'SELECT i.imcchave'
      '     , i.clbcodigo'
      '     , i.itmchave'
      '     , i.imcpercentual'
      'FROM imc i'
      'WHERE i.itmchave = :itmchave')
    Left = 32
    Top = 141
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end>
    object iocimcchave: TIntegerField
      FieldName = 'imcchave'
    end
    object iocclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object iocitmchave: TIntegerField
      FieldName = 'itmchave'
      Required = True
    end
    object iocimcpercentual: TFloatField
      FieldName = 'imcpercentual'
      Required = True
    end
  end
  object imc: TUniQuery
    SQL.Strings = (
      'SELECT i.imcchave'
      '     , i.clbcodigo'
      '     , i.itmchave'
      '     , i.imcpercentual'
      'FROM imc i'
      'WHERE i.imcchave = :imcchave')
    Left = 320
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'imcchave'
        Value = nil
      end>
    object imcimcchave: TIntegerField
      FieldName = 'imcchave'
    end
    object imcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object imcitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object imcimcpercentual: TFloatField
      FieldName = 'imcpercentual'
    end
  end
  object mdt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mdtchave,'
      '  mdtregistro,'
      '  clbcodigo,'
      '  meschavedestino'
      'FROM mdt where mdtchave=:mdtchave')
    Left = 88
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdtchave'
        Value = nil
      end>
    object mdtmdtchave: TIntegerField
      FieldName = 'mdtchave'
    end
    object mdtmdtregistro: TDateField
      FieldName = 'mdtregistro'
    end
    object mdtclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mdtmeschavedestino: TIntegerField
      FieldName = 'meschavedestino'
    end
  end
  object dfr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dfrchave,'
      '  etdcodigo,'
      '  tdfcodigo,'
      '  dfrchavenfe,'
      '  dfrserie,'
      '  dfrnumero,'
      '  dfremissao,'
      '  edritem,'
      '  meschave'
      'FROM dfr where meschave=:meschave')
    Left = 272
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dfrdfrchave: TIntegerField
      FieldName = 'dfrchave'
    end
    object dfretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object dfrtdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object dfrdfrchavenfe: TStringField
      FieldName = 'dfrchavenfe'
      Size = 60
    end
    object dfrdfrserie: TStringField
      FieldName = 'dfrserie'
      Size = 3
    end
    object dfrdfrnumero: TIntegerField
      FieldName = 'dfrnumero'
    end
    object dfrdfremissao: TDateField
      FieldName = 'dfremissao'
    end
    object dfredritem: TIntegerField
      FieldName = 'edritem'
    end
    object dfrmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
  end
  object idt: TUniQuery
    SQL.Strings = (
      'SELECT distinct meschave FROM idt where mdtchave=:mdtchave')
    Left = 136
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdtchave'
        Value = nil
      end>
    object idtmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object saldo: TUniQuery
    Left = 329
    Top = 137
  end
end
