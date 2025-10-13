inherited fragsb: Tfragsb
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'gsbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gsbidentificacao'
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
      'select gsbcodigo, gsbidentificacao from gsb')
    object uqtabelagsbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gsbcodigo'
    end
    object uqtabelagsbidentificacao: TStringField
      DisplayLabel = 'Identificacao'
      FieldName = 'gsbidentificacao'
      Size = 25
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
