inherited frattm: Tfrattm
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ttmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttmidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select ttmcodigo, ttmidentificacao from ttm')
    object uqtabelattmcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ttmcodigo'
    end
    object uqtabelattmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ttmidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
