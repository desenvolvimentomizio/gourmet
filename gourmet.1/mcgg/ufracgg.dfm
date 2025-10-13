inherited fracgg: Tfracgg
  Width = 799
  ExplicitWidth = 799
  inherited PlGeral: TPanel
    Width = 799
    ExplicitWidth = 799
    inherited PlLista: TPanel
      Width = 655
      ExplicitWidth = 655
      inherited SplLista: TSplitter
        Width = 655
        ExplicitWidth = 645
      end
      inherited SpFilter: TSplitter
        Width = 655
        ExplicitWidth = 645
      end
      inherited PlRodaPe: TPanel
        Width = 655
        ExplicitWidth = 645
      end
      inherited PlFiltros: TPanel
        Width = 655
        ExplicitWidth = 655
      end
      inherited PlSelecao: TPanel
        Width = 655
        ExplicitWidth = 645
        inherited GBPlSelecao: TGroupBox
          Width = 639
          ExplicitWidth = 639
          inherited DBLista: TDBGrid
            Width = 532
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 655
        ExplicitWidth = 645
        inherited DBGLista: TDBGrid
          Width = 645
          Columns = <
            item
              Expanded = False
              FieldName = 'cggcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cggidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 645
          ExplicitWidth = 645
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 799
      ExplicitWidth = 791
      inherited plid: TPanel
        Left = 453
        ExplicitLeft = 453
      end
      inherited PlSair: TPanel
        Left = 669
        ExplicitLeft = 669
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
      'SELECT'
      '  cggcodigo,'
      '  cggidentificacao'
      'FROM cgg')
    object uqtabelacggcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cggcodigo'
    end
    object uqtabelacggidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cggidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
