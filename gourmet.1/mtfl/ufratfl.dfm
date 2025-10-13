inherited fratfl: Tfratfl
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tflcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tflidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tflcodigo, tflidentificacao from tfl')
    object uqtabelatflcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tflcodigo'
    end
    object uqtabelatflidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tflidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
