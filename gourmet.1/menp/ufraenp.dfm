inherited fraenp: Tfraenp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'enpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'enpendereco'
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
    inherited ActConfig: TAction
      Enabled = True
    end
    object ActMoverItens: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Mover Itens'
      Hint = 'Mover itens de um setor para outro.'
      OnExecute = ActMoverItensExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  enp.enpcodigo,'
      '  enp.enpendereco'
      'FROM enp'
      '  JOIN (SELECT'
      '      enpcodigo AS encodigoSub,'
      
        '      CONVERT(CONCAT(are.areidentificacao, '#39'.'#39', rue.rueidentific' +
        'acao, '#39'.'#39', pde.pdeidentificacao, '#39'.'#39', ane.aneidentificacao), cha' +
        'r) AS enpendereco'
      '    FROM enp,'
      '         are,'
      '         rue,'
      '         pde,'
      '         ane'
      '    WHERE are.arecodigo = enp.arecodigo'
      '    AND rue.ruecodigo = enp.ruecodigo'
      '    AND pde.pdecodigo = enp.pdecodigo'
      '    AND ane.anecodigo = enp.anecodigo) enp'
      '    ON enp.encodigoSub = enp.enpcodigo')
    object uqtabelaenpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'enpcodigo'
    end
    object uqtabelaenpendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'enpendereco'
      Size = 12
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object cfg: TUniQuery
    SQL.Strings = (
      
        'select cfg.cfgcodigo, cfgmenpnivel1, cfgmenpnivel2, cfgmenpnivel' +
        '3, cfgmenpnivel4 from cfg, cfgmenp where cfg.cfgcodigo=cfgmenp.c' +
        'fgcodigo'
      'and cfg.flacodigo=:flacodigo')
    Left = 624
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgmenpnivel1: TStringField
      FieldName = 'cfgmenpnivel1'
      Size = 50
    end
    object cfgcfgmenpnivel2: TStringField
      FieldName = 'cfgmenpnivel2'
      Size = 50
    end
    object cfgcfgmenpnivel3: TStringField
      FieldName = 'cfgmenpnivel3'
      Size = 50
    end
    object cfgcfgmenpnivel4: TStringField
      FieldName = 'cfgmenpnivel4'
      Size = 50
    end
  end
end
