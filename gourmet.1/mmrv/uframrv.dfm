inherited framrv: Tframrv
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'mrvcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mrvidentificacao'
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
      '  mrv.mrvcodigo,'
      '  mrv.mrvidentificacao'
      'FROM mrv')
    object uqtabelamrvcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mrvcodigo'
    end
    object uqtabelamrvidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'mrvidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
