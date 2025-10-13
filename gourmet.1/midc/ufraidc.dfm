inherited fraidc: Tfraidc
  Width = 899
  ExplicitWidth = 899
  inherited PlGeral: TPanel
    Width = 899
    ExplicitWidth = 899
    inherited PlLista: TPanel
      Width = 755
      ExplicitWidth = 755
      inherited SplLista: TSplitter
        Width = 755
        ExplicitWidth = 745
      end
      inherited SpFilter: TSplitter
        Width = 755
        ExplicitWidth = 745
      end
      inherited PlRodaPe: TPanel
        Width = 755
        ExplicitWidth = 755
      end
      inherited PlFiltros: TPanel
        Width = 755
        ExplicitWidth = 755
      end
      inherited PlSelecao: TPanel
        Width = 755
        ExplicitWidth = 755
        inherited GBPlSelecao: TGroupBox
          Width = 751
          ExplicitWidth = 751
          inherited DBLista: TDBGrid
            Width = 644
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 755
        ExplicitWidth = 755
        inherited DBGLista: TDBGrid
          Width = 755
          Columns = <
            item
              Expanded = False
              FieldName = 'idccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idcdoc'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idcnome'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idccelular'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idcemail'
              Width = 200
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 755
          ExplicitWidth = 755
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 899
      ExplicitWidth = 899
      inherited plid: TPanel
        Left = 449
        ExplicitLeft = 449
      end
      inherited PlSair: TPanel
        Left = 693
        ExplicitLeft = 693
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
      'select '
      ' idccodigo,'
      '  idcnome,'
      '  idcdoc,'
      '  idcemail,'
      '  idccelular'
      'from idc')
    object uqtabelaidccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'idccodigo'
    end
    object uqtabelaidcnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'idcnome'
      Size = 50
    end
    object uqtabelaidcdoc: TStringField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'idcdoc'
      Size = 50
    end
    object uqtabelaidcemail: TStringField
      DisplayLabel = 'email'
      FieldName = 'idcemail'
      Size = 200
    end
    object uqtabelaidccelular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'idccelular'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
