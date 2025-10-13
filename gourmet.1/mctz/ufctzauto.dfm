object fctzauto: Tfctzauto
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Contabiliza'#231#227'o'
  ClientHeight = 267
  ClientWidth = 654
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
  object mlg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mlgchave,'
      '  clbcodigo,'
      '  mlgsituacao,'
      '  flacodigo,'
      '  mlgdata,'
      '  ltechave'
      'FROM mlg where ltechave=:ltechave')
    Left = 40
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object mlgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object mlgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mlgmlgsituacao: TIntegerField
      FieldName = 'mlgsituacao'
    end
    object mlgflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mlgmlgdata: TDateField
      FieldName = 'mlgdata'
    end
    object mlgltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object rmg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmgchave,'
      '  mlgchave,'
      '  phgcodigo,'
      '  rmgdata,'
      '  rmgvalor,'
      '  rmgcomplemento,'
      '  pcgcodigo,'
      '  cedcodigo,'
      '  rmgcompetencia,'
      '  rmginclusao,'
      '  rmgtipo'
      'FROM rmg where mlgchave=:mlgchave')
    Left = 80
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end>
    object rmgrmgchave: TIntegerField
      FieldName = 'rmgchave'
    end
    object rmgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object rmgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object rmgrmgdata: TDateField
      FieldName = 'rmgdata'
    end
    object rmgrmgvalor: TFloatField
      FieldName = 'rmgvalor'
    end
    object rmgrmgcomplemento: TStringField
      FieldName = 'rmgcomplemento'
      Size = 50
    end
    object rmgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object rmgcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rmgrmgcompetencia: TDateField
      FieldName = 'rmgcompetencia'
    end
    object rmgrmginclusao: TDateTimeField
      FieldName = 'rmginclusao'
    end
    object rmgrmgtipo: TIntegerField
      FieldName = 'rmgtipo'
    end
  end
  object pct: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tdg.tdgcodigo,'
      '  pct.cfgcodigo,'
      '  pct.flacodigo,'
      '  pct.togorigctacre,'
      '  pct.togorigctadeb,'
      '  pct.pcthistpadrao,'
      '  pct.pctcampoval,'
      '  pct.pctcampohis,'
      '  tog_cre.togcampo AS togcampo_cre,'
      '  tog_cre.togtabela AS togtabela_cre, '
      '  tog_deb.togcampo AS togcampo_deb,'
      '  tog_deb.togtabela as togtabela_deb,'
      '  pct.mdacodigo'
      'FROM pct'
      '  INNER JOIN tdg'
      '    ON pct.tdgcodigo = tdg.tdgcodigo'
      '  INNER JOIN tog tog_cre'
      '    ON pct.togorigctacre = tog_cre.togcodigo'
      '  INNER JOIN tog tog_deb'
      '    ON tog_deb.togcodigo = pct.togorigctadeb'
      'where tdg.tdgcodigo=:tdgcodigo')
    Left = 120
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdgcodigo'
        Value = nil
      end>
    object pcttdgcodigo: TIntegerField
      FieldName = 'tdgcodigo'
    end
    object pctcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object pctflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object pcttogorigctacre: TIntegerField
      FieldName = 'togorigctacre'
    end
    object pcttogorigctadeb: TIntegerField
      FieldName = 'togorigctadeb'
    end
    object pctpcthistpadrao: TIntegerField
      FieldName = 'pcthistpadrao'
    end
    object pctpctcampoval: TStringField
      FieldName = 'pctcampoval'
      Size = 64000
    end
    object pctpctcampohis: TStringField
      FieldName = 'pctcampohis'
      Size = 50
    end
    object pcttogcampo_cre: TStringField
      FieldName = 'togcampo_cre'
      Size = 50
    end
    object pcttogtabela_cre: TStringField
      FieldName = 'togtabela_cre'
      Size = 50
    end
    object pcttogcampo_deb: TStringField
      FieldName = 'togcampo_deb'
      Size = 50
    end
    object pcttogtabela_deb: TStringField
      FieldName = 'togtabela_deb'
      Size = 50
    end
    object pctmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object consulta: TUniQuery
    Left = 240
    Top = 16
  end
  object sqlval: TUniQuery
    Left = 160
    Top = 16
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dtlchave,'
      '  ltechave,'
      '  cedcodigo,'
      '  dtlvalor,'
      '  mdacodigo'
      'FROM dtl where ltechave=:ltechave;')
    Left = 200
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
  end
  object pcb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcbchave,'
      '  ccochave,'
      '  pcgcodigo,'
      '  pcbvalor,'
      '  phgcodigo,'
      '  pcbcomplhist'
      'FROM pcb where ccochave=:ccochave')
    Left = 40
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object pcbpcbchave: TIntegerField
      FieldName = 'pcbchave'
    end
    object pcbccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object pcbpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcbpcbvalor: TFloatField
      FieldName = 'pcbvalor'
    end
    object pcbphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object pcbpcbcomplhist: TStringField
      FieldName = 'pcbcomplhist'
      Size = 50
    end
  end
  object prg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prgchave,'
      '  pcbchave,'
      '  prgvalor,'
      '  prgtipo,'
      '  ccgcodigo,'
      '  prgpercentual,'
      '  pcgcodigo'
      'FROM prg where pcbchave=:pcbchave')
    Left = 80
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcbchave'
        Value = nil
      end>
    object prgprgchave: TIntegerField
      FieldName = 'prgchave'
    end
    object prgpcbchave: TIntegerField
      FieldName = 'pcbchave'
    end
    object prgprgvalor: TFloatField
      FieldName = 'prgvalor'
    end
    object prgprgtipo: TIntegerField
      FieldName = 'prgtipo'
    end
    object prgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object prgprgpercentual: TFloatField
      FieldName = 'prgpercentual'
    end
    object prgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
  object drg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  drgchave,'
      '  mlgchave,'
      '  drgvalor,'
      '  drgtipo,'
      '  ccgcodigo,'
      '  drgpercentual,'
      '  pcgcodigo'
      'FROM drg where mlgchave=:mlgchave')
    Left = 120
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end>
    object drgdrgchave: TIntegerField
      FieldName = 'drgchave'
    end
    object drgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object drgdrgvalor: TFloatField
      FieldName = 'drgvalor'
    end
    object drgdrgtipo: TIntegerField
      FieldName = 'drgtipo'
    end
    object drgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object drgdrgpercentual: TFloatField
      FieldName = 'drgpercentual'
    end
    object drgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
      Required = True
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      
        'select ccgcodigo,cfgctbphgchdevol,cfgctbphgdeposito,cfgctbphgest' +
        'orno,cfgctbphgresgch,cfgctbpcgchemcob from cfgmctb')
    Left = 160
    Top = 64
  end
  object cfgmctb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgctbcliindiv,'
      '  cfgctbcli,'
      '  cfgctbforindiv,'
      '  cfgctbfor,'
      '  ccgcodigo,'
      '  cfgctbmodo,'
      '  cfgctbphgchdevol,'
      '  cfgctbphgdeposito,'
      '  cfgctbphgestorno,'
      '  cfgctbphgresgch,'
      '  cfgctbpcgchemcob,'
      '  cfgctbpcgrecebimentos,'
      '  cfgctbpcgpagamentos,'
      '  cfgctbpcgpgtodesc,'
      '  cfgctbpcgpgtomulta,'
      '  cfgctbpcgpgtojuros,'
      '  cfgctbpcgrctodesc,'
      '  cfgctbpcgrctomulta,'
      '  cfgctbpcgrctojuros,'
      '  cfgctbpcgicmarecu,'
      '  cfgctbpcgipiarecu,'
      '  cfgctbpcgpisarecu,'
      '  cfgctbpcgcofinsarecu,'
      '  cfgctbpcgicmsarecu,'
      '  cfgctbpcgicmareco,'
      '  cfgctbpcgipiareco,'
      '  cfgctbpcgpisareco,'
      '  cfgctbpcgcofinsareco,'
      '  cfgctbpcgcsllareco,'
      '  cfgctbpcgcsrfareco,'
      '  cfgctbpcgirpjareco,'
      '  cfgctbpcgicm,'
      '  cfgctbpcgipi,'
      '  cfgctbpcgpis,'
      '  cfgctbpcgcofins,'
      '  cfgctbpcgcsll,'
      '  cfgctbpcgcsrf,'
      '  cfgctbpcgirpj,'
      '  cfgctbusaccg,'
      '  cfgctbphgpgtodesc,'
      '  cfgctbphgpgtomulta,'
      '  cfgctbphgpgtojuros,'
      '  cfgctbphgrctodesc,'
      '  cfgctbphgrctomulta,'
      '  cfgctbphgrctojuros,'
      '  cfgctbphgrecebimentos,'
      '  cfgctbphgpagamentos,'
      '  cfgctbpcgvnddesccom,'
      '  cfgctbpcgcprdesccom,'
      '  cfgctbpcgsrvdesccom,'
      '  cfgctbphgvnddesccom,'
      '  cfgctbphgcprdesccom,'
      '  cfgctbphgsrvdesccom,'
      '  cfgctbphgvendas,'
      '  cfgctbphgcompras,'
      '  cfgctbphgservicos'
      ''
      'FROM cfgmctb')
    Left = 208
    Top = 72
    object cfgmctbcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object cfgmctbcfgctbcliindiv: TIntegerField
      FieldName = 'cfgctbcliindiv'
      Required = True
    end
    object cfgmctbcfgctbcli: TIntegerField
      FieldName = 'cfgctbcli'
    end
    object cfgmctbcfgctbforindiv: TIntegerField
      FieldName = 'cfgctbforindiv'
      Required = True
    end
    object cfgmctbcfgctbfor: TIntegerField
      FieldName = 'cfgctbfor'
    end
    object cfgmctbccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
      Required = True
    end
    object cfgmctbcfgctbmodo: TIntegerField
      FieldName = 'cfgctbmodo'
      Required = True
    end
    object cfgmctbcfgctbphgchdevol: TIntegerField
      FieldName = 'cfgctbphgchdevol'
    end
    object cfgmctbcfgctbphgdeposito: TIntegerField
      FieldName = 'cfgctbphgdeposito'
    end
    object cfgmctbcfgctbphgestorno: TIntegerField
      FieldName = 'cfgctbphgestorno'
    end
    object cfgmctbcfgctbphgresgch: TIntegerField
      FieldName = 'cfgctbphgresgch'
    end
    object cfgmctbcfgctbpcgchemcob: TIntegerField
      FieldName = 'cfgctbpcgchemcob'
    end
    object cfgmctbcfgctbpcgrecebimentos: TIntegerField
      FieldName = 'cfgctbpcgrecebimentos'
    end
    object cfgmctbcfgctbpcgpagamentos: TIntegerField
      FieldName = 'cfgctbpcgpagamentos'
    end
    object cfgmctbcfgctbpcgpgtodesc: TIntegerField
      FieldName = 'cfgctbpcgpgtodesc'
    end
    object cfgmctbcfgctbpcgpgtomulta: TIntegerField
      FieldName = 'cfgctbpcgpgtomulta'
    end
    object cfgmctbcfgctbpcgpgtojuros: TIntegerField
      FieldName = 'cfgctbpcgpgtojuros'
    end
    object cfgmctbcfgctbpcgrctodesc: TIntegerField
      FieldName = 'cfgctbpcgrctodesc'
    end
    object cfgmctbcfgctbpcgrctomulta: TIntegerField
      FieldName = 'cfgctbpcgrctomulta'
    end
    object cfgmctbcfgctbpcgrctojuros: TIntegerField
      FieldName = 'cfgctbpcgrctojuros'
    end
    object cfgmctbcfgctbpcgicmarecu: TIntegerField
      FieldName = 'cfgctbpcgicmarecu'
    end
    object cfgmctbcfgctbpcgipiarecu: TIntegerField
      FieldName = 'cfgctbpcgipiarecu'
    end
    object cfgmctbcfgctbpcgpisarecu: TIntegerField
      FieldName = 'cfgctbpcgpisarecu'
    end
    object cfgmctbcfgctbpcgcofinsarecu: TIntegerField
      FieldName = 'cfgctbpcgcofinsarecu'
    end
    object cfgmctbcfgctbpcgicmsarecu: TIntegerField
      FieldName = 'cfgctbpcgicmsarecu'
    end
    object cfgmctbcfgctbpcgicmareco: TIntegerField
      FieldName = 'cfgctbpcgicmareco'
    end
    object cfgmctbcfgctbpcgipiareco: TIntegerField
      FieldName = 'cfgctbpcgipiareco'
    end
    object cfgmctbcfgctbpcgpisareco: TIntegerField
      FieldName = 'cfgctbpcgpisareco'
    end
    object cfgmctbcfgctbpcgcofinsareco: TIntegerField
      FieldName = 'cfgctbpcgcofinsareco'
    end
    object cfgmctbcfgctbpcgcsllareco: TIntegerField
      FieldName = 'cfgctbpcgcsllareco'
    end
    object cfgmctbcfgctbpcgcsrfareco: TIntegerField
      FieldName = 'cfgctbpcgcsrfareco'
    end
    object cfgmctbcfgctbpcgirpjareco: TIntegerField
      FieldName = 'cfgctbpcgirpjareco'
    end
    object cfgmctbcfgctbpcgicm: TIntegerField
      FieldName = 'cfgctbpcgicm'
    end
    object cfgmctbcfgctbpcgipi: TIntegerField
      FieldName = 'cfgctbpcgipi'
    end
    object cfgmctbcfgctbpcgpis: TIntegerField
      FieldName = 'cfgctbpcgpis'
    end
    object cfgmctbcfgctbpcgcofins: TIntegerField
      FieldName = 'cfgctbpcgcofins'
    end
    object cfgmctbcfgctbpcgcsll: TIntegerField
      FieldName = 'cfgctbpcgcsll'
    end
    object cfgmctbcfgctbpcgcsrf: TIntegerField
      FieldName = 'cfgctbpcgcsrf'
    end
    object cfgmctbcfgctbpcgirpj: TIntegerField
      FieldName = 'cfgctbpcgirpj'
    end
    object cfgmctbcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
      Required = True
    end
    object cfgmctbcfgctbphgpgtodesc: TIntegerField
      FieldName = 'cfgctbphgpgtodesc'
    end
    object cfgmctbcfgctbphgpgtomulta: TIntegerField
      FieldName = 'cfgctbphgpgtomulta'
    end
    object cfgmctbcfgctbphgpgtojuros: TIntegerField
      FieldName = 'cfgctbphgpgtojuros'
    end
    object cfgmctbcfgctbphgrctodesc: TIntegerField
      FieldName = 'cfgctbphgrctodesc'
    end
    object cfgmctbcfgctbphgrctomulta: TIntegerField
      FieldName = 'cfgctbphgrctomulta'
    end
    object cfgmctbcfgctbphgrctojuros: TIntegerField
      FieldName = 'cfgctbphgrctojuros'
    end
    object cfgmctbcfgctbphgrecebimentos: TIntegerField
      FieldName = 'cfgctbphgrecebimentos'
    end
    object cfgmctbcfgctbphgpagamentos: TIntegerField
      FieldName = 'cfgctbphgpagamentos'
    end
    object cfgmctbcfgctbpcgvnddesccom: TIntegerField
      FieldName = 'cfgctbpcgvnddesccom'
    end
    object cfgmctbcfgctbpcgcprdesccom: TIntegerField
      FieldName = 'cfgctbpcgcprdesccom'
    end
    object cfgmctbcfgctbpcgsrvdesccom: TIntegerField
      FieldName = 'cfgctbpcgsrvdesccom'
    end
    object cfgmctbcfgctbphgvnddesccom: TIntegerField
      FieldName = 'cfgctbphgvnddesccom'
    end
    object cfgmctbcfgctbphgsrvdesccom: TIntegerField
      FieldName = 'cfgctbphgsrvdesccom'
    end
    object cfgmctbcfgctbphgcprdesccom: TIntegerField
      FieldName = 'cfgctbphgcprdesccom'
    end
    object cfgmctbcfgctbphgvendas: TIntegerField
      FieldName = 'cfgctbphgvendas'
    end
    object cfgmctbcfgctbphgcompras: TIntegerField
      FieldName = 'cfgctbphgcompras'
    end
    object cfgmctbcfgctbphgservicos: TIntegerField
      FieldName = 'cfgctbphgservicos'
    end
  end
  object mfi: TUniQuery
    SQL.Strings = (
      'SELECT mfi.tmfcodigo'
      '  , mfi.mfivalor'
      '  , rfi.etdcodigo'
      '  , rfi.rfihistorico'
      '  , mfi.mfidata'
      '  , rfi.tfdcodigo'
      '  , rfi.flacodigo'
      '  , rfi.titcodigo'
      'FROM mlt'
      '   INNER JOIN mfi  ON mlt.mfichave = mfi.mfichave'
      '   INNER JOIN rfi  ON mfi.rfichave = rfi.rfichave'
      '  WHERE mlt.ltechave=:ltechave')
    Left = 304
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfitfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object mfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mfititcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
  end
  object etv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etvcodigo,'
      '  etdcodigo,'
      '  tvicodigo,'
      '  pcgcodigo'
      'FROM etv'
      'where etdcodigo=:etdcodigo and tvicodigo=:tvicodigo')
    Left = 304
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tvicodigo'
        Value = nil
      end>
    object etvetvcodigo: TIntegerField
      FieldName = 'etvcodigo'
    end
    object etvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etvtvicodigo: TIntegerField
      FieldName = 'tvicodigo'
    end
    object etvpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
  object tit: TUniQuery
    Left = 352
    Top = 120
  end
  object pcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcrchave,'
      '  titcodigo,'
      '  pcgcodigo,'
      '  pcrvalor,'
      '  phgcodigo,'
      '  pcrcomplhist'
      'FROM pcr'
      '  where titcodigo=:titcodigo')
    Left = 384
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object pcrpcrchave: TIntegerField
      FieldName = 'pcrchave'
    end
    object pcrtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object pcrpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcrpcrvalor: TFloatField
      FieldName = 'pcrvalor'
    end
    object pcrphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object pcrpcrcomplhist: TStringField
      FieldName = 'pcrcomplhist'
      Size = 50
    end
  end
  object prr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prrchave,'
      '  pcrchave,'
      '  prrvalor,'
      '  prrtipo,'
      '  ccgcodigo,'
      '  pcgcodigo,'
      '  prrpercentual'
      'FROM prr where pcrchave=:pcrchave')
    Left = 80
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcrchave'
        Value = nil
      end>
    object prrprrchave: TIntegerField
      FieldName = 'prrchave'
    end
    object prrpcrchave: TIntegerField
      FieldName = 'pcrchave'
    end
    object prrprrvalor: TFloatField
      FieldName = 'prrvalor'
    end
    object prrprrtipo: TIntegerField
      FieldName = 'prrtipo'
    end
    object prrccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object prrprrpercentual: TFloatField
      FieldName = 'prrpercentual'
    end
    object prrpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  otb.pcgcodigo,'
      '  otb.phgcodigo,'
      '  etv.pcgcodigo AS pcgentidade,'
      '  sum(itm.itmtotal) as itmtotal,'
      '  sum(itm.itmdesconto) as itmdesconto,'
      '  mes.mesregistro'
      'FROM itm'
      '  INNER JOIN mes'
      '    ON itm.meschave = mes.meschave'
      '  INNER JOIN toe'
      '    ON itm.toecodigo = toe.toecodigo'
      '  INNER JOIN otb'
      '    ON toe.otbcodigo = otb.otbcodigo'
      '  INNER JOIN etd'
      '    ON mes.etdcodigo = etd.etdcodigo'
      '  LEFT OUTER JOIN etv'
      '    ON etv.etdcodigo = etd.etdcodigo'
      '  where mes.meschave=:meschave'
      '  group by otb.pcgcodigo')
    Left = 232
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mespcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object mesphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object mespcgentidade: TIntegerField
      FieldName = 'pcgentidade'
    end
    object mesitmtotal: TFloatField
      FieldName = 'itmtotal'
    end
    object mesitmdesconto: TFloatField
      FieldName = 'itmdesconto'
    end
    object mesmesregistro: TDateField
      FieldName = 'mesregistro'
    end
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfi.tmfcodigo,'
      '  mfi.mfivalor,'
      '  mes.meschave,'
      '  tmf.tmfidentificacao'
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '  INNER JOIN tmf'
      '    ON mfi.tmfcodigo = tmf.tmfcodigo'
      '  mes.meschave=:meschave')
    Left = 280
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
end
