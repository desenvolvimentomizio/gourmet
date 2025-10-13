inherited fragcc: Tfragcc
  Width = 700
  inherited PlGeral: TPanel
    Width = 700
    inherited PlLista: TPanel
      Width = 548
      inherited SplLista: TSplitter
        Width = 546
      end
      inherited SpFilter: TSplitter
        Width = 546
      end
      inherited PlRodaPe: TPanel
        Width = 546
      end
      inherited PlFiltros: TPanel
        Width = 546
      end
      inherited PlSelecao: TPanel
        Width = 546
        inherited GBPlSelecao: TGroupBox
          Width = 540
          inherited DBLista: TDBGrid
            Width = 433
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 546
        inherited DBGLista: TDBGrid
          Width = 546
          Columns = <
            item
              Expanded = False
              FieldName = 'gcccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gccmascara'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gccidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 546
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 692
      inherited plid: TPanel
        Left = 354
      end
      inherited PlSair: TPanel
        Left = 570
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
      'select gcccodigo, gccmascara, gccidentificacao from gcc')
    object uqtabelagcccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gcccodigo'
    end
    object uqtabelagccmascara: TStringField
      DisplayLabel = 'M'#225'scara'
      FieldName = 'gccmascara'
      Size = 50
    end
    object uqtabelagccidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'gccidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
