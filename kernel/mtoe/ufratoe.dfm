inherited fratoe: Tfratoe
  Width = 1044
  Height = 506
  ExplicitWidth = 1044
  ExplicitHeight = 506
  inherited PlGeral: TPanel
    Width = 1044
    Height = 506
    ExplicitWidth = 1044
    ExplicitHeight = 506
    inherited SplBotoes: TSplitter
      Height = 486
      ExplicitHeight = 480
    end
    inherited PlBotoes: TPanel
      Height = 486
      ExplicitHeight = 486
      inherited ImageLogoBase: TImage
        Top = 402
        ExplicitTop = 401
      end
      inherited PlInfo: TPanel
        Top = 466
        ExplicitTop = 466
      end
      inherited SBBotoes: TScrollBox
        Height = 402
        ExplicitHeight = 402
      end
    end
    inherited PlLista: TPanel
      Width = 900
      Height = 486
      ExplicitWidth = 900
      ExplicitHeight = 486
      inherited SplLista: TSplitter
        Top = 449
        Width = 900
        ExplicitTop = 443
        ExplicitWidth = 900
      end
      inherited SpFilter: TSplitter
        Width = 900
        ExplicitWidth = 900
      end
      inherited PlRodaPe: TPanel
        Top = 454
        Width = 900
        Height = 32
        ExplicitTop = 454
        ExplicitWidth = 900
        ExplicitHeight = 32
      end
      inherited PlFiltros: TPanel
        Width = 900
        ExplicitWidth = 900
      end
      inherited PlSelecao: TPanel
        Width = 900
        ExplicitWidth = 900
        inherited GBPlSelecao: TGroupBox
          Width = 896
          ExplicitWidth = 896
          inherited DBLista: TDBGrid
            Width = 789
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 900
        Height = 320
        ExplicitWidth = 900
        ExplicitHeight = 320
        inherited DBGLista: TDBGrid
          Width = 900
          Height = 233
          Columns = <
            item
              Expanded = False
              FieldName = 'toecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toeativo'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttoidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toeidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toecfopsaida'
              Title.Caption = 'CFOP Dest.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cstcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cspcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfgpercentualpis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'csfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfgpercentualcofins'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'csicodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttmidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tteidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tmeidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cstnormal'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 233
          Width = 900
          Height = 87
          Visible = True
          ExplicitTop = 233
          ExplicitWidth = 900
          ExplicitHeight = 87
          object toedescricao: TDBMemo
            Left = 1
            Top = 42
            Width = 898
            Height = 44
            Align = alClient
            DataField = 'toedescricao'
            DataSource = DSTabela
            ReadOnly = True
            TabOrder = 0
          end
          object plMensagem: TPanel
            Left = 1
            Top = 1
            Width = 898
            Height = 41
            Align = alTop
            Alignment = taLeftJustify
            BorderWidth = 4
            Caption = 'Aten'#231#227'o: N'#195'O MOVIMENTA PRODUTO NO ESTOQUE'
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Padding.Left = 10
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1044
      ExplicitWidth = 1044
      inherited plid: TPanel
        Left = 616
        Caption = '02.04.11.001-02'
        ExplicitLeft = 616
      end
      inherited PlSair: TPanel
        Left = 860
        ExplicitLeft = 860
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    object ActTodos: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Mostrar Todos'
      Enabled = False
      Visible = False
      OnExecute = ActTodosExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT toe.toecodigo'
      '     , toe.toeidentificacao'
      '     , toe.toedescricao'
      '     , toe.toecfopsaida'
      '     , toe.toeorigem'
      '     , ttm.ttmidentificacao'
      '     , tte.tteidentificacao'
      '     , tto.ttoidentificacao'
      '     , toe.tmecodigo'
      '     , toe.ttmcodigo'
      '     , toe.ttecodigo'
      '     , toe.ttocodigo'
      '     , toe.toeativo'
      '     , sen.senidentificacao'
      '     , tme.tmeidentificacao'
      '     , toe.cstcodigo'
      '     , toe.csicodigo'
      '     , toe.cspcodigo'
      '     , toe.csfcodigo'
      '     , toe.cfgpercentualpis'
      '     , toe.cfgpercentualcofins'
      '     , toe.cstnormal'
      ''
      ''
      '  FROM toe'
      ''
      ' INNER JOIN tto ON toe.ttocodigo = tto.ttocodigo'
      ' INNER JOIN tte ON toe.ttecodigo = tte.ttecodigo'
      ' INNER JOIN ttm ON toe.ttmcodigo = ttm.ttmcodigo'
      ' INNER JOIN tme ON toe.tmecodigo = tme.tmecodigo'
      ' INNER JOIN sen ON toe.toeativo = CONVERT(sen.sencodigo, char)')
    object uqtabelatoecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'toecodigo'
    end
    object uqtabelatoeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'toeidentificacao'
      Size = 100
    end
    object uqtabelatoecfopsaida: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'toecfopsaida'
      Size = 5
    end
    object uqtabelatoeorigem: TStringField
      FieldName = 'toeorigem'
      Size = 1
    end
    object uqtabelatoedescricao: TStringField
      FieldName = 'toedescricao'
      Size = 1000
    end
    object uqtabelattoidentificacao: TStringField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'ttoidentificacao'
      Size = 50
    end
    object uqtabelattocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object uqtabelatmecodigo: TIntegerField
      FieldName = 'tmecodigo'
    end
    object uqtabelattmcodigo: TIntegerField
      FieldName = 'ttmcodigo'
    end
    object uqtabelattecodigo: TIntegerField
      FieldName = 'ttecodigo'
    end
    object uqtabelattmidentificacao: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'ttmidentificacao'
      Size = 30
    end
    object uqtabelatteidentificacao: TStringField
      DisplayLabel = 'Tipo de Movimento'
      FieldName = 'tteidentificacao'
      Size = 30
    end
    object uqtabelatoeativo: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'toeativo'
      Size = 2
    end
    object uqtabelasenidentificacao: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'senidentificacao'
      Size = 5
    end
    object uqtabelatmeidentificacao: TStringField
      DisplayLabel = 'Movimento de Produto'
      FieldName = 'tmeidentificacao'
      Size = 50
    end
    object uqtabelacstcodigo: TStringField
      DisplayLabel = 'CST Sim/Cons'
      FieldName = 'cstcodigo'
      Size = 3
    end
    object uqtabelacsicodigo: TStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'csicodigo'
      Size = 3
    end
    object uqtabelacspcodigo: TStringField
      DisplayLabel = 'CST PIS'
      FieldName = 'cspcodigo'
      Size = 3
    end
    object uqtabelacsfcodigo: TStringField
      DisplayLabel = 'CST COFINS'
      FieldName = 'csfcodigo'
      Size = 3
    end
    object uqtabelacfgpercentualpis: TFloatField
      DisplayLabel = 'Taxa % PIS'
      FieldName = 'cfgpercentualpis'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object uqtabelacfgpercentualcofins: TFloatField
      DisplayLabel = 'Taxa % COFINS'
      FieldName = 'cfgpercentualcofins'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object uqtabelacstnormal: TStringField
      DisplayLabel = 'CST Normal'
      FieldName = 'cstnormal'
      Size = 3
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object Dtoo: TUniDataSource
    DataSet = too
    Left = 584
    Top = 168
  end
  object too: TUniQuery
    SQL.Strings = (
      
        'select toochave,too.cfocfop, toecodigo, cfo.cfoidentificacao fro' +
        'm too, cfo where too.cfocfop=cfo.cfocfop')
    MasterSource = DSTabela
    MasterFields = 'toecodigo'
    DetailFields = 'toecodigo'
    Left = 624
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end>
    object tootoochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'toochave'
    end
    object toocfocfop: TStringField
      DisplayLabel = 'CFOP Origem'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object tootoecodigo: TIntegerField
      FieldName = 'toecodigo'
      Required = True
    end
    object toocfoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cfoidentificacao'
      ReadOnly = True
      Required = True
      Size = 200
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 632
    Top = 296
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
