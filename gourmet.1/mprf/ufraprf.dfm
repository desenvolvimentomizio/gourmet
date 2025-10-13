inherited fraprf: Tfraprf
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
              Visible = True
            end>
        end
      end
    end
  end
  inherited acoes: TActionList
    object ActIncluirRefe: TAction [0]
      Category = 'Manuten'#231#227'o'
      Caption = 'Incluir'
      OnExecute = ActIncluirRefeExecute
    end
    object ActRemoveRefe: TAction [1]
      Category = 'Manuten'#231#227'o'
      Caption = 'Remover'
      OnExecute = ActRemoveRefeExecute
    end
    inherited ActIncluir: TAction
      Enabled = False
    end
    inherited ActPesquisar: TAction
      Enabled = False
    end
    inherited ActRelatorios: TAction
      Enabled = False
    end
    inherited ActConfiguracoes: TAction
      Enabled = False
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prf.prfcodigo,'
      '  prf.procodigo,'
      '  prf.fapcodigo,'
      '  fab.fabcodigo,'
      '  fab.fabidentificacao,'
      '  fap.fapproprio'
      'FROM prf'
      '  JOIN fap'
      '    ON prf.fapcodigo = fap.fapcodigo'
      '  JOIN fab'
      '    ON fab.fabcodigo = fap.fabcodigo')
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
    object uqtabelaprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
