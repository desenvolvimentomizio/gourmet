inherited frafra: Tfrafra
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'fracodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fraidentificacao'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fraidmd'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'franome'
              Width = 120
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
      '  fracodigo,'
      '  fraidentificacao,'
      '  fraidmd,'
      '  franome'
      'FROM fra')
    object uqtabelafracodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fracodigo'
    end
    object uqtabelafraidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fraidentificacao'
      Size = 250
    end
    object uqtabelafraidmd: TStringField
      DisplayLabel = 'ID'
      FieldName = 'fraidmd'
      Size = 50
    end
    object uqtabelafranome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'franome'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
