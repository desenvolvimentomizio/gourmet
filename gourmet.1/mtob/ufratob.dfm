inherited fratob: Tfratob
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tobcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tobidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bcocodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bconome'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Tipo de Ocorr'#234'ncia de Boletos'
      inherited plid: TPanel
        Caption = '06-01-005'
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
  inherited DSTabela: TUniDataSource
    OnDataChange = nil
    Left = 236
    Top = 156
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select tobcodigo,tobidentificacao,bco.bcocodigo,bconome from tob' +
        ', bco where tob.bcocodigo=bco.bcocodigo')
    Left = 176
    Top = 164
    object uqtabelatobcodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tobcodigo'
      Size = 5
    end
    object uqtabelatobidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tobidentificacao'
      Size = 50
    end
    object uqtabelabcocodigo: TStringField
      DisplayLabel = 'C'#243'digo  do Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object uqtabelabconome: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'bconome'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
