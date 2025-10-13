inherited frafnv: Tfrafnv
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 426
      end
      inherited PlRodaPe: TPanel
        Top = 431
        Height = 92
        Visible = True
        object fnvdescricao: TDBMemo
          Left = 0
          Top = 0
          Width = 960
          Height = 92
          Align = alClient
          DataField = 'fnvdescricao'
          DataSource = DSTabela
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      inherited PnlGrid: TPanel
        Height = 275
        inherited DBGLista: TDBGrid
          Height = 249
          Columns = <
            item
              Expanded = False
              FieldName = 'fnvchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fnscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fnsidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fnvversao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 249
          Height = 26
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
      
        'select  fnvchave, fnvdescricao, fnv.fnscodigo, fnvversao, fnside' +
        'ntificacao from fnv, fns where fnv.fnscodigo=fns.fnscodigo')
    Left = 468
    Top = 96
    object uqtabelafnvchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'fnvchave'
    end
    object uqtabelafnscodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'fnscodigo'
    end
    object uqtabelafnsidentificacao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fnsidentificacao'
      Size = 50
    end
    object uqtabelafnvdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'fnvdescricao'
      Size = 2000
    end
    object uqtabelafnvversao: TIntegerField
      DisplayLabel = 'Vers'#227'o'
      FieldName = 'fnvversao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
