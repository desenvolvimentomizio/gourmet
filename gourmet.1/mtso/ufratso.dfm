inherited fratso: Tfratso
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PlRodaPe: TPanel
        ExplicitLeft = 0
        ExplicitTop = 554
      end
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tsoidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tsotelefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tsoemail'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tsoempresa'
              Width = 250
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
      
        'select tsoemail,tsotelefone, tsoidentificacao, tsoempresa from t' +
        'so')
    object uqtabelatsoemail: TStringField
      DisplayLabel = 'email'
      FieldName = 'tsoemail'
      Size = 200
    end
    object uqtabelatsotelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'tsotelefone'
    end
    object uqtabelatsoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tsoidentificacao'
      Size = 50
    end
    object uqtabelatsoempresa: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'tsoempresa'
      Size = 250
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
