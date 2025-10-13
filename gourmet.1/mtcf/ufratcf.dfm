inherited fratcf: Tfratcf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tcfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcfidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Tipo de Conhecimento de Frete'
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tcfcodigo,tcfidentificacao from tcf')
    object uqtabelatcfcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tcfcodigo'
      Size = 2
    end
    object uqtabelatcfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tcfidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
