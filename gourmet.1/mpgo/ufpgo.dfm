object fpgo: Tfpgo
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Processa Comanda'
  ClientHeight = 109
  ClientWidth = 404
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
  object orc: TUniQuery
    SQL.Strings = (
      'SELECT orcchave'
      '     , etdcodigo'
      '     , clbcodigo'
      '     , fopcodigo'
      '     , tdecodigo'
      '     , stocodigo'
      '     , moccodigo'
      '     , orcdataabert'
      '     , orchoraabert'
      '     , orcdataencerr'
      '     , orcgeralav'
      '     , orcgeralap'
      '     , orcdescontoav'
      '     , orcdescontoap'
      '     , orctotalav'
      '     , orctotalap'
      '     , orcobs'
      '     , orcdestimpre'
      '     , orcnome'
      '     , orcendereco'
      '     , orctelefone'
      '     , orcdescrpagto'
      '     , orcextenso'
      '     , orcnomeretirou'
      '     , tfpcodigo'
      '     , orcpercdescav'
      '     , orcpercdescap'
      '     , trmcodigo'
      '     , puocodigo'
      '     , edritem'
      '     , clbvendedor'
      '     , eqpcodigo'
      '     , tdfcodigo'
      '     , flacodigo'
      'FROM orc o'
      'WHERE o.orcchave = :orcchave'
      'and o.flacodigo=:flacodigo')
    Left = 20
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object orcorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object orcetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object orcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object orcfopcodigo: TIntegerField
      FieldName = 'fopcodigo'
    end
    object orctdecodigo: TIntegerField
      FieldName = 'tdecodigo'
      Required = True
    end
    object orcstocodigo: TIntegerField
      FieldName = 'stocodigo'
      Required = True
    end
    object orcmoccodigo: TIntegerField
      FieldName = 'moccodigo'
      Required = True
    end
    object orcorcdataabert: TDateField
      FieldName = 'orcdataabert'
      Required = True
    end
    object orcorchoraabert: TTimeField
      FieldName = 'orchoraabert'
    end
    object orcorcdataencerr: TDateField
      FieldName = 'orcdataencerr'
    end
    object orcorcgeralav: TFloatField
      FieldName = 'orcgeralav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorcgeralap: TFloatField
      FieldName = 'orcgeralap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorcdescontoav: TFloatField
      FieldName = 'orcdescontoav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorcdescontoap: TFloatField
      FieldName = 'orcdescontoap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorctotalav: TFloatField
      FieldName = 'orctotalav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorctotalap: TFloatField
      FieldName = 'orctotalap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorcobs: TStringField
      FieldName = 'orcobs'
      Size = 250
    end
    object orcorcdestimpre: TIntegerField
      FieldName = 'orcdestimpre'
    end
    object orcorcnome: TStringField
      FieldName = 'orcnome'
      Size = 50
    end
    object orcorcendereco: TStringField
      FieldName = 'orcendereco'
      Size = 50
    end
    object orcorctelefone: TStringField
      FieldName = 'orctelefone'
    end
    object orcorcdescrpagto: TStringField
      FieldName = 'orcdescrpagto'
      Size = 250
    end
    object orcorcextenso: TStringField
      FieldName = 'orcextenso'
      Size = 2000
    end
    object orcorcnomeretirou: TStringField
      FieldName = 'orcnomeretirou'
      Size = 30
    end
    object orctfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object orcorcpercdescav: TFloatField
      FieldName = 'orcpercdescav'
    end
    object orcorcpercdescap: TFloatField
      FieldName = 'orcpercdescap'
    end
    object orctrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object orcpuocodigo: TIntegerField
      FieldName = 'puocodigo'
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
  end
  object ito: TUniQuery
    SQL.Strings = (
      'SELECT ito.itochave'
      '     , ito.orcchave'
      '     , ito.procodigo'
      '     , ito.puncodigo'
      '     , ito.unicodigo'
      '     , ito.stocodigo'
      '     , ito.tdecodigo'
      '     , ito.itoquantidade'
      '     , ito.itovalorav'
      '     , ito.itodescontoav'
      '     , ito.itototalav'
      '     , ito.itosaldoav'
      '     , ito.itovalorap'
      '     , ito.itodescontoap'
      '     , ito.itototalap'
      '     , ito.itosaldoap'
      '     , ito.itocontendo'
      '     , ito.itoproservico'
      '     , ito.itoprocomple'
      '     , ito.itodataalter'
      '     , ito.itoitem'
      '     , ito.itogint'
      '     , ito.itopercdescap'
      '     , ito.itopercdescav'
      '     , ito.itoinfadprod'
      '     , pro.tpocodigo'
      '     , ito.vrpcodigo'
      'FROM ito'
      '  INNER JOIN pro'
      '    ON ito.procodigo = pro.procodigo'
      'WHERE ito.stocodigo IN (1, 2, 3)'
      'AND orcchave = :orcchave and flacodigo=:flacodigo')
    ReadOnly = True
    Left = 20
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object itoitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itochave'
    end
    object itoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object itoprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object itoitovalorav: TFloatField
      FieldName = 'itovalorav'
    end
    object itoitovalorap: TFloatField
      FieldName = 'itovalorap'
    end
    object itoitototalav: TFloatField
      FieldName = 'itototalav'
    end
    object itoitototalap: TFloatField
      FieldName = 'itototalap'
    end
    object itoitosaldoav: TFloatField
      FieldName = 'itosaldoav'
    end
    object itoitosaldoap: TFloatField
      FieldName = 'itosaldoap'
    end
    object itoitoquantidade: TFloatField
      FieldName = 'itoquantidade'
    end
    object itoitodescontoav: TFloatField
      FieldName = 'itodescontoav'
    end
    object itoitodescontoap: TFloatField
      FieldName = 'itodescontoap'
    end
    object itounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object itopuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object itotdecodigo: TIntegerField
      FieldName = 'tdecodigo'
    end
    object itostocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
    object itoitoitem: TIntegerField
      FieldName = 'itoitem'
      Required = True
    end
    object itoitopercdescav: TFloatField
      FieldName = 'itopercdescav'
    end
    object itoitopercdescap: TFloatField
      FieldName = 'itopercdescap'
    end
    object itoitoprocomple: TStringField
      FieldName = 'itoprocomple'
      Size = 250
    end
    object itoitogint: TStringField
      FieldName = 'itogint'
    end
    object itoitoproservico: TStringField
      FieldName = 'itoproservico'
      Size = 1000
    end
    object itoitoinfadprod: TStringField
      FieldName = 'itoinfadprod'
      Size = 500
    end
    object itoitocontendo: TFloatField
      FieldName = 'itocontendo'
    end
    object itotpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object itovrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
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
    Left = 60
    Top = 57
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
    Left = 56
    Top = 1
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
  object mor: TUniQuery
    SQL.Strings = (
      'SELECT m.morchave'
      '     , m.orcchave'
      '     , m.meschave'
      '     , m.flacodigo'
      'FROM mor m'
      'WHERE m.orcchave = :orcchave')
    Left = 116
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object mororcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object mormeschave: TIntegerField
      FieldName = 'meschave'
    end
    object morflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
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
    Left = 112
    Top = 56
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
  end
end
