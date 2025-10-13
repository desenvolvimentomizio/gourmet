inherited fraivc: Tfraivc
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ivcchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ivcdatahorainicio'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ivcdatahorafinal'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spddatabalanco'
              Width = 75
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
      '  ivc.ivcchave,'
      '  ivc.ivcdatahorainicio,'
      '  ivc.ivcdatahorafinal,'
      '  ivc.clbcodigo,'
      '  spd.spdchave,'
      '  clb.clbidentificacao,'
      '  spd.spddatabalanco'
      'FROM ivc'
      'inner join clb on ivc.clbcodigo=clb.clbcodigo'
      'left join spd on ivc.spdchave=spd.spdchave')
    object uqtabelaivcchave: TIntegerField
      DisplayLabel = 'Registros'
      FieldName = 'ivcchave'
    end
    object uqtabelaivcdatahorainicio: TDateTimeField
      DisplayLabel = 'In'#237'cio da Contagem'
      FieldName = 'ivcdatahorainicio'
    end
    object uqtabelaivcdatahorafinal: TDateTimeField
      DisplayLabel = 'Final da Contagem'
      FieldName = 'ivcdatahorafinal'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object uqtabelaspddatabalanco: TDateField
      DisplayLabel = 'Balan'#231'o'
      FieldName = 'spddatabalanco'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
