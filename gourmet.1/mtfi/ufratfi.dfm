inherited fratfi: Tfratfi
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tficodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfiidentificacao'
              Width = 411
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Tipos de Documentos Financeiros'
      inherited plid: TPanel
        Caption = '02.02.80.003'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tficodigo,tfiidentificacao from tfi')
    object uqtabelatficodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tficodigo'
    end
    object uqtabelatfiidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tfiidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
