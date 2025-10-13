object fimendes: Tfimendes
  Left = 0
  Top = 0
  Caption = 'Integra'#231#227'o IMENDES'
  ClientHeight = 422
  ClientWidth = 664
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
  object Button1: TButton
    Left = 400
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgdtinictb, cfgdtfinctb, cfgdatapadrao, etddoc1 from cfg' +
        ',cfgmcfg, etd WHERE cfg.cfgcodigo=cfgmcfg.cfgcodigo AND cfgmcfg.' +
        'cfgetdempresa=etd.etdcodigo')
    Left = 469
    Top = 28
    object cfgcfgdtinictb: TDateField
      FieldName = 'cfgdtinictb'
    end
    object cfgcfgdtfinctb: TDateField
      FieldName = 'cfgdtfinctb'
    end
    object cfgcfgdatapadrao: TDateField
      FieldName = 'cfgdatapadrao'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 
      'http://consultatributos.com.br:8080/api/v1/public/EnviaRecebeDad' +
      'os'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 176
    Top = 48
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 184
    Top = 120
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 184
    Top = 192
  end
  object ime: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  imecodigo,'
      '  imeean,'
      '  imencm,'
      '  imecest,'
      '  imelista,'
      '  imetipo,'
      '  imecodano,'
      '  imepccstent,'
      '  imepccstsai,'
      '  imepcaliqpis,'
      '  imepcaliqcofins,'
      '  imepcnri,'
      '  imeipicstent,'
      '  imeipicstsai,'
      '  imeipialiq,'
      '  imeipicodenq,'
      '  imeipiex'
      '  FROM'
      '  ime')
    Left = 384
    Top = 32
    object imeimecodigo: TStringField
      FieldName = 'imecodigo'
      Required = True
      Size = 50
    end
    object imeimeean: TStringField
      FieldName = 'imeean'
      Size = 30
    end
    object imeimencm: TStringField
      FieldName = 'imencm'
    end
    object imeimecest: TStringField
      FieldName = 'imecest'
    end
    object imeimelista: TStringField
      FieldName = 'imelista'
      Size = 5
    end
    object imeimetipo: TStringField
      FieldName = 'imetipo'
      Size = 5
    end
    object imeimecodano: TStringField
      FieldName = 'imecodano'
      Size = 50
    end
    object imeimepccstent: TStringField
      FieldName = 'imepccstent'
      Size = 3
    end
    object imeimepccstsai: TStringField
      FieldName = 'imepccstsai'
      Size = 3
    end
    object imeimepcaliqpis: TFloatField
      FieldName = 'imepcaliqpis'
    end
    object imeimepcaliqcofins: TFloatField
      FieldName = 'imepcaliqcofins'
    end
    object imeimepcnri: TStringField
      FieldName = 'imepcnri'
      Size = 10
    end
    object imeimeipicstent: TStringField
      FieldName = 'imeipicstent'
      Size = 3
    end
    object imeimeipicstsai: TStringField
      FieldName = 'imeipicstsai'
      Size = 3
    end
    object imeimeipialiq: TFloatField
      FieldName = 'imeipialiq'
    end
    object imeimeipicodenq: TStringField
      FieldName = 'imeipicodenq'
    end
    object imeimeipiex: TStringField
      FieldName = 'imeipiex'
    end
  end
  object rme: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  imecodigo,'
      '  rmeuf,'
      '  rmepicmspdv,'
      '  rmesimbpdv,'
      '  rmecst,'
      '  rmecsosn,'
      '  rmealiqicms,'
      '  rmereducaobcicms,'
      '  rmereducaobcicmsst,'
      '  rmealiqicmsst,'
      '  rmeiva,'
      '  rmefcp,'
      '  rmecodbenef,'
      '  rmepdifer,'
      '  rmeantecipado,'
      '  rmecfopcompra,'
      '  rmecfopvenda,'
      '  rmedesonerado,'
      '  rmeicmsdeson,'
      '  rmeicmsdesoncodbenef,'
      '  rmeexcecao'
      '  FROM'
      '  rme')
    Left = 424
    Top = 32
    object rmeimecodigo: TStringField
      FieldName = 'imecodigo'
      Required = True
      Size = 50
    end
    object rmermeuf: TStringField
      FieldName = 'rmeuf'
      Required = True
      Size = 3
    end
    object rmermepicmspdv: TFloatField
      FieldName = 'rmepicmspdv'
    end
    object rmermesimbpdv: TStringField
      FieldName = 'rmesimbpdv'
      Size = 3
    end
    object rmermecst: TStringField
      FieldName = 'rmecst'
      Size = 3
    end
    object rmermecsosn: TStringField
      FieldName = 'rmecsosn'
      Size = 10
    end
    object rmermealiqicms: TFloatField
      FieldName = 'rmealiqicms'
    end
    object rmermereducaobcicms: TFloatField
      FieldName = 'rmereducaobcicms'
    end
    object rmermereducaobcicmsst: TFloatField
      FieldName = 'rmereducaobcicmsst'
    end
    object rmermealiqicmsst: TFloatField
      FieldName = 'rmealiqicmsst'
    end
    object rmermeiva: TFloatField
      FieldName = 'rmeiva'
    end
    object rmermefcp: TFloatField
      FieldName = 'rmefcp'
    end
    object rmermecodbenef: TStringField
      FieldName = 'rmecodbenef'
      Size = 30
    end
    object rmermepdifer: TFloatField
      FieldName = 'rmepdifer'
    end
    object rmermeantecipado: TStringField
      FieldName = 'rmeantecipado'
      Size = 3
    end
    object rmermecfopcompra: TStringField
      FieldName = 'rmecfopcompra'
      Size = 5
    end
    object rmermecfopvenda: TStringField
      FieldName = 'rmecfopvenda'
      Size = 5
    end
    object rmermedesonerado: TStringField
      FieldName = 'rmedesonerado'
      Size = 3
    end
    object rmermeicmsdeson: TFloatField
      FieldName = 'rmeicmsdeson'
    end
    object rmermeicmsdesoncodbenef: TStringField
      FieldName = 'rmeicmsdesoncodbenef'
      Size = 30
    end
    object rmermeexcecao: TStringField
      FieldName = 'rmeexcecao'
      Size = 3
    end
  end
  object pun: TUniQuery
    Left = 424
    Top = 80
  end
end
