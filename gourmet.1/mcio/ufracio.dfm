inherited fracio: Tfracio
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ciocodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cioidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select ciocodigo, cioidentificacao from cio')
    object uqtabelaciocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ciocodigo'
    end
    object uqtabelacioidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cioidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
