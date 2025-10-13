inherited fraitf: Tfraitf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'itfchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fercodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'feridentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itfdatasaida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itfdataretorno'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
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
    object ActRetorno: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Retorno'
      OnExecute = ActRetornoExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itf.itfchave,'
      '  itf.orcchave,'
      '  itf.fercodigo,'
      '  itf.clbcodigo,'
      '  itf.itfdatasaida,'
      '  itf.itfdataretorno,'
      '  fer.feridentificacao,'
      '  mes.meschave,'
      '  mes.mesregistro,'
      '  etd.etdidentificacao'
      'FROM itf'
      '  INNER JOIN  fer'
      '  ON itf.fercodigo=fer.fercodigo'
      '  LEFT JOIN mor '
      '  ON  mor.orcchave=itf.orcchave'
      '  LEFT JOIN mes'
      '  ON mes.meschave=mor.meschave'
      '  LEFT JOIN etd  '
      '  ON mes.etdcodigo = etd.etdcodigo')
    object uqtabelaitfchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'itfchave'
    end
    object uqtabelaorcchave: TIntegerField
      DisplayLabel = 'Atendimento'
      FieldName = 'orcchave'
    end
    object uqtabelafercodigo: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'fercodigo'
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
    end
    object uqtabelaitfdatasaida: TDateField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'itfdatasaida'
    end
    object uqtabelaitfdataretorno: TDateField
      DisplayLabel = 'Retorno'
      FieldName = 'itfdataretorno'
    end
    object uqtabelaferidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'feridentificacao'
      Size = 50
    end
    object uqtabelameschave: TIntegerField
      DisplayLabel = 'Nr.Venda'
      FieldName = 'meschave'
    end
    object uqtabelamesregistro: TDateField
      DisplayLabel = 'Dt.Venda'
      FieldName = 'mesregistro'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
