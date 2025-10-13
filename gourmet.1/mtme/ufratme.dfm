inherited fratme: Tfratme
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tmecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tmeidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '02.04.11.003'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tmecodigo,tmeidentificacao from tme')
    object uqtabelatmecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tmecodigo'
    end
    object uqtabelatmeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tmeidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
