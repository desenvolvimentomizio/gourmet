inherited fraivu: Tfraivu
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ivtchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spdexercicio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ivtquantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ivtvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ivttotal'
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
      
        'select ivtchave, ivt.spdchave, ivt.procodigo, ivtquantidade, ivt' +
        'valor, ivttotal, spd.spdexercicio,pronome from ivt, spd, pro whe' +
        're'
      
        'ivt.spdchave=spd.spdchave and ivt.procodigo=pro.procodigo and sp' +
        'd.spdativo=1')
    object uqtabelaivtchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ivtchave'
    end
    object uqtabelaspdexercicio: TIntegerField
      DisplayLabel = 'Exerc'#237'cio'
      FieldName = 'spdexercicio'
      ReadOnly = True
      Required = True
    end
    object uqtabelaspdchave: TIntegerField
      FieldName = 'spdchave'
      Required = True
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Descri'#231#227'o do Item'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object uqtabelaivtquantidade: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'ivtquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object uqtabelaivtvalor: TFloatField
      DisplayLabel = 'Valor Unit. R$'
      FieldName = 'ivtvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaivttotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'ivttotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
