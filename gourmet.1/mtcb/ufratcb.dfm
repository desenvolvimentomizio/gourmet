inherited fratcb: Tfratcb
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tcbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcbidentificacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tcbcodigo, tcbidentificacao from tcb')
    object uqtabelatcbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tcbcodigo'
    end
    object uqtabelatcbidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tcbidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
