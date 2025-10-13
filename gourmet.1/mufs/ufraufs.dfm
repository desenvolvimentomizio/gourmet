inherited fraufs: Tfraufs
  Width = 651
  inherited PlGeral: TPanel
    Width = 651
    inherited PlLista: TPanel
      Width = 499
      inherited SplLista: TSplitter
        Width = 497
      end
      inherited SpFilter: TSplitter
        Width = 497
      end
      inherited PlRodaPe: TPanel
        Width = 497
      end
      inherited PlFiltros: TPanel
        Width = 497
      end
      inherited PlSelecao: TPanel
        Width = 497
        inherited GBPlSelecao: TGroupBox
          Width = 491
          inherited DBLista: TDBGrid
            Width = 384
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 497
        inherited DBGLista: TDBGrid
          Width = 497
          Columns = <
            item
              Expanded = False
              FieldName = 'ufscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ufssigla'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ufsnome'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 497
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 643
      Caption = 'Unidade Federativa'
      inherited plid: TPanel
        Left = 421
        Caption = '01.01.80.009'
      end
      inherited PlSair: TPanel
        Left = 241
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select ufscodigo, ufssigla, ufsnome from ufs')
    object uqtabelaufscodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ufscodigo'
      Size = 10
    end
    object uqtabelaufssigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ufssigla'
      Size = 5
    end
    object uqtabelaufsnome: TStringField
      DisplayLabel = 'Nome do Estado'
      FieldName = 'ufsnome'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
