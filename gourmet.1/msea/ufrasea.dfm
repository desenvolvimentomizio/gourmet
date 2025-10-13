inherited frasea: Tfrasea
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'seacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'seaidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Natureza das Contas'
      inherited plid: TPanel
        Caption = '02.02.16.012'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select seacodigo,seaidentificacao from sea')
    object uqtabelaseacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'seacodigo'
    end
    object uqtabelaseaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'seaidentificacao'
      Size = 15
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
