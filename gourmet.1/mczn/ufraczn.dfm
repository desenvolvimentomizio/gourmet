inherited fraczn: Tfraczn
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cznchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cznabertura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cznfechamento'
              Visible = True
            end>
        end
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Caption = 'Abrir Cozinha'
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      Caption = 'Fechar Cozinha'
      OnExecute = ActAlterarExecute
    end
    object ActProcessarVendas: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Processar Vendas'
      OnExecute = ActProcessarVendasExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cznchave,'
      '  cznabertura,'
      '  cznfechamento,'
      '  clbcodigo'
      'FROM czn')
    object uqtabelacznchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'cznchave'
    end
    object uqtabelacznabertura: TDateTimeField
      DisplayLabel = 'Abertura da Cozinha'
      FieldName = 'cznabertura'
      Required = True
    end
    object uqtabelacznfechamento: TDateTimeField
      DisplayLabel = 'Fechamento da Cozinha'
      FieldName = 'cznfechamento'
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object orc: TUniQuery
    Left = 736
    Top = 397
  end
end
