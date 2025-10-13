inherited fravrb: Tfravrb
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'vrbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vrbidentificacao'
              Width = 436
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Verbas da Folha de Pagamento'
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
      'select vrbcodigo,cedcodigo,vrbidentificacao from vrb')
    object uqtabelavrbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'vrbcodigo'
    end
    object uqtabelacedcodigo: TIntegerField
      DisplayLabel = 'Cr'#233'dito/D'#233'bito'
      FieldName = 'cedcodigo'
    end
    object uqtabelavrbidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'vrbidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
