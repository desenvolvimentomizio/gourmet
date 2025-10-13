inherited fgcb: Tfgcb
  ActiveControl = etdcodigo
  Caption = 'Registro de Cobran'#231'a'
  ClientHeight = 661
  ClientWidth = 1008
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 632
    Width = 1008
    inherited bconfirma: TBitBtn
      Left = 854
    end
    inherited bcancela: TBitBtn
      Left = 929
    end
    inherited bfechar: TBitBtn
      Left = 789
    end
  end
  inherited paginas: TPageControl
    Width = 1008
    Height = 632
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 15
        Top = 19
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = gcbcodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 46
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente'
        FocusControl = etdcodigo
      end
      object Label4: TLabel
        Left = 15
        Top = 100
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contato'
        FocusControl = gcbcontato
      end
      object Label5: TLabel
        Left = 15
        Top = 484
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Registro'
        FocusControl = gcbemissao
      end
      object Label6: TLabel
        Left = 15
        Top = 511
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Previs'#227'o Pagamento'
        FocusControl = gcbprevisao
      end
      object Label3: TLabel
        Left = 15
        Top = 73
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usu'#225'rio'
        FocusControl = clbcodigo
      end
      object Label7: TLabel
        Left = 15
        Top = 538
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#245'es'
        FocusControl = gcbprevisao
      end
      object gcbcodigo: TDBEdit
        Left = 120
        Top = 16
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gcbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 120
        Top = 43
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = etdcodigoExit
      end
      object gcbcontato: TDBEdit
        Left = 120
        Top = 97
        Width = 300
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gcbcontato'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object gcbemissao: TDBEdit
        Left = 120
        Top = 481
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gcbemissao'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 4
      end
      object gcbprevisao: TDBEdit
        Left = 120
        Top = 508
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gcbprevisao'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object clbcodigo: TDBEdit
        Left = 120
        Top = 70
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 6
      end
      object gcbobservacao: TDBMemo
        Left = 120
        Top = 535
        Width = 860
        Height = 50
        CustomHint = BalloonHint
        DataField = 'gcbobservacao'
        DataSource = DSRegistro
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object PlParcelas: TPanel
        Left = 120
        Top = 135
        Width = 860
        Height = 340
        CustomHint = BalloonHint
        TabOrder = 0
        object DBGLista: TDBGrid
          Left = 1
          Top = 1
          Width = 858
          Height = 283
          CustomHint = BalloonHint
          TabStop = False
          Align = alClient
          BorderStyle = bsNone
          Color = clCream
          DataSource = DSrfi
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGListaCellClick
          OnDrawColumnCell = DBGListaDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'rfiselecionado'
              Title.Caption = ' '
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfichave'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfiemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfinumero'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'srfidentificacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidtultbaixa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidias'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldocapital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidesconto'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfihistorico'
              Width = 200
              Visible = True
            end>
        end
        object PlDetalhe: TPanel
          Left = 1
          Top = 284
          Width = 858
          Height = 55
          CustomHint = BalloonHint
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 1
          TabOrder = 1
          object GBTotSelecionados: TGroupBox
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 400
            Height = 53
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alLeft
            Caption = 'Total Selecionado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Padding.Left = 10
            ParentFont = False
            TabOrder = 0
            object GBSelTotal: TGroupBox
              Left = 277
              Top = 15
              Width = 110
              Height = 36
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Total R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object PlSelTotal: TPanel
                Left = 2
                Top = 15
                Width = 106
                Height = 19
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
            object GBSelAVencer: TGroupBox
              Left = 167
              Top = 15
              Width = 110
              Height = 36
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'A Vencer R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object PlSelAVencer: TPanel
                Left = 2
                Top = 15
                Width = 106
                Height = 19
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
            object GBSelVencido: TGroupBox
              Left = 57
              Top = 15
              Width = 110
              Height = 36
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Vencido R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object PlSelVencido: TPanel
                Left = 2
                Top = 15
                Width = 106
                Height = 19
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
            object GroupBox6: TGroupBox
              Left = 12
              Top = 15
              Width = 45
              Height = 36
              Margins.Left = 50
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              CustomHint = BalloonHint
              Align = alLeft
              Caption = ' Qtde'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object PlQtdParceSel: TPanel
                Left = 2
                Top = 15
                Width = 41
                Height = 19
                Margins.Left = 0
                Margins.Right = 0
                Margins.Bottom = 0
                CustomHint = BalloonHint
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 2
                Caption = '0'
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
          object GBTotalGeral: TGroupBox
            AlignWithMargins = True
            Left = 421
            Top = 1
            Width = 400
            Height = 53
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alLeft
            Caption = 'Total Geral'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Padding.Left = 10
            ParentFont = False
            TabOrder = 1
            object GBGeralVencido: TGroupBox
              Left = 57
              Top = 15
              Width = 110
              Height = 36
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Vencido R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object PlGeralVencido: TPanel
                Left = 2
                Top = 15
                Width = 106
                Height = 19
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
            object GBGeralAVencer: TGroupBox
              Left = 167
              Top = 15
              Width = 110
              Height = 36
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'A Vencer R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object PlGeralAVencer: TPanel
                Left = 2
                Top = 15
                Width = 106
                Height = 19
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
            object GBGeralTotal: TGroupBox
              Left = 277
              Top = 15
              Width = 110
              Height = 36
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Total R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object PlGeralTotal: TPanel
                Left = 2
                Top = 15
                Width = 106
                Height = 19
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
              Left = 12
              Top = 15
              Width = 45
              Height = 36
              Margins.Left = 50
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              CustomHint = BalloonHint
              Align = alLeft
              Caption = ' Qtde'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object PlGeralQtdParce: TPanel
                Left = 2
                Top = 15
                Width = 41
                Height = 19
                Margins.Left = 0
                Margins.Right = 0
                Margins.Bottom = 0
                CustomHint = BalloonHint
                Align = alClient
                BevelOuter = bvNone
                Caption = '0'
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
  end
  inherited DSRegistro: TUniDataSource
    Left = 204
    Top = 264
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gcb.gcbcodigo,'
      '  gcb.etdcodigo,'
      '  gcb.clbcodigo,'
      '  gcb.gcbcontato,'
      '  gcb.gcbemissao,'
      '  gcb.gcbprevisao,'
      '  gcb.gcbobservacao'
      'FROM gcb'
      'WHERE gcb.gcbcodigo = :gcbcodigo')
    Left = 204
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gcbcodigo'
        Value = nil
      end>
    object registrogcbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gcbcodigo'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 60
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      DisplayLabel = 'Cobrador'
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 30
      Lookup = True
    end
    object registrogcbcontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'gcbcontato'
      Required = True
      Size = 60
    end
    object registrogcbemissao: TDateField
      DisplayLabel = 'Data'
      FieldName = 'gcbemissao'
      Required = True
    end
    object registrogcbprevisao: TDateField
      DisplayLabel = 'Previs'#227'o de Pagamento'
      FieldName = 'gcbprevisao'
      Required = True
    end
    object registrogcbobservacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'gcbobservacao'
      Required = True
      Size = 1000
    end
  end
  inherited dcl: TUniQuery
    Left = 604
    Top = 112
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao'
      'FROM etd')
    Left = 252
    Top = 40
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clb.clbcodigo,'
      '  clb.clbidentificacao'
      'FROM clb')
    Left = 292
    Top = 40
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
  end
  object rfi: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE rfi'
      'SET rfi.rfidtprevisao = :rfidtprevisao'
      'WHERE rfi.rfichave = :rfichave')
    SQL.Strings = (
      'SELECT'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  rfi.tfdcodigo,'
      '  rfi.flacodigo,'
      '  rfi.tficodigo,'
      '  rfi.bcocodigo,'
      '  rfi.carcodigo,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfidentificacao,'
      '  rfi.srfcodigo,'
      '  rfi.frrcodigo,'
      '  rfi.rfipercmesmora,'
      '  rfi.rfirepetir,'
      '  rfi.rfiprevisao,'
      '  rfi.rfivalorparcela,'
      '  rfi.moecodigo,'
      '  rfi.rfidatadesc,'
      '  rfi.rfivalodesc,'
      '  rfi.rfidatamulta,'
      '  rfi.rfipercmulta,'
      '  rfi.rfivalomulta,'
      '  rfi.etdidentificacao,'
      '  rfi.tfiidentificacao,'
      '  rfi.caridentificacao,'
      '  rfi.rfidtultbaixa,'
      '  rfi.rfidias,'
      '  rfi.rfibaixadocapital,'
      '  rfi.rfisaldocapital,'
      '  rfi.rfijuros,'
      '  rfi.rfimulta,'
      '  rfi.rfidesconto,'
      '  rfi.rfisaldogeral,'
      '  rfi.rfimoradia,'
      '  rfi.bconome,'
      '  rfi.titcodigo,'
      '  '
      '  -- Data de Previs'#227'o para Pagamento'
      '  rfi.rfidtprevisao'
      'FROM v_rfi rfi'
      'WHERE rfi.srfcodigo NOT IN (2, 3)'
      'AND rfi.tfdcodigo = 2'
      'AND IF((rfi.rfidtprevisao < CURDATE())'
      'OR (rfi.rfidtprevisao IS NULL), rfi.rfichave, NOT rfi.rfichave)'
      'AND rfi.etdcodigo = :etdcodigo'
      'ORDER BY rfi.rfivencimento, rfi.rfinumero')
    Left = 280
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfirfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object rfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Capital R$'
      FieldName = 'rfivalor'
    end
    object rfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object rfisrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object rfirfidtultbaixa: TDateField
      DisplayLabel = #218'ltima Baixa'
      FieldName = 'rfidtultbaixa'
    end
    object rfirfidias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'rfidias'
    end
    object rfirfibaixadocapital: TFloatField
      DisplayLabel = 'Bx. Capital R$'
      FieldName = 'rfibaixadocapital'
    end
    object rfirfisaldocapital: TFloatField
      DisplayLabel = 'Saldo Capital R$'
      FieldName = 'rfisaldocapital'
    end
    object rfirfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
    end
    object rfirfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
    end
    object rfirfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
    end
    object rfirfisaldogeral: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'rfisaldogeral'
    end
    object rfirfidtprevisao: TDateField
      FieldName = 'rfidtprevisao'
    end
  end
  object DSrfi: TUniDataSource
    DataSet = VTrfi
    Left = 280
    Top = 295
  end
  object VTrfi: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    Left = 324
    Top = 255
    Data = {03000000000000000000}
    object VTrfirfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object VTrfirfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object VTrfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object VTrfirfinumero: TStringField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'rfinumero'
    end
    object VTrfirfivalor: TFloatField
      DisplayLabel = 'Capital R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object VTrfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object VTrfisrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object VTrfirfidtultbaixa: TDateField
      DisplayLabel = #218'ltima Baixa'
      FieldName = 'rfidtultbaixa'
    end
    object VTrfirfidias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'rfidias'
    end
    object VTrfirfibaixadocapital: TFloatField
      DisplayLabel = 'Bx. Capital R$'
      FieldName = 'rfibaixadocapital'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object VTrfirfisaldocapital: TFloatField
      DisplayLabel = 'Saldo Capital R$'
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object VTrfirfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object VTrfirfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object VTrfirfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object VTrfirfisaldogeral: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object VTrfirfiselecionado: TIntegerField
      FieldName = 'rfiselecionado'
    end
  end
  object gcp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gcp.gcpcodigo,'
      '  gcp.gcbcodigo,'
      '  gcp.rfichave'
      'FROM gcp'
      'WHERE gcp.gcpcodigo = :gcpcodigo')
    Left = 380
    Top = 327
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gcpcodigo'
        Value = nil
      end>
    object gcpgcpcodigo: TIntegerField
      FieldName = 'gcpcodigo'
    end
    object gcpgcbcodigo: TIntegerField
      FieldName = 'gcbcodigo'
    end
    object gcprfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
end
