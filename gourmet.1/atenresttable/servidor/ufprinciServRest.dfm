object fprinciServRest: TfprinciServRest
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Servidor Rodando ...'
  ClientHeight = 488
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF009999
    999999999999999999999999999994444F00F40F444444444444444444499C44
    4F00F40F444444444444444444499CC44F0F0F0F444444440000004444499CCC
    4F0F0F0F444440008888880044499CCCCF04F00F444008888888888804499CCC
    CF00000F4008F8F8F8F8888804499CCCCF04F00F0F8F88888888800004499CCC
    CF0F0040F8F8F8F8F800078804499CCCCCF0040F8F888F880077787804499CCC
    CCCFC0F8F8F8F8F00787878044499CCCCCCC0F8F8F8F80070878788044499CCC
    CCC0F8F8F8F807770787880444499CCCCCC0FFFF8F8077780878780444499CCC
    CC08F8F8F80F77870787804444499CCCCC0FFF8F80F0F7780878044444499CCC
    C0F8F8F8078F0F870787044444499CCCC0FF8FF07777F0F80880444444499CCC
    C0F8F8F077878F0F0804444444499CCC0FFFFF07777878F00044444444499CCC
    0FF8F000000000000F4F444444499CCC0FFFF07778787880F0F0F44444499CCC
    0FF807878787870CCF00F44444499CCC0FFF0778787870CCF000F44444499CCC
    0FF8078787800CCCCFFF0F4444499CCC0FF07878780CCCCCCCCCFF4444499CCC
    C0F0777700CCCCCCCCCCCC4444499CCCC0F07700CCCCCCCCCCCCCCC444499CCC
    CC0000CCCCCCCCCCCCCCCCCC44499CCCCCCCCCCCCCCCCCCCCCCCCCCCC4499CCC
    CCCCCCCCCCCCCCCCCCCCCCCCCC49999999999999999999999999999999990000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object plrodape: TPanel
    Left = 0
    Top = 457
    Width = 530
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object plip: TPanel
      Left = 1
      Top = 1
      Width = 168
      Height = 29
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object plbanco: TPanel
      Left = 169
      Top = 1
      Width = 128
      Height = 29
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object plrelogio: TPanel
      Left = 297
      Top = 1
      Width = 72
      Height = 29
      Align = alLeft
      Caption = '00:00:00'
      TabOrder = 2
    end
    object bfechar: TButton
      Left = 407
      Top = 6
      Width = 100
      Height = 25
      Caption = 'Fechar Servidor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bfecharClick
    end
  end
  object erros: TMemo
    Left = 0
    Top = 41
    Width = 530
    Height = 416
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'ATEN'#199#195'O:  SERVIDOR DOS TABLES, N'#195'O FECHAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Button1: TButton
      Left = 407
      Top = 10
      Width = 100
      Height = 25
      Caption = 'Minimizar'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object zito: TZQuery
    Connection = conexaoi
    SQL.Strings = (
      'SELECT '
      '    ito.itochave,'
      '    ito.itoitem,'
      '   sum( ito.itoquantidade) as itoquantidade,'
      '    ito.procodigo,'
      '    pro.pronome,'
      '    pro.pronomereduzido,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itovalorav,'
      '        ito.itovalorap) AS itovalor,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itototalav,'
      '        ito.itototalap) AS itototal,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itodescontoav,'
      '        ito.itodescontoap) AS itodesconto,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itosaldoav,'
      '        ito.itosaldoap) AS itosaldo,'
      '    pro.prosaldodisp,'
      '    uni.unisimbolo,'
      '    ito.unicodigo,'
      '    ito.orcchave,'
      '    ito.tdecodigo,'
      '    pro.proreferencia,'
      '    ito.itoproservico,'
      '    ito.itoinfadprod,'
      '   pro.tpocodigo,'
      '   ito.itoprocomple,'
      '  imm.immhorapedido,'
      ' imm.immhoraentrega,'
      'grp.grpidentificacao,'
      ' ito.stocodigo,'
      ' imm.immchave,'
      ' clb.clbidentificacao,'
      ' imm.immnumepedido'
      'FROM'
      '    ito,'
      '    pro,'
      '    uni,'
      '    imm,'
      '    ioc,'
      '    clb,'
      '   grp,'
      '    orc'
      'WHERE'
      '        ito.orcchave = orc.orcchave'
      '        AND ito.procodigo = pro.procodigo'
      '        AND ito.itochave = ioc.itochave'
      '       AND ioc.clbcodigo = clb.clbcodigo'
      '        AND pro.grpcodigo = grp.grpcodigo'
      '        AND ito.itochave = imm.itochave'
      '        AND imm.immimpresso=0'
      '        AND ito.unicodigo = uni.unicodigo'
      '        AND ito.stocodigo IN (2,88)'
      '        AND ito.orcchave = :orcchave'
      '  group by pro.grpcodigo, ito.procodigo, ito.itoprocomple'
      '  order by pro.grpcodigo, ito.procodigo, ito.itoprocomple'
      '   ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 432
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        ParamType = ptUnknown
      end>
    object zitoitoitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itoitem'
      Required = True
    end
    object zitoprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object zitopronome: TStringField
      DisplayLabel = 'Produto / Servi'#231'o'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object zitoitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object zitoitovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itovalor'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object zitoitototal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itototal'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object zitoitodesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itodesconto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object zitoitosaldo: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'itosaldo'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object zitoprosaldodisp: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'prosaldodisp'
      ReadOnly = True
      Required = True
    end
    object zitoitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'itochave'
    end
    object zitounicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object zitoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object zitotdecodigo: TIntegerField
      FieldName = 'tdecodigo'
    end
    object zitoproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
    end
    object zitoitoproservico: TStringField
      FieldName = 'itoproservico'
      Size = 1000
    end
    object zitoitoinfadprod: TStringField
      FieldName = 'itoinfadprod'
      Size = 500
    end
    object zitotpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object zitoitoprocomple: TStringField
      FieldName = 'itoprocomple'
      Size = 250
    end
    object zitoimmhorapedido: TTimeField
      DisplayLabel = 'Pedido'
      FieldName = 'immhorapedido'
      EditMask = '!90:00;1;_'
    end
    object zitoimmhoraentrega: TTimeField
      DisplayLabel = 'Entrega'
      FieldName = 'immhoraentrega'
      EditMask = '!90:00;1;_'
    end
    object zitogrpidentificacao: TStringField
      FieldName = 'grpidentificacao'
      Size = 50
    end
    object zitopronomereduzido: TStringField
      FieldName = 'pronomereduzido'
      Size = 50
    end
    object zitostocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
    object zitoimmchave: TIntegerField
      FieldName = 'immchave'
    end
    object zitounisimbolo: TBytesField
      FieldName = 'unisimbolo'
      Size = 6
    end
    object zitoimmnumepedido: TIntegerField
      FieldName = 'immnumepedido'
    end
    object zitoclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object consulta: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 144
    Top = 144
  end
  object orc: TZQuery
    Connection = conexaoi
    SQL.Strings = (
      
        'select distinct orc.orcchave, orcnome, orcobs,orc.trmcodigo,orc.' +
        'clbcodigo from orc,ito,imm where'
      'orc.orcchave=ito.orcchave and'
      'ito.itochave=imm.itochave and'
      'imm.immimpresso=0 and'
      'orc. trmcodigo>2 and'
      ' orc.stocodigo=2')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 384
    Top = 352
    object orcorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object orcorcnome: TStringField
      FieldName = 'orcnome'
      Size = 50
    end
    object orcorcobs: TStringField
      FieldName = 'orcobs'
      Size = 250
    end
    object orctrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object orcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object orcclbidentificacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'clbidentificacao'
      Size = 50
      Calculated = True
    end
  end
  object cfg: TZQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cfg, cfgmsai '
      'where cfg.cfgcodigo=cfgmsai.cfgcodigo')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 312
    Top = 64
    object cfgcfgidentificacao: TStringField
      FieldName = 'cfgidentificacao'
      Size = 50
    end
    object cfgcfgnumepedido: TIntegerField
      FieldName = 'cfgnumepedido'
    end
  end
  object relogio: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = relogioTimer
    Left = 344
    Top = 352
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = inicializarTimer
    Left = 336
    Top = 224
  end
  object conexao: TZConnection
    ControlsCodePage = cGET_ACP
    Catalog = ''
    Properties.Strings = (
      'controls_cp=GET_ACP')
    AfterConnect = conexaoAfterConnect
    TestMode = 0
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = ''
    Left = 56
    Top = 208
  end
  object lito: TZQuery
    Connection = conexaoi
    SQL.Strings = (
      'SELECT '
      '    ito.itochave,'
      '    ito.itoitem,'
      '    ito.itoquantidade,'
      '    ito.procodigo,'
      '    pro.pronome,'
      '    pro.pronomereduzido,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itovalorav,'
      '        ito.itovalorap) AS itovalor,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itototalav,'
      '        ito.itototalap) AS itototal,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itodescontoav,'
      '        ito.itodescontoap) AS itodesconto,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itosaldoav,'
      '        ito.itosaldoap) AS itosaldo,'
      '    pro.prosaldodisp,'
      '    uni.unisimbolo,'
      '    ito.unicodigo,'
      '    ito.orcchave,'
      '    ito.tdecodigo,'
      '    pro.proreferencia,'
      '    ito.itoproservico,'
      '    ito.itoinfadprod,'
      '   pro.tpocodigo,'
      '   ito.itoprocomple,'
      '  imm.immhorapedido,'
      ' imm.immhoraentrega,'
      'grp.grpidentificacao,'
      ' ito.stocodigo,'
      ' imm.immchave'
      'FROM'
      '    ito,'
      '    pro,'
      '    uni,'
      '    imm,'
      '   grp,'
      '    orc'
      'WHERE'
      '    ito.orcchave = orc.orcchave'
      '        AND ito.procodigo = pro.procodigo'
      '        AND pro.grpcodigo = grp.grpcodigo'
      '        AND ito.itochave = imm.itochave'
      '        AND imm.immimpresso=0'
      '        AND ito.unicodigo = uni.unicodigo'
      '        AND ito.stocodigo IN (1, 2,88)'
      '        AND ito.orcchave = :orcchave')
    Params = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 472
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        ParamType = ptUnknown
      end>
  end
  object qclb: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 384
    Top = 64
  end
  object ioc: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 176
    Top = 157
  end
  object imm: TZQuery
    Connection = conexao
    AfterInsert = immAfterInsert
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 144
    Top = 189
  end
  object ito: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 464
    Top = 168
  end
  object qpro: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 48
    Top = 149
  end
  object Query1: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 464
    Top = 112
  end
  object Query: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 464
    Top = 56
  end
  object unis: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 384
    Top = 173
  end
  object pro: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 176
    Top = 205
  end
  object clb: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 56
    Top = 96
  end
  object zorc: TZQuery
    Connection = conexao
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 176
    Top = 104
  end
  object corc: TZQuery
    Connection = conexaoi
    OnCalcFields = corcCalcFields
    SQL.Strings = (
      
        'select orcchave, orcnome, orcobs,trmcodigo,clbcodigo from orc wh' +
        'ere trmcodigo>2 and stocodigo=2 and orcchave=:orcchave')
    Params = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 432
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        ParamType = ptUnknown
      end>
    object corcorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object corcorcnome: TStringField
      FieldName = 'orcnome'
      Size = 50
    end
    object corcorcobs: TStringField
      FieldName = 'orcobs'
      Size = 250
    end
    object corctrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object corcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object corcclbidentificacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'clbidentificacao'
      Size = 50
      Calculated = True
    end
  end
  object totais: TZQuery
    Connection = conexao
    Params = <>
    Left = 384
    Top = 120
  end
  object conexaoi: TZConnection
    ControlsCodePage = cGET_ACP
    Catalog = ''
    Properties.Strings = (
      'controls_cp=GET_ACP')
    TestMode = 0
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = ''
    Left = 288
    Top = 352
  end
  object consultai: TZQuery
    Connection = conexaoi
    Params = <>
    Left = 384
    Top = 408
  end
  object cfgi: TZQuery
    Connection = conexaoi
    SQL.Strings = (
      'select * from cfg, cfgmsai '
      'where cfg.cfgcodigo=cfgmsai.cfgcodigo')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 472
    Top = 352
    object cfgicfgidentificacao: TStringField
      FieldName = 'cfgidentificacao'
      Size = 50
    end
    object cfgicfgnumepedido: TIntegerField
      FieldName = 'cfgnumepedido'
    end
  end
  object zorci: TZQuery
    Connection = conexaoi
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 392
    Top = 288
  end
end
