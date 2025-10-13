inherited fraetc: Tfraetc
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'etccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etcidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '01.01.01.005'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select etccodigo,etcidentificacao from etc')
    Left = 216
    Top = 208
    object uqtabelaetccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etccodigo'
    end
    object uqtabelaetcidentificacao: TStringField
      DisplayLabel = 'Identificacao'
      FieldName = 'etcidentificacao'
      Size = 25
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
