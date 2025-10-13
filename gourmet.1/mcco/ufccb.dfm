inherited fccb: Tfccb
  Caption = 'Concilia'#231#227'o Banc'#225'ria'
  ClientHeight = 634
  ClientWidth = 964
  ExplicitWidth = 980
  ExplicitHeight = 673
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 605
    Width = 964
    ExplicitTop = 605
    ExplicitWidth = 964
    inherited bconfirma: TBitBtn
      Left = 810
      Enabled = False
      ExplicitLeft = 810
    end
    inherited bcancela: TBitBtn
      Left = 885
      ExplicitLeft = 885
    end
    inherited bfechar: TBitBtn
      Left = 745
      ExplicitLeft = 745
    end
    object mostra: TProgressBar
      Left = 608
      Top = 4
      Width = 137
      Height = 21
      CustomHint = BalloonHint
      Align = alRight
      TabOrder = 4
      Visible = False
    end
    object brMarcarTodos: TButton
      Left = 99
      Top = 4
      Width = 104
      Height = 21
      CustomHint = BalloonHint
      Align = alLeft
      Caption = 'Marcar Todos'
      TabOrder = 5
      OnClick = brMarcarTodosClick
    end
    object btDesmarcarTodos: TButton
      Left = 203
      Top = 4
      Width = 104
      Height = 21
      CustomHint = BalloonHint
      Align = alLeft
      Caption = 'Desmarcar Todos'
      TabOrder = 6
      OnClick = btDesmarcarTodosClick
    end
  end
  inherited paginas: TPageControl
    Width = 964
    Height = 605
    ExplicitWidth = 964
    ExplicitHeight = 605
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 956
      ExplicitHeight = 577
      object PlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 956
        Height = 26
        CustomHint = BalloonHint
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = 'T'#237'tulo'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object plCCO: TPanel
        Left = 0
        Top = 26
        Width = 956
        Height = 551
        CustomHint = BalloonHint
        Align = alClient
        BorderWidth = 2
        TabOrder = 1
        object DBGListaCCO: TDBGrid
          Left = 3
          Top = 3
          Width = 950
          Height = 417
          CustomHint = BalloonHint
          Align = alClient
          BorderStyle = bsNone
          Color = clCream
          DataSource = Dcco
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGListaCCOCellClick
          OnDrawColumnCell = DBGListaCCODrawColumnCell
          OnDblClick = DBGListaCCODblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ccoconciliado'
              Title.Alignment = taCenter
              Title.Caption = ' '
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccochave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccoemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccovencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cnbregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cconumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccohistorico'
              Width = 380
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccovalor'
              Width = 85
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'cedcodigo'
              Title.Alignment = taCenter
              Width = 26
              Visible = True
            end>
        end
        object plRodaPeCCB: TPanel
          Left = 3
          Top = 420
          Width = 950
          Height = 36
          CustomHint = BalloonHint
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            Left = 9
            Top = 14
            Width = 94
            Height = 13
            CustomHint = BalloonHint
            Caption = 'Data da Concilia'#231#227'o'
          end
          object plTitSaldoAtual: TPanel
            Left = 566
            Top = 8
            Width = 335
            Height = 25
            CustomHint = BalloonHint
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'Total Selecionado na Conta Corrente R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object plTotalCCO: TPanel
              Left = 233
              Top = 2
              Width = 100
              Height = 21
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvLowered
              BorderWidth = 3
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object dtBase: TDateTimePicker
            Left = 109
            Top = 10
            Width = 97
            Height = 21
            CustomHint = BalloonHint
            Date = 42747.614008900460000000
            Time = 42747.614008900460000000
            TabOrder = 1
          end
          object cbParaTodos: TCheckBox
            Left = 212
            Top = 10
            Width = 261
            Height = 17
            CustomHint = BalloonHint
            Caption = 'para todos lan'#231'amentos selecionados'
            TabOrder = 2
          end
        end
        object PlDetFinche: TPanel
          Left = 3
          Top = 456
          Width = 950
          Height = 92
          CustomHint = BalloonHint
          Align = alBottom
          BorderWidth = 2
          TabOrder = 2
          Visible = False
          object PlTitDetFinalizador: TPanel
            Left = 3
            Top = 3
            Width = 944
            Height = 16
            CustomHint = BalloonHint
            Align = alTop
            Caption = 'Cheques Registados'
            TabOrder = 0
          end
          object DBlistafin: TDBGrid
            Left = 3
            Top = 19
            Width = 944
            Height = 70
            CustomHint = BalloonHint
            Align = alClient
            DataSource = Dche
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'cheemissao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chevencimento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'bcocodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chenumero'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chenome'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chevalor'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 975
    ExplicitLeft = 975
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cnbchave,'
      '  ccochave,'
      '  clbcodigo,'
      '  cnbdata,'
      '  cnbhora'
      'FROM cnb '
      'where cnbchave=:cnbchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnbchave'
        Value = nil
      end>
    object registrocnbchave: TIntegerField
      FieldName = 'cnbchave'
    end
    object registroccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrocnbdata: TDateField
      FieldName = 'cnbdata'
    end
    object registrocnbhora: TTimeField
      FieldName = 'cnbhora'
    end
  end
  inherited pfr: TUniQuery
    Left = 592
    Top = 132
  end
  inherited psf: TUniQuery
    Left = 24
    Top = 300
  end
  inherited dcl: TUniQuery
    Left = 28
    Top = 352
  end
  inherited cau: TUniQuery
    Left = 64
    Top = 400
  end
  inherited err: TUniQuery
    Left = 32
    Top = 404
  end
  inherited acoesfrm: TActionList
    Left = 116
    Top = 92
    object ActConciliar: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'ActConciliar'
      OnExecute = ActConciliarExecute
    end
  end
  object cco: TUniQuery [17]
    SQL.Strings = (
      'SELECT'
      '  ccochave,'
      '  ctacodigo,'
      '  if (cedcodigo=0,'#39'D'#39','#39'C'#39') as cedcodigo,'
      '  ccoemissao,'
      '  ccovencimento,'
      '  cconumero,'
      '  ccohistorico,'
      '  ccovalor,'
      '  ccoconciliado,'
      '  cconumero'
      'FROM cco'
      
        'where ctacodigo=:contacodigo and (ccoconciliado='#39'0'#39' or ccoconcil' +
        'iado='#39'9'#39')')
    Constraints = <>
    OnCalcFields = ccoCalcFields
    Left = 188
    Top = 388
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contacodigo'
        Value = nil
      end>
    object ccoccochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccoccoconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
    end
    object ccocedcodigo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'cedcodigo'
      Size = 3
    end
    object ccocnbregistro: TDateField
      DisplayLabel = 'Registro Bco'
      FieldKind = fkCalculated
      FieldName = 'cnbregistro'
      Calculated = True
    end
    object ccocconumero: TStringField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'cconumero'
      Size = 10
    end
    object ccoccovencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'ccovencimento'
    end
  end
  object Dcco: TDataSource [18]
    DataSet = cco
    OnDataChange = DccoDataChange
    Left = 224
    Top = 389
  end
  object cnb: TUniQuery [19]
    SQL.Strings = (
      'SELECT'
      '  cnbchave,'
      '  ccochave,'
      '  clbcodigo,'
      '  cnbregistro,'
      '  cnbdata,'
      '  cnbhora'
      'FROM cnb where ccochave=:ccochave')
    Constraints = <>
    Left = 342
    Top = 362
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object cnbcnbchave: TIntegerField
      FieldName = 'cnbchave'
    end
    object cnbccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object cnbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object cnbcnbregistro: TDateField
      FieldName = 'cnbregistro'
    end
    object cnbcnbdata: TDateField
      FieldName = 'cnbdata'
    end
    object cnbcnbhora: TTimeField
      FieldName = 'cnbhora'
    end
  end
  object cta: TUniQuery [20]
    Constraints = <>
    Left = 296
    Top = 288
  end
  object cnbdata: TUniQuery [21]
    SQL.Strings = (
      'select cnbregistro, ccochave from cnb where ccochave=:ccochave')
    Constraints = <>
    Left = 488
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object cnbdataccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object cnbdatacnbregistro: TDateField
      FieldName = 'cnbregistro'
    end
  end
  inherited ImgBusca: TPngImageList
    Left = 692
    Top = 96
    Bitmap = {}
  end
  object Dche: TUniDataSource
    DataSet = che
    Left = 880
    Top = 496
  end
  object che: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  che.chechave, '
      '  che.chevencimento,'
      '  che.cheemissao,'
      '  che.chenumero,'
      '  che.chevalor,'
      '  ltc.schcodigo,'
      '  ltc.dtlchave,'
      '  che.bcocodigo,'
      '  che.chenome'
      'FROM ltc'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  INNER JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      'where  dtl.ltechave=:ltechave ')
    Constraints = <>
    Left = 848
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      EditMask = '!99/99/0000;1;_'
    end
    object chechevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object chechenumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'chenumero'
      Size = 15
    end
    object chechenome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'chenome'
      Size = 50
    end
    object chebcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
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
  end
  object dtl: TUniQuery
    SQL.Strings = (
      
        'select   dtlchave, lte.ltechave, cedcodigo, dtl.mdacodigo,if (ce' +
        'dcodigo=0,dtlvalor*-1,  dtlvalor) as dtlvalor, mdaidentificacao,' +
        ' lte.tfdcodigo, mda.mdacodigo from dtl, mda, lte, clt'
      
        'where lte.ltechave=dtl.ltechave  and clt.ltechave=dtl.ltechave  ' +
        'and clt.ltechave=dtl.ltechave and dtl.mdacodigo=mda.mdacodigo an' +
        'd  clt.ccochave=:ccochave'
      ''
      ''
      ''
      '/*'
      'SET @sql = (SELECT'
      '    CASE WHEN (SELECT'
      '            dtlchave'
      '          FROM ccd'
      
        '          WHERE ccd.ccochave = :ccochave limit 1) THEN CONCAT('#39'S' +
        'ELECT DISTINCT '
      '                                  dtlchave'
      '                                , lte.ltechave'
      '                                , cedcodigo'
      '                                , dtl.mdacodigo'
      
        '                                , IF(cedcodigo=0, dtlvalor*-1,  ' +
        'dtlvalor) AS dtlvalor'
      '                                , mdaidentificacao'
      '                                , lte.tfdcodigo'
      '                                , mda.mdacodigo '
      '                             FROM dtl'
      
        '                            INNER JOIN mda ON dtl.mdacodigo = md' +
        'a.mdacodigo '
      
        '                            INNER JOIN lte ON lte.ltechave = dtl' +
        '.ltechave'
      
        '                            INNER JOIN clt ON clt.ltechave = dtl' +
        '.ltechave'
      
        '                            WHERE dtl.dtlchave = (SELECT dtlchav' +
        'e FROM ccd  WHERE ccd.ccochave = '#39', :ccochave, '#39' limit 1)'#39') ELSE' +
        ' CONCAT('#39'SELECT dtlchave'
      '                         , lte.ltechave'
      '                 '#9'       , cedcodigo'
      #9'                       , dtl.mdacodigo'
      
        #9'                       , IF(cedcodigo=0, dtlvalor*-1,  dtlvalor' +
        ') AS dtlvalor'
      #9'                       , mdaidentificacao'
      #9'                       , lte.tfdcodigo'
      #9'                       , mda.mdacodigo '
      '                      FROM dtl'
      
        '                     INNER JOIN mda ON dtl.mdacodigo = mda.mdaco' +
        'digo '
      
        '                     INNER JOIN lte ON lte.ltechave = dtl.ltecha' +
        've'
      
        '                     INNER JOIN clt ON clt.ltechave = dtl.ltecha' +
        've '
      
        '                     WHERE clt.ccochave='#39', :ccochave) END REULTA' +
        'DO'
      '  FROM dual);'
      ''
      'PREPARE stmt1 FROM @sql;'
      'EXECUTE stmt1;'
      'DEALLOCATE PREPARE stmt1;'
      ''
      '*/')
    Constraints = <>
    Left = 792
    Top = 492
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
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
    object dtlmdaidentificacao: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'mdaidentificacao'
      Size = 30
    end
    object dtldtlvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dtltfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
end
