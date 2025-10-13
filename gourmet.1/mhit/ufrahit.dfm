inherited frahit: Tfrahit
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmquantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmdesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmtotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmcontendo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolobase'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmquantidadeindividual'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmvalorindividual'
              Visible = True
            end>
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mes.meschave,'
      '  mes.mesemissao,'
      '  pro.procodigo,'
      '  pro.pronome,'
      '  uni.unisimbolo,'
      '  unib.unisimbolo unisimbolobase,'
      '  itm.itmquantidade,'
      '  itm.itmquantidade*itm.itmcontendo itmquantidadeindividual,'
      '  itm.itmvalor,'
      '  itm.itmvalor/itm.itmcontendo itmvalorindividual ,'
      ''
      '  itm.itmdesconto,'
      '  itm.itmtotal-itm.itmdesconto as itmtotal,'
      '  itm.itmdesccomple,'
      '  mes.etdcodigo,'
      '  etd.etdidentificacao,'
      '  itm.itmcontendo '
      'FROM itm'
      '  INNER JOIN mes'
      '    ON itm.meschave = mes.meschave'
      '  INNER JOIN pro'
      '    ON itm.procodigo = pro.procodigo'
      '  INNER JOIN pun'
      '    on itm.puncodigo = pun.puncodigo'
      ''
      '  INNER JOIN uni'
      '    ON pun.unicodigo = uni.unicodigo'
      '  INNER JOIN uni unib'
      '    ON pro.unicodigo = unib.unicodigo'
      ''
      '  INNER JOIN toe'
      '    ON mes.toecodigo = toe.toecodigo'
      '  INNER JOIN etd'
      '    ON mes.etdcodigo = etd.etdcodigo'
      ''
      'ORDER BY mes.mesemissao desc')
    object uqtabelameschave: TIntegerField
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object uqtabelamesemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'mesemissao'
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 80
    end
    object uqtabelaunisimbolo: TStringField
      DisplayLabel = 'Uni'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object uqtabelaitmquantidade: TFloatField
      DisplayLabel = 'Qtda'
      FieldName = 'itmquantidade'
    end
    object uqtabelaitmvalor: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaitmdesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaitmtotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaitmdesccomple: TStringField
      DisplayLabel = 'Complento'
      FieldName = 'itmdesccomple'
      Size = 60
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'etdidentificacao'
      Size = 80
    end
    object uqtabelaitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object uqtabelaunisimbolobase: TStringField
      DisplayLabel = 'Unidade Base'
      FieldName = 'unisimbolobase'
      Size = 5
    end
    object uqtabelaitmquantidadeindividual: TFloatField
      DisplayLabel = 'Quant. Unitaria'
      FieldName = 'itmquantidadeindividual'
    end
    object uqtabelaitmvalorindividual: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'itmvalorindividual'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
