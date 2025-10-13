inherited fradec: Tfradec
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'deccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'decidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '06-01-004'
      end
    end
  end
  inherited uqtabela: tuniquery
    SQL.Strings = (
      'select deccodigo, decidentificacao from dec')
    object uqtabeladeccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'deccodigo'
    end
    object uqtabeladecidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'decidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
