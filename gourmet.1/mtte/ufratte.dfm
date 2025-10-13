inherited fratte: Tfratte
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ttecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tteidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '02.04.11.004'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select ttecodigo, tteidentificacao from tte')
    object uqtabelattecodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ttecodigo'
    end
    object uqtabelatteidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tteidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
