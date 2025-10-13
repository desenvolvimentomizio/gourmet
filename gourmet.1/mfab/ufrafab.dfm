inherited frafab: Tfrafab
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'fabcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fabidentificacao'
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
  inherited DSTabela: TUniDataSource
    Left = 304
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select fabcodigo, fabidentificacao from fab')
    Left = 308
    object uqtabelafabcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fabcodigo'
    end
    object uqtabelafabidentificacao: TStringField
      DisplayLabel = 'Nome do Fabricante'
      FieldName = 'fabidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
