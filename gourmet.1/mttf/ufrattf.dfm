inherited frattf: Tfrattf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ttfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttfidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '09-00-012'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select ttfcodigo,ttfidentificacao from ttf')
    object uqtabelattfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ttfcodigo'
    end
    object uqtabelattfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ttfidentificacao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
