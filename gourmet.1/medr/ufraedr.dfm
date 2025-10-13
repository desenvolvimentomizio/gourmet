inherited fraedr: Tfraedr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Color = 15658734
          Columns = <
            item
              Expanded = False
              FieldName = 'edritem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tedidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'edrinscest'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'edrendereco'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ufssigla'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'edrcomple'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'edrnomefazenda'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'edrsituacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '09-00-001'
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
    inherited ActPesquisar: TAction
      Enabled = False
      Visible = False
    end
    inherited ActRelatorios: TAction
      Visible = False
    end
    inherited ActVerFiltros: TAction
      Visible = False
    end
    inherited ActFiltrar: TAction
      Visible = False
    end
    inherited ActConfig: TAction
      Visible = False
    end
    inherited ActConfiguracoes: TAction
      Visible = False
    end
    object ActDesativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      OnExecute = ActDesativarExecute
    end
    object ActReativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Reativar'
      OnExecute = ActReativarExecute
    end
    object ActMostrarTodos: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Mostrar Todos'
      OnExecute = ActMostrarTodosExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT edritem'
      '     , ted.tedidentificacao'
      '     , CONCAT(edr.edrrua, '#39', '#39', edr.edrnumero) AS edrendereco'
      '     , edr.edrbairro'
      '     , cdd.cddnome'
      '     , ufs.ufssigla'
      '     , edr.etdcodigo'
      '     , edr.edrinscest'
      '     , edr.edrcodigo'
      '     , ted.tedcodigo'
      '     , edr.edrcomple'
      '     , edr.edrnomefazenda'
      '     , edr.edrativo'
      '     , if(edr.edrativo=1,'#39'ATIVO'#39','#39'INATIVO'#39') edrsituacao'
      '  FROM edr'
      ' INNER JOIN ted ON ted.tedcodigo = edr.tedcodigo'
      ' INNER JOIN cdd ON cdd.cddcodigo = edr.cddcodigo'
      ' INNER JOIN ufs ON ufs.ufscodigo = cdd.ufscodigo'
      ' WHERE edr.etdcodigo = :etdcodigo ')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'etdcodigo'
        ParamType = ptInput
        Value = nil
      end>
    object UQTabelaedrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'edrcodigo'
      ReadOnly = True
    end
    object UQTabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object uqtabelaedritem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'edritem'
    end
    object UQTabelatedidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tedidentificacao'
      Required = True
    end
    object UQTabelaedrendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'edrendereco'
      ReadOnly = True
      Required = True
      Size = 62
    end
    object UQTabelaedrbairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 60
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object UQTabelacddnome: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cddnome'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object UQTabelaufssigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ufssigla'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object UQTabelaedrinscest: TStringField
      DisplayLabel = 'Inscr.Estadual'
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object UQTabelatedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      Required = True
    end
    object uqtabelaedrcomple: TStringField
      DisplayLabel = 'Complemento '
      FieldName = 'edrcomple'
      Size = 50
    end
    object uqtabelaedrnomefazenda: TStringField
      DisplayLabel = 'Nome da Fazenda'
      FieldName = 'edrnomefazenda'
      Size = 50
    end
    object uqtabelaedrativo: TIntegerField
      FieldName = 'edrativo'
    end
    object uqtabelaedrsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'edrsituacao'
      Size = 10
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
