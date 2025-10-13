inherited fracmo: Tfracmo
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cmochave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cmodata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cmocotacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'moeidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Cota'#231#227'o de Moedas'
      inherited plid: TPanel
        Caption = '02.02.80.001'
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
      
        'select cmochave,cmodata,cmocotacao,cmo.moecodigo,moeidentificaca' +
        'o from cmo, moe where cmo.moecodigo=moe.moecodigo')
    Left = 232
    Top = 248
    object uqtabelacmochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'cmochave'
    end
    object uqtabelacmodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'cmodata'
    end
    object uqtabelacmocotacao: TFloatField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cmocotacao'
    end
    object uqtabelamoecodigo: TIntegerField
      DisplayLabel = 'Moeda'
      FieldName = 'moecodigo'
    end
    object uqtabelamoeidentificacao: TStringField
      DisplayLabel = 'Moeda'
      FieldName = 'moeidentificacao'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
