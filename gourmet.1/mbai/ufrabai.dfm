inherited frabai: Tfrabai
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'baicodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'baiidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
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
      
        'select baicodigo, baiidentificacao, pronome from bai,pro where b' +
        'ai.procodigo=pro.procodigo')
    object uqtabelabaicodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'baicodigo'
    end
    object uqtabelabaiidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'baiidentificacao'
      Size = 50
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Produo Vinculado'
      FieldName = 'pronome'
      Size = 80
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
