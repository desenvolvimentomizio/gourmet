inherited fracdd: Tfracdd
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cddcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cddnome'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '01.01.80.008'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT cddcodigo, cddnome, ufscodigo FROM cdd')
    object uqtabelacddcodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cddcodigo'
      Size = 10
    end
    object uqtabelacddnome: TStringField
      DisplayLabel = 'Nome da Cidade'
      FieldName = 'cddnome'
      Size = 50
    end
    object uqtabelaufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 10
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
