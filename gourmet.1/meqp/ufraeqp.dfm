inherited fraeqp: Tfraeqp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'eqpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eqpidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meqidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eqpnumserie'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eqpmodelo'
              Width = 150
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
      'SELECT e.eqpcodigo'
      '     , m.meqidentificacao'
      '     , e.eqpnumserie'
      '     , e.eqpidentificacao'
      '     , e.eqpmodelo'
      'FROM eqp e'
      '  JOIN meq m'
      '    ON e.meqcodigo = m.meqcodigo')
    object uqtabelaeqpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'eqpcodigo'
    end
    object uqtabelaeqpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'eqpidentificacao'
      Size = 150
    end
    object uqtabelameqidentificacao: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'meqidentificacao'
      Size = 60
    end
    object uqtabelaeqpnumserie: TStringField
      DisplayLabel = 'N'#250'mero de S'#233'rie'
      FieldName = 'eqpnumserie'
      Size = 60
    end
    object uqtabelaeqpmodelo: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'eqpmodelo'
      Size = 40
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
