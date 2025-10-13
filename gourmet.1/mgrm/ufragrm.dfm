inherited fragrm: Tfragrm
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'grmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grmidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grmordem'
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
      '  grmcodigo,'
      '  grm.mdpcodigo,'
      '  mdp.mdpidentificacao,'
      '  grmidentificacao,'
      '  grmordem'
      'FROM grm, mdp where grm.mdpcodigo=mdp.mdpcodigo')
    object uqtabelagrmcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grmcodigo'
    end
    object uqtabelamdpcodigo: TIntegerField
      DisplayLabel = 'Cod.M'#243'dulo'
      FieldName = 'mdpcodigo'
    end
    object uqtabelamdpidentificacao: TStringField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'mdpidentificacao'
      Size = 50
    end
    object uqtabelagrmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'grmidentificacao'
      Size = 50
    end
    object uqtabelagrmordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'grmordem'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
