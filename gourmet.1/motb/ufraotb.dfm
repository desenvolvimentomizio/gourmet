inherited fraotb: Tfraotb
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'otbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'otbidentificacao'
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
      '  otbcodigo,'
      '  otbidentificacao'
      'FROM otb')
    object uqtabelaotbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'otbcodigo'
    end
    object uqtabelaotbidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'otbidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
