inherited fragbp: Tfragbp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'gbpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gbpidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Grupos de Bens Patrimoniais'
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
      'select gbpcodigo,gbpidentificacao from gbp')
    object uqtabelagbpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gbpcodigo'
    end
    object uqtabelagbpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'gbpidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
