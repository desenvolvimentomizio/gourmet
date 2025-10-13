inherited fraecf: Tfraecf
  Width = 725
  inherited PlGeral: TPanel
    Width = 725
    inherited PlLista: TPanel
      Width = 573
      inherited SplLista: TSplitter
        Width = 571
      end
      inherited SpFilter: TSplitter
        Width = 571
      end
      inherited PlRodaPe: TPanel
        Width = 571
      end
      inherited PlFiltros: TPanel
        Width = 571
      end
      inherited PlSelecao: TPanel
        Width = 571
        inherited GBPlSelecao: TGroupBox
          Width = 565
          inherited DBLista: TDBGrid
            Width = 458
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 571
        inherited DBGLista: TDBGrid
          Width = 571
          Columns = <
            item
              Expanded = False
              FieldName = 'ecfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecfidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecftipodoc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecfcaixa'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 571
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 717
      inherited plid: TPanel
        Left = 495
        Caption = '03.08.19.001-02'
      end
      inherited PlSair: TPanel
        Left = 315
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select ecfcodigo, ecfidentificacao,ecftipodoc,ecfcaixa from ecf')
    object uqtabelaecfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ecfcodigo'
    end
    object uqtabelaecfidentificacao: TStringField
      DisplayLabel = 'Impressora'
      FieldName = 'ecfidentificacao'
      Size = 50
    end
    object uqtabelaecftipodoc: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'ecftipodoc'
      Size = 3
    end
    object uqtabelaecfcaixa: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'ecfcaixa'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
