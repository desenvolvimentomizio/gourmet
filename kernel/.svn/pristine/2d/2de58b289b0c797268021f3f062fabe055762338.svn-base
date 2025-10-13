inherited fcpamlt: Tfcpamlt
  Caption = 'Contas a Pagar'
  ClientHeight = 616
  ClientWidth = 1040
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 587
    Width = 1040
    inherited bconfirma: TBitBtn
      Left = 886
    end
    inherited bcancela: TBitBtn
      Left = 961
    end
    inherited bfechar: TBitBtn
      Left = 821
    end
  end
  inherited paginas: TPageControl
    Width = 1040
    Height = 587
    inherited Principal: TTabSheet
      inherited F: TBevel
        Width = 1032
        Height = 385
      end
      inherited ltitvalor: TLabel
        Top = 222
      end
      inherited Label6: TLabel
        Left = 9
        Top = 168
      end
      inherited ltitvalorparcela: TLabel
        Left = 9
        Top = 195
      end
      inherited Label10: TLabel
        Left = 509
        Top = 222
        Visible = False
      end
      inherited ltitmoradia: TLabel
        Top = 249
      end
      inherited ltitpercmesmora: TLabel
        Top = 249
      end
      inherited ltitdiasdesc: TLabel
        Top = 276
      end
      inherited ltitvalodesc: TLabel
        Top = 276
      end
      inherited ltitdiasmulta: TLabel
        Top = 303
      end
      inherited ltitpercmesmulta: TLabel
        Top = 300
      end
      inherited ltitvalomulta: TLabel
        Top = 303
      end
      inherited Label12: TLabel
        Top = 330
      end
      inherited Label16: TLabel
        Left = 285
        Top = 195
        Width = 41
        Caption = 'Previs'#227'o'
      end
      object lptngcodigo: TLabel [22]
        Left = 464
        Top = 195
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'cleo Gerencial'
        FocusControl = tngcodigo
      end
      inherited titvalor: TDBEdit
        Top = 219
        TabOrder = 13
      end
      inherited BGerarRepeticoes: TBitBtn
        Top = 354
        TabOrder = 23
      end
      inherited titparcelas: TDBEdit
        Top = 165
      end
      inherited titvalorparcela: TDBEdit
        Top = 192
      end
      inherited carcodigo: TDBEdit
        Left = 616
        Top = 219
        TabStop = False
        Visible = False
      end
      inherited moecodigo: TDBEdit
        TabOrder = 12
      end
      inherited titmoradia: TDBEdit
        Top = 246
        TabOrder = 14
      end
      inherited titpercmesmora: TDBEdit
        Top = 246
        TabOrder = 15
      end
      inherited titdiasdesc: TDBEdit
        Top = 273
        TabOrder = 16
      end
      inherited titvalodesc: TDBEdit
        Top = 273
        TabOrder = 17
      end
      inherited titdiasmulta: TDBEdit
        Top = 300
        TabOrder = 18
      end
      inherited titvalomulta: TDBEdit
        Top = 300
        TabOrder = 21
      end
      inherited tithistorico: TDBEdit
        Top = 327
        TabOrder = 20
      end
      inherited titprevisao: TDBEdit
        Left = 332
        Top = 192
        TabOrder = 10
      end
      inherited titpercmulta: TDBEdit
        Top = 300
        TabOrder = 19
      end
      object plContab: TPanel
        Left = 0
        Top = 385
        Width = 1032
        Height = 174
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'C o n t a b i l i z a '#231' '#227' o  . . .'
        TabOrder = 24
        Visible = False
      end
      object tngcodigo: TDBEdit
        Left = 549
        Top = 192
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tngcodigo'
        DataSource = DSRegistro
        TabOrder = 11
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 332
    Top = 4
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgdtinictb, cfgdtfinctb,cfgusactb, cfgctbusanucleosgeren' +
        ',cfgctbusaccg  from cfg, cfgmctb where  cfg.cfgcodigo=cfgmctb.cf' +
        'gcodigo and flacodigo=:flacodigo')
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
    object cfgcfgctbusanucleosgeren: TIntegerField
      FieldName = 'cfgctbusanucleosgeren'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tit.titcodigo,'
      '  tit.etdcodigo,'
      '  tit.titvalor,'
      '  tit.titnumero,'
      '  tit.titemissao,'
      '  tit.titvalorparcela,'
      '  tit.titparcelas,'
      '  tit.titvctoinicial,'
      '  tit.tfdcodigo,'
      '  tit.srfcodigo,'
      '  tit.tficodigo,'
      '  tit.tithora,'
      '  tit.clbcodigo,'
      '  tit.tithistorico,'
      '  tit.flacodigo,'
      '  tit.bcocodigo,'
      '  tit.carcodigo,'
      '  tit.titprevisao,'
      '  tit.moecodigo,'
      '  tit.titmoradia,'
      '  tit.titdiasmulta,'
      '  tit.titvalomulta,'
      '  tit.titpercmesmora,'
      '  tit.titvalodesc,'
      '  tit.titdiasdesc,'
      '  tit.titpercmulta,'
      '  tit.tngcodigo,'
      '  tit.titinclusao,'
      '  tit.edrcodigo '
      'FROM tit'
      'where titcodigo=:titcodigo')
    Top = 12
    object registrotngcodigo: TIntegerField [33]
      DisplayLabel = 'N'#250'cleo Gerencial'
      FieldName = 'tngcodigo'
    end
    object registrotngidentificacao: TStringField [34]
      FieldKind = fkLookup
      FieldName = 'tngidentificacao'
      LookupDataSet = tng
      LookupKeyFields = 'tngcodigo'
      LookupResultField = 'tngidentificacao'
      KeyFields = 'tngcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited BalloonHint: TBalloonHint
    Top = 12
  end
  inherited acoesfrm: TActionList
    Left = 828
    Top = 65532
  end
  inherited dau: TUniQuery
    Left = 844
    Top = 268
  end
  inherited rfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  rfi.flacodigo,'
      '  rfi.tfdcodigo,'
      '  rfi.tficodigo,'
      '  rfi.bcocodigo,'
      '  rfi.carcodigo,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfcodigo,'
      '  rfi.frrcodigo,'
      '  rfi.rfimoradia,'
      '  rfi.rfipercmesmora,'
      '  rfi.rfirepetir,'
      '  rfi.rfiprevisao,'
      '  rfi.rfivalorparcela,'
      '  rfi.moecodigo,'
      '  rfi.rfidatamulta,'
      '  rfi.rfivalomulta,'
      '  rfi.rfivalodesc,'
      '  rfi.rfidatadesc,'
      '  rfi.rfipercmulta,'
      '  rfi.rfidtultbaixa,'
      '  rfi.titcodigo,'
      '  rfi.tngcodigo,'
      '  rfi.rfiinclusao,'
      '  rfi.edrcodigo,'
      '  rfi.cctchave'
      'FROM rfi'
      'WHERE rfi.titcodigo = :titcodigo'
      '')
  end
  object rfm: TUniQuery [30]
    SQL.Strings = (
      'select rfmchave, rfichave, meschave, flacodigo from rfm limit 0')
    Left = 832
    Top = 320
    object rfmrfmchave: TIntegerField
      FieldName = 'rfmchave'
    end
    object rfmrfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfmmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object rfmflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object tng: TUniQuery [32]
    SQL.Strings = (
      'select tngcodigo, tngidentificacao from tng')
    Left = 672
    Top = 168
    object tngtngcodigo: TIntegerField
      FieldName = 'tngcodigo'
    end
    object tngtngidentificacao: TStringField
      FieldName = 'tngidentificacao'
      Size = 50
    end
  end
  object mcgaju: TUniQuery [33]
    SQL.Strings = (
      'SELECT'
      '  mcgchave,'
      '  ccgcodigo,'
      '  mcgvalor,'
      '  mcgdata,'
      '  mcgtabela,'
      '  mcgchaveorigem,'
      '  mcgsituacao,'
      '  clbcodigo,'
      '  mcgregistro,'
      '  rfichave'
      
        'FROM mcg where mcgchaveorigem=:mcgchaveorigem and mcgtabela='#39'rfi' +
        #39' and rfichave=:rfichave and ccgcodigo=:ccgcodigo'
      '')
    Left = 872
    Top = 317
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mcgchaveorigem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ccgcodigo'
        Value = nil
      end>
    object mcgajumcgchave: TIntegerField
      FieldName = 'mcgchave'
    end
    object mcgajuccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object mcgajumcgvalor: TFloatField
      FieldName = 'mcgvalor'
    end
    object mcgajumcgdata: TDateField
      FieldName = 'mcgdata'
    end
    object mcgajumcgtabela: TStringField
      FieldName = 'mcgtabela'
      Size = 10
    end
    object mcgajumcgchaveorigem: TIntegerField
      FieldName = 'mcgchaveorigem'
    end
    object mcgajumcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
    end
    object mcgajuclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcgajumcgregistro: TDateTimeField
      FieldName = 'mcgregistro'
    end
    object mcgajurfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
  object rfmtit: TUniQuery [34]
    SQL.Strings = (
      
        'select rfm.rfichave,titcodigo from rfm,rfi where rfi.rfichave=rf' +
        'm.rfichave and rfm.meschave=:meschave group by rfichave')
    Left = 952
    Top = 273
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object mcgalt: TUniQuery [35]
    Left = 868
    Top = 377
  end
  object mcgver: TUniQuery [36]
    Left = 860
    Top = 441
  end
  object v_rfi: TUniQuery [37]
    SQL.Strings = (
      
        'select rfichave, rfinumero, rfihistorico, rfivencimento from v_r' +
        'fi where rfichave=:rfichave')
    Left = 700
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object v_rfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object v_rfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object v_rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object v_rfirfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
  end
  object ajustarfi: TUniQuery [38]
    Left = 412
    Top = 184
  end
end
