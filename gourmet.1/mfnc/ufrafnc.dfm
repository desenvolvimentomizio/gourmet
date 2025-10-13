inherited frafnc: Tfrafnc
  Width = 929
  inherited PlGeral: TPanel
    Width = 929
    inherited PlLista: TPanel
      Width = 785
      inherited SplLista: TSplitter
        Width = 785
      end
      inherited SpFilter: TSplitter
        Width = 785
      end
      inherited PlRodaPe: TPanel
        Width = 785
      end
      inherited PlFiltros: TPanel
        Width = 785
      end
      inherited PlSelecao: TPanel
        Width = 785
        inherited GBPlSelecao: TGroupBox
          Width = 781
          inherited DBLista: TDBGrid
            Width = 674
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 785
        inherited DBGLista: TDBGrid
          Width = 785
          Columns = <
            item
              Expanded = False
              FieldName = 'fnccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fncidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 785
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 929
      inherited plid: TPanel
        Left = 737
        Caption = '01.01.02.003'
      end
      inherited PlSair: TPanel
        Left = 578
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
      'select fnccodigo,fncidentificacao from fnc')
    object uqtabelafnccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fnccodigo'
    end
    object uqtabelafncidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fncidentificacao'
      Size = 25
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
