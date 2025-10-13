inherited fraopg: Tfraopg
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'opgcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'opcidentificacao'
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
      '  opg.opgcodigo,'
      '  opg.grpcodigo,'
      '  grp.grpidentificacao,'
      '  opg.opccodigo,'
      '  opc.opcidentificacao,'
      '  opg.sipcodigo,'
      '  opg.stgcodigo'
      'FROM opg'
      '  INNER JOIN grp'
      '    ON opg.grpcodigo = grp.grpcodigo'
      '  INNER JOIN opc'
      '    ON opg.opccodigo = opc.opccodigo')
    object uqtabelaopgcodigo: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'opgcodigo'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grpidentificacao'
      Size = 50
    end
    object uqtabelaopcidentificacao: TStringField
      DisplayLabel = 'Op'#231#245'es'
      FieldName = 'opcidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
