inherited fraicm: Tfraicm
  Width = 994
  inherited PlGeral: TPanel
    Width = 994
    inherited PlLista: TPanel
      Width = 842
      inherited SplLista: TSplitter
        Width = 840
      end
      inherited SpFilter: TSplitter
        Width = 840
      end
      inherited PlRodaPe: TPanel
        Width = 840
      end
      inherited PlFiltros: TPanel
        Width = 840
      end
      inherited PlSelecao: TPanel
        Width = 840
        inherited GBPlSelecao: TGroupBox
          Width = 834
          inherited DBLista: TDBGrid
            Width = 727
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 840
        inherited DBGLista: TDBGrid
          Width = 840
          Columns = <
            item
              Expanded = False
              FieldName = 'icmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'icmaliquotas'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 840
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 986
      Caption = 'Icms'
      inherited plid: TPanel
        Left = 764
        Caption = '04-12-000'
      end
      inherited PlSair: TPanel
        Left = 584
      end
    end
  end
  inherited acoes: TActionList
    inherited ActRelatorios: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select icmcodigo, icmaliquotas from icm')
    object uqtabelaicmcodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'icmcodigo'
      Size = 2
    end
    object uqtabelaicmaliquotas: TStringField
      DisplayLabel = 'Al'#237'quotas'
      FieldName = 'icmaliquotas'
      Size = 8
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
