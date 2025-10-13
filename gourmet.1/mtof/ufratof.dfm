inherited fratof: Tfratof
  Width = 871
  inherited PlGeral: TPanel
    Width = 871
    inherited PlLista: TPanel
      Width = 719
      inherited SplLista: TSplitter
        Width = 717
      end
      inherited SpFilter: TSplitter
        Width = 717
      end
      inherited PlRodaPe: TPanel
        Width = 717
      end
      inherited PlFiltros: TPanel
        Width = 717
      end
      inherited PlSelecao: TPanel
        Width = 717
        inherited GBPlSelecao: TGroupBox
          Width = 711
          inherited DBLista: TDBGrid
            Width = 604
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 717
        inherited DBGLista: TDBGrid
          Width = 717
          Columns = <
            item
              Expanded = False
              FieldName = 'tofcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tofidentificacao'
              Width = 600
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 717
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 863
      inherited plid: TPanel
        Left = 641
        Caption = '03-13-001'
      end
      inherited PlSair: TPanel
        Left = 461
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
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tofcodigo, tofidentificacao from tof')
    object uqtabelatofcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tofcodigo'
    end
    object uqtabelatofidentificacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'tofidentificacao'
      Size = 350
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
