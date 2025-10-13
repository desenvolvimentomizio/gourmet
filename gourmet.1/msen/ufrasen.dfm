inherited frasen: Tfrasen
  Width = 322
  inherited PlGeral: TPanel
    Width = 322
    inherited PlLista: TPanel
      Width = 170
      inherited SplLista: TSplitter
        Width = 168
      end
      inherited SpFilter: TSplitter
        Width = 168
      end
      inherited PlRodaPe: TPanel
        Width = 168
      end
      inherited PlFiltros: TPanel
        Width = 168
      end
      inherited PlSelecao: TPanel
        Width = 168
        inherited GBPlSelecao: TGroupBox
          Width = 162
          inherited DBLista: TDBGrid
            Width = 55
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 168
        inherited DBGLista: TDBGrid
          Width = 168
          Columns = <
            item
              Expanded = False
              FieldName = 'sencodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 168
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 314
      inherited plid: TPanel
        Left = 92
        Caption = '03.06.80.002'
      end
      inherited PlSair: TPanel
        Left = -88
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    object uqtabelasencodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sencodigo'
    end
    object uqtabelasenidentificacao: TStringField
      DisplayLabel = 'Defini'#231#227'o'
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
