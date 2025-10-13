inherited fracst: Tfracst
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cstcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cstidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select cstcodigo, cstidentificacao from cst')
    object uqtabelacstcodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cstcodigo'
      Size = 3
    end
    object uqtabelacstidentificacao: TStringField
      FieldName = 'cstidentificacao'
      Size = 100
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
