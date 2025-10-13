inherited frarrc: Tfrarrc
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'rrcchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rrcdata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rrcnumero'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'adcidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rrcvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rrcregistro'
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
      '  rrc.rrcchave,'
      '  rrc.rrcdata,'
      '  rrc.cedcodigo,'
      '  rrc.rrcvalor,'
      '  rrc.clbcodigo,'
      '  rrc.rrcregistro,'
      '  rrc.ctacodigo,'
      '  rrc.adccodigo,'
      '  rrc.flacodigo,'
      '  rrc.rrcnumero,'
      '  adc.adcidentificacao,'
      '  ced.cedidentificacao,'
      '  clb.clbidentificacao'
      'FROM rrc'
      '  INNER JOIN adc'
      '    ON rrc.adccodigo = adc.adccodigo'
      '  INNER JOIN ced'
      '    ON rrc.cedcodigo = ced.cedcodigo'
      '  INNER JOIN clb'
      '    ON rrc.clbcodigo = clb.clbcodigo')
    object uqtabelarrcchave: TIntegerField
      DisplayLabel = 'Nr. Chave'
      FieldName = 'rrcchave'
    end
    object uqtabelarrcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rrcdata'
    end
    object uqtabelarrcvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rrcvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaadcidentificacao: TStringField
      DisplayLabel = 'Operadora'
      FieldName = 'adcidentificacao'
      Size = 50
    end
    object uqtabelacedidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'cedidentificacao'
      Size = 15
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
    end
    object uqtabelarrcregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'rrcregistro'
    end
    object uqtabelarrcnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rrcnumero'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
