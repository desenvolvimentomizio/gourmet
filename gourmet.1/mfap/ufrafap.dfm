inherited frafap: Tfrafap
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'fapcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fabcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fabidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fapproprio'
              Width = 200
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
    UpdatingTable = 'fap'
    SQL.Strings = (
      'SELECT'
      '  fapcodigo,'
      '  fap.fabcodigo,'
      '  fab.fabidentificacao,'
      '  fap.fapproprio,'
      '  fap.fapselecionado'
      'FROM fap,'
      '     fab,'
      '     (SELECT'
      '         0 AS fapselecionado) fap'
      'WHERE fap.fabcodigo = fab.fabcodigo')
    CachedUpdates = True
    Left = 296
    Top = 260
    object uqtabelafapcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fapcodigo'
    end
    object uqtabelafabcodigo: TIntegerField
      DisplayLabel = 'Fabricante'
      FieldName = 'fabcodigo'
    end
    object uqtabelafabidentificacao: TStringField
      DisplayLabel = 'Nome do Fabricante'
      FieldName = 'fabidentificacao'
      Size = 35
    end
    object uqtabelafapproprio: TStringField
      DisplayLabel = 'Refer'#234'ncia / C'#243'digo Pr'#243'prio'
      FieldName = 'fapproprio'
      Size = 50
    end
    object uqtabelafapselecionado: TIntegerField
      DisplayLabel = ' '
      FieldName = 'fapselecionado'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object prf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prf.procodigo,'
      '  prf.fapcodigo'
      'FROM prf'
      'WHERE prf.procodigo = :procodigo'
      'AND prf.fapcodigo = :fapcodigo')
    Left = 384
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fapcodigo'
        Value = nil
      end>
    object prfprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object prffapcodigo: TIntegerField
      FieldName = 'fapcodigo'
    end
  end
end
