inherited fraccx: Tfraccx
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ccxchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccxdataber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccxdatafecha'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctaidentificacao'
              Title.Caption = 'Cta. Identifica'#231#227'o'
              Width = 278
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccx.ccxchave,'
      '  ccx.clbcodigo,'
      '  clb.clbidentificacao,'
      '  ccx.ctacodigo,'
      '  cta.ctaidentificacao,'
      '  ccx.ccxdataber,'
      '  ccx.ccxhoraaber,'
      '  ccx.ccxsaldoaber,'
      '  ccx.ccxdatafecha,'
      '  ccx.ccxhorafecha,'
      '  ccx.ccxsaldofecha,'
      '  ccx.ccxsangrias,'
      '  ccx.ccxsuprimentos,'
      '  ccx.ccxturno,'
      '  ccx.trmcodigo,'
      '  trm.trmidentificacao,'
      '  ccx.ccxhistorico'
      'FROM ccx'
      '  inner join clb on ccx.clbcodigo=clb.clbcodigo'
      '  inner join cta on ccx.ctacodigo=cta.ctacodigo'
      '  inner join trm on ccx.trmcodigo=trm.trmcodigo')
    object uqtabelaccxchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'ccxchave'
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Clb'
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object uqtabelactacodigo: TIntegerField
      DisplayLabel = 'Cta'
      FieldName = 'ctacodigo'
    end
    object uqtabelactaidentificacao: TStringField
      DisplayLabel = 'Cta do Caixa'
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object uqtabelaccxdataber: TDateField
      DisplayLabel = 'Dt.Abertura'
      FieldName = 'ccxdataber'
    end
    object uqtabelaccxdatafecha: TDateField
      DisplayLabel = 'Dt.Fechamento'
      FieldName = 'ccxdatafecha'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
