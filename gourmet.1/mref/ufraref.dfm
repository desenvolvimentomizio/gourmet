inherited fraref: Tfraref
  Width = 512
  inherited PlGeral: TPanel
    Width = 512
    inherited PlLista: TPanel
      Width = 368
      inherited SplLista: TSplitter
        Width = 368
      end
      inherited SpFilter: TSplitter
        Width = 368
      end
      inherited PlRodaPe: TPanel
        Width = 368
      end
      inherited PlFiltros: TPanel
        Width = 368
      end
      inherited PlSelecao: TPanel
        Width = 368
        inherited GBPlSelecao: TGroupBox
          Width = 364
          inherited DBLista: TDBGrid
            Width = 257
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 368
        inherited DBGLista: TDBGrid
          Width = 368
          Columns = <
            item
              Expanded = False
              FieldName = 'refcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'refidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 368
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 512
      inherited plid: TPanel
        Left = 294
        Caption = '09-00-008'
      end
      inherited PlSair: TPanel
        Left = 174
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT refcodigo'
      '     , refidentificacao'
      'FROM ref'
      'WHERE ref.refativo = 1')
    object uqtabelarefcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'refcodigo'
    end
    object uqtabelarefidentificacao: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'refidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
