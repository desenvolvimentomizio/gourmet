inherited fflhpagar: Tfflhpagar
  Caption = 'Pagar Folha Gerencial'
  ClientHeight = 542
  ExplicitTop = -82
  ExplicitHeight = 581
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 513
    ExplicitTop = 513
    object mostra: TProgressBar
      Left = 99
      Top = 4
      Width = 478
      Height = 21
      CustomHint = BalloonHint
      Align = alClient
      TabOrder = 4
      Visible = False
    end
  end
  inherited paginas: TPageControl
    Height = 513
    ExplicitHeight = 513
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 485
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = flhchave
      end
      object Label9: TLabel
        Left = 3
        Top = 33
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Folha'
        FocusControl = tflcodigo
      end
      object Label4: TLabel
        Left = 3
        Top = 60
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#234's'
        FocusControl = flhmes
      end
      object Label5: TLabel
        Left = 203
        Top = 60
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ano'
        FocusControl = flhano
      end
      object Label3: TLabel
        Left = 345
        Top = 60
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identificacao'
        FocusControl = flhIdentificacao
      end
      object Label6: TLabel
        Left = 3
        Top = 87
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = flhdtinicial
      end
      object Label8: TLabel
        Left = 413
        Top = 87
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Pgto'
        FocusControl = flhdtpgto
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 3
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhchave'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object tflcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'tflcodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object flhmes: TDBEdit
        Left = 136
        Top = 57
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhmes'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 2
      end
      object flhano: TDBEdit
        Left = 228
        Top = 57
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhano'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 3
      end
      object flhIdentificacao: TDBEdit
        Left = 413
        Top = 57
        Width = 148
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhIdentificacao'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 4
      end
      object flhdtinicial: TDBEdit
        Left = 136
        Top = 84
        Width = 95
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhdtinicial'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 5
      end
      object flhdtfinal: TDBEdit
        Left = 312
        Top = 84
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhdtfinal'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 6
      end
      object flhdtpgto: TDBEdit
        Left = 467
        Top = 84
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhdtpgto'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object plDetalhes: TPanel
        Left = 0
        Top = 113
        Width = 788
        Height = 372
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 8
        object plTitColaboradores: TPanel
          Left = 1
          Top = 1
          Width = 786
          Height = 26
          CustomHint = BalloonHint
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 2
          Caption = 'Colaboradores'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object btMarcarTodos: TButton
            Left = 535
            Top = 3
            Width = 124
            Height = 20
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Marcar Todos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btMarcarTodosClick
          end
          object btDesmarcarTodos: TButton
            Left = 659
            Top = 3
            Width = 124
            Height = 20
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Desmarcar Todos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btDesmarcarTodosClick
          end
        end
        object DBGListaEtd: TDBGrid
          Left = 1
          Top = 27
          Width = 786
          Height = 303
          CustomHint = BalloonHint
          Align = alClient
          DataSource = Defg
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGListaEtdCellClick
          OnDrawColumnCell = DBGListaEtdDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'eflcodigo'
              Title.Caption = ' '
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evavalor'
              Width = 85
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 1
          Top = 330
          Width = 786
          Height = 41
          CustomHint = BalloonHint
          Align = alBottom
          BorderWidth = 2
          TabOrder = 2
          object GroupBox3: TGroupBox
            Left = 663
            Top = 3
            Width = 120
            Height = 35
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Total R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object plTotalFlh: TPanel
              Left = 2
              Top = 15
              Width = 116
              Height = 18
              CustomHint = BalloonHint
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox1: TGroupBox
            Left = 600
            Top = 3
            Width = 63
            Height = 35
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Sele'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object plQtdItens: TPanel
              Left = 2
              Top = 15
              Width = 59
              Height = 18
              CustomHint = BalloonHint
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = '0000'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 220
    Top = 112
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgusactb,'
      '  cfgctbusaccg,'
      '  cfgccgcodigo,'
      '  cfg.cfgcodigo,'
      '  cfgevfpagto,'
      '  cfgphgpagto'
      'FROM cfg,'
      '     cfgmctb,'
      '     cfgmflh '
      'WHERE cfg.cfgcodigo = cfgmctb.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmflh.cfgcodigo'
      'AND cfg.cfgcodigo = :flacodigo')
    Left = 428
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
    object cfgcfgccgcodigo: TIntegerField
      FieldName = 'cfgccgcodigo'
    end
    object cfgcfgevfpagto: TIntegerField
      FieldName = 'cfgevfpagto'
    end
    object cfgcfgphgpagto: TIntegerField
      FieldName = 'cfgphgpagto'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select flhchave,eflcodigo, tflcodigo,flhidentificacao,flhmes,flh' +
        'ano,flhdtinicial,flhdtfinal,flhdtpgto, flhcriacao,clbcodigo from' +
        ' flh where flh.flhchave=:flhchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
    object registroflhchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'flhchave'
    end
    object registrotflcodigo: TIntegerField
      DisplayLabel = 'Tipo de Folha'
      FieldName = 'tflcodigo'
      Required = True
    end
    object registrotflidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tflidentificacao'
      LookupDataSet = tfl
      LookupKeyFields = 'tflcodigo'
      LookupResultField = 'tflidentificacao'
      KeyFields = 'tflcodigo'
      Size = 50
      Lookup = True
    end
    object registroeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      Required = True
    end
    object registroeflidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'eflidentificacao'
      LookupDataSet = efl
      LookupKeyFields = 'eflcodigo'
      LookupResultField = 'eflidentificacao'
      KeyFields = 'eflcodigo'
      Required = True
      Size = 35
      Lookup = True
    end
    object registroflhIdentificacao: TStringField
      FieldName = 'flhIdentificacao'
      Required = True
      Size = 35
    end
    object registroflhmes: TStringField
      FieldName = 'flhmes'
      Required = True
      EditMask = '00;1;_'
      Size = 2
    end
    object registroflhano: TStringField
      FieldName = 'flhano'
      Required = True
      EditMask = '0000;1;_'
      Size = 4
    end
    object registroflhdtinicial: TDateField
      FieldName = 'flhdtinicial'
      Required = True
    end
    object registroflhdtfinal: TDateField
      FieldName = 'flhdtfinal'
      Required = True
    end
    object registroflhdtpgto: TDateField
      FieldName = 'flhdtpgto'
      Required = True
    end
    object registroflhcriacao: TDateTimeField
      FieldName = 'flhcriacao'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  inherited pfr: TUniQuery
    Left = 464
    Top = 140
  end
  inherited dcl: TUniQuery
    Left = 612
    Top = 40
  end
  inherited cau: TUniQuery
    Left = 664
    Top = 296
  end
  inherited err: TUniQuery
    Left = 664
    Top = 228
  end
  inherited BalloonHint: TBalloonHint
    Left = 740
    Top = 224
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object efl: TUniQuery
    SQL.Strings = (
      'select eflcodigo,eflidentificacao from efl')
    Left = 712
    Top = 88
    object e: TIntegerField
      FieldName = 'eflcodigo'
    end
    object efleflidentificacao: TStringField
      FieldName = 'eflidentificacao'
      Size = 35
    end
  end
  object tfl: TUniQuery
    SQL.Strings = (
      'select tflcodigo, tflidentificacao from tfl')
    Left = 656
    Top = 88
    object tfltflcodigo: TIntegerField
      FieldName = 'tflcodigo'
    end
    object tfltflidentificacao: TStringField
      FieldName = 'tflidentificacao'
      Size = 35
    end
  end
  object Defg: TDataSource
    DataSet = efg
    Left = 252
    Top = 256
  end
  object efg: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE efg'
      'SET'
      '  eflcodigo = :eflcodigo'
      'WHERE'
      '  efgchave = :Old_efgchave AND eflcodigo = :Old_eflcodigo')
    SQL.Strings = (
      'SELECT efgchave'
      '     , flhchave'
      '     , etdcodigo'
      '     , eflcodigo'
      '     , etdidentificacao'
      '     , evavalor'
      '  from'
      '(SELECT e.efgchave'
      '     , e.flhchave'
      '     , e.etdcodigo'
      '     , e.eflcodigo'
      '     , (SELECT'
      '           etd.etdidentificacao'
      '         FROM etd'
      '         WHERE etd.etdcodigo = e.etdcodigo) AS etdidentificacao'
      '     , (SELECT'
      
        '           SUM(IF(evf.cedcodigo = 1, eva.evavalor, eva.evavalor ' +
        '* -1)) AS evavalor'
      '         FROM eva'
      '            , evf'
      '            , ced'
      '         WHERE eva.evfcodigo = evf.evfcodigo'
      '         AND evf.cedcodigo = ced.cedcodigo'
      '         AND eva.eflcodigo <> 9'
      '         AND eva.flhchave = e.flhchave'
      '         AND eva.etdcodigo = e.etdcodigo'
      '       GROUP BY eva.etdcodigo) AS evavalor'
      'FROM efg e'
      'WHERE flhchave = :flhchave'
      'AND e.eflcodigo IN (3, 6)) efg'
      'WHERE efg.evavalor>0'
      ''
      '')
    Left = 208
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
    object efgeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
    object efgefgchave: TIntegerField
      FieldName = 'efgchave'
    end
    object efgflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object efgetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object efgetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object efgevavalor: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'evavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccochave,'
      '  ctacodigo,'
      '  toccodigo,'
      '  cedcodigo,'
      '  clbcodigo,'
      '  tficodigo,'
      '  moecodigo,'
      '  ccoemissao,'
      '  ccovencimento,'
      '  cconumero,'
      '  ccohistorico,'
      '  ccovalor,'
      '  ccochaveorig,'
      '  ccochavedest,'
      '  ccoconciliado,'
      '  ccoextenso,'
      '  etdcodigo,'
      '  ccodatamov,'
      '  ccohoraregistro,'
      '  ccodataregistro,'
      '  ccofavorecido,'
      '  phgcodigo'
      'FROM cco'
      'WHERE cco.ccochave = :ccochave'
      'AND cco.ctacodigo = :ctacodigo')
    Left = 416
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
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
      DisplayLabel = 'Conciliado'
      FieldName = 'ccoconciliado'
      Required = True
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
      DisplayLabel = 'Hist'#243'rico Base'
      FieldName = 'phgcodigo'
      Required = True
    end
  end
  object efc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  efcchave,'
      '  evachave,'
      '  ccochave'
      'FROM efc limit 0')
    Left = 520
    Top = 272
    object efcefcchave: TIntegerField
      FieldName = 'efcchave'
    end
    object efcccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object efcevachave: TIntegerField
      FieldName = 'evachave'
    end
  end
  object eva: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evachave,'
      '  flhchave,'
      '  evfcodigo,'
      '  etdcodigo,'
      '  eflcodigo,'
      '  tevcodigo,'
      '  phgcodigo,'
      '  evavalor,'
      '  evahistorico,'
      '  clbcodigo,'
      '  evacriacao'
      'FROM eva limit 0')
    Left = 416
    Top = 344
    object evaevachave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'evachave'
    end
    object evaflhchave: TIntegerField
      DisplayLabel = 'Folha Gerencial'
      FieldName = 'flhchave'
      Required = True
    end
    object evaevfcodigo: TIntegerField
      DisplayLabel = 'Evento'
      FieldName = 'evfcodigo'
      Required = True
    end
    object evaetdcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'etdcodigo'
      Required = True
    end
    object evaevavalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'evavalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object evaphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      Required = True
    end
    object evaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object evaevacriacao: TDateTimeField
      FieldName = 'evacriacao'
    end
    object evatevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object evaevahistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'evahistorico'
      Size = 50
    end
    object evaeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
  end
  object ACBrExtenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 316
    Top = 304
  end
  object mcgatu: TUniQuery
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
      '  rfichave,'
      '  mcgcompetencia'
      'FROM mcg limit 0')
    Left = 333
    Top = 355
    object mcgatumcgchave: TIntegerField
      FieldName = 'mcgchave'
    end
    object mcgatuccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object mcgatumcgvalor: TFloatField
      FieldName = 'mcgvalor'
    end
    object mcgatumcgtabela: TStringField
      FieldName = 'mcgtabela'
      Size = 10
    end
    object mcgatumcgchaveorigem: TIntegerField
      FieldName = 'mcgchaveorigem'
    end
    object mcgatumcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
    end
    object mcgatuclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcgatumcgregistro: TDateTimeField
      FieldName = 'mcgregistro'
    end
    object mcgaturfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mcgatumcgdata: TDateField
      FieldName = 'mcgdata'
    end
    object mcgatumcgcompetencia: TStringField
      FieldName = 'mcgcompetencia'
      Size = 10
    end
  end
end
