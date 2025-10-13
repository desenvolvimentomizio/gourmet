inherited fraori: Tfraori
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'oricodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'oriidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Enabled = False
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Enabled = False
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select'
      ' oricodigo, '
      ' oriidentificacao,'
      ' etd.etdcodigo,'
      ' etdidentificacao '
      'from ori'
      ' inner join etd on etd.etdcodigo=ori.etdcodigo')
    object uqtabelaoricodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'oricodigo'
    end
    object uqtabelaoriidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'oriidentificacao'
      Size = 35
    end
    object uqtabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
