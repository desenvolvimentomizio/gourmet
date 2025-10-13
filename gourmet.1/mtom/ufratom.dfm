inherited fratom: Tfratom
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tomchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tofidentificacao'
              Width = 300
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
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT tom.tomchave'
      '     , tom.tofcodigo'
      '     , tof.tofidentificacao'
      '     , tom.meschave'
      'FROM tom'
      '  JOIN tof'
      '    ON tom.tofcodigo = tof.tofcodigo'
      '  LEFT JOIN cfgmnfe'
      '    ON (tof.tofcodigo = cfgmnfe.cfgobs1'
      '    OR tof.tofcodigo = cfgmnfe.cfgobs2'
      '    OR tof.tofcodigo = cfgmnfe.cfgobs3'
      '    OR tof.tofcodigo = cfgmnfe.cfgobs4)'
      'WHERE cfgmnfe.cfgcodigo IS NULL'
      'AND meschave = :meschave')
    Left = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object uqtabelatomchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'tomchave'
    end
    object uqtabelatofcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tofcodigo'
    end
    object uqtabelatofidentificacao: TStringField
      DisplayLabel = 'Informa'#231#227'o Complementar'
      FieldName = 'tofidentificacao'
      Size = 250
    end
    object uqtabelameschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
