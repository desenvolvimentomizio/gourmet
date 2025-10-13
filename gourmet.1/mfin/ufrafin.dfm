inherited frafin: Tfrafin
  Width = 748
  inherited PlGeral: TPanel
    Width = 748
    inherited PlLista: TPanel
      Width = 604
      inherited SplLista: TSplitter
        Width = 604
      end
      inherited SpFilter: TSplitter
        Width = 604
      end
      inherited PlRodaPe: TPanel
        Width = 604
      end
      inherited PlFiltros: TPanel
        Width = 604
      end
      inherited PlSelecao: TPanel
        Width = 604
        inherited GBPlSelecao: TGroupBox
          Width = 600
          inherited DBLista: TDBGrid
            Width = 493
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 604
        inherited DBGLista: TDBGrid
          Width = 604
          Columns = <
            item
              Expanded = False
              FieldName = 'fincodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdaidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'finimpressora'
              Title.Caption = 'Finalizador ECF'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 604
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 748
      inherited plid: TPanel
        Left = 397
        Caption = '03.08.19.002'
      end
      inherited PlSair: TPanel
        Left = 587
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
      
        'select fincodigo, citcodigo, trmcodigo,finimpressora,mda.mdacodi' +
        'go, mdaidentificacao from fin,mda'
      'where fin.mdacodigo=mda.mdacodigo and fin.citcodigo=:citcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'citcodigo'
        Value = nil
      end>
    object uqtabelafincodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fincodigo'
    end
    object uqtabelacitcodigo: TIntegerField
      FieldName = 'citcodigo'
    end
    object uqtabelamdaidentificacao: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'mdaidentificacao'
      Size = 35
    end
    object uqtabelatrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object uqtabelafinimpressora: TIntegerField
      DisplayLabel = 'Impressora'
      FieldName = 'finimpressora'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
