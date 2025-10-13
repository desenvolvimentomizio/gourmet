inherited frasdp: Tfrasdp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'sdpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdpidentificacao'
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
      'select sdpcodigo, sdpidentificacao from sdp')
    object uqtabelasdpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sdpcodigo'
    end
    object uqtabelasdpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'sdpidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
