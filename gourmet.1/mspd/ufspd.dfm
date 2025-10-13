inherited fspd: Tfspd
  ActiveControl = spdexercicio
  Caption = 'Per'#237'odo Fiscal'
  ClientHeight = 224
  ClientWidth = 802
  ExplicitWidth = 818
  ExplicitHeight = 263
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 195
    Width = 802
    ExplicitTop = 205
    ExplicitWidth = 802
    inherited bconfirma: TBitBtn
      Left = 648
      ExplicitLeft = 648
    end
    inherited bcancela: TBitBtn
      Left = 723
      ExplicitLeft = 723
    end
    inherited bfechar: TBitBtn
      Left = 583
      ExplicitLeft = 583
    end
  end
  inherited paginas: TPageControl
    Width = 802
    Height = 195
    ExplicitWidth = 802
    ExplicitHeight = 205
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 794
      ExplicitHeight = 177
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = spdchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Exerc'#237'cio'
        FocusControl = spdexercicio
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = spddatainicial
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = spddatafinal
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Balan'#231'o'
        FocusControl = spddatabalanco
      end
      object spdchave: TDBEdit
        Left = 148
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spdchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object spdexercicio: TDBEdit
        Left = 148
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spdexercicio'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object spddatainicial: TDBEdit
        Left = 148
        Top = 57
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spddatainicial'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object spddatafinal: TDBEdit
        Left = 148
        Top = 84
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spddatafinal'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object spddatabalanco: TDBEdit
        Left = 148
        Top = 111
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spddatabalanco'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object spdativo: TDBCheckBox
        Left = 148
        Top = 138
        Width = 97
        Height = 17
        CustomHint = BalloonHint
        Caption = 'Ativo'
        DataField = 'spdativo'
        DataSource = DSRegistro
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 388
    Top = 216
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select ssncodigo from cfgmspd')
    object cfgssncodigo: TIntegerField
      FieldName = 'ssncodigo'
      Required = True
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select spdchave,  spdexercicio,  spddatainicial,  spddatafinal, ' +
        ' spddatabalanco,  pcccodigo, spdativo,spdregistro from spd where' +
        ' spdchave=:spdchave')
    Left = 388
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spdchave'
        Value = nil
      end>
    object registrospdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'spdchave'
    end
    object registrospdexercicio: TIntegerField
      DisplayLabel = 'Exerc'#237'cio'
      FieldName = 'spdexercicio'
      Required = True
    end
    object registrospddatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'spddatainicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrospddatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'spddatafinal'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrospddatabalanco: TDateField
      DisplayLabel = 'Data Balan'#231'o'
      FieldName = 'spddatabalanco'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registropcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 30
    end
    object registropccidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pccidentificacao'
      LookupDataSet = pcc
      LookupKeyFields = 'pcccodigo'
      LookupResultField = 'pccidentificacao'
      KeyFields = 'pcccodigo'
      Size = 60
      Lookup = True
    end
    object registrospdregistro: TDateTimeField
      FieldName = 'spdregistro'
    end
    object registrospdativo: TIntegerField
      FieldName = 'spdativo'
    end
  end
  inherited cau: TUniQuery
    Left = 696
    Top = 192
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object Decf: TUniDataSource
    DataSet = ecf
    Left = 524
    Top = 32
  end
  object ecf: TUniQuery
    SQL.Strings = (
      'select * from ecf')
    Left = 528
    Top = 76
    object ecfecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
      Required = True
    end
    object ecfecfidentificacao: TStringField
      FieldName = 'ecfidentificacao'
      Required = True
      Size = 50
    end
    object ecfecftipodoc: TStringField
      FieldName = 'ecftipodoc'
      Required = True
      Size = 3
    end
    object ecfecfmodelo: TStringField
      FieldName = 'ecfmodelo'
      Size = 30
    end
    object ecfecfserie: TStringField
      FieldName = 'ecfserie'
      Required = True
      Size = 30
    end
    object ecfecfcaixa: TIntegerField
      FieldName = 'ecfcaixa'
      Required = True
    end
  end
  object rrz: TUniQuery
    SQL.Strings = (
      'select * from rrz')
    MasterSource = Decf
    MasterFields = 'ecfcodigo'
    DetailFields = 'ecfcodigo'
    Left = 564
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ecfcodigo'
        Value = nil
      end>
    object rrzrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
    end
    object rrzrrzdata: TDateField
      FieldName = 'rrzdata'
      Required = True
    end
    object rrzecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
      Required = True
    end
    object rrzrrzcontadorreinicio: TIntegerField
      FieldName = 'rrzcontadorreinicio'
      Required = True
    end
    object rrzrrzcontadorreducao: TIntegerField
      FieldName = 'rrzcontadorreducao'
      Required = True
    end
    object rrzrrznumordultdoc: TIntegerField
      FieldName = 'rrznumordultdoc'
      Required = True
    end
    object rrzrrzvalorgrantot: TFloatField
      FieldName = 'rrzvalorgrantot'
      Required = True
    end
    object rrzrrzvalorvndbru: TFloatField
      FieldName = 'rrzvalorvndbru'
      Required = True
    end
    object rrzrrzdesconto: TFloatField
      FieldName = 'rrzdesconto'
    end
  end
  object Drrz: TUniDataSource
    DataSet = rrz
    Left = 568
    Top = 32
  end
  object pcc: TUniQuery
    SQL.Strings = (
      'select pcccodigo, pccidentificacao from pcc')
    Left = 528
    Top = 128
    object pccpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 30
    end
    object pccpccidentificacao: TStringField
      FieldName = 'pccidentificacao'
      Size = 60
    end
  end
  object mdf: TUniQuery
    SQL.Strings = (
      'select * from mdf')
    MasterSource = Drrz
    Left = 564
    Top = 124
    object mdfmdfchave: TIntegerField
      FieldName = 'mdfchave'
    end
    object mdfrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
    end
    object mdfcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object mdfcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object mdfmdfaliquota: TFloatField
      FieldName = 'mdfaliquota'
      Required = True
    end
    object mdfmdfvlopr: TFloatField
      FieldName = 'mdfvlopr'
      Required = True
    end
    object mdfmdfvlbcicms: TFloatField
      FieldName = 'mdfvlbcicms'
      Required = True
    end
    object mdfmdfvlicms: TFloatField
      FieldName = 'mdfvlicms'
    end
    object mdftofcodigo: TIntegerField
      FieldName = 'tofcodigo'
      Required = True
    end
  end
  object Dcuf: TUniDataSource
    DataSet = cuf
    Left = 612
    Top = 32
  end
  object cuf: TUniQuery
    SQL.Strings = (
      'select * from cuf')
    MasterSource = Drrz
    MasterFields = 'rrzcodigo'
    DetailFields = 'rrzcodigo'
    Left = 604
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rrzcodigo'
        Value = nil
      end>
    object cufcufchave: TIntegerField
      FieldName = 'cufchave'
    end
    object cuftdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object cufsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object cufcufcco: TIntegerField
      FieldName = 'cufcco'
      Required = True
    end
    object cufcufdata: TDateField
      FieldName = 'cufdata'
      Required = True
    end
    object cufcuftotal: TFloatField
      FieldName = 'cuftotal'
      Required = True
    end
    object cufcufpis: TFloatField
      FieldName = 'cufpis'
      Required = True
    end
    object cufcufcofins: TFloatField
      FieldName = 'cufcofins'
      Required = True
    end
    object cufcufdoc1: TStringField
      FieldName = 'cufdoc1'
      Size = 14
    end
    object cufcufnome: TStringField
      FieldName = 'cufnome'
      Size = 60
    end
    object cufrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
      Required = True
    end
    object cufcufdesconto: TFloatField
      FieldName = 'cufdesconto'
    end
  end
  object icu: TUniQuery
    SQL.Strings = (
      'select * from icu')
    MasterSource = Dcuf
    MasterFields = 'cufchave'
    DetailFields = 'cufchave'
    Left = 604
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cufchave'
        Value = nil
      end>
    object icuicuchave: TIntegerField
      FieldName = 'icuchave'
    end
    object icucufchave: TIntegerField
      FieldName = 'cufchave'
    end
    object icuprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object icucstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object icuunicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object icuicuquantidade: TFloatField
      FieldName = 'icuquantidade'
      Required = True
    end
    object icuicuquantidadecanc: TFloatField
      FieldName = 'icuquantidadecanc'
      Required = True
    end
    object icuicuvalor: TFloatField
      FieldName = 'icuvalor'
      Required = True
    end
    object icucfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 4
    end
    object icuicualiqicm: TFloatField
      FieldName = 'icualiqicm'
      Required = True
    end
    object icuicupis: TFloatField
      FieldName = 'icupis'
      Required = True
    end
    object icuicucofins: TFloatField
      FieldName = 'icucofins'
      Required = True
    end
    object icuicuicm: TFloatField
      FieldName = 'icuicm'
    end
  end
  object vrrz: TUniQuery
    SQL.Strings = (
      'select * from rrz')
    Left = 640
    Top = 76
    object vrrzrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
    end
    object vrrzrrzdata: TDateField
      FieldName = 'rrzdata'
      Required = True
    end
    object vrrzecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
      Required = True
    end
    object vrrzrrzcontadorreinicio: TIntegerField
      FieldName = 'rrzcontadorreinicio'
      Required = True
    end
    object vrrzrrzcontadorreducao: TIntegerField
      FieldName = 'rrzcontadorreducao'
      Required = True
    end
    object vrrzrrznumordultdoc: TIntegerField
      FieldName = 'rrznumordultdoc'
      Required = True
    end
    object vrrzrrzvalorgrantot: TFloatField
      FieldName = 'rrzvalorgrantot'
      Required = True
    end
    object vrrzrrzvalorvndbru: TFloatField
      FieldName = 'rrzvalorvndbru'
      Required = True
    end
    object vrrzrrzdesconto: TFloatField
      FieldName = 'rrzdesconto'
    end
  end
  object vtpz: TUniQuery
    SQL.Strings = (
      'select * from tpz')
    Left = 528
    Top = 176
    object vtpztpzchave: TIntegerField
      FieldName = 'tpzchave'
    end
    object vtpztpzcodigo: TStringField
      FieldName = 'tpzcodigo'
      Required = True
      Size = 7
    end
    object vtpztpzvlracumtot: TFloatField
      FieldName = 'tpzvlracumtot'
      Required = True
    end
    object vtpztpznrtot: TIntegerField
      FieldName = 'tpznrtot'
    end
    object vtpztpzdescr: TStringField
      FieldName = 'tpzdescr'
      Size = 50
    end
    object vtpzrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
      Required = True
    end
  end
  object c490: TUniQuery
    SQL.Strings = (
      
        'select cfocfop,icualiqicm, sum(icuvalor) as operacao,cstcodigo, ' +
        'sum(icuvalor) as valor,sum(icuicm) as icm'
      'from icu,cuf'
      'where'
      'icu.cufchave=cuf.cufchave and cuf.sdecodigo<>'#39'02'#39' and'
      'cuf.cufdata=:inicio '
      'group by cstcodigo, cfocfop, icualiqicm')
    Left = 568
    Top = 180
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'inicio'
        Value = nil
      end>
    object c490cfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 4
    end
    object c490icualiqicm: TFloatField
      FieldName = 'icualiqicm'
      Required = True
    end
    object c490operacao: TFloatField
      FieldName = 'operacao'
      ReadOnly = True
    end
    object c490cstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object c490valor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object c490icm: TFloatField
      FieldName = 'icm'
      ReadOnly = True
    end
  end
  object ssn: TUniQuery
    SQL.Strings = (
      'select * from ssn')
    Left = 640
    Top = 128
    object ssnssncodigo: TIntegerField
      FieldName = 'ssncodigo'
    end
    object ssnssnfaturamento: TStringField
      FieldName = 'ssnfaturamento'
      Required = True
      Size = 50
    end
    object ssnssnaliquota: TFloatField
      FieldName = 'ssnaliquota'
      Required = True
    end
    object ssnssnirpj: TFloatField
      FieldName = 'ssnirpj'
      Required = True
    end
    object ssnssncsll: TFloatField
      FieldName = 'ssncsll'
      Required = True
    end
    object ssnssncofins: TFloatField
      FieldName = 'ssncofins'
      Required = True
    end
    object ssnssnpis: TFloatField
      FieldName = 'ssnpis'
      Required = True
    end
    object ssnssncpp: TFloatField
      FieldName = 'ssncpp'
      Required = True
    end
    object ssnssnicms: TFloatField
      FieldName = 'ssnicms'
      Required = True
    end
  end
  object OpenDialog: TOpenDialog
    Left = 292
    Top = 32
  end
  object tpz: TUniQuery
    SQL.Strings = (
      'select * from tpz')
    MasterSource = Drrz
    MasterFields = 'rrzcodigo'
    DetailFields = 'rrzcodigo'
    Left = 604
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rrzcodigo'
        Value = nil
      end>
    object tpztpzchave: TIntegerField
      FieldName = 'tpzchave'
    end
    object tpztpzcodigo: TStringField
      FieldName = 'tpzcodigo'
      Required = True
      Size = 7
    end
    object tpztpzvlracumtot: TFloatField
      FieldName = 'tpzvlracumtot'
      Required = True
    end
    object tpztpznrtot: TIntegerField
      FieldName = 'tpznrtot'
    end
    object tpztpzdescr: TStringField
      FieldName = 'tpzdescr'
      Size = 50
    end
    object tpzrrzcodigo: TIntegerField
      FieldName = 'rrzcodigo'
      Required = True
    end
  end
end
