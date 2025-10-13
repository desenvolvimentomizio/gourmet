inherited fratdg: Tfratdg
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tdgcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdgidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfdidentificacao'
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
      
        'select tdgcodigo, tdgidentificacao, tfdidentificacao from tdg, t' +
        'fd where tdg.tfdcodigo=tfd.tfdcodigo')
    object uqtabelatdgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tdgcodigo'
    end
    object uqtabelatdgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tdgidentificacao'
      Size = 50
    end
    object uqtabelatfdidentificacao: TStringField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'tfdidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
