inherited franpp: Tfranpp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'nppchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nppncm'
              Visible = True
            end>
        end
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
      'SELECT'
      '  nppchave,'
      '  ppscodigo,'
      '  nppncm'
      'FROM npp'
      '  where ppscodigo=:ppscodigo'
      '  ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppscodigo'
        Value = nil
      end>
    object uqtabelanppchave: TIntegerField
      DisplayLabel = 'Nr. Chave'
      FieldName = 'nppchave'
    end
    object uqtabelappscodigo: TStringField
      FieldName = 'ppscodigo'
      Size = 30
    end
    object uqtabelanppncm: TStringField
      DisplayLabel = 'NCM s'
      FieldName = 'nppncm'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
