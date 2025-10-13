inherited fratrb: Tfratrb
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'trbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'trbidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Tributa'#231#227'o Especial de Produtos'
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
      'select trbcodigo,trbidentificacao from trb')
    object uqtabelatrbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'trbcodigo'
    end
    object uqtabelatrbidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'trbidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
