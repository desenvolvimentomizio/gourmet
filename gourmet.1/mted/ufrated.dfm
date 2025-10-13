inherited frated: Tfrated
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tedcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tedidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '09-00-011'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tedcodigo,tedidentificacao from ted')
    object uqtabelatedcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tedcodigo'
    end
    object uqtabelatedidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tedidentificacao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
