inherited fraspu: Tfraspu
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'sbrcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sbridentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spupreco'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spuadicional'
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
      'select'
      '  spu.spucodigo'
      ' ,spu.sbrcodigo'
      ' , sbr.sbridentificacao '
      ' ,spu.puncodigo'
      ' ,  pun.punidentificacao'
      ' ,spu.spupreco'
      ', pro.procodigo'
      
        ', (SELECT p.pronome FROM pro p WHERE spu.procodigo=p.procodigo) ' +
        'pronome'
      ', spu.spuadicional'
      ''
      'from spu'
      '  inner join sbr on sbr.sbrcodigo=spu.sbrcodigo'
      '  inner join pun on pun.puncodigo=spu.puncodigo'
      '  inner join pro on sbr.grpcodigo=pro.grpcodigo'
      ''
      ' where sbr.sbrcodigo=:sbrcodigo and pro.procodigo=:procodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sbrcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object uqtabelaspucodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'spucodigo'
    end
    object uqtabelasbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object uqtabelaprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object uqtabelasbridentificacao: TStringField
      DisplayLabel = 'Sabor'
      FieldName = 'sbridentificacao'
      Size = 50
    end
    object uqtabelapuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object uqtabelapunidentificacao: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'punidentificacao'
      Size = 50
    end
    object uqtabelaspupreco: TCurrencyField
      DisplayLabel = 'Pre'#231'o R$'
      FieldName = 'spupreco'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 50
    end
    object uqtabelaspuadicional: TIntegerField
      DisplayLabel = 'Adicional'
      FieldName = 'spuadicional'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
