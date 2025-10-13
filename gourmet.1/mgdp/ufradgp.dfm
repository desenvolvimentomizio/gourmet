inherited fradgp: Tfradgp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'gdpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gdpidentificacao'
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
      'select gdpcodigo, gdpidentificacao from gdp')
    Left = 296
    object uqtabelagdpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gdpcodigo'
    end
    object uqtabelagdpidentificacao: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'gdpidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
