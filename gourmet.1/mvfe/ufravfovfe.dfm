inherited fravfovfe: Tfravfovfe
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 327
        Visible = True
      end
      inherited PlRodaPe: TPanel
        Top = 332
        Height = 200
        Visible = True
        object GBSelecionados: TGroupBox
          AlignWithMargins = True
          Left = 0
          Top = 5
          Width = 970
          Height = 155
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = '  Atendimentos Vinculados  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object DBGSelecionados: TDBGrid
            Left = 2
            Top = 18
            Width = 966
            Height = 135
            Align = alClient
            Color = clCream
            DataSource = DSorcvfo
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
                FieldName = 'orcchave'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'orcdataabert'
                Width = 65
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
                FieldName = 'orcgeral'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'orcdesconto'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'orctotal'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'puoidentificacao'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'stoidentificacao'
                Width = 100
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
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clbvendedor'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clbvendedorident'
                Width = 100
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
                Width = 150
                Visible = True
              end>
          end
        end
        object PnlSelecionados: TPanel
          Left = 0
          Top = 160
          Width = 970
          Height = 40
          Align = alBottom
          BevelOuter = bvLowered
          PopupMenu = MenuManutencao
          TabOrder = 1
          object GBTotalAtendSel: TGroupBox
            AlignWithMargins = True
            Left = 859
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
            object PlTotalAtendSel: TPanel
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
          object GBQtdAtendSel: TGroupBox
            Left = 799
            Top = 1
            Width = 60
            Height = 38
            Align = alRight
            Caption = 'Quant.'
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
              Caption = 'Excluir Todos'
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
              Caption = 'Excluir Selecionado'
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
      end
      inherited PnlGrid: TPanel
        Height = 198
        inherited DBGLista: TDBGrid
          Height = 158
          Columns = <
            item
              Expanded = False
              FieldName = 'orcchave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcdataabert'
              Width = 65
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
              FieldName = 'orcgeral'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcdesconto'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orctotal'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'puoidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stoidentificacao'
              Width = 100
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
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbvendedor'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbvendedorident'
              Width = 100
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
              Width = 150
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 158
          Height = 40
          Visible = True
          object GBTotalAtend: TGroupBox
            AlignWithMargins = True
            Left = 859
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
            object PlTotalAtend: TPanel
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
          object GBQtdAtend: TGroupBox
            Left = 799
            Top = 1
            Width = 60
            Height = 38
            Align = alRight
            Caption = 'Quant.'
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
              Caption = 'Incluir Todos'
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
              Caption = 'Incluir Selecionado'
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
  end
  inherited DSTabela: TUniDataSource
    Top = 228
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
      'FROM orc'
      '  INNER JOIN v_orc_totais oTot'
      '    ON orc.orcchave = oTot.orcchave'
      '  INNER JOIN v_orc_etd etd'
      '    ON orc.orcchave = etd.orcchave'
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
      '  LEFT JOIN vfo'
      '    ON orc.orcchave = vfo.orcchave'
      'WHERE orc.foacodigo = 2'
      'AND orc.stocodigo IN (3, 4)'
      'AND vfo.vfocodigo IS NULL'
      'AND orc.clbvendedor = :clbvendedor')
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbvendedor'
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
  end
  inherited cpg: TUniQuery
    Left = 68
    Top = 360
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 69
    Top = 409
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgmsai.cfgcodigo'
      '     , cfgmsai.cfgidentificavendedor'
      '     , cfgmsai.cfgusaveiculo'
      '     , cfgmsai.cfgidentificaequip'
      'FROM cfgmsai')
    Left = 366
    Top = 184
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
  end
  object orcvfo: TUniQuery
    SQLDelete.Strings = (
      'DELETE'
      '  FROM vfo'
      'WHERE vfo.vfocodigo = :vfocodigo')
    SQL.Strings = (
      'SELECT vfo.vfocodigo'
      '     , orc.orcchave'
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
      'FROM vfo'
      '  INNER JOIN orc'
      '    ON vfo.orcchave = orc.orcchave'
      '  INNER JOIN v_orc_totais oTot'
      '    ON orc.orcchave = oTot.orcchave'
      '  INNER JOIN v_orc_etd etd'
      '    ON orc.orcchave = etd.orcchave'
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
      'WHERE orc.foacodigo = 2'
      'AND orc.stocodigo IN (3, 4)'
      'AND orc.clbvendedor = :clbvendedor'
      'AND vfo.vfecodigo = :vfecodigo')
    Left = 408
    Top = 419
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbvendedor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vfecodigo'
        Value = nil
      end>
    object orcvfovfocodigo: TIntegerField
      FieldName = 'vfocodigo'
    end
    object orcvfoorcchave: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'orcchave'
      Required = True
    end
    object orcvfoetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'etdcodigo'
      Required = True
    end
    object orcvfoetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      DisplayWidth = 40
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object orcvfoorcdataabert: TDateField
      DisplayLabel = 'Data'
      FieldName = 'orcdataabert'
      Required = True
    end
    object orcvfoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Visible = False
    end
    object orcvfoclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 15
      FieldName = 'clbidentificacao'
      Size = 15
    end
    object orcvfoorcnome: TStringField
      FieldName = 'orcnome'
      Visible = False
      Size = 50
    end
    object orcvfoorctelefone: TStringField
      FieldName = 'orctelefone'
      Visible = False
    end
    object orcvfoorcendereco: TStringField
      FieldName = 'orcendereco'
      Visible = False
      Size = 50
    end
    object orcvfoorcdescrpagto: TStringField
      FieldName = 'orcdescrpagto'
      Visible = False
      Size = 250
    end
    object orcvfoorcgeral: TFloatField
      DisplayLabel = 'Geral R$'
      FieldName = 'orcgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcvfoorcdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'orcdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcvfoorctotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'orctotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcvfostoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
      Size = 30
    end
    object orcvfopuoidentificacao: TStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'puoidentificacao'
      Size = 30
    end
    object orcvfoedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object orcvfostocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
    object orcvfoorcobs: TStringField
      DisplayLabel = 'Inf. Complementar'
      FieldName = 'orcobs'
      Size = 250
    end
    object orcvfoclbvendedor: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'clbvendedor'
    end
    object orcvfoclbvendedorident: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'clbvendedorident'
      Size = 30
    end
    object orcvfoveicodigo: TIntegerField
      FieldName = 'veicodigo'
    end
    object orcvfoeqpcodigo: TIntegerField
      FieldName = 'eqpcodigo'
    end
    object orcvfoobjidentificacao: TStringField
      DisplayLabel = 'Objeto'
      FieldName = 'objidentificacao'
      Size = 60
    end
    object orcvfoobjmodelo: TStringField
      DisplayLabel = 'Modelo Objeto'
      FieldName = 'objmodelo'
      Size = 200
    end
  end
  object vfo: TUniQuery
    SQL.Strings = (
      'SELECT vfo.vfocodigo'
      '     , vfo.vfecodigo'
      '     , vfo.orcchave'
      'FROM vfo'
      'WHERE vfo.vfocodigo = :vfocodigo')
    Left = 320
    Top = 427
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vfocodigo'
        Value = nil
      end>
    object vfovfocodigo: TIntegerField
      FieldName = 'vfocodigo'
    end
    object vfovfecodigo: TIntegerField
      FieldName = 'vfecodigo'
    end
    object vfoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
  end
  object DSorcvfo: TUniDataSource
    DataSet = orcvfo
    Left = 456
    Top = 419
  end
  object vfe: TUniQuery
    Left = 232
    Top = 427
  end
end
