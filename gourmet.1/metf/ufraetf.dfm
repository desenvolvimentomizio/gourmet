inherited fraetf: Tfraetf
  Width = 1006
  ExplicitWidth = 1006
  inherited PlGeral: TPanel
    Width = 1006
    ExplicitWidth = 1006
    inherited PlLista: TPanel
      Width = 862
      ExplicitWidth = 862
      inherited SplLista: TSplitter
        Width = 862
        ExplicitWidth = 573
      end
      inherited SpFilter: TSplitter
        Width = 862
        ExplicitWidth = 573
      end
      inherited PlRodaPe: TPanel
        Width = 862
        ExplicitWidth = 862
      end
      inherited PlFiltros: TPanel
        Width = 862
        ExplicitWidth = 862
      end
      inherited PlSelecao: TPanel
        Width = 862
        ExplicitWidth = 862
        inherited GBPlSelecao: TGroupBox
          Width = 858
          ExplicitWidth = 858
          inherited DBLista: TDBGrid
            Width = 751
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 862
        ExplicitWidth = 862
        inherited DBGLista: TDBGrid
          Width = 862
          Columns = <
            item
              Expanded = False
              FieldName = 'ttfidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etftelefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etfsituacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 862
          ExplicitWidth = 862
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1006
      ExplicitWidth = 1006
      inherited plid: TPanel
        Left = 556
        Caption = '09-00-003 '
        ExplicitLeft = 556
      end
      inherited PlSair: TPanel
        Left = 800
        ExplicitLeft = 800
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
    inherited ActPesquisar: TAction
      Visible = False
    end
    inherited ActRelatorios: TAction
      Visible = False
    end
    inherited ActVerFiltros: TAction
      Visible = False
    end
    inherited ActFiltrar: TAction
      Visible = False
    end
    inherited ActConfig: TAction
      Visible = False
    end
    inherited ActConfiguracoes: TAction
      Visible = False
    end
    object ActDesativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      OnExecute = ActDesativarExecute
    end
    object ActReativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Reativar'
      OnExecute = ActReativarExecute
    end
    object ActMostrarTodos: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Mostrar Todos'
      OnExecute = ActMostrarTodosExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select etfcodigo,etdcodigo,etfcontato,etfdepartamento,etftelefon' +
        'e, ttfidentificacao,etfativo, if(etfativo=1,'#39'ATIVO'#39','#39'INATIVO'#39') e' +
        'tfsituacao from etf,ttf'
      'where etf.etdcodigo=:etdcodigo and'
      'etf.ttfcodigo=ttf.ttfcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object uqtabelaetfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etfcodigo'
    end
    object uqtabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object uqtabelaetfcontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'etfcontato'
    end
    object uqtabelaetfdepartamento: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'etfdepartamento'
    end
    object uqtabelaetftelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'etftelefone'
    end
    object uqtabelattfidentificacao: TStringField
      DisplayLabel = 'Tipo de Telefone'
      FieldName = 'ttfidentificacao'
    end
    object uqtabelaetfativo: TIntegerField
      FieldName = 'etfativo'
    end
    object uqtabelaetfsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'etfsituacao'
      Size = 10
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
