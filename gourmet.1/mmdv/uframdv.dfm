inherited framdv: Tframdv
  Width = 884
  inherited PlGeral: TPanel
    Width = 884
    inherited PlLista: TPanel
      Width = 732
      inherited SplLista: TSplitter
        Width = 730
      end
      inherited SpFilter: TSplitter
        Width = 730
      end
      inherited PlRodaPe: TPanel
        Width = 730
      end
      inherited PlFiltros: TPanel
        Width = 730
      end
      inherited PlSelecao: TPanel
        Width = 730
        inherited GBPlSelecao: TGroupBox
          Width = 724
          inherited DBLista: TDBGrid
            Width = 617
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 730
        inherited DBGLista: TDBGrid
          Width = 730
          Columns = <
            item
              Expanded = False
              FieldName = 'mdvchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdvdescricao'
              Width = 550
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdacodigo'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 730
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 876
      inherited plid: TPanel
        Left = 474
      end
      inherited PlSair: TPanel
        Left = 694
      end
    end
  end
  inherited acoes: TActionList
    Left = 608
    Top = 72
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 288
    Top = 212
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select  mdvchave, mdv.mdacodigo, mdvdescricao, mdaidentificacao ' +
        'from mdv,mda where mdv.mdacodigo=mda.mdacodigo')
    Left = 236
    Top = 212
    object uqtabelamdvchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'mdvchave'
    end
    object uqtabelamdacodigo: TIntegerField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'mdacodigo'
    end
    object uqtabelamdaidentificacao: TStringField
      DisplayLabel = 'Nome do M'#243'dulo'
      FieldName = 'mdaidentificacao'
      Size = 50
    end
    object uqtabelamdvdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'mdvdescricao'
      Size = 2000
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
