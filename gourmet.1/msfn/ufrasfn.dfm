inherited frasfn: Tfrasfn
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'sfncodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unicodigo'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'uninome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sfnquantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sfnordem'
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
      '  sfn.sfncodigo,'
      '  sfn.unicodigo,'
      '  uni.uninome,'
      '  sfn.procodigo,'
      '  pro.pronome,'
      '  sfnquantidade,'
      '  sfnordem,'
      '  sip.sipcodigo'
      'FROM sfn'
      ' INNER JOIN uni ON sfn.unicodigo=uni.unicodigo  '
      '  INNER JOIN pro ON sfn.procodigo=pro.procodigo'
      '  INNER JOIN sip ON sip.sipcodigo=sfn.sipcodigo')
    object uqtabelasfncodigo: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'sfncodigo'
    end
    object uqtabelaunicodigo: TIntegerField
      DisplayLabel = 'Uni'
      FieldName = 'unicodigo'
    end
    object uqtabelauninome: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Unidade'
      FieldName = 'uninome'
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
    object uqtabelasfnquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'sfnquantidade'
    end
    object uqtabelasfnordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'sfnordem'
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
    Left = 652
    Top = 292
    object sipsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object sipsipidentificacao: TStringField
      FieldName = 'sipidentificacao'
      Size = 35
    end
  end
end
