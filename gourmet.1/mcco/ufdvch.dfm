inherited fdvch: Tfdvch
  ActiveControl = DBGLista
  Caption = 'Registro de Devolu'#231#227'o de Cheques'
  ClientHeight = 574
  ClientWidth = 881
  ExplicitWidth = 897
  ExplicitHeight = 613
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 545
    Width = 881
    ExplicitTop = 545
    ExplicitWidth = 881
    inherited bconfirma: TBitBtn
      Left = 727
      ExplicitLeft = 727
    end
    inherited bcancela: TBitBtn
      Left = 802
      ExplicitLeft = 802
    end
    inherited bfechar: TBitBtn
      Left = 662
      ExplicitLeft = 662
    end
  end
  inherited paginas: TPageControl
    Width = 881
    Height = 545
    ExplicitWidth = 881
    ExplicitHeight = 545
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 873
      ExplicitHeight = 517
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = dchcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta de Origem'
      end
      object Label10: TLabel
        Left = 8
        Top = 434
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta de Destino'
      end
      object Label7: TLabel
        Left = 8
        Top = 488
        Width = 108
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total da Devolu'#231#227'o R$'
        FocusControl = dchtotal
      end
      object Label3: TLabel
        Left = 8
        Top = 461
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade de Cheques'
      end
      object dchcodigo: TDBEdit
        Left = 139
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dchcodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object ctacodigoori: TDBEdit
        Left = 139
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ctacodigoori'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object ctacodigodes: TDBEdit
        Left = 139
        Top = 431
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigodes'
        DataSource = DSRegistro
        TabOrder = 3
        OnEnter = ctacodigodesEnter
      end
      object dchtotal: TDBEdit
        Left = 139
        Top = 485
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'dchtotal'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 5
      end
      object DBGLista: TDBGrid
        Left = 139
        Top = 57
        Width = 710
        Height = 361
        CustomHint = BalloonHint
        BorderStyle = bsNone
        Color = clCream
        DataSource = Dtmp
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGListaCellClick
        OnDrawColumnCell = DBGListaDrawColumnCell
        OnDblClick = DBGListaDblClick
        OnKeyDown = DBGListaKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'tmpselecionar'
            Title.Alignment = taCenter
            Title.Caption = ' '
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bcocodigo'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chenumero'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'checonta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cheagencia'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chevalor'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chevencimento'
            Title.Caption = 'Data'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mdccodigo'
            Title.Caption = 'Al'#237'nea'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'schcodigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'chechave'
            Title.Caption = 'Nr. Chave'
            Width = 64
            Visible = True
          end>
      end
      object dchquantidade: TDBEdit
        Left = 139
        Top = 458
        Width = 38
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'dchquantidade'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 4
      end
      object mdccodigo: TDBEdit
        Left = 139
        Top = 397
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'mdccodigo'
        DataSource = Dtmp
        ReadOnly = True
        TabOrder = 6
        Visible = False
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 563
    ExplicitLeft = 563
  end
  inherited DSRegistro: TUniDataSource
    Left = 316
    Top = 160
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgusactb from cfg')
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dchcodigo,'
      '  ctacodigoori,'
      '  ctacodigodes,'
      '  dchtotal,'
      '  dchquantidade,'
      '  dchdata,'
      '  dchhora,'
      '  dchhistorico'
      'FROM dch'
      'where dchcodigo=:dchcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dchcodigo'
        Value = nil
      end>
    object registrodchcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'dchcodigo'
    end
    object registroctacodigoori: TIntegerField
      DisplayLabel = 'Conta de Origem'
      FieldName = 'ctacodigoori'
      Required = True
    end
    object registroctaorigem: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaorigem'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigoori'
      Size = 50
      Lookup = True
    end
    object registroctacodigodes: TIntegerField
      DisplayLabel = 'Conta de Destino'
      FieldName = 'ctacodigodes'
      Required = True
    end
    object registroctadestino: TStringField
      FieldKind = fkLookup
      FieldName = 'ctadestino'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigodes'
      Size = 50
      Lookup = True
    end
    object registrodchdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dchdata'
    end
    object registrodchhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'dchhora'
    end
    object registrodchtotal: TFloatField
      DisplayLabel = 'Total das Devolu'#231#245'es R$'
      FieldName = 'dchtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrodchquantidade: TIntegerField
      DisplayLabel = 'Quantidade de Cheques'
      FieldName = 'dchquantidade'
      Required = True
    end
    object registrodchhistorico: TStringField
      FieldName = 'dchhistorico'
      Size = 255
    end
  end
  inherited pfr: TUniQuery
    Left = 504
    Top = 148
  end
  inherited psf: TUniQuery
    Left = 600
    Top = 164
  end
  inherited dcl: TUniQuery
    Left = 564
    Top = 160
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 376
    Top = 312
  end
  object che: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  cco.ctacodigo,'
      '  c.chechave,'
      '  c.cheemissao,'
      '  c.chevencimento,'
      '  c.chenumero,'
      '  c.checonta,'
      '  c.cheagencia,'
      '  c.chenome,'
      '  c.bcocodigo,'
      '  c.chedocumento,'
      '  c.chetelefone,'
      '  c.chevalor,'
      ' (SELECT ltc.schcodigo '
      '    FROM ltc'
      '  JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      '  JOIN clt'
      '    ON dtl.ltechave = clt.ltechave'
      '  JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      
        ' WHERE c.chechave=che.chechave and cco.ctacodigo=:ctacodigo and ' +
        'tchcodigo is null '
      '   order by ltc.ltcchave DESC LIMIT 1)  schcodigo,'
      ' '
      '  ltc.mdccodigo,'
      '  c.etdcodigo'
      'FROM ltc'
      '  JOIN che c'
      '    ON ltc.chechave = c.chechave'
      '  JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      '  JOIN clt'
      '    ON dtl.ltechave = clt.ltechave'
      '  JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      
        ' where ltc.schcodigo=:schcodigo and cco.ctacodigo=:ctacodigo and' +
        ' tchcodigo is null '
      'order by c.chevencimento')
    Left = 280
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'schcodigo'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
    end
    object chechevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object chechenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object checheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 10
    end
    object checheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 15
    end
    object chebcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object chechenome: TStringField
      DisplayLabel = 'Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object chechedocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'chedocumento'
    end
    object chechetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object chechevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cheschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
    object chemdccodigo: TIntegerField
      DisplayLabel = 'Alinea'
      FieldName = 'mdccodigo'
    end
    object chetmpselecionar: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'tmpselecionar'
      Calculated = True
    end
    object cheetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object Dtmp: TDataSource
    DataSet = tmp
    Left = 276
    Top = 296
  end
  object mdc: TUniQuery
    SQL.Strings = (
      'select mdccodigo, mdcidentificacao from mdc')
    Left = 416
    Top = 328
    object mdcmdccodigo: TIntegerField
      FieldName = 'mdccodigo'
    end
    object mdcmdcidentificacao: TStringField
      FieldName = 'mdcidentificacao'
      Size = 250
    end
  end
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo, ctaidentificacao,tctcodigo from cta')
    Left = 488
    Top = 112
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object ctatctcodigo: TIntegerField
      FieldName = 'tctcodigo'
    end
  end
  object lte: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltechave,'
      '  tfdcodigo,'
      '  ltedata,'
      '  lteprincipal,'
      '  ltejuros,'
      '  ltedesconto,'
      '  ltetotal,'
      '  lteextenso,'
      '  ltehistorico,'
      '  ltemulta'
      'FROM lte limit 0')
    Left = 456
    Top = 416
    object lteltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object ltetfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
      Required = True
    end
    object lteltedata: TDateField
      FieldName = 'ltedata'
      Required = True
    end
    object ltelteprincipal: TFloatField
      FieldName = 'lteprincipal'
      Required = True
    end
    object lteltejuros: TFloatField
      FieldName = 'ltejuros'
      Required = True
    end
    object lteltedesconto: TFloatField
      FieldName = 'ltedesconto'
      Required = True
    end
    object lteltetotal: TFloatField
      FieldName = 'ltetotal'
      Required = True
    end
    object ltelteextenso: TStringField
      FieldName = 'lteextenso'
      Size = 2000
    end
    object lteltehistorico: TStringField
      FieldName = 'ltehistorico'
      Size = 100
    end
    object lteltemulta: TFloatField
      FieldName = 'ltemulta'
      Required = True
    end
  end
  object dtl: TUniQuery
    SQLRefresh.Strings = (
      
        'SELECT dtlchave, ltechave, cedcodigo, dtlvalor, mdacodigo FROM d' +
        'tl'
      'WHERE'
      '  dtlchave = :dtlchave')
    SQL.Strings = (
      
        'SELECT dtlchave, ltechave, cedcodigo, dtlvalor, mdacodigo FROM d' +
        'tl'
      'WHERE'
      '  ltechave=:ltechave')
    Left = 500
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtlcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object dtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
    end
  end
  object ltc: TUniQuery
    SQL.Strings = (
      'select * from ltc limit 0')
    Left = 536
    Top = 416
    object ltcltcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ltcchave'
    end
    object ltcdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ltcchechave: TIntegerField
      FieldName = 'chechave'
    end
    object ltcschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
    object ltcmdccodigo: TIntegerField
      FieldName = 'mdccodigo'
      Required = True
    end
  end
  object clt: TUniQuery
    SQL.Strings = (
      'select  ccochave , ltechave from clt limit 0')
    Left = 572
    Top = 412
    object cltccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object cltltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object cco: TUniQuery
    SQL.Strings = (
      
        'select ccochave, ctacodigo, toccodigo, cedcodigo, clbcodigo, tfi' +
        'codigo, moecodigo, ccoemissao, ccovencimento, cconumero,'
      
        ' ccohistorico, ccovalor, ccochaveorig, ccochavedest, ccoconcilia' +
        'do, ccoextenso,etdcodigo, ccodatamov,ccohoraregistro, ccodatareg' +
        'istro,'
      'ccofavorecido, phgcodigo from cco limit 0')
    Left = 608
    Top = 408
    object ccoccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object ccoccovencimento: TDateField
      FieldName = 'ccovencimento'
      Required = True
    end
    object ccotoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object ccocedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
      Required = True
    end
    object ccoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ccotficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object ccomoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object ccocconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccoccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object ccoccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object ccoccoconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
    end
    object ccoccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object ccoetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object ccoccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object ccoccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object ccoccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
    object ccoccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 80
    end
    object ccophgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
  end
  object let: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  letchave,'
      '  ltechave,'
      '  etdcodigo'
      'FROM let where ltechave=:ltechave')
    Left = 400
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object letletchave: TIntegerField
      FieldName = 'letchave'
    end
    object letltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object letetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object ccd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccdchave,'
      '  dtlchave,'
      '  ccochave'
      'FROM ccd where dtlchave=:dtlchave and ccochave=:ccochave')
    Left = 224
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object ccdccdchave: TIntegerField
      FieldName = 'ccdchave'
    end
    object ccddtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ccdccochave: TIntegerField
      FieldName = 'ccochave'
    end
  end
  object tmp: TFDMemTable
    BeforePost = tmpBeforePost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 316
    Top = 288
    object tmpchechave: TIntegerField
      FieldName = 'chechave'
    end
    object tmpcheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
    end
    object tmpchevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object tmpchenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object tmpcheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 10
    end
    object tmpcheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 15
    end
    object tmpbcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object tmpchenome: TStringField
      DisplayLabel = 'Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object tmpchedocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'chedocumento'
    end
    object tmpchetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object tmpchevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
    object tmpmdccodigo: TIntegerField
      DisplayLabel = 'Alinea'
      FieldName = 'mdccodigo'
    end
    object tmpmdcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mdcidentificacao'
      LookupDataSet = mdc
      LookupKeyFields = 'mdccodigo'
      LookupResultField = 'mdcidentificacao'
      KeyFields = 'mdccodigo'
      Size = 250
      Lookup = True
    end
    object tmptmpselecionar: TIntegerField
      FieldName = 'tmpselecionar'
    end
    object tmpetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
end
