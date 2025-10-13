inherited framoe: Tframoe
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'moecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'moeidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'moesimbolo'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Moedas e Indicadores'
      inherited plid: TPanel
        Caption = '03.06.80.005'
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
      'select moecodigo, moeidentificacao, moesimbolo from moe')
    object uqtabelamoecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'moecodigo'
    end
    object uqtabelamoeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'moeidentificacao'
      Size = 30
    end
    object uqtabelamoesimbolo: TStringField
      DisplayLabel = 'S'#237'mbolo'
      FieldName = 'moesimbolo'
      Size = 5
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
