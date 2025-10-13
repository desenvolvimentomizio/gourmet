inherited fragop: Tfragop
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'gopchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gopordem'
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
      '  gop.gopchave,'
      '  grp.grpidentificacao,'
      '  pro.pronome,'
      '  gop.procodigo,'
      '  gop.gopordem'
      'FROM gop'
      '  INNER JOIN pro'
      '    ON gop.procodigo = pro.procodigo'
      '  INNER JOIN grp'
      '    ON pro.grpcodigo = grp.grpcodigo')
    object uqtabelagopchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'gopchave'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Grupo do Produto'
      FieldName = 'grpidentificacao'
      Size = 50
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 50
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelagopordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'gopordem'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
