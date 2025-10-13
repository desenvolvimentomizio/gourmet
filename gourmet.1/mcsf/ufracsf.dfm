inherited fracsf: Tfracsf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'csfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'csfidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'C'#243'digo da Situa'#231#227'o Tribut'#225'ria Referente ao COFINS'
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select csfcodigo,csfidentificacao from csf')
    object uqtabelacsfcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'csfcodigo'
      Size = 3
    end
    object uqtabelacsfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'csfidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
