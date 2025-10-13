inherited frarcb: Tfrarcb
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'rcbchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcbemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcbvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcbhistorico'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdpagador'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pagador'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdrecebedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'recebedor'
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
      '  rcbchave,'
      '  rcbemissao,'
      '  rcbvalor,'
      '  etdrecebedor,'
      '  etdpagador,'
      '  rcbhistorico,'
      '  rcbsituacao,'
      '  pgd.etdidentificacao as pagador,'
      '  reb.etdidentificacao AS recebedor'
      'FROM rcb'
      '  left join etd pgd'
      '  on etdpagador=pgd.etdcodigo'
      '  left join etd reb'
      '  on etdrecebedor=reb.etdcodigo')
    object uqtabelarcbchave: TIntegerField
      DisplayLabel = 'Nr. Recibo'
      FieldName = 'rcbchave'
    end
    object uqtabelarcbemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rcbemissao'
    end
    object uqtabelarcbvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rcbvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaetdpagador: TIntegerField
      DisplayLabel = 'Cod.Pagador'
      FieldName = 'etdpagador'
    end
    object uqtabelaetdrecebedor: TIntegerField
      DisplayLabel = 'Cod.Recebedor'
      FieldName = 'etdrecebedor'
    end
    object uqtabelarcbhistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rcbhistorico'
      Size = 250
    end
    object uqtabelarcbsituacao: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'rcbsituacao'
    end
    object uqtabelarecebedor: TStringField
      DisplayLabel = 'Recebedor'
      FieldName = 'recebedor'
      Size = 80
    end
    object uqtabelapagador: TStringField
      DisplayLabel = 'Pagador'
      FieldName = 'pagador'
      Size = 80
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
