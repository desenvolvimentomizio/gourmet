inherited frameq: Tframeq
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'meqcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meqidentificacao'
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
      'SELECT m.meqcodigo'
      '     , m.meqidentificacao'
      'FROM meq m')
    object uqtabelameqcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'meqcodigo'
    end
    object uqtabelameqidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'meqidentificacao'
      Size = 60
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
