inherited frapps: Tfrapps
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ppscodigo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpsidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ppsidentificacao'
              Width = 550
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
      '  pps.ppscodigo,'
      '  pps.cpscodigo,'
      '  pps.ppsidentificacao,'
      '  cps.cpsidentificacao '
      'FROM pps, cps'
      '  where pps.cpscodigo=cps.cpscodigo')
    object uqtabelappscodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ppscodigo'
      Size = 30
    end
    object uqtabelappsidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ppsidentificacao'
      Size = 2000
    end
    object uqtabelacpscodigo: TIntegerField
      DisplayLabel = 'Cod.Cap'
      FieldName = 'cpscodigo'
    end
    object uqtabelacpsidentificacao: TStringField
      DisplayLabel = 'Cap'#237'tulo'
      FieldName = 'cpsidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
