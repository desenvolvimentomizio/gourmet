inherited fracbv: Tfracbv
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cbvcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cbvidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cbv.cbvcodigo,'
      '  cbv.cbvidentificacao'
      'FROM cbv')
    object uqtabelacbvcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cbvcodigo'
    end
    object uqtabelacbvidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cbvidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
