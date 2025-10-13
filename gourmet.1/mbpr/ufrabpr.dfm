inherited frabpr: Tfrabpr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'bprchave'
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
              FieldName = 'unicodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'uninome'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
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
      '  bpr.bprchave,'
      '  bpr.procodigo,'
      '  pro.pronome,'
      '  bpr.unicodigo,'
      '  uni.uninome,'
      '  uni.unisimbolo'
      'FROM bpr'
      '  INNER JOIN pro'
      '    ON bpr.procodigo = pro.procodigo'
      '  INNER JOIN uni'
      '    ON bpr.unicodigo = uni.unicodigo')
    object uqtabelabprchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'bprchave'
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Produto'
      FieldName = 'pronome'
      Size = 50
    end
    object uqtabelaunicodigo: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'unicodigo'
    end
    object uqtabelauninome: TStringField
      DisplayLabel = 'Identifica'#231#227'o Unidade'
      FieldName = 'uninome'
      Size = 50
    end
    object uqtabelaunisimbolo: TStringField
      DisplayLabel = 'S'#237'mbolo'
      FieldName = 'unisimbolo'
      Size = 5
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
