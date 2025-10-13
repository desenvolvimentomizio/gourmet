inherited fraffi: Tfraffi
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'fficodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ffiidentificacao'
              Width = 330
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ffitipo'
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
      'select fficodigo,ffiidentificacao,ffitipo from ffi')
    object uqtabelafficodigo: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'fficodigo'
    end
    object uqtabelaffiidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ffiidentificacao'
      Size = 35
    end
    object uqtabelaffitipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'ffitipo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
