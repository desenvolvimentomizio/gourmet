inherited frafla: Tfrafla
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'flacodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flaidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flasigla'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 250
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '01.01.06.002'
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
    object cfgmcfg: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Configura'#231#227'o'
      OnExecute = cfgmcfgExecute
    end
    object ActIndicePreco: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = #205'ndice Precifica'#231#227'o'
      OnExecute = ActIndicePrecoExecute
    end
    inherited ActExcluir: TAction
      Visible = False
    end
    inherited ActConfiguracoes: TAction
      Enabled = False
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT fla.flacodigo'
      '     , fla.flaidentificacao'
      '     , fla.flasigla'
      '     , fla.etdcodigo'
      '     , etd.etdidentificacao'
      '  FROM fla'
      ' INNER JOIN etd ON fla.etdcodigo = etd.etdcodigo')
    object uqtabelaflacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'flacodigo'
    end
    object uqtabelaflaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'flaidentificacao'
      Size = 50
    end
    object uqtabelaflasigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'flasigla'
      Size = 3
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'Cod. Empresa'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'etdidentificacao'
      Size = 60
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
