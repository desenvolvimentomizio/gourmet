inherited fracrebol: Tfracrebol
  Width = 1200
  Height = 638
  ExplicitWidth = 1200
  ExplicitHeight = 638
  inherited PlGeral: TPanel
    Width = 1200
    Height = 638
    ExplicitWidth = 1200
    ExplicitHeight = 638
    inherited SplBotoes: TSplitter
      Height = 618
      ExplicitHeight = 612
    end
    inherited PlBotoes: TPanel
      Height = 618
      Visible = False
      ExplicitHeight = 618
      inherited ImageLogoBase: TImage
        Top = 539
        ExplicitTop = 533
      end
      inherited PlInfo: TPanel
        Top = 600
        ExplicitTop = 600
      end
      inherited SBBotoes: TScrollBox
        Height = 539
        ExplicitHeight = 539
      end
    end
    inherited PlLista: TPanel
      Width = 1056
      Height = 618
      ExplicitWidth = 1056
      ExplicitHeight = 618
      inherited SplLista: TSplitter
        Top = 413
        Width = 1056
        Visible = True
        ExplicitTop = 369
        ExplicitWidth = 1056
      end
      inherited SpFilter: TSplitter
        Width = 1056
        ExplicitWidth = 1056
      end
      inherited PlRodaPe: TPanel
        Top = 418
        Width = 1056
        Height = 200
        Visible = True
        ExplicitTop = 418
        ExplicitWidth = 1056
        ExplicitHeight = 200
        object Panel1: TPanel
          Left = 0
          Top = 160
          Width = 1056
          Height = 40
          Align = alBottom
          BevelOuter = bvLowered
          PopupMenu = MenuManutencao
          TabOrder = 0
          object GroupBox5: TGroupBox
            AlignWithMargins = True
            Left = 945
            Top = 1
            Width = 100
            Height = 38
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
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
          object GroupBox11: TGroupBox
            Left = 885
            Top = 1
            Width = 60
            Height = 38
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
          object PlBotoesExcluir: TPanel
            Left = 1
            Top = 1
            Width = 300
            Height = 38
            Align = alLeft
            BevelOuter = bvNone
            BorderWidth = 5
            TabOrder = 2
            object BExcluirTodos: TBitBtn
              Left = 5
              Top = 5
              Width = 127
              Height = 28
              Align = alLeft
              Caption = 'Excluir Todas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = BExcluirTodosClick
            end
            object BExcluirSelecionado: TBitBtn
              Left = 132
              Top = 5
              Width = 160
              Height = 28
              Align = alLeft
              Caption = 'Excluir Selecionada'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = BExcluirSelecionadoClick
            end
          end
        end
        object GBselecionados: TGroupBox
          AlignWithMargins = True
          Left = 0
          Top = 5
          Width = 1056
          Height = 155
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = '  Parcelas selecionadas  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object DBGSelecionados: TDBGrid
            Left = 2
            Top = 18
            Width = 1052
            Height = 135
            Align = alClient
            Color = clCream
            DataSource = DSRfiGbr
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
            OnDrawColumnCell = DBGSelecionadosDrawColumnCell
            OnDblClick = DBGSelecionadosDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'rfichave'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'bolnossonumero'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfiemissao'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfivencimento'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfinumero'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfivalor'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfijuros'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfimulta'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfidesconto'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfisaldogeral'
                Width = 75
                Visible = True
              end>
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 1056
        ExplicitWidth = 1056
      end
      inherited PlSelecao: TPanel
        Width = 1056
        ExplicitWidth = 1056
        inherited GBPlSelecao: TGroupBox
          Width = 1052
          ExplicitWidth = 1052
          inherited DBLista: TDBGrid
            Width = 945
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1056
        Height = 284
        ExplicitWidth = 1056
        ExplicitHeight = 284
        inherited DBGLista: TDBGrid
          Width = 1056
          Height = 244
          Columns = <
            item
              Expanded = False
              FieldName = 'rfichave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'titcodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bolnossonumero'
              Width = 100
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
              FieldName = 'rfidias'
              Width = 40
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
              FieldName = 'srfidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivalor'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidesconto'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfihistorico'
              Width = 200
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 244
          Width = 1056
          Height = 40
          Visible = True
          ExplicitTop = 244
          ExplicitWidth = 1056
          ExplicitHeight = 40
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 945
            Top = 1
            Width = 100
            Height = 38
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alRight
            Caption = ' TOTAL R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object PlTotalParcelas: TPanel
              Left = 2
              Top = 16
              Width = 96
              Height = 20
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
          object GroupBox6: TGroupBox
            Left = 885
            Top = 1
            Width = 60
            Height = 38
            Align = alRight
            Caption = 'Parcelas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object PlQtde: TPanel
              Left = 2
              Top = 16
              Width = 56
              Height = 20
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
          object PlBotoesIncluir: TPanel
            Left = 1
            Top = 1
            Width = 300
            Height = 38
            Align = alLeft
            BevelOuter = bvNone
            BorderWidth = 5
            TabOrder = 2
            object BIncluirTodos: TBitBtn
              Left = 5
              Top = 5
              Width = 127
              Height = 28
              Align = alLeft
              Caption = 'Incluir Todas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = BIncluirTodosClick
            end
            object BIncluirSelecionado: TBitBtn
              Left = 132
              Top = 5
              Width = 160
              Height = 28
              Align = alLeft
              Caption = 'Incluir Selecionada'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = BIncluirSelecionadoClick
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1200
      ExplicitWidth = 1200
      inherited plid: TPanel
        Left = 750
        ExplicitLeft = 750
      end
      inherited PlSair: TPanel
        Left = 994
        ExplicitLeft = 994
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT rfi.rfichave'
      '     , rfi.titcodigo'
      '     , rfi.etdcodigo'
      '     , rfi.etdidentificacao'
      '     , rfi.bcocodigo'
      '     , rfi.bconome'
      '     , rfi.carcodigo'
      '     , rfi.caridentificacao'
      '     , rfi.rfiemissao'
      '     , rfi.rfivencimento'
      '     , rfi.rfidias'
      '     , rfi.srfidentificacao'
      '     , rfi.rfinumero'
      '     , rfi.rfivalor'
      '     , rfi.rfijuros'
      '     , rfi.rfimulta'
      '     , rfi.rfidesconto'
      '     , rfi.rfisaldogeral'
      '     , rfi.rfihistorico'
      '     , bol.bolchave'
      '     , bol.gebcodigo'
      '     , bol.bolnossonumero'
      '     , gbr.gebcodigo AS gbrgebcodigo'
      'FROM v_rfi rfi'
      '  LEFT JOIN gbr'
      '    ON rfi.rfichave = gbr.rfichave'
      '  LEFT JOIN bol'
      '    ON rfi.rfichave = bol.rfichave and rfi.flacodigo=:flacodigo'
      '  LEFT JOIN geb'
      '    ON bol.gebcodigo = geb.gebcodigo'
      '  LEFT JOIN brm'
      '    ON bol.bolchave = brm.bolchave'
      'WHERE rfi.srfcodigo in (0,1,3) -- Em Aberto'
      'AND rfi.tfdcodigo = 2 -- Contas a Receber'
      'AND rfi.rfivencimento >= CURDATE()'
      'AND rfi.tficodigo NOT IN (6) -- Documento diferente de "Cart'#227'o"'
      'AND'
      '  CASE :Finalidade'
      '    /*Gera'#231#227'o de Boletos*/'
      '    WHEN 0 THEN bol.bolchave IS NULL'
      '    AND gbr.gebcodigo IS NULL'
      ''
      '    /*Remessa de Boletos*/'
      '    WHEN 1 THEN bol.sblcodigo IN (1, 2)'
      '    AND geb.carcodigo = :carcodigo'
      '    AND brm.rmbcodigo IS NULL'
      '  END'
      'AND rfi.flacodigo=:flacodigo'
      '')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Finalidade'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'carcodigo'
        Value = nil
      end>
    object uqtabelarfichave: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'rfichave'
    end
    object uqtabelatitcodigo: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titcodigo'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object uqtabelabcocodigo: TStringField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object uqtabelabconome: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bconome'
      Size = 50
    end
    object uqtabelacarcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Carteira'
      FieldName = 'carcodigo'
    end
    object uqtabelarfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object uqtabelarfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object uqtabelarfidias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'rfidias'
    end
    object uqtabelarfinumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
    end
    object uqtabelasrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object uqtabelarfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rfivalor'
    end
    object uqtabelarfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
    end
    object uqtabelarfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
    end
    object uqtabelarfidesconto: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Desconto R$'
      FieldName = 'rfidesconto'
    end
    object uqtabelarfisaldogeral: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'rfisaldogeral'
    end
    object uqtabelarfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object uqtabelabolchave: TIntegerField
      FieldName = 'bolchave'
    end
    object uqtabelabolnossonumero: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'bolnossonumero'
      Size = 50
    end
  end
  inherited cpg: TUniQuery
    Left = 76
    Top = 368
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 77
    Top = 417
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800480010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED001D1D1D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800272727000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A002A2A2A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD001C1C
      1C001C1C1C00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F006F6F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000282828000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000035353500000000000000
      0000000000000000000035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F000000000000000000000000000000000000000000000000006F6F
      6F000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD001313130013131300DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7001919190000000000000000001919
      1900F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      00000000000000000000E4E4E400070707000000000000000000000000000000
      000007070700E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB0010101000000000000000000000000000000000000000
      00000000000010101000DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00737373007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00737373009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFE7FF0000FFFFFFFFE7FF0000FFFFFE7FE7FF0000FFFFFC3FC3FF0000
      FE7FF81FC3FF0000FC3FF00F81FF0000F81FE007FF9F0000F00FC003FF0F0000
      FFFF8001FE070000FFFF0000FC030000FFFFFFFFF8010000FFFFFFFFF8010000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object RfiGbr: TUniQuery
    SQLDelete.Strings = (
      'DELETE'
      '  FROM gbr'
      'WHERE gbr.gbrcodigo = :gbrcodigo')
    SQL.Strings = (
      'SELECT DISTINCT gbr.gbrcodigo'
      '     , rfi.rfichave'
      '     , rfi.etdidentificacao'
      '     , rfi.rfiemissao'
      '     , rfi.rfivencimento'
      '     , rfi.rfinumero'
      '     , rfi.rfivalor'
      '     , rfi.rfijuros'
      '     , rfi.rfimulta'
      '     , rfi.rfidesconto'
      '     , rfi.rfisaldogeral'
      '     , '#39#39' as bolnossonumero -- Compatibilidade com Grid'
      'FROM gbr'
      '  JOIN v_rfi rfi'
      '    ON gbr.rfichave = rfi.rfichave'
      'WHERE rfi.srfcodigo in (0,1) -- Em Aberto'
      'AND rfi.tfdcodigo = 2 -- Contas a Receber'
      'AND rfi.rfivencimento >= CURDATE()'
      'AND rfi.tficodigo NOT IN (6) -- Documento diferente de "Cart'#227'o"'
      'AND gbr.gebcodigo = :gebcodigo'
      'AND rfi.flacodigo=:flacodigo')
    Left = 344
    Top = 409
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
    object RfiGbrrfichave: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'rfichave'
    end
    object RfiGbretdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object RfiGbrrfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object RfiGbrrfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object RfiGbrrfinumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
    end
    object RfiGbrrfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rfivalor'
    end
    object RfiGbrrfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
    end
    object RfiGbrrfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
    end
    object RfiGbrrfidesconto: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Desconto R$'
      FieldName = 'rfidesconto'
    end
    object RfiGbrrfisaldogeral: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'rfisaldogeral'
    end
    object RfiGbrbolnossonumero: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'bolnossonumero'
      Size = 50
    end
  end
  object DSRfiGbr: TUniDataSource
    DataSet = RfiGbr
    Left = 392
    Top = 409
  end
  object gbr: TUniQuery
    SQL.Strings = (
      'SELECT gbrcodigo'
      '     , gebcodigo'
      '     , rfichave'
      'FROM gbr'
      'WHERE gbrcodigo = :gbrcodigo')
    Left = 371
    Top = 459
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
  object RfiBrm: TUniQuery
    SQLDelete.Strings = (
      'DELETE'
      '  FROM brm'
      'WHERE brm.brmcodigo = :brmcodigo')
    SQL.Strings = (
      'SELECT DISTINCT brm.brmcodigo'
      '     , rfi.rfichave'
      '     , rfi.etdidentificacao'
      '     , rfi.rfiemissao'
      '     , rfi.rfivencimento'
      '     , rfi.rfinumero'
      '     , rfi.rfivalor'
      '     , rfi.rfijuros'
      '     , rfi.rfimulta'
      '     , rfi.rfidesconto'
      '     , rfi.rfisaldogeral'
      '     , bol.bolchave'
      '     , bol.bolnossonumero'
      'FROM brm'
      '  JOIN bol'
      '    ON brm.bolchave = bol.bolchave'
      '  JOIN v_rfi rfi'
      '    ON bol.rfichave = rfi.rfichave'
      'WHERE rfi.srfcodigo in (0,1) -- Em Aberto'
      'AND rfi.tfdcodigo = 2 -- Contas a Receber'
      'AND rfi.rfivencimento >= CURDATE()'
      'AND rfi.tficodigo NOT IN (6) -- Documento diferente de "Cart'#227'o"'
      'AND brm.rmbcodigo = :rmbcodigo')
    Left = 512
    Top = 405
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmbcodigo'
        Value = nil
      end>
    object RfiBrmrfichave: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'rfichave'
    end
    object RfiBrmetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object RfiBrmrfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object RfiBrmrfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object RfiBrmrfinumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
    end
    object RfiBrmrfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object RfiBrmrfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object RfiBrmrfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object RfiBrmrfidesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object RfiBrmrfisaldogeral: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object RfiBrmbolchave: TIntegerField
      FieldName = 'bolchave'
    end
    object RfiBrmbolnossonumero: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'bolnossonumero'
      Size = 50
    end
  end
  object DSRfiBrm: TUniDataSource
    DataSet = RfiBrm
    Left = 560
    Top = 406
  end
  object brm: TUniQuery
    SQL.Strings = (
      'SELECT brm.brmcodigo'
      '     , brm.rmbcodigo'
      '     , brm.bolchave'
      '     , brm.tibcodigo'
      'FROM brm'
      'WHERE brm.brmcodigo = :brmcodigo')
    Left = 536
    Top = 459
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'brmcodigo'
        Value = nil
      end>
    object brmbrmcodigo: TIntegerField
      FieldName = 'brmcodigo'
    end
    object brmrmbcodigo: TIntegerField
      FieldName = 'rmbcodigo'
    end
    object brmbolchave: TIntegerField
      FieldName = 'bolchave'
    end
    object brmtibcodigo: TIntegerField
      FieldName = 'tibcodigo'
    end
  end
  object tib: TUniQuery
    SQL.Strings = (
      'SELECT tib.tibcodigo'
      'FROM tib'
      '  JOIN car'
      '    ON tib.bcocodigo = car.bcocodigo'
      'WHERE car.carcodigo = :carcodigo'
      'AND tib.tibreferencia = :tibreferencia')
    Left = 240
    Top = 435
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'carcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tibreferencia'
        Value = nil
      end>
  end
end
