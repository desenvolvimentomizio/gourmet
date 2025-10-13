inherited frarue: Tfrarue
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ruecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rueidentificacao'
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
      '  rue.ruecodigo,'
      '  rue.rueidentificacao'
      'FROM rue')
    object uqtabelaruecodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ruecodigo'
    end
    object uqtabelarueidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      DisplayWidth = 4
      FieldName = 'rueidentificacao'
      Size = 4
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
