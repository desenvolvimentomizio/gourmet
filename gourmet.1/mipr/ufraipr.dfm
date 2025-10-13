inherited fraipr: Tfraipr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'iprcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'iprimpostovenda'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'iprcomissaovenda'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'iprcustooperacional'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'iprfretevendas'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'iprtaxajuros'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'iprindimplenciaclientes'
              Width = 120
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
      'SELECT ipr.iprcodigo'
      '     , ipr.flacodigo'
      '     , ipr.iprimpostovenda'
      '     , ipr.iprcomissaovenda'
      '     , ipr.iprcustooperacional'
      '     , ipr.iprfretevendas'
      '     , ipr.iprtaxajuros'
      '     , ipr.iprinadimplenciaclientes'
      '  FROM ipr'
      ' WHERE ipr.flacodigo = :flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object uqtabelaiprcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'iprcodigo'
    end
    object uqtabelaflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
    end
    object uqtabelaiprimpostovenda: TFloatField
      DisplayLabel = 'Impostos Sobre Venda'
      FieldName = 'iprimpostovenda'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object uqtabelaiprcomissaovenda: TFloatField
      DisplayLabel = 'Comiss'#227'o Sobre Venda'
      FieldName = 'iprcomissaovenda'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object uqtabelaiprcustooperacional: TFloatField
      DisplayLabel = 'Custo Operacional'
      FieldName = 'iprcustooperacional'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object uqtabelaiprfretevendas: TFloatField
      DisplayLabel = 'Frete Sobre Vendas'
      FieldName = 'iprfretevendas'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object uqtabelaiprtaxajuros: TFloatField
      DisplayLabel = 'Taxa de Juros Mensal'
      FieldName = 'iprtaxajuros'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object uqtabelaiprinadimplenciaclientes: TFloatField
      DisplayLabel = 'Taxa de Inadimpl'#234'ncia'
      FieldName = 'iprinadimplenciaclientes'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object ipr: TUniQuery
    SQL.Strings = (
      'SELECT ipr.iprcodigo'
      '  FROM ipr'
      ' WHERE ipr.flacodigo = :flacodigo')
    Left = 336
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
  end
end
