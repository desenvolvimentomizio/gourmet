inherited fraced: Tfraced
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cedcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedidentificacao'
              Width = 138
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Cr'#233'dito / D'#233'bito'
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select cedcodigo,cedidentificacao from ced')
    object uqtabelacedcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cedcodigo'
    end
    object uqtabelacedidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cedidentificacao'
      Size = 15
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
