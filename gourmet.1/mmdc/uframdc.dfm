inherited framdc: Tframdc
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'mdccodigo'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdcidentificacao'
              Width = 850
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select mdccodigo, mdcidentificacao from mdc')
    object uqtabelamdccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mdccodigo'
    end
    object uqtabelamdcidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'mdcidentificacao'
      Size = 250
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
