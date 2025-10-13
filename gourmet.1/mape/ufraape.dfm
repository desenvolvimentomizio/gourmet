inherited fraape: Tfraape
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'apecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'apeidentificacao'
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
  inherited DSTabela: tunidatasource
    Left = 312
    Top = 244
  end
  inherited uqtabela: tuniquery
    SQL.Strings = (
      'SELECT'
      '  ape.apecodigo,'
      '  ape.apeidentificacao'
      'FROM ape')
    Left = 308
    Top = 188
    object uqtabelaapecodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'apecodigo'
    end
    object uqtabelaapeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'apeidentificacao'
      Size = 2
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
