inherited frafrr: Tfrafrr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'frrcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'frridentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '02.02.15.001'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select frrcodigo,frridentificacao from frr')
    object uqtabelafrrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'frrcodigo'
    end
    object uqtabelafrridentificacao: TStringField
      DisplayLabel = 'Identificacao'
      FieldName = 'frridentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
