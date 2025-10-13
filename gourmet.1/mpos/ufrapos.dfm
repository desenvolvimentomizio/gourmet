inherited frapos: Tfrapos
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 451
        Visible = True
        ExplicitTop = 451
      end
      inherited PlRodaPe: TPanel
        Top = 456
        Height = 124
        Visible = True
        ExplicitTop = 456
        ExplicitHeight = 124
      end
      inherited PnlGrid: TPanel
        Height = 322
        ExplicitHeight = 322
        inherited DBGLista: TDBGrid
          Height = 297
          Columns = <
            item
              Expanded = False
              FieldName = 'poscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'posidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'posnumeroserie'
              Width = 136
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 136
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 297
          ExplicitTop = 297
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
      '  poscodigo,'
      '  posidentificacao,'
      '  posnumeroserie, '
      '  clbidentificacao'
      'FROM pos'
      'INNER JOIN clb on clb.clbcodigo=pos.clbcodigo')
    Left = 580
    Top = 172
    object uqtabelaposcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'poscodigo'
    end
    object uqtabelaposidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'posidentificacao'
      Size = 50
    end
    object uqtabelaposnumeroserie: TStringField
      DisplayLabel = 'N'#250'mero de S'#233'rie'
      FieldName = 'posnumeroserie'
      Size = 50
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object pedidos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 808
    Top = 373
  end
end
