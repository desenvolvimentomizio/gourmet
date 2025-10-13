inherited framda: Tframda
  Width = 856
  inherited PlGeral: TPanel
    Width = 856
    inherited PlLista: TPanel
      Width = 704
      inherited SplLista: TSplitter
        Width = 702
      end
      inherited SpFilter: TSplitter
        Width = 702
      end
      inherited PlRodaPe: TPanel
        Width = 702
      end
      inherited PlFiltros: TPanel
        Width = 702
      end
      inherited PlSelecao: TPanel
        Width = 702
        inherited GBPlSelecao: TGroupBox
          Width = 696
          inherited DBLista: TDBGrid
            Width = 589
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 702
        inherited DBGLista: TDBGrid
          Width = 702
          Columns = <
            item
              Expanded = False
              FieldName = 'mdacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdaidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdabpl'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 702
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 848
      inherited plid: TPanel
        Left = 446
      end
      inherited PlSair: TPanel
        Left = 666
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
    object ActImportar: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Importar'
      ImageIndex = 8
      OnExecute = ActImportarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select mdacodigo, mdaidentificacao, mdabpl from mda ')
    object uqtabelamdacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mdacodigo'
    end
    object uqtabelamdaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'mdaidentificacao'
      Size = 50
    end
    object uqtabelamdabpl: TStringField
      DisplayLabel = 'Arquivo BPL'
      FieldName = 'mdabpl'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object mdv: TUniQuery
    SQL.Strings = (
      'select mdvchave,  mdacodigo, mdvdescricao from mdv')
    Left = 472
    Top = 308
    object mdvmdvchave: TIntegerField
      FieldName = 'mdvchave'
    end
    object mdvmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object mdvmdvdescricao: TStringField
      FieldName = 'mdvdescricao'
      Size = 2000
    end
  end
  object dpm: TUniQuery
    Left = 700
    Top = 344
  end
  object fns: TUniQuery
    SQL.Strings = (
      
        'select  fnscodigo, fnsidentificacao, mdvchave, tfncodigo from fn' +
        's')
    Left = 308
    Top = 312
  end
  object fnv: TUniQuery
    SQL.Strings = (
      'select fnvchave, fnvdescricao, fnscodigo, fnvversao from fnv')
    Left = 368
    Top = 388
  end
end
