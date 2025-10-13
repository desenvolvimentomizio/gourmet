inherited frabrd: Tfrabrd
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'brdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'brdidentificacao'
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
    object ActDesativar: TAction [11]
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      OnExecute = ActDesativarExecute
    end
    object ActReativar: TAction [12]
      Category = 'Situa'#231#227'o'
      Caption = 'Reativar'
      OnExecute = ActReativarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  brdcodigo,'
      '  brdidentificacao,'
      '  brd.procodigo,'
      '  pronome,'
      '  sip.sipcodigo'
      'FROM brd'
      '  inner JOIN sip ON  brd.sipcodigo=sip.sipcodigo'
      '  LEFT JOIN pro ON brd.procodigo=pro.procodigo')
    object uqtabelabrdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'brdcodigo'
    end
    object uqtabelabrdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'brdidentificacao'
      Size = 50
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
    object uqtabelasipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object sip: TUniQuery [36]
    SQL.Strings = (
      'select sipcodigo, sipidentificacao from sip')
    Left = 636
    Top = 316
    object sipsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object sipsipidentificacao: TStringField
      FieldName = 'sipidentificacao'
      Size = 35
    end
  end
end
