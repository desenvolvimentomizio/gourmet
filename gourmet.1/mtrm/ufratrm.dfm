inherited fratrm: Tfratrm
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'trmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'trmidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '02.03.81.001-02'
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
    object ActConta: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Conta Corrente'
      OnExecute = ActContaExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 336
    Top = 200
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select trmcodigo, trmidentificacao from trm')
    Left = 340
    Top = 132
    object uqtabelatrmcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'trmcodigo'
    end
    object uqtabelatrmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'trmidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object ctr: TUniQuery
    SQL.Strings = (
      'select ctrcodigo from ctr where trmcodigo=:trmcodigo')
    Left = 304
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trmcodigo'
        Value = nil
      end>
    object ctrctrcodigo: TIntegerField
      FieldName = 'ctrcodigo'
    end
  end
end
