inherited fratpa: Tfratpa
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tpacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpaidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '01.01.01.009'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tpacodigo,tpaidentificacao from tpa')
    Left = 176
    Top = 248
    object uqtabelatpacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tpacodigo'
    end
    object uqtabelatpaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tpaidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
