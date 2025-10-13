inherited fratip: Tfratip
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tipcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tipidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tipcodigo, tipidentificacao from tip')
    object uqtabelatipcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tipcodigo'
    end
    object uqtabelatipidentificacao: TStringField
      DisplayLabel = 'Tipo de Impressora'
      FieldName = 'tipidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
