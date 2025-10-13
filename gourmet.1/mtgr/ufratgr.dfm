inherited fratgr: Tfratgr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tgrcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tgridentificacao'
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
      'select tgrcodigo, tgridentificacao from tgr')
    object uqtabelatgrcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tgrcodigo'
    end
    object uqtabelatgridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tgridentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
