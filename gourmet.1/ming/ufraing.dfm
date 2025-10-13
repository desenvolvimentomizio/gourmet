inherited fraing: Tfraing
  inherited PlGeral: TPanel
    inherited SplBotoes: TSplitter
      Visible = False
    end
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronomereduzido'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT procodigo, pronomereduzido FROM pro WHERE tpocodigo=1')
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelapronomereduzido: TStringField
      DisplayLabel = 'Ingrediente'
      FieldName = 'pronomereduzido'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
