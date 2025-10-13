inherited fbolgeb: Tfbolgeb
  ActiveControl = carcodigo
  Caption = 'Gera'#231#227'o de Boletos'
  ClientHeight = 502
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 473
    Width = 1008
    TabOrder = 1
    ExplicitTop = 473
    ExplicitWidth = 1008
    inherited bconfirma: TBitBtn
      Left = 854
      ExplicitLeft = 854
    end
    inherited bcancela: TBitBtn
      Left = 929
      ExplicitLeft = 929
    end
    inherited bfechar: TBitBtn
      Left = 789
      ExplicitLeft = 789
    end
  end
  inherited paginas: TPageControl
    Width = 1008
    Height = 473
    TabOrder = 0
    ExplicitWidth = 1008
    ExplicitHeight = 473
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 445
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = gebcodigo
      end
      object Label2: TLabel
        Left = 24
        Top = 86
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Carteira'
        FocusControl = carcodigo
      end
      object Label3: TLabel
        Left = 24
        Top = 59
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usu'#225'rio'
        FocusControl = clbcodigo
      end
      object gebcodigo: TDBEdit
        Left = 90
        Top = 29
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gebcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object carcodigo: TDBEdit
        Left = 90
        Top = 83
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'carcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = carcodigoEnter
      end
      object clbcodigo: TDBEdit
        Left = 90
        Top = 56
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bBuscaParcelas: TBitBtn
        Left = 90
        Top = 129
        Width = 124
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Selecionar Parcelas'
        TabOrder = 3
        OnClick = bBuscaParcelasClick
      end
      object PlParcelas: TPanel
        Left = 90
        Top = 160
        Width = 880
        Height = 270
        CustomHint = BalloonHint
        TabOrder = 4
        object GBTotalParcelas: TGroupBox
          AlignWithMargins = True
          Left = 759
          Top = 231
          Width = 100
          Height = 38
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 20
          Margins.Bottom = 0
          CustomHint = BalloonHint
          Align = alRight
          Caption = ' TOTAL R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object PlTotalParcelasSel: TPanel
            Left = 2
            Top = 16
            Width = 96
            Height = 20
            CustomHint = BalloonHint
            Align = alClient
            Alignment = taRightJustify
            BevelOuter = bvLowered
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
        object GBParcelas: TGroupBox
          Left = 699
          Top = 231
          Width = 60
          Height = 38
          CustomHint = BalloonHint
          Align = alRight
          Caption = 'Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object PlQtdeSel: TPanel
            Left = 2
            Top = 16
            Width = 56
            Height = 20
            CustomHint = BalloonHint
            Align = alClient
            BevelOuter = bvLowered
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
        object DBGParcelas: TDBGrid
          Left = 1
          Top = 1
          Width = 878
          Height = 230
          CustomHint = BalloonHint
          TabStop = False
          Align = alTop
          BorderStyle = bsNone
          Color = clCream
          DataSource = DSrfi
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGParcelasDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'rfichave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 280
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfiemissao'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivencimento'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfinumero'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidesconto'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Visible = True
            end>
        end
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgcodigo'
      '     , cfgcarteirapadrao'
      'FROM cfgmbol')
    object cfgcfgcarteirapadrao: TIntegerField
      FieldName = 'cfgcarteirapadrao'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT gebcodigo'
      '     , carcodigo'
      '     , clbcodigo'
      '     , trmcodigo'
      'FROM geb'
      'WHERE gebcodigo = :gebcodigo')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gebcodigo'
        Value = nil
      end>
    object registrogebcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gebcodigo'
    end
    object registrocarcodigo: TIntegerField
      DisplayLabel = 'Carteira'
      FieldName = 'carcodigo'
      Required = True
    end
    object registrocaridentificacao: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'caridentificacao'
      LookupDataSet = car
      LookupKeyFields = 'carcodigo'
      LookupResultField = 'caridentificacao'
      KeyFields = 'carcodigo'
      Size = 30
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 30
      Lookup = True
    end
    object registrotrmcodigo: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'trmcodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT c.clbcodigo'
      '     , c.clbidentificacao'
      'FROM clb c')
    Left = 268
    Top = 264
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
  end
  object car: TUniQuery
    SQL.Strings = (
      'SELECT c.carcodigo'
      '     , c.caridentificacao'
      'FROM car c')
    Left = 316
    Top = 264
    object carcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object carcaridentificacao: TStringField
      FieldName = 'caridentificacao'
      Size = 35
    end
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT distinct vr.rfichave'
      '     , vr.titcodigo'
      '     , vr.etdcodigo'
      '     , vr.etdidentificacao'
      '     , vr.bcocodigo'
      '     , vr.bconome'
      '     , vr.carcodigo'
      '     , vr.caridentificacao'
      '     , vr.rfiemissao'
      '     , vr.rfivencimento'
      '     , vr.rfidias'
      '     , vr.srfidentificacao'
      '     , vr.rfinumero'
      '     , vr.rfivalor'
      '     , vr.rfijuros'
      '     , vr.rfimulta'
      '     , vr.rfidesconto'
      '     , vr.rfisaldogeral'
      '     , vr.rfisaldocapital'
      '     , vr.rfihistorico'
      'FROM v_rfi vr'
      '  JOIN gbr g'
      '    ON vr.rfichave = g.rfichave'
      'WHERE g.gebcodigo = :gebcodigo'
      'and vr.flacodigo=:flacodigo')
    Left = 316
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gebcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'rfichave'
    end
    object rfititcodigo: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titcodigo'
    end
    object rfietdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'etdcodigo'
    end
    object rfietdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object rfibcocodigo: TStringField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object rfibconome: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bconome'
      Size = 50
    end
    object rficarcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Carteira'
      FieldName = 'carcodigo'
    end
    object rfirfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object rfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object rfirfidias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'rfidias'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
    end
    object rfisrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfisaldogeral: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object rfirfisaldocapital: TFloatField
      FieldName = 'rfisaldocapital'
    end
  end
  object DSrfi: TUniDataSource
    DataSet = rfi
    Left = 356
    Top = 328
  end
  object gbr: TUniQuery
    SQL.Strings = (
      'SELECT gbrcodigo'
      '     , gebcodigo'
      '     , rfichave'
      'FROM gbr'
      'WHERE gbrcodigo = :gbrcodigo')
    Left = 259
    Top = 339
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gbrcodigo'
        Value = nil
      end>
    object gbrgbrcodigo: TIntegerField
      FieldName = 'gbrcodigo'
    end
    object gbrgebcodigo: TIntegerField
      FieldName = 'gebcodigo'
    end
    object gbrrfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
end
