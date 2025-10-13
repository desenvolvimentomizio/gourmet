inherited fratfd: Tfratfd
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tfdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfdidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tfdcodigo,tfdidentificacao from tfd')
    object uqtabelatfdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tfdcodigo'
    end
    object uqtabelatfdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tfdidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
