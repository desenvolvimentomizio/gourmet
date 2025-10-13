inherited fracsi: Tfracsi
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'csicodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'csiidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '03.08.20.004'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select  csicodigo, csiidentificacao from csi')
    object uqtabelacsicodigo: TStringField
      DisplayLabel = 'CSI'
      FieldName = 'csicodigo'
      Size = 3
    end
    object uqtabelacsiidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'csiidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
