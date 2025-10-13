inherited fgfl: Tfgfl
  ActiveControl = gfldatainicial
  Caption = 'Gera'#231#227'o de Fluxo Financeiro'
  ClientHeight = 120
  ClientWidth = 539
  ExplicitWidth = 555
  ExplicitHeight = 159
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 91
    Width = 539
    ExplicitTop = 91
    ExplicitWidth = 539
    inherited bconfirma: TBitBtn
      Left = 385
      ExplicitLeft = 385
    end
    inherited bcancela: TBitBtn
      Left = 460
      ExplicitLeft = 460
    end
    inherited bfechar: TBitBtn
      Left = 320
      ExplicitLeft = 320
    end
  end
  inherited paginas: TPageControl
    Width = 539
    Height = 91
    ExplicitWidth = 539
    ExplicitHeight = 91
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 531
      ExplicitHeight = 63
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = gflchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = gfldatainicial
      end
      object Label3: TLabel
        Left = 282
        Top = 33
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = gfldatafinal
      end
      object gflchave: TDBEdit
        Left = 120
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gflchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object gfldatainicial: TDBEdit
        Left = 120
        Top = 30
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gfldatainicial'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object gfldatafinal: TDBEdit
        Left = 336
        Top = 30
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gfldatafinal'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object gflagrupamento: TDBRadioGroup
        Left = 120
        Top = 57
        Width = 305
        Height = 88
        CustomHint = BalloonHint
        Caption = ' Forma de Agrupamento '
        Columns = 3
        DataField = 'gflagrupamento'
        DataSource = DSRegistro
        Items.Strings = (
          'Di'#225'rio'
          'Semanal'
          'Quinzenal'
          'Mensal'
          'Trimestral'
          'Semestral'
          'Geral')
        TabOrder = 3
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '9')
        Visible = False
      end
      object btGerar: TButton
        Left = 431
        Top = 28
        Width = 82
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Gerar Fluxo'
        TabOrder = 4
        OnClick = btGerarClick
      end
      object plflf: TPanel
        Left = 0
        Top = 63
        Width = 531
        Height = 0
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 5
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 252
    Top = 320
  end
  inherited cfg: TUniQuery
    Left = 476
    Top = 244
  end
  inherited consulta: TUniQuery
    Left = 304
    Top = 244
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gflchave,'
      '  gfldatainicial,'
      '  gfldatafinal,'
      '  gflagrupamento'
      'FROM gfl where gflchave=:gflchave')
    Left = 252
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gflchave'
        Value = nil
      end>
    object registrogflchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'gflchave'
    end
    object registrogfldatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'gfldatainicial'
    end
    object registrogfldatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'gfldatafinal'
    end
    object registrogflagrupamento: TIntegerField
      DisplayLabel = 'Agrupamento'
      FieldName = 'gflagrupamento'
    end
  end
  inherited pfr: TUniQuery
    Left = 624
  end
  inherited acoesfrm: TActionList
    Top = 212
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object flf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  flfchave,'
      '  gflchave,'
      '  flfdia,'
      '  flfvalorcpa,'
      '  flfvalorcre,'
      '  flfvalorccodeb,'
      '  flfvalorccocre,'
      '  flfvalorrh,'
      '  flfsaldo'
      'FROM flf where gflchave=:gflchave')
    Left = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gflchave'
        Value = nil
      end>
    object flfflfchave: TIntegerField
      FieldName = 'flfchave'
    end
    object flfgflchave: TIntegerField
      FieldName = 'gflchave'
    end
    object flfflfdia: TDateField
      FieldName = 'flfdia'
    end
    object flfflfvalorcpa: TFloatField
      FieldName = 'flfvalorcpa'
    end
    object flfflfvalorcre: TFloatField
      FieldName = 'flfvalorcre'
    end
    object flfflfvalorccodeb: TFloatField
      FieldName = 'flfvalorccodeb'
    end
    object flfflfvalorccocre: TFloatField
      FieldName = 'flfvalorccocre'
    end
    object flfflfvalorrh: TFloatField
      FieldName = 'flfvalorrh'
    end
    object flfflfsaldo: TFloatField
      FieldName = 'flfsaldo'
    end
  end
  object cpa: TUniQuery
    SQL.Strings = (
      
        'SELECT  rfivencimento dia,  SUM(rfisaldocapital) valor  FROM v_r' +
        'fi WHERE tfdcodigo=1 and  rfivencimento=:dia  and srfcodigo=0 GR' +
        'OUP BY rfivencimento')
    Left = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        Value = nil
      end>
  end
  object cre: TUniQuery
    SQL.Strings = (
      
        'SELECT  rfivencimento dia,  SUM(rfisaldocapital) valor  FROM v_r' +
        'fi WHERE tfdcodigo=2 and  rfivencimento=:dia  and srfcodigo=0 GR' +
        'OUP BY rfivencimento')
    Left = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        Value = nil
      end>
  end
  object ccodeb: TUniQuery
    SQL.Strings = (
      
        'SELECT ccovencimento dia, SUM(ccovalor) valor FROM cco, cta WHER' +
        'E ccovencimento=:dia and cta.ctacodigo=cco.ctacodigo and cta.cta' +
        'fluxo=1 and cco.cedcodigo=0 GROUP BY ccovencimento')
    Left = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        Value = nil
      end>
  end
  object ccocre: TUniQuery
    SQL.Strings = (
      
        'SELECT ccovencimento dia, SUM(ccovalor) valor FROM cco, cta WHER' +
        'E ccovencimento=:dia and cta.ctacodigo=cco.ctacodigo and cta.cta' +
        'fluxo=1 and cco.cedcodigo=1 GROUP BY ccovencimento')
    Left = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        Value = nil
      end>
  end
  object rh: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '     flh.flhdtpgto dia'
      '      , (SELECT'
      
        '           SUM(IF(evf.cedcodigo = 1, eva.evavalor, eva.evavalor ' +
        '* -1)) AS evavalor'
      '         FROM eva'
      '            , evf'
      '            , ced'
      '         WHERE eva.evfcodigo = evf.evfcodigo'
      '         AND evf.cedcodigo = ced.cedcodigo'
      '         AND eva.flhchave = efg.flhchave'
      '         '
      '         AND eva.eflcodigo <> 9'
      '         GROUP BY eva.flhchave) AS valor'
      'FROM efg,flh '
      '  WHERE efg.flhchave=flh.flhchave '
      '  and flh.flhdtfinal=:dia')
    Left = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        Value = nil
      end>
  end
end
