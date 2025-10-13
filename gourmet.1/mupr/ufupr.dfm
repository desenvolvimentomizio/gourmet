object fupr: Tfupr
  Left = 0
  Top = 0
  Caption = 'Verifica'#231#227'o de produtos Duplicadas'
  ClientHeight = 695
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ltituloquadro: TLabel
    Left = 44
    Top = 507
    Width = 135
    Height = 13
    Caption = ' Unifica'#231#227'o de Cadastro '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object quadro: TBevel
    Left = 24
    Top = 514
    Width = 905
    Height = 142
  end
  object Label1: TLabel
    Left = 44
    Top = 532
    Width = 191
    Height = 13
    Caption = 'C'#243'digo da entidade que vai permanecer'
  end
  object Label2: TLabel
    Left = 44
    Top = 559
    Width = 191
    Height = 13
    Caption = 'C'#243'digo da entidade que vai ser excluida'
  end
  object lmostratabelas: TLabel
    Left = 142
    Top = 585
    Width = 93
    Height = 13
    Caption = 'Verificando Tabelas'
  end
  object pllista: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BorderWidth = 4
    Caption = 
      ' Selecione o registro na lista abaixo para ver os registro dupli' +
      'cado'
    TabOrder = 0
    ExplicitWidth = 927
    object lbcodigojanela: TPanel
      Left = 875
      Top = 2
      Width = 64
      Height = 18
      BevelOuter = bvLowered
      Caption = '09-00-017'
      TabOrder = 0
    end
  end
  object lista: TDBGrid
    Left = 0
    Top = 26
    Width = 946
    Height = 271
    Align = alTop
    DataSource = Dconsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object plduplicados: TPanel
    Left = 0
    Top = 297
    Width = 946
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BorderWidth = 4
    Caption = ' Registros Duplicados'
    TabOrder = 2
    ExplicitWidth = 927
  end
  object listaetd: TDBGrid
    Left = 0
    Top = 323
    Width = 946
    Height = 166
    Align = alTop
    DataSource = dPro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pbotoes: TPanel
    Left = 0
    Top = 666
    Width = 946
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 4
    ExplicitTop = 652
    ExplicitWidth = 927
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Pesquisando'
      Color = 4227327
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
    object bfechar: TBitBtn
      Left = 877
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = bfecharClick
      ExplicitLeft = 858
    end
  end
  object procodigo1: TEdit
    Left = 248
    Top = 529
    Width = 61
    Height = 21
    Color = clYellow
    TabOrder = 5
    OnExit = procodigo1Exit
    OnKeyPress = FormKeyPress
  end
  object procodigo2: TEdit
    Left = 248
    Top = 556
    Width = 61
    Height = 21
    Color = clYellow
    TabOrder = 6
    OnExit = procodigo2Exit
    OnKeyPress = FormKeyPress
  end
  object mostratabelas: TProgressBar
    Left = 248
    Top = 583
    Width = 671
    Height = 17
    TabOrder = 7
  end
  object bconfirma: TButton
    Left = 743
    Top = 626
    Width = 75
    Height = 25
    Caption = 'Confirma'
    Enabled = False
    TabOrder = 8
    OnClick = bconfirmaClick
  end
  object blimpar: TButton
    Left = 824
    Top = 626
    Width = 95
    Height = 25
    Caption = 'Limpar Sele'#231#227'o'
    TabOrder = 9
    OnClick = blimparClick
  end
  object pltpeidentificacao1: TPanel
    Left = 315
    Top = 529
    Width = 79
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 10
  end
  object plEtdcodigo1: TPanel
    Left = 400
    Top = 529
    Width = 485
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 11
  end
  object pltpeidentificacao2: TPanel
    Left = 315
    Top = 556
    Width = 79
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 12
  end
  object plEtdcodigo2: TPanel
    Left = 400
    Top = 556
    Width = 485
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 13
  end
  object erros: TMemo
    Left = 248
    Top = 606
    Width = 473
    Height = 45
    Lines.Strings = (
      'erros')
    TabOrder = 14
  end
  object consulta: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  pro.procodigo,'
      '  pronome,'
      '  COUNT(pronome)'
      'FROM pro'
      'GROUP BY pronome'
      'HAVING COUNT(pronome) > 1')
    Left = 736
    Top = 204
    object consultaprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object consultapronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
  object Dconsulta: TUniDataSource
    DataSet = consulta
    OnDataChange = DconsultaDataChange
    Left = 676
    Top = 208
  end
  object pro: TUniQuery
    SQL.Strings = (
      'SELECT pro.procodigo'
      '     , pro.pronome'
      '     , tpo.tpoidentificacao'
      '     , mar.maridentificacao'
      
        '    -- , (select concat(tgridentificacao, '#39' - '#39', grpidentificaca' +
        'o) from grp,tgr where grp.tgrcodigo=tgr.tgrcodigo and grp.grpcod' +
        'igo=pro.grpcodigo ) as grpidentificacao'
      '     , grpidentificacao'
      '     , icm.icmaliquotas'
      '     , pro.proncm'
      '     , pro.prosaldo'
      '     , pro.prosaldodisp'
      '     , sip.sipcodigo'
      '     , pro.proobs'
      '     , pro.proreferencia'
      '     , uni.unisimbolo'
      '     , pun.punprecoav'
      '     , pun.punprecoap'
      '     , pro.tpocodigo'
      '     , pro.proanpcodigo'
      '     , enp.enpcodigo'
      '     , enp.enpendereco'
      '     , pro.propedecomple'
      '     , cpb.cpbcodbalanca'
      '     , pro.gracodigo'
      '     , dpr.dpridentificacao'
      '     , pro.proconsolidado'
      '     , ((punprecoav-puncusto)/puncusto)*100  as punpercav'
      '     , ((punprecoap-puncusto)/puncusto)*100  as punpercap'
      '     , pun.puncusto'
      '     , pro.grpcodigo'
      'FROM pro'
      '  JOIN v_enp enp'
      '    ON enp.enpcodigo = pro.enpcodigo'
      '  JOIN mar'
      '    ON pro.marcodigo = mar.marcodigo'
      '  JOIN grp'
      '    ON pro.grpcodigo = grp.grpcodigo'
      '  JOIN icm'
      '    ON pro.icmcodigo = icm.icmcodigo'
      '  JOIN uni'
      '    ON pro.unicodigo = uni.unicodigo'
      '  LEFT JOIN cpb'
      '    ON pro.procodigo = cpb.procodigo'
      '  JOIN sip'
      '    ON sip.sipcodigo = pro.sipcodigo'
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      '  JOIN tpo'
      '    ON pro.tpocodigo = tpo.tpocodigo'
      '  JOIN dpr'
      '    ON pro.dprcodigo = dpr.dprcodigo'
      '    where pro.tpocodigo<>1 and pro.pronome=:pronome'
      '    ')
    Left = 752
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pronome'
        Value = nil
      end>
    object proprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object proproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 15
    end
    object propronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object proprosaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'prosaldo'
    end
    object proprosaldodisp: TFloatField
      DisplayLabel = 'Saldo Disp.'
      FieldName = 'prosaldodisp'
    end
    object progrpcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'grpcodigo'
    end
    object progrpidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grpidentificacao'
      Size = 30
    end
    object promaridentificacao: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'maridentificacao'
      Size = 35
    end
    object proicmaliquotas: TStringField
      DisplayLabel = 'ICMS'
      FieldName = 'icmaliquotas'
      Size = 8
    end
    object proproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
      Size = 45
    end
    object proproobs: TStringField
      FieldName = 'proobs'
      Size = 200
    end
    object prounisimbolo: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object propunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o a Vista'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object propunprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o a Prazo'
      FieldName = 'punprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object prosipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object protpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object protpoidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tpoidentificacao'
      Size = 25
    end
    object proenpcodigo: TIntegerField
      FieldName = 'enpcodigo'
    end
    object proenpendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'enpendereco'
    end
    object procpbcodbalanca: TIntegerField
      DisplayLabel = 'Cod.Balan'#231'a'
      FieldName = 'cpbcodbalanca'
    end
    object progracodigo: TIntegerField
      FieldName = 'gracodigo'
    end
    object prodpridentificacao: TStringField
      DisplayLabel = 'Divis'#227'o'
      FieldName = 'dpridentificacao'
      Size = 30
    end
    object proproconsolidado: TIntegerField
      FieldName = 'proconsolidado'
    end
    object propunpercav: TFloatField
      DisplayLabel = '% Lucro AV'
      FieldName = 'punpercav'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object propunpercap: TFloatField
      DisplayLabel = '% Lucro AP'
      FieldName = 'punpercap'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object propuncusto: TFloatField
      DisplayLabel = 'Custo R$'
      FieldName = 'puncusto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object dPro: TUniDataSource
    DataSet = pro
    Left = 668
    Top = 352
  end
  object qconsulta: TUniQuery
    Left = 800
    Top = 288
  end
end
