inherited framis: Tframis
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'mischave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bplcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bplidentificacao'
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
      'SELECT mis.mischave'
      '     , mis.itscodigo'
      '     , mis.bplcodigo'
      '     , bpl.bplidentificacao'
      'FROM mis'
      '  JOIN bpl'
      '    ON mis.bplcodigo = bpl.bplcodigo'
      'WHERE mis.bplcodigo = bpl.bplcodigo'
      'AND itscodigo = :itscodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itscodigo'
        Value = nil
      end>
    object uqtabelamischave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mischave'
    end
    object uqtabelabplcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'bplcodigo'
    end
    object uqtabelabplidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'odo m'#243'dulo'
      FieldName = 'bplidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
