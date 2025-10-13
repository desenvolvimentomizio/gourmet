object fatu: Tfatu
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Atualizando Sistema. Aguarde ...'
  ClientHeight = 173
  ClientWidth = 433
  Color = 12615680
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
  object LbPrincipal: TLabel
    Left = 24
    Top = 20
    Width = 143
    Height = 16
    Caption = 'Verificando Relat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lRegistros: TLabel
    Left = 24
    Top = 88
    Width = 62
    Height = 16
    Caption = 'Registros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MostraRelatorios: TProgressBar
    Left = 24
    Top = 48
    Width = 385
    Height = 17
    TabOrder = 0
  end
  object registros: TProgressBar
    Left = 24
    Top = 112
    Width = 385
    Height = 17
    TabOrder = 1
  end
  object rw: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  relorigem,'
      '  reltipo,'
      '  IF(reltipo = 0, '#39'Normal'#39', '#39'Customizado'#39') AS reltipodescri,'
      '  IF(relsituacao = 1, '#39'Ativo'#39', '#39'Inativo'#39') AS relsituacaodescri,'
      '  relnomearquivo,'
      '  (SELECT'
      '      lre.lreregistro'
      '    FROM lre'
      '    WHERE relcodigo = rel.relcodigo'
      '    ORDER BY lre.lreregistro DESC LIMIT 1) AS lreregistro'
      'FROM rel')
    Constraints = <>
    Left = 711
    Top = 8
    object rwrelcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'relcodigo'
      Size = 11
    end
    object rwrelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Size = 80
    end
    object rwreltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Size = 80
    end
    object rwreltipodescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipodescri'
      Size = 15
    end
    object rwrelsituacaodescri: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'relsituacaodescri'
      Size = 15
    end
    object rwrelnomearquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'relnomearquivo'
      Size = 80
    end
    object rwrelorigem: TStringField
      FieldName = 'relorigem'
      Size = 8
    end
    object rwreltipo: TIntegerField
      FieldName = 'reltipo'
    end
    object rwlreregistro: TDateTimeField
      FieldName = 'lreregistro'
    end
  end
  object relw: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  reltipo,'
      '  relsituacao,'
      '  relusaparametros,'
      '  relnomearquivo,'
      '  relarquivo,'
      '  relorigem'
      'FROM rel where relcodigo=:relcodigo')
    Constraints = <>
    Left = 751
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object rell: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  reltipo,'
      '  relsituacao,'
      '  relusaparametros,'
      '  relnomearquivo,'
      '  relarquivo,'
      '  relorigem'
      'FROM rel where relcodigo=:relcodigo')
    Constraints = <>
    Left = 752
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object relloc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  relorigem,'
      '  reltipo,'
      '  if (reltipo=0,'#39'Normal'#39','#39'Customizado'#39') as reltipodescri,'
      '  if (relsituacao=1,'#39'Ativo'#39','#39'Inativo'#39') as relsituacaodescri,'
      '  relnomearquivo'
      'FROM rel')
    Constraints = <>
    Left = 784
    Top = 64
    object rellocrelcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'relcodigo'
      Size = 11
    end
    object rellocrelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Size = 80
    end
    object rellocreltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Size = 80
    end
    object rellocreltipodescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipodescri'
      Size = 15
    end
    object rellocrelsituacaodescri: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'relsituacaodescri'
      Size = 15
    end
    object rellocrelnomearquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'relnomearquivo'
      Size = 80
    end
    object rellocrelorigem: TStringField
      FieldName = 'relorigem'
      Size = 8
    end
    object rellocreltipo: TIntegerField
      FieldName = 'reltipo'
    end
  end
  object relweb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  relorigem,'
      '  reltipo,'
      '  if (reltipo=0,'#39'Normal'#39','#39'Customizado'#39') as reltipodescri,'
      '  if (relsituacao=1,'#39'Ativo'#39','#39'Inativo'#39') as relsituacaodescri,'
      '  relnomearquivo'
      '  FROM rel '
      ' WHERE rel.reltipo = 0'
      '  '
      ' ORDER by relidentificacao')
    Constraints = <>
    Left = 783
    Top = 8
    object relwebrelcodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'relcodigo'
      Size = 11
    end
    object relwebrelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Size = 80
    end
    object relwebreltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Size = 255
    end
    object relwebreltipodescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipodescri'
      Size = 11
    end
    object relwebrelsituacaodescri: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'relsituacaodescri'
      Size = 7
    end
    object relwebrelnomearquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'relnomearquivo'
      Size = 80
    end
    object relwebrelorigem: TStringField
      FieldName = 'relorigem'
      Size = 8
    end
    object relwebreltipo: TIntegerField
      FieldName = 'reltipo'
    end
  end
  object consultaloc: TUniQuery
    Constraints = <>
    Left = 216
    Top = 232
  end
  object consultaweb: TUniQuery
    Constraints = <>
    Left = 327
    Top = 232
  end
  object Atualizar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = AtualizarTimer
    Left = 352
    Top = 72
  end
  object lreloc: TUniQuery
    SQL.Strings = (
      'SELECT lre.relcodigo, lre.lreregistro from lre '
      'where relcodigo=:relcodigo'
      'order BY lre.lreregistro DESC  LIMIT 1')
    Constraints = <>
    Left = 752
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object lreweb: TUniQuery
    SQL.Strings = (
      'SELECT lre.relcodigo, lre.lreregistro from lre '
      'where relcodigo=:relcodigo'
      'order BY lre.lreregistro DESC  LIMIT 1')
    Constraints = <>
    Left = 800
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object lre: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lrechave,'
      '  relcodigo,'
      '  clbcodigo,'
      '  lreregistro,'
      '  relarquivo'
      'FROM lre limit 0')
    Constraints = <>
    Left = 608
    Top = 112
    object lrelrechave: TIntegerField
      FieldName = 'lrechave'
    end
    object lrerelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 15
    end
    object lreclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object lrelreregistro: TDateTimeField
      FieldName = 'lreregistro'
    end
    object lrerelarquivo: TBlobField
      FieldName = 'relarquivo'
    end
  end
  object cfgloc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgatuctb,'
      '  cfgaturel,'
      '  cfgatuaju,'
      '  cfgbeta'
      'FROM cfg')
    Constraints = <>
    Left = 216
    Top = 168
    object cfgloccfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgloccfgatuctb: TDateTimeField
      FieldName = 'cfgatuctb'
    end
    object cfgloccfgaturel: TDateTimeField
      FieldName = 'cfgaturel'
    end
    object cfgloccfgatuaju: TDateTimeField
      FieldName = 'cfgatuaju'
    end
    object cfgloccfgbeta: TIntegerField
      FieldName = 'cfgbeta'
    end
  end
  object cfgweb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgatuctb,'
      '  cfgaturel,'
      '  cfgatuaju'
      'FROM cfg')
    Constraints = <>
    Left = 328
    Top = 168
    object cfgwebcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgwebcfgatuctb: TDateTimeField
      FieldName = 'cfgatuctb'
    end
    object cfgwebcfgaturel: TDateTimeField
      FieldName = 'cfgaturel'
    end
    object cfgwebcfgatuaju: TDateTimeField
      FieldName = 'cfgatuaju'
    end
  end
  object vrsweb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vrschave,'
      '  vrsversao,'
      '  vrsarquivo,'
      '  vrsvalidacao,'
      '  vrsbeta'
      'FROM vrs order by vrsversao desc limit 1')
    Constraints = <>
    Left = 432
    Top = 168
    object vrswebvrschave: TIntegerField
      FieldName = 'vrschave'
    end
    object vrswebvrsversao: TIntegerField
      FieldName = 'vrsversao'
    end
    object vrswebvrsarquivo: TBlobField
      FieldName = 'vrsarquivo'
    end
    object vrswebvrsvalidacao: TStringField
      FieldName = 'vrsvalidacao'
      Size = 250
    end
    object vrswebvrsbeta: TIntegerField
      FieldName = 'vrsbeta'
    end
  end
  object vrsloc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vrschave,'
      '  vrsversao,'
      '  vrsarquivo,'
      '  vrsvalidacao,'
      '  vrsbeta'
      'FROM vrs order by vrsversao desc')
    Constraints = <>
    Left = 432
    Top = 232
    object vrslocvrschave: TIntegerField
      FieldName = 'vrschave'
    end
    object vrslocvrsversao: TIntegerField
      FieldName = 'vrsversao'
    end
    object vrslocvrsarquivo: TBlobField
      FieldName = 'vrsarquivo'
    end
    object vrslocvrsvalidacao: TStringField
      FieldName = 'vrsvalidacao'
      Size = 250
    end
    object vrslocvrsbeta: TIntegerField
      FieldName = 'vrsbeta'
    end
  end
end
