inherited fratfp: Tfratfp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tfpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfpidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '02.04.80.003'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT tfpcodigo'
      '     , tfpidentificacao'
      'FROM tfp'
      'WHERE tfp.tfpativo = 1')
    object uqtabelatfpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tfpcodigo'
    end
    object uqtabelatfpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tfpidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
