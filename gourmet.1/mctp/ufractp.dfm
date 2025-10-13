inherited fractp: Tfractp
  Width = 931
  inherited PlGeral: TPanel
    Width = 931
    inherited PlLista: TPanel
      Width = 779
      inherited SplLista: TSplitter
        Width = 777
      end
      inherited SpFilter: TSplitter
        Width = 777
      end
      inherited PlRodaPe: TPanel
        Width = 777
      end
      inherited PlFiltros: TPanel
        Width = 777
      end
      inherited PlSelecao: TPanel
        Width = 777
        inherited GBPlSelecao: TGroupBox
          Width = 771
          inherited DBLista: TDBGrid
            Width = 664
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 777
        inherited DBGLista: TDBGrid
          Width = 777
          Columns = <
            item
              Expanded = False
              FieldName = 'ctpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctptecla'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctpfuncao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctpativo'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 777
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 923
      inherited plid: TPanel
        Left = 701
        Caption = '03.03.80.001'
      end
      inherited PlSair: TPanel
        Left = 521
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
      'select ctpcodigo,ctpfuncao, ctptecla,ctpativo from ctp')
    object uqtabelactpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ctpcodigo'
    end
    object uqtabelactpfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'ctpfuncao'
      Size = 50
    end
    object uqtabelactptecla: TStringField
      DisplayLabel = 'Tecla'
      FieldName = 'ctptecla'
      Size = 5
    end
    object uqtabelactpativo: TStringField
      DisplayLabel = 'Ativa'
      FieldName = 'ctpativo'
      Size = 1
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
