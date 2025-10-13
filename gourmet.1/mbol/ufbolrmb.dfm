inherited fbolrmb: Tfbolrmb
  ActiveControl = carcodigo
  Caption = 'Remessa de Boletos'
  ClientHeight = 561
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 532
    Width = 1008
    ExplicitTop = 532
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
    Height = 532
    ExplicitWidth = 1008
    ExplicitHeight = 532
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 504
      object Label1: TLabel
        Left = 16
        Top = 33
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = rmbcodigo
      end
      object Label2: TLabel
        Left = 16
        Top = 87
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Carteira'
        FocusControl = carcodigo
      end
      object Label3: TLabel
        Left = 16
        Top = 60
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = clbcodigo
      end
      object rmbcodigo: TDBEdit
        Left = 90
        Top = 30
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rmbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object carcodigo: TDBEdit
        Left = 90
        Top = 84
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
        Top = 57
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bBuscaBoletos: TBitBtn
        Left = 90
        Top = 129
        Width = 124
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Selecionar Boletos'
        TabOrder = 3
        OnClick = bBuscaBoletosClick
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
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT rmb.rmbcodigo'
      '     , rmb.carcodigo'
      '     , rmb.clbcodigo'
      '     , rmb.trmcodigo'
      '     , rmb.rmbnumero'
      'FROM rmb'
      'WHERE rmb.rmbcodigo = :rmbcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmbcodigo'
        Value = nil
      end>
    object registrormbcodigo: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rmbcodigo'
    end
    object registrocarcodigo: TIntegerField
      DisplayLabel = 'Carteira'
      FieldName = 'carcodigo'
      Required = True
    end
    object registrocaridentificacao: TStringField
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
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
    end
    object registroclbidentificacao: TStringField
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
    object registrormbnumero: TIntegerField
      DisplayLabel = 'N'#250'mero Arquivo'
      FieldName = 'rmbnumero'
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
      'SELECT vr.rfichave'
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
      '     , vr.rfihistorico'
      'FROM v_rfi vr'
      '  JOIN bol'
      '    ON vr.rfichave = bol.rfichave'
      '  JOIN brm'
      '    ON bol.bolchave = brm.bolchave'
      'WHERE brm.rmbcodigo = :rmbcodigo'
      'and vr.flacodigo=:flacodigo')
    Left = 316
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmbcodigo'
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
  end
  object DSrfi: TUniDataSource
    DataSet = rfi
    Left = 356
    Top = 328
  end
end
