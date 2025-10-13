inherited frabpl: Tfrabpl
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'bplcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bplidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bplnomearq'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bplfranome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bplfuncao'
              Width = 250
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
      'SELECT bplcodigo'
      '     , bplidentificacao'
      '     , bplnomearq'
      '     , bplfranome'
      '     , bplfuncao'
      'FROM bpl')
    object uqtabelabplcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'bplcodigo'
    end
    object uqtabelabplidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'bplidentificacao'
      Size = 50
    end
    object uqtabelabplnomearq: TStringField
      DisplayLabel = 'Nome Arquivo'
      FieldName = 'bplnomearq'
      Size = 50
    end
    object uqtabelabplfranome: TStringField
      DisplayLabel = 'Nome Frame'
      FieldName = 'bplfranome'
    end
    object uqtabelabplfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o Especial'
      FieldName = 'bplfuncao'
      Size = 250
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
