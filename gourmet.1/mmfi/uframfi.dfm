inherited framfi: Tframfi
  Width = 1230
  Height = 775
  ExplicitWidth = 1230
  ExplicitHeight = 775
  inherited PlGeral: TPanel
    Width = 1230
    Height = 775
    ExplicitWidth = 1230
    ExplicitHeight = 775
    inherited SplBotoes: TSplitter
      Height = 755
      ExplicitHeight = 749
    end
    inherited PlBotoes: TPanel
      Height = 755
      Visible = False
      ExplicitHeight = 755
      inherited ImageLogoBase: TImage
        Top = 676
        ExplicitTop = 670
      end
      inherited PlInfo: TPanel
        Top = 737
        ExplicitTop = 737
      end
      inherited SBBotoes: TScrollBox
        Height = 676
        ExplicitHeight = 676
      end
    end
    inherited PlLista: TPanel
      Width = 1086
      Height = 755
      ExplicitWidth = 1086
      ExplicitHeight = 755
      inherited SplLista: TSplitter
        Top = 743
        Width = 1086
        ExplicitTop = 737
        ExplicitWidth = 1086
      end
      inherited SpFilter: TSplitter
        Width = 1086
        ExplicitWidth = 1086
      end
      inherited PlRodaPe: TPanel
        Top = 748
        Width = 1086
        Height = 7
        Visible = True
        ExplicitTop = 748
        ExplicitWidth = 1086
        ExplicitHeight = 7
      end
      inherited PlFiltros: TPanel
        Width = 1086
        Visible = False
        ExplicitWidth = 1086
      end
      inherited PlSelecao: TPanel
        Width = 1086
        ExplicitWidth = 1086
        inherited GBPlSelecao: TGroupBox
          Width = 1082
          ExplicitWidth = 1082
          inherited DBLista: TDBGrid
            Width = 975
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1086
        Height = 614
        Caption = ''
        ExplicitWidth = 1086
        ExplicitHeight = 614
        inherited DBGLista: TDBGrid
          Width = 33
          Height = 243
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          BorderStyle = bsSingle
          Visible = False
          Columns = <
            item
              Expanded = False
              FieldName = 'ltechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ltedata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lteprincipal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ltemulta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ltejuros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ltedesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ltetotal'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 243
          Width = 1086
          Height = 371
          Visible = True
          ExplicitTop = 243
          ExplicitWidth = 1086
          ExplicitHeight = 371
          object plRegistroFinanceiro: TPanel
            Left = 1
            Top = 1
            Width = 1084
            Height = 107
            Align = alTop
            TabOrder = 0
            object GroupBox2: TGroupBox
              Left = 1
              Top = 1
              Width = 1082
              Height = 105
              Align = alClient
              Caption = 'Regitros em Conta Corrente do Lote '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBGContaCorrente: TDBGrid
                AlignWithMargins = True
                Left = 2
                Top = 21
                Width = 1078
                Height = 82
                Margins.Left = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                BorderStyle = bsNone
                Color = clHighlightText
                DataSource = Dcco
                DrawingStyle = gdsGradient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = DBGContaCorrenteDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ccochave'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ctacodigo'
                    Width = 36
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ctaidentificacao'
                    Width = 150
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
                    FieldName = 'ccovalor'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ccohistorico'
                    Width = 128
                    Visible = True
                  end>
              end
            end
          end
          object plCheques: TPanel
            Left = 1
            Top = 108
            Width = 1084
            Height = 173
            Align = alClient
            TabOrder = 1
            object GBDetalhes: TGroupBox
              Left = 767
              Top = 1
              Width = 316
              Height = 171
              Align = alRight
              Caption = 'Detalhes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBlistadtpl: TDBGrid
                Left = 2
                Top = 16
                Width = 312
                Height = 153
                Align = alClient
                DataSource = Ddtl
                DrawingStyle = gdsGradient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = DBlistadtplDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'mdacodigo'
                    Title.Caption = 'C'#243'd.'
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'mdaidentificacao'
                    Width = 160
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'dtlvalor'
                    Visible = True
                  end>
              end
            end
            object plCheRcd: TPanel
              Left = 1
              Top = 1
              Width = 766
              Height = 171
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 2
              TabOrder = 1
              object GBCheques: TGroupBox
                Left = 2
                Top = 2
                Width = 762
                Height = 71
                Align = alClient
                Caption = 'Cheques'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object DBlistafin: TDBGrid
                  Left = 2
                  Top = 18
                  Width = 758
                  Height = 51
                  Align = alClient
                  DataSource = Dche
                  DrawingStyle = gdsGradient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnDrawColumnCell = DBlistafinDrawColumnCell
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'cheemissao'
                      ReadOnly = True
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'chevencimento'
                      ReadOnly = True
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'bcocodigo'
                      ReadOnly = True
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'chenumero'
                      ReadOnly = True
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'chenome'
                      ReadOnly = True
                      Width = 100
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'chevalor'
                      ReadOnly = True
                      Width = 100
                      Visible = True
                    end>
                end
              end
              object GbCartoes: TGroupBox
                Left = 2
                Top = 73
                Width = 762
                Height = 96
                Align = alBottom
                Caption = 'Cart'#245'es de Cr'#233'dito e D'#233'bito'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object DBGrid1: TDBGrid
                  Left = 2
                  Top = 18
                  Width = 758
                  Height = 76
                  Align = alClient
                  DataSource = Drdc
                  DrawingStyle = gdsGradient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'rdcdata'
                      ReadOnly = True
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'etdapelido'
                      ReadOnly = True
                      Width = 150
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'rdcnrauto'
                      ReadOnly = True
                      Width = 150
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'rdcvalor'
                      ReadOnly = True
                      Width = 100
                      Visible = True
                    end>
                end
              end
            end
          end
          object plEstornar: TPanel
            Left = 1
            Top = 281
            Width = 1084
            Height = 89
            Align = alBottom
            TabOrder = 2
            object Bevel1: TBevel
              Left = 195
              Top = 6
              Width = 870
              Height = 18
            end
            object Label7: TLabel
              Left = 8
              Top = 36
              Width = 120
              Height = 13
              Caption = 'Complemento do Estorno'
            end
            object Label8: TLabel
              Left = 8
              Top = 9
              Width = 83
              Height = 13
              Caption = 'C'#243'digo do Motivo'
              FocusControl = meacodigo
            end
            object meamotivo: TDBText
              Left = 199
              Top = 8
              Width = 858
              Height = 17
              DataField = 'meamotivo'
              DataSource = Dccm
            end
            object EdMotivo: TEdit
              Left = 142
              Top = 32
              Width = 923
              Height = 21
              Color = clYellow
              TabOrder = 1
              OnKeyPress = meamotivoKeyPress
            end
            object meacodigo: TDBEdit
              Left = 142
              Top = 5
              Width = 51
              Height = 21
              Color = clYellow
              DataField = 'meacodigo'
              DataSource = Dccm
              TabOrder = 0
              OnEnter = meacodigoEnter
              OnExit = meacodigoExit
            end
            object bcancela: TButton
              Left = 986
              Top = 59
              Width = 75
              Height = 25
              Caption = 'Cancela'
              TabOrder = 2
              OnClick = bcancelaClick
            end
            object bconfirma: TButton
              Left = 905
              Top = 59
              Width = 75
              Height = 25
              Caption = 'Confirma'
              TabOrder = 3
              OnClick = bconfirmaClick
            end
          end
        end
        inherited plSugestao: TPanel
          TabOrder = 4
        end
        object GBTitulos: TGroupBox
          AlignWithMargins = True
          Left = 305
          Top = 3
          Width = 781
          Height = 240
          Margins.Left = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'T'#237'tulos do Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object DBGTitulos: TDBGrid
            AlignWithMargins = True
            Left = 2
            Top = 21
            Width = 777
            Height = 217
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = bsNone
            Color = clHighlightText
            DataSource = Drfi
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGTitulosDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'rfichave'
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
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfinumero'
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
                FieldName = 'rfivalor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'srfidentificacao'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfihistorico'
                Width = 200
                Visible = True
              end>
          end
        end
        object GBLote: TGroupBox
          Left = 33
          Top = 0
          Width = 272
          Height = 243
          Align = alLeft
          Caption = 'Informa'#231#245'es do Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label6: TLabel
            Left = 16
            Top = 28
            Width = 105
            Height = 14
            Caption = 'Data do Registro'
            FocusControl = ltedata
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 16
            Top = 52
            Width = 67
            Height = 16
            Caption = 'Principal R$'
            FocusControl = lteprincipal
          end
          object Label2: TLabel
            Left = 16
            Top = 78
            Width = 50
            Height = 16
            Caption = 'Multa R$'
            FocusControl = ltemulta
          end
          object Label3: TLabel
            Left = 16
            Top = 104
            Width = 49
            Height = 16
            Caption = 'Juros R$'
            FocusControl = ltejuros
          end
          object Label4: TLabel
            Left = 16
            Top = 130
            Width = 71
            Height = 16
            Caption = 'Desconto R$'
            FocusControl = ltedesconto
          end
          object Label5: TLabel
            Left = 16
            Top = 156
            Width = 52
            Height = 14
            Caption = 'Total R$'
            FocusControl = ltetotal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ltedata: TDBEdit
            Left = 155
            Top = 25
            Width = 103
            Height = 22
            TabStop = False
            DataField = 'ltedata'
            DataSource = DSTabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object lteprincipal: TDBEdit
            Left = 155
            Top = 49
            Width = 104
            Height = 24
            TabStop = False
            DataField = 'lteprincipal'
            DataSource = DSTabela
            ReadOnly = True
            TabOrder = 1
          end
          object ltemulta: TDBEdit
            Left = 155
            Top = 75
            Width = 104
            Height = 24
            TabStop = False
            DataField = 'ltemulta'
            DataSource = DSTabela
            ReadOnly = True
            TabOrder = 2
          end
          object ltejuros: TDBEdit
            Left = 155
            Top = 101
            Width = 104
            Height = 24
            TabStop = False
            DataField = 'ltejuros'
            DataSource = DSTabela
            ReadOnly = True
            TabOrder = 3
          end
          object ltedesconto: TDBEdit
            Left = 155
            Top = 127
            Width = 104
            Height = 24
            TabStop = False
            DataField = 'ltedesconto'
            DataSource = DSTabela
            ReadOnly = True
            TabOrder = 4
          end
          object ltetotal: TDBEdit
            Left = 155
            Top = 153
            Width = 104
            Height = 22
            TabStop = False
            DataField = 'ltetotal'
            DataSource = DSTabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object novadata: TDateTimePicker
            Left = 16
            Top = 181
            Width = 115
            Height = 24
            Date = 43061.802169918980000000
            Time = 43061.802169918980000000
            TabOrder = 6
          end
          object Button1: TButton
            Left = 137
            Top = 180
            Width = 122
            Height = 25
            Caption = 'Ajustar Data'
            TabOrder = 7
            OnClick = Button1Click
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1230
      ExplicitWidth = 1230
      inherited plid: TPanel
        Left = 780
        ExplicitLeft = 780
      end
      inherited PlSair: TPanel
        Left = 1024
        ExplicitLeft = 1024
      end
    end
  end
  inherited acoes: TActionList
    object ActEstornar: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Estornar'
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
    inherited ActPesquisar: TAction
      Enabled = False
    end
    object ActRecibo: TAction [7]
      Category = 'Manuten'#231#227'o'
      Caption = 'Reimprimir Recibo'
      OnExecute = ActReciboExecute
    end
    inherited ActVerFiltros: TAction
      Enabled = False
    end
    inherited ActFiltrar: TAction
      Enabled = False
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 366
    Top = 51
  end
  inherited MenuManutencao: TPopupMenu
    Left = 616
    Top = 16
  end
  inherited mdl: TUniQuery
    Left = 784
    Top = 36
  end
  inherited dau: TUniQuery
    Left = 820
    Top = 36
  end
  inherited act: TUniQuery
    Left = 744
    Top = 36
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lte.ltechave,'
      '  lte.tfdcodigo,'
      '  lte.ltedata,'
      '  lte.lteprincipal,'
      '  lte.ltemulta,'
      '  lte.ltejuros,'
      '  lte.ltedesconto,'
      '  lte.ltetotal,'
      '  lte.ltehistorico'
      'FROM rfi'
      '  JOIN mfi'
      '    ON rfi.rfichave = mfi.rfichave'
      '  JOIN mlt'
      '    ON mfi.mfichave = mlt.mfichave'
      '  JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      'WHERE lte.tfdcodigo IN (22, 42)'
      '-- AND rfi.rfichave = :rfichave'
      'ORDER BY mfi.mfichave DESC'
      'LIMIT 1')
    Left = 306
    Top = 50
    object uqtabelaltechave: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'ltechave'
    end
    object uqtabelatfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object uqtabelaltedata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'ltedata'
    end
    object uqtabelalteprincipal: TFloatField
      DisplayLabel = 'Principal R$'
      FieldName = 'lteprincipal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaltemulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'ltemulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaltejuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'ltejuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaltedesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'ltedesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaltetotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'ltetotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited cau: TUniQuery
    Left = 744
    Top = 88
  end
  inherited cca: TUniQuery
    Left = 780
    Top = 88
  end
  inherited cpg: TUniQuery
    Left = 36
    Top = 376
  end
  inherited vcls: TVirtualTable
    Left = 920
    Top = 56
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 77
    Top = 377
  end
  inherited MenuRelatorios: TPopupMenu
    Left = 546
    Top = 236
  end
  inherited DSSugestao: TDataSource
    Left = 716
    Top = 228
  end
  inherited qrySugestao: TUniQuery
    Left = 716
    Top = 268
  end
  inherited FechaFiltro: TTimer
    Left = 790
    Top = 203
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  etd.etdidentificacao,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfcodigo,'
      '  srf.srfidentificacao,'
      '  lte.ltechave'
      'FROM rfi'
      '       JOIN mfi'
      '         ON rfi.rfichave = mfi.rfichave'
      '       JOIN mlt'
      '         ON mfi.mfichave = mlt.mfichave'
      '       JOIN lte'
      '         ON mlt.ltechave = lte.ltechave,'
      '     etd,'
      '     srf'
      'WHERE srf.srfcodigo = rfi.srfcodigo'
      'AND etd.etdcodigo = rfi.etdcodigo'
      'AND lte.ltechave = :ltechave')
    Left = 644
    Top = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfietdcodigo: TIntegerField
      DisplayLabel = 'Cod. Entidade'
      FieldName = 'etdcodigo'
    end
    object rfietdidentificacao: TStringField
      DisplayLabel = 'Entidade'
      FieldName = 'etdidentificacao'
      Size = 60
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
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object rfisrfcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o'
      FieldName = 'srfcodigo'
    end
    object rfisrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object rfiltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object Drfi: TUniDataSource
    DataSet = rfi
    OnDataChange = DrfiDataChange
    Left = 612
    Top = 300
  end
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cta.ctacodigo,'
      '  cta.ctaidentificacao,'
      '  cco.ccoemissao,'
      '  cco.ccovencimento,'
      '  cco.cconumero,'
      '  clt.ltechave,'
      '  cco.ccohistorico,'
      '  cco.ccochave,'
      'cco.ccovalor'
      'FROM clt'
      '  INNER JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      '  INNER JOIN cta'
      '    ON cco.ctacodigo = cta.ctacodigo'
      'where clt.ltechave=:ltechave')
    Left = 536
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object ccoltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object ccoctacodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'ctacodigo'
    end
    object ccoctaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Conta'
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
    end
    object ccoccovencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'ccovencimento'
    end
    object ccocconumero: TStringField
      DisplayLabel = 'N'#250'mero Doc.'
      FieldName = 'cconumero'
      Size = 15
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 250
    end
    object ccoccochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'ccovalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dcco: TDataSource
    DataSet = cco
    Left = 499
    Top = 450
  end
  object Ddtl: TUniDataSource
    DataSet = dtl
    Left = 1084
    Top = 588
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  dtl.dtlchave,'
      '  lte.ltechave,'
      '  cedcodigo,'
      '  dtl.mdacodigo,'
      '  IF(cedcodigo = 0, dtlvalor * -1, dtlvalor) AS dtlvalor,'
      '  mdaidentificacao,'
      '  lte.tfdcodigo,'
      '  mda.mdacodigo'
      'FROM dtl,'
      '     mda,'
      '     lte,'
      '     clt'
      'WHERE lte.ltechave = dtl.ltechave'
      'AND clt.ltechave = dtl.ltechave'
      'AND clt.ltechave = dtl.ltechave'
      'AND dtl.mdacodigo = mda.mdacodigo'
      'AND clt.ccochave = :ccochave'
      'AND mda.mdacodigo not in (8)'
      ''
      'UNION ALL'
      ''
      'SELECT DISTINCT '
      '  dtlchave,'
      '  lte.ltechave,'
      '  dtl.cedcodigo,'
      '  dtl.mdacodigo,'
      '  IF(dtl.cedcodigo = 0, dtlvalor * -1, dtlvalor) AS dtlvalor,'
      '  mdaidentificacao,'
      '  lte.tfdcodigo,'
      '  mda.mdacodigo'
      '  FROM dtl'
      'INNER JOIN mda ON dtl.mdacodigo = mda.mdacodigo'
      'INNER JOIN lte ON dtl.ltechave = lte.ltechave'
      'INNER JOIN lcv ON lte.ltechave = lcv.ltechave'
      'INNER JOIN mcr ON lcv.mcrchave = mcr.mcrchave'
      'INNER JOIN rcr ON mcr.rcrchave = rcr.rcrchave'
      'INNER JOIN mlt ON lte.ltechave = mlt.ltechave'
      'INNER JOIN mfi ON mlt.mfichave = mfi.mfichave'
      ' WHERE lte.ltechave = :ltechave'
      '  AND mda.mdacodigo in (8)')
    Left = 1040
    Top = 588
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end
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
  object Dche: TUniDataSource
    DataSet = che
    Left = 296
    Top = 528
  end
  object che: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE che'
      'SET tescodigo = :tescodigo'
      'WHERE chechave = :chechave')
    SQL.Strings = (
      'SELECT'
      ' che.chechave, '
      '  che.chevencimento,'
      '  che.cheemissao,'
      '  che.chenumero,'
      '  che.chevalor,'
      '  ltc.schcodigo,'
      '  ltc.dtlchave,'
      '  che.bcocodigo,'
      '  che.chenome,'
      '  sch.schidentificacao,'
      '  tescodigo'
      'FROM ltc'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  INNER JOIN sch'
      '    ON ltc.schcodigo = sch.schcodigo'
      '  INNER JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      'where  dtl.ltechave=:ltechave')
    Left = 256
    Top = 528
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
    object cheschidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'schidentificacao'
      Size = 35
    end
    object chetescodigo: TIntegerField
      FieldName = 'tescodigo'
    end
    object chetesidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'tesidentificacao'
      LookupDataSet = tesche
      LookupKeyFields = 'tescodigo'
      LookupResultField = 'tesidentificacao'
      KeyFields = 'tescodigo'
      Size = 35
      Lookup = True
    end
  end
  object tesche: TUniQuery
    SQL.Strings = (
      'select tescodigo, tesidentificacao from tes')
    Left = 784
    Top = 536
    object teschetescodigo: TIntegerField
      FieldName = 'tescodigo'
    end
    object teschetesidentificacao: TStringField
      FieldName = 'tesidentificacao'
      Size = 35
    end
  end
  object tesrdc: TUniQuery
    SQL.Strings = (
      'select tescodigo, tesidentificacao from tes')
    Left = 744
    Top = 592
    object tesrdctescodigo: TIntegerField
      FieldName = 'tescodigo'
    end
    object tesrdctesidentificacao: TStringField
      FieldName = 'tesidentificacao'
      Size = 35
    end
  end
  object Dtesche: TDataSource
    DataSet = tesche
    Left = 739
    Top = 536
  end
  object rdc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rdc.rdcchave,'
      '  etd.etdapelido,'
      '  rdc.rdcdata,'
      '  rdc.rdcvalor,'
      '  dtl.ltechave,'
      '  rdc.rdcnrauto,'
      '  adc.adccodigo,'
      '  tescodigo'
      'FROM ltr'
      '  INNER JOIN rdc'
      '    ON ltr.rdcchave = rdc.rdcchave'
      '  INNER JOIN dtl'
      '    ON ltr.dtlchave = dtl.dtlchave'
      '  INNER JOIN adc'
      '    ON rdc.adccodigo = adc.adccodigo'
      '  INNER JOIN etd'
      '    ON adc.etdcodigo = etd.etdcodigo'
      'where dtl.ltechave=:ltechave')
    Left = 264
    Top = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object rdcrdcchave: TIntegerField
      FieldName = 'rdcchave'
    end
    object rdcetdapelido: TStringField
      DisplayLabel = 'Operadora de Cart'#227'o'
      FieldName = 'etdapelido'
      Size = 50
    end
    object rdcrdcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rdcdata'
    end
    object rdcrdcvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rdcvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rdcrdcnrauto: TStringField
      DisplayLabel = 'Nr. Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
      Size = 50
    end
    object rdcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object rdctescodigo: TIntegerField
      FieldName = 'tescodigo'
    end
    object rdctesdestino: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'tesdestino'
      LookupDataSet = tesrdc
      LookupKeyFields = 'tescodigo'
      LookupResultField = 'tesidentificacao'
      KeyFields = 'tescodigo'
      Size = 35
      Lookup = True
    end
  end
  object Drdc: TDataSource
    DataSet = rdc
    Left = 295
    Top = 608
  end
  object Dtesrdc: TDataSource
    DataSet = tesrdc
    Left = 793
    Top = 590
  end
  object ccm: TVirtualTable
    Left = 780
    Top = 358
    Data = {04000000000000000000}
    object ccmmeacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do MOtivo'
      FieldName = 'meacodigo'
    end
    object ccmmeamotivo: TStringField
      FieldKind = fkLookup
      FieldName = 'meamotivo'
      LookupDataSet = mea
      LookupKeyFields = 'meacodigo'
      LookupResultField = 'meamotivo'
      KeyFields = 'meacodigo'
      Size = 250
      Lookup = True
    end
  end
  object Dccm: TDataSource
    DataSet = ccm
    Left = 804
    Top = 246
  end
  object mea: TUniQuery
    SQL.Strings = (
      'select meacodigo, meamotivo from mea')
    Left = 840
    Top = 360
    object meameacodigo: TIntegerField
      FieldName = 'meacodigo'
    end
    object meameamotivo: TStringField
      FieldName = 'meamotivo'
      Size = 250
    end
  end
  object Dmea: TDataSource
    DataSet = mea
    Left = 904
    Top = 360
  end
  object pcr: TUniQuery
    Left = 484
    Top = 630
  end
  object mlg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mlgchave,'
      '  clbcodigo,'
      '  mlgsituacao,'
      '  flacodigo,'
      '  mlgdata,'
      '  ltechave'
      'FROM mlg where ltechave=:ltechave')
    Left = 572
    Top = 614
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
  end
  object rmg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmgchave,'
      '  mlgchave,'
      '  phgcodigo,'
      '  rmgdata,'
      '  rmgvalor,'
      '  rmgcomplemento,'
      '  pcgcodigo,'
      '  pcgcredito,'
      '  rmgcompetencia,'
      '  rmginclusao,'
      '  rmgtipo,'
      '  cedcodigo'
      'FROM rmg where mlgchave=:mlgchave')
    Left = 604
    Top = 614
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end>
  end
end
