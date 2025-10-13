inherited fraits: Tfraits
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'itscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itsidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itsdescricao'
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
    object ActImportar: TAction
      Category = 'Comunica'#231#227'o'
      Caption = 'Importar'
      OnExecute = ActImportarExecute
    end
    object ActExportar: TAction
      Category = 'Comunica'#231#227'o'
      Caption = 'Exportar'
      OnExecute = ActExportarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itscodigo,'
      '  itsidentificacao,'
      '  itsdescricao'
      'FROM its')
    object uqtabelaitscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'itscodigo'
    end
    object uqtabelaitsidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'itsidentificacao'
      Size = 50
    end
    object uqtabelaitsdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'itsdescricao'
      Size = 500
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etddoc1,'
      '  cfgmcfg.cfgcodigo'
      'FROM cfgmcfg'
      '  INNER JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo')
    Left = 676
    Top = 268
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      Size = 25
    end
  end
end
