inherited fratev: Tfratev
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tevcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tevidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tevcodigo, tevidentificacao from tev')
    object uqtabelatevcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tevcodigo'
    end
    object uqtabelatevidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tevidentificacao'
      Size = 15
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
