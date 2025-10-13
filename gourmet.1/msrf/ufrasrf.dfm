inherited frasrf: Tfrasrf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'srfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'srfidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select srfcodigo,srfidentificacao from srf')
    object uqtabelasrfcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'srfcodigo'
    end
    object uqtabelasrfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
