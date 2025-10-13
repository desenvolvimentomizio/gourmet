inherited frabat: Tfrabat
  Height = 624
  ExplicitHeight = 624
  inherited PlGeral: TPanel
    Height = 624
    ExplicitHeight = 624
    inherited SplBotoes: TSplitter
      Height = 604
      ExplicitHeight = 598
    end
    inherited PlBotoes: TPanel
      Height = 604
      ExplicitHeight = 604
      inherited ImageLogoBase: TImage
        Top = 525
        ExplicitTop = 519
      end
      inherited PlInfo: TPanel
        Top = 586
        ExplicitTop = 586
      end
      inherited SBBotoes: TScrollBox
        Height = 525
        ExplicitHeight = 525
      end
    end
    inherited PlLista: TPanel
      Height = 604
      ExplicitHeight = 604
      inherited SplLista: TSplitter
        Top = 370
        Visible = True
        ExplicitTop = 364
      end
      inherited PlRodaPe: TPanel
        Top = 375
        Height = 229
        Visible = True
        ExplicitTop = 375
        ExplicitHeight = 229
        object DBGListaItens: TDBGrid
          Left = 0
          Top = 0
          Width = 1034
          Height = 138
          Align = alClient
          Color = 13434879
          DataSource = Dlito
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGListaItensDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'procodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 420
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itoquantidade'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itovalor'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itototal'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itodesconto'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itosaldo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stoidentificacao'
              Width = 70
              Visible = True
            end>
        end
        object pservico: TPanel
          Left = 0
          Top = 138
          Width = 1034
          Height = 91
          Align = alBottom
          Color = 14155775
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 1032
            Height = 24
            Align = alTop
            Caption = 'D e s c r i '#231' '#227' o   d o   S e r v i '#231' o :'
            Color = 16757092
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object itoproservico: TDBMemo
            Left = 1
            Top = 25
            Width = 1032
            Height = 65
            Align = alClient
            Color = clCream
            DataField = 'itoproservico'
            DataSource = Dlito
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      inherited PlFiltros: TPanel
        inherited PlBotaoFiltro: TPanel
          Visible = False
        end
      end
      inherited PnlGrid: TPanel
        Height = 241
        ExplicitHeight = 241
        inherited DBGLista: TDBGrid
          Height = 149
          Font.Height = -13
          ParentFont = False
          TitleFont.Height = -13
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'orcchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcdataabert'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcgeral'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcdesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orctotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'puoidentificacao'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stoidentificacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'foaidentificacao'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcobs'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'clbvendedor'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbvendedorident'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'objidentificacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'objmodelo'
              Width = 120
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 149
          Height = 92
          Visible = True
          ExplicitTop = 149
          ExplicitHeight = 92
          object PnlDadosCliente: TPanel
            Left = 1
            Top = 1
            Width = 1032
            Height = 90
            Align = alClient
            BevelOuter = bvNone
            Color = 16771809
            ParentBackground = False
            PopupMenu = MenuGerador
            TabOrder = 0
            object Label1: TLabel
              Left = 12
              Top = 38
              Width = 45
              Height = 13
              Caption = 'Endere'#231'o'
              FocusControl = edrrua
            end
            object Label2: TLabel
              Left = 611
              Top = 38
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = edrnumero
            end
            object Label3: TLabel
              Left = 12
              Top = 69
              Width = 28
              Height = 13
              Caption = 'Bairro'
              FocusControl = edrbairro
            end
            object Label4: TLabel
              Left = 392
              Top = 68
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = cddnome
            end
            object Label5: TLabel
              Left = 872
              Top = 68
              Width = 19
              Height = 13
              Caption = 'CEP'
              FocusControl = edrcep
            end
            object Label7: TLabel
              Left = 814
              Top = 38
              Width = 42
              Height = 13
              Caption = 'Telefone'
              FocusControl = etftelefone
            end
            object Label6: TLabel
              Left = 781
              Top = 68
              Width = 13
              Height = 13
              Caption = 'UF'
              FocusControl = ufssigla
            end
            object edrrua: TDBEdit
              Left = 106
              Top = 35
              Width = 454
              Height = 24
              Color = 16744448
              DataField = 'edrrua'
              DataSource = Detd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object edrnumero: TDBEdit
              Left = 679
              Top = 35
              Width = 81
              Height = 24
              Color = 16744448
              DataField = 'edrnumero'
              DataSource = Detd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object edrbairro: TDBEdit
              Left = 106
              Top = 65
              Width = 270
              Height = 24
              Color = 16744448
              DataField = 'edrbairro'
              DataSource = Detd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object cddnome: TDBEdit
              Left = 447
              Top = 65
              Width = 324
              Height = 24
              Color = 16744448
              DataField = 'cddnome'
              DataSource = Detd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object edrcep: TDBEdit
              Left = 907
              Top = 65
              Width = 99
              Height = 24
              Color = 16744448
              DataField = 'edrcep'
              DataSource = Detd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object etftelefone: TDBEdit
              Left = 889
              Top = 35
              Width = 117
              Height = 24
              Color = 16744448
              DataField = 'etftelefone'
              DataSource = Detd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object ufssigla: TDBEdit
              Left = 805
              Top = 65
              Width = 37
              Height = 24
              Color = 16744448
              DataField = 'ufssigla'
              DataSource = Detd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
            end
            object PnlNomeCliente: TPanel
              Left = 0
              Top = 0
              Width = 1032
              Height = 28
              Align = alTop
              Color = 16744448
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Padding.Left = 10
              ParentBackground = False
              ParentFont = False
              TabOrder = 7
              object LbDadosConsumidor: TLabel
                Left = 11
                Top = 1
                Width = 1020
                Height = 26
                Align = alClient
                AutoSize = False
                BiDiMode = bdLeftToRight
                Caption = 'Dados do Cliente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                Layout = tlCenter
                ExplicitWidth = 942
              end
            end
          end
        end
      end
    end
  end
  inherited acoes: TActionList
    object ActReimprimir: TAction [0]
      Category = 'Fun'#231#245'es'
      Caption = 'Reimprimir'
      OnExecute = ActReimprimirExecute
    end
    object ActBaixar: TAction [1]
      Category = 'Fun'#231#245'es'
      Caption = 'Baixar'
      OnExecute = ActBaixarExecute
    end
    object spbEmAberto: TAction [2]
      Category = 'Visualizar'
      Caption = 'Em Aberto'
      Checked = True
      GroupIndex = 15
      OnExecute = spbEmAbertoExecute
    end
    object spbBaixados: TAction [3]
      Category = 'Visualizar'
      Caption = 'Baixados'
      GroupIndex = 15
      OnExecute = spbBaixadosExecute
    end
    object spbEmDigitacao: TAction [4]
      Category = 'Visualizar'
      Caption = 'Em Digita'#231#227'o'
      GroupIndex = 15
      OnExecute = spbEmDigitacaoExecute
    end
    object spbTodosObj: TAction [5]
      Category = 'Filtrar'
      Caption = 'Todos'
      Checked = True
      GroupIndex = 16
      Visible = False
      OnExecute = spbTodosObjExecute
    end
    object spbEquipamentos: TAction [6]
      Category = 'Filtrar'
      Caption = 'Equipamentos'
      GroupIndex = 16
      Visible = False
      OnExecute = spbEquipamentosExecute
    end
    object spbVeiculos: TAction [7]
      Category = 'Filtrar'
      Caption = 'Ve'#237'culos'
      GroupIndex = 16
      Visible = False
      OnExecute = spbVeiculosExecute
    end
    inherited ActIncluir: TAction
      Enabled = False
    end
    inherited ActAlterar: TAction
      Enabled = False
    end
    object ActDevolCond: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Devolver Condicional'
      Enabled = False
      Visible = False
      OnExecute = ActDevolCondExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT orc.orcchave'
      '     , orc.etdcodigo'
      '     , etd.etdidentificacao'
      '     , orc.orcdataabert'
      '     , oTot.orcgeral'
      '     , oTot.orcdesconto'
      '     , oTot.orctotal'
      '     , orc.stocodigo'
      '     , sto.stoidentificacao'
      '     , orc.clbcodigo'
      '     , orc.moccodigo'
      '     , orc.orcnome'
      '     , orc.orctelefone'
      '     , orc.orcendereco'
      '     , orc.orcdescrpagto'
      '     , orc.puocodigo'
      '     , puo.puoidentificacao'
      '     , orc.edrcodigo'
      '     , clb.clbidentificacao'
      '     , orc.orcobs'
      '     , orc.clbvendedor'
      '     , c.clbidentificacao AS clbvendedorident'
      '     , obj.veicodigo'
      '     , obj.eqpcodigo'
      '     , obj.objidentificacao'
      '     , obj.objmodelo'
      '     , foa.foaidentificacao'
      'FROM orc'
      '  INNER JOIN v_orc_totais oTot'
      
        '    ON orc.orcchave = oTot.orcchave  AND orc.flacodigo=oTot.flac' +
        'odigo'
      '  INNER JOIN v_orc_etd etd'
      
        '    ON orc.orcchave = etd.orcchave  AND orc.flacodigo=etd.flacod' +
        'igo'
      '  INNER JOIN sto'
      '    ON orc.stocodigo = sto.stocodigo'
      '  INNER JOIN puo'
      '    ON orc.puocodigo = puo.puocodigo'
      '  INNER JOIN clb'
      '    ON orc.clbcodigo = clb.clbcodigo'
      '  LEFT JOIN clb c'
      '    ON orc.clbvendedor = c.clbcodigo'
      '  LEFT JOIN v_vei_eqp obj'
      '    ON orc.orcchave = obj.orcchave'
      '  INNER JOIN foa'
      '    ON orc.foacodigo = foa.foacodigo'
      'WHERE moccodigo = :moccodigo'
      '    AND orc.flacodigo = :flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'moccodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqtabelaorcchave: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'orcchave'
      Required = True
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'etdcodigo'
      Required = True
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      DisplayWidth = 40
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object uqtabelaorcdataabert: TDateField
      DisplayLabel = 'Data'
      FieldName = 'orcdataabert'
      Required = True
    end
    object uqtabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Visible = False
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 15
      FieldName = 'clbidentificacao'
      Size = 15
    end
    object uqtabelaorcnome: TStringField
      FieldName = 'orcnome'
      Visible = False
      Size = 50
    end
    object uqtabelaorctelefone: TStringField
      FieldName = 'orctelefone'
      Visible = False
    end
    object uqtabelaorcendereco: TStringField
      FieldName = 'orcendereco'
      Visible = False
      Size = 50
    end
    object uqtabelaorcdescrpagto: TStringField
      FieldName = 'orcdescrpagto'
      Visible = False
      Size = 250
    end
    object uqtabelaorcgeral: TFloatField
      DisplayLabel = 'Geral R$'
      FieldName = 'orcgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaorcdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'orcdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaorctotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'orctotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelastoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
      Size = 30
    end
    object uqtabelapuoidentificacao: TStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'puoidentificacao'
      Size = 30
    end
    object uqtabelaedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object uqtabelastocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
    object uqtabelaorcobs: TStringField
      DisplayLabel = 'Inf. Complementar'
      FieldName = 'orcobs'
      Size = 250
    end
    object uqtabelaclbvendedor: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'clbvendedor'
    end
    object uqtabelaclbvendedorident: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'clbvendedorident'
      Size = 30
    end
    object uqtabelaveicodigo: TIntegerField
      FieldName = 'veicodigo'
    end
    object uqtabelaeqpcodigo: TIntegerField
      FieldName = 'eqpcodigo'
    end
    object uqtabelaobjidentificacao: TStringField
      DisplayLabel = 'Objeto'
      FieldName = 'objidentificacao'
      Size = 60
    end
    object uqtabelaobjmodelo: TStringField
      DisplayLabel = 'Modelo Objeto'
      FieldName = 'objmodelo'
      Size = 200
    end
    object uqtabelafoaidentificacao: TStringField
      DisplayLabel = 'Forma'
      FieldName = 'foaidentificacao'
      Size = 30
    end
  end
  inherited cpg: TUniQuery
    Left = 220
    Top = 272
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 221
    Top = 329
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  etd.tsecodigo,'
      '  edr.etdcodigo,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  edr.edrbairro,'
      '  edr.edrcep,'
      '  etf.etftelefone,'
      '  cdd.cddnome,'
      '  ufs.ufssigla'
      'FROM etd,'
      '     edr,'
      '     etf,'
      '     cdd,'
      '     ufs'
      'WHERE edr.etdcodigo = etd.etdcodigo'
      'AND edr.etdcodigo = etf.etdcodigo'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND edr.ufscodigo = ufs.ufscodigo'
      '/*AND edr.tedcodigo = 1'
      'AND etf.ttfcodigo = 1*/'
      'AND edr.edrcodigo = :edrcodigo')
    Left = 444
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'edrcodigo'
        Value = nil
      end>
    object etdetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object etdedrrua: TStringField
      FieldName = 'edrrua'
      Size = 50
    end
    object etdedrnumero: TStringField
      FieldName = 'edrnumero'
      Size = 10
    end
    object etdedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object etdetftelefone: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object etdtsecodigo: TIntegerField
      FieldName = 'tsecodigo'
      Required = True
    end
    object etdcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
    object etdufssigla: TStringField
      FieldName = 'ufssigla'
      Size = 3
    end
    object etdedrcep: TStringField
      FieldName = 'edrcep'
      Size = 10
    end
  end
  object Detd: TUniDataSource
    DataSet = etd
    OnDataChange = DetdDataChange
    Left = 404
    Top = 336
  end
  object lito: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ito.itochave,'
      '  ito.orcchave,'
      '  ito.procodigo,'
      '  IF(ito.vrpcodigo > 0, (SELECT'
      '      vv.pronome'
      '    FROM v_vrp vv'
      
        '    WHERE vv.vrpcodigo = ito.vrpcodigo), pro.pronome) AS pronome' +
        ','
      '  ito.itoquantidade,'
      
        '  IF(vOrc.puocodigo = 0, ito.itovalorav, ito.itovalorap) AS itov' +
        'alor,'
      
        '  IF(vOrc.puocodigo = 0, ito.itototalav, ito.itototalap) AS itot' +
        'otal,'
      
        '  IF(vOrc.puocodigo = 0, ito.itodescontoav, ito.itodescontoap) A' +
        'S itodesconto,'
      
        '  IF(vOrc.puocodigo = 0, ito.itosaldoav, ito.itosaldoap) AS itos' +
        'aldo,'
      '  ito.stocodigo,'
      '  ito.itoproservico,'
      '  ito.itoprocomple,'
      '  ito.unicodigo,'
      '  sto.stoidentificacao,'
      '  ito.itoquanticondi,'
      '  ito.itoquantidevolcondi'
      'FROM ito'
      '       JOIN (SELECT'
      '           orc.orcchave AS ChaveOrc,'
      '           orc.puocodigo'
      '         FROM orc WHERE orc.flacodigo=:flacodigo) vOrc'
      
        '         ON vOrc.ChaveOrc = ito.orcchave and ito.flacodigo=:flac' +
        'odigo,'
      '     pro,'
      '     sto'
      'WHERE ito.procodigo = pro.procodigo'
      'AND sto.stocodigo = ito.stocodigo'
      'AND ito.orcchave=:orcchave'
      'AND ito.flacodigo=:flacodigo'
      'ORDER BY sto.stocodigo, ito.itochave')
    Left = 284
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object litoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object litoprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object litopronome: TStringField
      DisplayLabel = 'Nome do Produto / Servi'#231'o'
      FieldName = 'pronome'
      Size = 150
    end
    object litoitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object litoitovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itovalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitototal: TFloatField
      DisplayLabel = 'Geral R$'
      FieldName = 'itototal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitodesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itodesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitosaldo: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itosaldo'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litostoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
      Size = 30
    end
    object litoitoproservico: TStringField
      FieldName = 'itoproservico'
      Size = 1000
    end
    object litoitoquanticondi: TFloatField
      DisplayLabel = 'Qtd. Inicial'
      FieldName = 'itoquanticondi'
    end
    object litoitoquantidevolcondi: TFloatField
      DisplayLabel = 'Qtd. Devolvida'
      FieldName = 'itoquantidevolcondi'
    end
    object litostocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
  end
  object Dlito: TUniDataSource
    DataSet = lito
    OnDataChange = DlitoDataChange
    Left = 340
    Top = 456
  end
  object sto: TUniQuery
    Left = 803
    Top = 227
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Left = 744
    Top = 224
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object MenuGerador: TPopupMenu
    Left = 552
    Top = 440
    object Gerador1: TMenuItem
      Caption = 'Gerador'
      OnClick = Gerador1Click
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgmsai.cfgcodigo'
      '     , cfgmsai.cfgidentificavendedor'
      '     , cfgmsai.cfgusaveiculo'
      '     , cfgmsai.cfgidentificaequip'
      '     , cfgmsai.cfgusavendaforaestab'
      'FROM cfgmsai')
    Left = 406
    Top = 72
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgidentificavendedor: TIntegerField
      FieldName = 'cfgidentificavendedor'
    end
    object cfgcfgusaveiculo: TIntegerField
      FieldName = 'cfgusaveiculo'
    end
    object cfgcfgidentificaequip: TIntegerField
      FieldName = 'cfgidentificaequip'
    end
    object cfgcfgusavendaforaestab: TIntegerField
      FieldName = 'cfgusavendaforaestab'
    end
  end
end
