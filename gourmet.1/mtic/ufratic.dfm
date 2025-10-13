inherited fratic: Tfratic
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ticcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ticidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Tabela de Informa'#231#245'es Complementares das NFE'#39's'
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'Select ticcodigo,ticidentificacao from tic')
    object uqtabelaticcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ticcodigo'
    end
    object uqtabelaticidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ticidentificacao'
      Size = 350
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
