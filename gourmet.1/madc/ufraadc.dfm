inherited fraadc: Tfraadc
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'adccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'adcidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctaidentificacao'
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
    object ActRealizaLiquidacoes: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Realiza Liquida'#231#245'es'
      OnExecute = ActRealizaLiquidacoesExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select adccodigo, adcidentificacao, etdcodigo,adcliquidaautomati' +
        'co, ctaidentificacao from adc'
      'left join cta on cta.ctacodigo=adc.ctacodigo')
    object uqtabelaadccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'adccodigo'
    end
    object uqtabelaadcidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'adcidentificacao'
      Size = 50
    end
    object uqtabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object uqtabelaadcliquidaautomatico: TIntegerField
      FieldName = 'adcliquidaautomatico'
    end
    object uqtabelactaidentificacao: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object rfi: TUniQuery
    SQL.Strings = (
      
        'SELECT rfichave, rfivalor, rfivencimento,srfcodigo FROM rfi WHER' +
        'E etdcodigo=:etdcodigo and tficodigo=6 and tfdcodigo=2 AND srfco' +
        'digo=0')
    Left = 496
    Top = 419
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfirfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
    object rfirfivalor: TFloatField
      FieldName = 'rfivalor'
    end
    object rfisrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
  end
  object mfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfichave,'
      '  rfichave,'
      '  tmfcodigo,'
      '  moecodigo,'
      '  mfivalor,'
      '  mfidata,'
      '  mfihistorico,'
      '  mfivalorori,'
      '  mfiparcela'
      'FROM mfi'
      'where rfichave=:rfichave'
      'and tmfcodigo=:tmfcodigo')
    Left = 552
    Top = 419
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmfcodigo'
        Value = nil
      end>
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 50
    end
    object mfimfivalorori: TFloatField
      FieldName = 'mfivalorori'
    end
    object mfimfiparcela: TIntegerField
      FieldName = 'mfiparcela'
    end
  end
end
