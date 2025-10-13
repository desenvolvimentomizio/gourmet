inherited frafop: Tfrafop
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'fopcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fopidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fopjuros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fopdesc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'foppercentra'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fopnumparc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fopintervalo'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '02.04.80.004'
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
      
        'select fopcodigo,fopidentificacao,tfpcodigo,fopjuros,fopdesc,fop' +
        'percentra,fopnumparc,fopintervalo from fop')
    object uqtabelafopcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fopcodigo'
    end
    object uqtabelafopidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fopidentificacao'
      Size = 50
    end
    object uqtabelatfpcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tfpcodigo'
    end
    object uqtabelafopjuros: TFloatField
      DisplayLabel = 'Juos'
      FieldName = 'fopjuros'
    end
    object uqtabelafopdesc: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'fopdesc'
    end
    object uqtabelafoppercentra: TFloatField
      DisplayLabel = 'Perc. Entrada'
      FieldName = 'foppercentra'
    end
    object uqtabelafopnumparc: TIntegerField
      DisplayLabel = 'N'#250'm. Parcelas'
      FieldName = 'fopnumparc'
    end
    object uqtabelafopintervalo: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'fopintervalo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
