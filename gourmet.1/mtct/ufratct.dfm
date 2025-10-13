inherited fratct: Tfratct
  Width = 747
  inherited PlGeral: TPanel
    Width = 747
    inherited PlLista: TPanel
      Width = 595
      inherited SplLista: TSplitter
        Width = 593
      end
      inherited SpFilter: TSplitter
        Width = 593
      end
      inherited PlRodaPe: TPanel
        Width = 593
      end
      inherited PlFiltros: TPanel
        Width = 593
      end
      inherited PlSelecao: TPanel
        Width = 593
        inherited GBPlSelecao: TGroupBox
          Width = 587
          inherited DBLista: TDBGrid
            Width = 480
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 593
        inherited DBGLista: TDBGrid
          Width = 593
          Columns = <
            item
              Expanded = False
              FieldName = 'tctcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tctidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 593
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 739
      inherited plid: TPanel
        Left = 521
        Caption = '01-09-001'
      end
      inherited PlSair: TPanel
        Left = 401
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Enabled = False
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      Enabled = False
      OnExecute = ActAlterarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tctcodigo, tctidentificacao from tct')
    object uqtabelatctcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tctcodigo'
    end
    object uqtabelatctidentificacao: TStringField
      DisplayLabel = 'Tipo de Conta'
      FieldName = 'tctidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
