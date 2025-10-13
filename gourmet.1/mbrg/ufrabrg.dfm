inherited frabrg: Tfrabrg
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'brgchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpcodigo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'brdcodigo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'brdidentificacao'
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
    object ActDesativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      OnExecute = ActDesativarExecute
    end
    object ActReativar: TAction
      Category = 'Situa'#231#227'o'
      Caption = 'Reativar'
      OnExecute = ActReativarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  brg.brgchave,'
      '  brg.grpcodigo,'
      '  brg.brdcodigo,'
      '  brd.brdidentificacao,'
      '  grp.grpidentificacao,'
      '  sip.sipcodigo '
      'FROM brg'
      '  INNER JOIN grp'
      '    ON brg.grpcodigo = grp.grpcodigo'
      '  INNER JOIN sip'
      '    ON brg.sipcodigo = sip.sipcodigo'
      '  INNER JOIN brd'
      '    ON brg.brdcodigo = brd.brdcodigo')
    object uqtabelabrgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'brgchave'
    end
    object uqtabelagrpcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'grpcodigo'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Grupo'
      FieldName = 'grpidentificacao'
      Size = 50
    end
    object uqtabelabrdcodigo: TIntegerField
      DisplayLabel = 'Complemento ou Base'
      FieldName = 'brdcodigo'
    end
    object uqtabelabrdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Complemento ou Base'
      FieldName = 'brdidentificacao'
      Size = 50
    end
    object uqtabelasipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object sip: TUniQuery
    SQL.Strings = (
      'select sipcodigo, sipidentificacao from sip')
    Left = 580
    Top = 404
    object sipsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object sipsipidentificacao: TStringField
      FieldName = 'sipidentificacao'
      Size = 35
    end
  end
end
