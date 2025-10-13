inherited frarcc: Tfrarcc
  Width = 1408
  ExplicitWidth = 1408
  inherited PlGeral: TPanel
    Width = 1408
    ExplicitWidth = 1408
    inherited PlLista: TPanel
      Width = 1264
      ExplicitWidth = 1264
      inherited SplLista: TSplitter
        Top = 484
        Width = 1264
        ExplicitTop = 478
        ExplicitWidth = 1264
      end
      inherited SpFilter: TSplitter
        Width = 1264
        ExplicitWidth = 1264
      end
      inherited PlRodaPe: TPanel
        Top = 489
        Width = 1264
        Height = 91
        ExplicitTop = 489
        ExplicitWidth = 1264
        ExplicitHeight = 91
        inherited DBGListaMce: TDBGrid
          Height = 91
        end
      end
      inherited PlFiltros: TPanel
        Width = 1264
        ExplicitWidth = 1264
      end
      inherited PlSelecao: TPanel
        Width = 1264
        ExplicitWidth = 1264
        inherited GBPlSelecao: TGroupBox
          Width = 1260
          ExplicitWidth = 1260
          inherited DBLista: TDBGrid
            Width = 1153
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1264
        Height = 355
        ExplicitWidth = 1264
        ExplicitHeight = 355
        inherited DBGLista: TDBGrid
          Width = 1264
          Height = 310
          Columns = <
            item
              Expanded = False
              FieldName = 'rcrchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrdata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrhora'
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
              Width = 266
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcridentificacao'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tscidentificacao'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrhistorico'
              Width = 231
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrvalor'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrsaldo'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mcrvalorbaixa'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 310
          Width = 1264
          ExplicitTop = 310
          ExplicitWidth = 1264
          inherited PlDetalhe: TPanel
            Width = 1262
            ExplicitWidth = 1262
            inherited GbGeral: TGroupBox
              Left = 825
              ExplicitLeft = 825
            end
            inherited GBBaixados: TGroupBox
              Left = 970
              ExplicitLeft = 970
            end
            inherited GBDisponivel: TGroupBox
              Left = 1115
              ExplicitLeft = 1115
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1408
      ExplicitWidth = 1408
      inherited plid: TPanel
        Left = 958
        ExplicitLeft = 958
      end
      inherited PlSair: TPanel
        Left = 1202
        ExplicitLeft = 1202
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Caption = 'Adiantamento'
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      Enabled = False
      OnExecute = ActAlterarExecute
    end
    inherited ActTransferir: TAction
      OnExecute = ActTransferenciaExecute
    end
    inherited ActCancelar: TAction
      OnExecute = ActCancelarExecute
    end
    object ActEstornar: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Estornar'
      OnExecute = ActEstornarExecute
    end
    object spbEmAberto: TAction
      Category = 'Visualizar'
      Caption = 'Em Aberto'
      GroupIndex = 15
      OnExecute = spbEmAbertoExecute
    end
    object spbCancelados: TAction
      Category = 'Visualizar'
      Caption = 'Cancelados'
      GroupIndex = 15
      OnExecute = spbCanceladosExecute
    end
    object spbTransferidos: TAction
      Category = 'Visualizar'
      Caption = 'Transferidos'
      GroupIndex = 15
      OnExecute = spbTransferidosExecute
    end
    object spbTodos: TAction
      Category = 'Visualizar'
      Caption = 'Todos'
      GroupIndex = 15
      OnExecute = spbTodosExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcrchave,'
      '  tcridentificacao,'
      '  tscidentificacao,'
      '  etdidentificacao,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcrdata,'
      '  rcrhistorico,'
      '  mcechave,'
      '  tmcidentificacao,'
      '  tmccodigo,'
      '  clbcodigo,'
      '  clbidentificacao,'
      '  rcrvalor,'
      '  mcrvalorbaixa,'
      '  rcrsaldo,'
      '  mcemotivo,'
      '  mecregistro,'
      '  tcrcodigo,'
      '  tsccodigo,'
      '  tnccodigo,'
      '  rcrhora,'
      '  tsccodigo'
      'FROM v_rcr where tnccodigo=1')
    object uqtabelarcrchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rcrchave'
    end
    object uqtabelatcridentificacao: TStringField
      DisplayLabel = 'Tipo de cr'#233'dito'
      FieldName = 'tcridentificacao'
      Required = True
      Size = 35
    end
    object uqtabelatscidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o do Cr'#233'dito'
      FieldName = 'tscidentificacao'
      Required = True
      Size = 255
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Entidade'
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
      Required = True
    end
    object uqtabelacedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object uqtabelarcrdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rcrdata'
    end
    object uqtabelarcrhistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rcrhistorico'
      Size = 200
    end
    object uqtabelamcechave: TIntegerField
      FieldName = 'mcechave'
    end
    object uqtabelatmcidentificacao: TStringField
      FieldName = 'tmcidentificacao'
      Required = True
      Size = 255
    end
    object uqtabelatmccodigo: TIntegerField
      FieldName = 'tmccodigo'
      Required = True
    end
    object uqtabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object uqtabelarcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rcrvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamcrvalorbaixa: TFloatField
      DisplayLabel = 'Valor da Baixa R$'
      FieldName = 'mcrvalorbaixa'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarcrsaldo: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'rcrsaldo'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamcemotivo: TStringField
      FieldName = 'mcemotivo'
      Required = True
      Size = 255
    end
    object uqtabelamecregistro: TDateTimeField
      FieldName = 'mecregistro'
    end
    object uqtabelatcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
      Required = True
    end
    object uqtabelatsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object uqtabelatnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object uqtabelarcrhora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'rcrhora'
    end
    object uqtabelatsccodigo_1: TIntegerField
      FieldName = 'tsccodigo_1'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited mce: TUniQuery
    Left = 1008
    Top = 448
    object mcemcechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mcechave'
    end
    object mcercrchave: TIntegerField
      FieldName = 'rcrchave'
      Required = True
    end
    object mcetmccodigo: TIntegerField
      FieldName = 'tmccodigo'
      Required = True
    end
    object mceclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object mcemcemotivo: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'mcemotivo'
      Required = True
      Size = 255
    end
    object mcemecregistro: TDateTimeField
      DisplayLabel = 'Data de Inclus'#227'o'
      FieldName = 'mecregistro'
    end
    object mceclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      ReadOnly = True
      Size = 30
    end
    object mcetmcidentificacao: TStringField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'tmcidentificacao'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object mcemcevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mcevalor'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited Dmce: TDataSource
    Left = 1075
    Top = 420
  end
end
