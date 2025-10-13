inherited frapad: Tfrapad
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'padcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'padidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'padpis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'padcofins'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'padextipi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'padcodigopiscofins'
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
      '  padcodigo,'
      '  padidentificacao,'
      '  padextipi,'
      '  padncm,'
      '  padpis,'
      '  padcofins,'
      '  padcodigopiscofins '
      'FROM pad')
    object uqtabelapadcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'padcodigo'
    end
    object uqtabelapadidentificacao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'padidentificacao'
      Size = 50
    end
    object uqtabelapadncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'padncm'
      Size = 10
    end
    object uqtabelapadpis: TFloatField
      DisplayLabel = '% PIS'
      FieldName = 'padpis'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
    object uqtabelapadcofins: TFloatField
      DisplayLabel = '% COFINS'
      FieldName = 'padcofins'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
    object uqtabelapadextipi: TStringField
      DisplayLabel = 'EX TIPI'
      FieldName = 'padextipi'
      Size = 5
    end
    object uqtabelapadcodigopiscofins: TStringField
      DisplayLabel = 'PIS/COFINS'
      FieldName = 'padcodigopiscofins'
      Size = 3
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
