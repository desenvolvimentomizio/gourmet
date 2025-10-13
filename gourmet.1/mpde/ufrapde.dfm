inherited frapde: Tfrapde
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'pdecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pdeidentificacao'
              Visible = True
            end>
        end
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
      '  pde.pdecodigo,'
      '  pde.pdeidentificacao'
      'FROM pde')
    object uqtabelapdecodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pdecodigo'
    end
    object uqtabelapdeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      DisplayWidth = 4
      FieldName = 'pdeidentificacao'
      Size = 4
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
