inherited fratto: Tfratto
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ttocodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttoidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Tipo de Opera'#231#227'o de Estoque'
      inherited plid: TPanel
        Caption = '02.04.11.006'
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
      'select ttocodigo,ttoidentificacao from tto')
    object uqtabelattocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Codigo'
      FieldName = 'ttocodigo'
    end
    object uqtabelattoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ttoidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
