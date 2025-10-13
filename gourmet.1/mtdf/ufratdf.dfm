inherited fratdf: Tfratdf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tdfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tdfcodigo, tdfidentificacao from tdf')
    object uqtabelatdfcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tdfcodigo'
      Size = 3
    end
    object uqtabelatdfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tdfidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
