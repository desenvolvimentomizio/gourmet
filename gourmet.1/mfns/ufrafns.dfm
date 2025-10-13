inherited frafns: Tfrafns
  Width = 1109
  inherited PlGeral: TPanel
    Width = 1109
    inherited PlLista: TPanel
      Width = 957
      inherited SplLista: TSplitter
        Width = 955
      end
      inherited SpFilter: TSplitter
        Width = 955
      end
      inherited PlRodaPe: TPanel
        Width = 955
      end
      inherited PlFiltros: TPanel
        Width = 955
      end
      inherited PlSelecao: TPanel
        Width = 955
        inherited GBPlSelecao: TGroupBox
          Width = 949
          inherited DBLista: TDBGrid
            Width = 842
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 955
        inherited DBGLista: TDBGrid
          Width = 955
          Columns = <
            item
              Expanded = False
              FieldName = 'fnscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fnsidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdvchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdaidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfnidentificacao'
              Width = 150
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 955
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1101
      inherited plid: TPanel
        Left = 699
      end
      inherited PlSair: TPanel
        Left = 919
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
  inherited DSTabela: TUniDataSource
    Top = 212
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select  fnscodigo, fnsidentificacao, fns.mdvchave, fns.tfncodigo' +
        ', tfnidentificacao,mdaidentificacao  from fns, mdv,mda,tfn where' +
        ' fns.mdvchave=mdv.mdvchave and mdv.mdacodigo=mda.mdacodigo and f' +
        'ns.tfncodigo=tfn.tfncodigo')
    object uqtabelafnscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fnscodigo'
    end
    object uqtabelafnsidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fnsidentificacao'
      Size = 50
    end
    object uqtabelamdvchave: TIntegerField
      DisplayLabel = 'Vers'#227'o do M'#243'dulo'
      FieldName = 'mdvchave'
      Required = True
    end
    object uqtabelatfncodigo: TIntegerField
      DisplayLabel = 'Tipo de Acionador'
      FieldName = 'tfncodigo'
    end
    object uqtabelamdaidentificacao: TStringField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'mdaidentificacao'
      Size = 50
    end
    object uqtabelatfnidentificacao: TStringField
      DisplayLabel = 'Acionador'
      FieldName = 'tfnidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Left = 556
    Top = 80
    Data = {03000000000000000000}
  end
end
