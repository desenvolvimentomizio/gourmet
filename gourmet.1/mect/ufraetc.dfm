inherited fraetc: Tfraetc
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ectcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ectidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecttelefone'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '09-00-014'
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
      'select ectcodigo,ectidentificacao,ecttelefone from ect')
    Left = 184
    Top = 216
    object uqtabelaectcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ectcodigo'
    end
    object uqtabelaectidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ectidentificacao'
      Size = 30
    end
    object uqtabelaecttelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'ecttelefone'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
