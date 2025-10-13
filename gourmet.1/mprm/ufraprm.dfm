inherited fraprm: Tfraprm
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'prmcodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flacodigo'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flaidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmprecocompra'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmpercmargemlucro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmprecovenda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmimpostovenda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmcomissaovenda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmfretevenda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmcustooperacional'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmtaxajuros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prminadimplencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prmregistro'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT prm.prmcodigo'
      '     , prm.flacodigo'
      '     , fla.flaidentificacao'
      '     , prm.procodigo'
      '     , pro.pronome'
      '     , prm.clbcodigo'
      '     , clb.clbidentificacao'
      '     , prm.prmprecocompra'
      '     , prm.prmpercmargemlucro'
      '     , prm.prmprecovenda'
      '     , prm.prmimpostovenda'
      '     , prm.prmcomissaovenda'
      '     , prm.prmfretevenda'
      '     , prm.prmcustooperacional'
      '     , prm.prmtaxajuros'
      '     , prm.prminadimplencia'
      '     , prm.prmregistro'
      '  FROM prm'
      ' INNER JOIN fla ON prm.flacodigo = fla.flacodigo'
      ' INNER JOIN pro ON prm.procodigo = pro.procodigo'
      ' INNER JOIN clb ON prm.clbcodigo = clb.clbcodigo'
      ' WHERE prm.flacodigo = :flacodigo'
      '   AND prm.procodigo = :procodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object uqtabelaprmcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'prmcodigo'
    end
    object uqtabelaflacodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Filial'
      FieldName = 'flacodigo'
      Required = True
    end
    object uqtabelaflaidentificacao: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'flaidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Colaborador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      ReadOnly = True
      Size = 30
    end
    object uqtabelaprmprecocompra: TFloatField
      DisplayLabel = 'Pre'#231'o de Compra'
      FieldName = 'prmprecocompra'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprmpercmargemlucro: TFloatField
      DisplayLabel = 'Margem de Lucro L'#237'quida'
      FieldName = 'prmpercmargemlucro'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprmprecovenda: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda'
      FieldName = 'prmprecovenda'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprmimpostovenda: TFloatField
      DisplayLabel = 'Imposto sobre Venda'
      FieldName = 'prmimpostovenda'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprmcomissaovenda: TFloatField
      DisplayLabel = 'Comiss'#227'o sobre Venda'
      FieldName = 'prmcomissaovenda'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprmfretevenda: TFloatField
      DisplayLabel = 'Frete sobre Venda'
      FieldName = 'prmfretevenda'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprmcustooperacional: TFloatField
      DisplayLabel = 'Custo Operacional'
      FieldName = 'prmcustooperacional'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprmtaxajuros: TFloatField
      DisplayLabel = 'Taxa de Juros'
      FieldName = 'prmtaxajuros'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprminadimplencia: TFloatField
      DisplayLabel = 'Inadimpl'#234'ncia'
      FieldName = 'prminadimplencia'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object uqtabelaprmregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'prmregistro'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
