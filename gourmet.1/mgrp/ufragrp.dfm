inherited fragrp: Tfragrp
  Width = 1046
  ExplicitWidth = 1046
  inherited PlGeral: TPanel
    Width = 1046
    ExplicitWidth = 1046
    inherited PlLista: TPanel
      Width = 902
      ExplicitWidth = 902
      inherited SplLista: TSplitter
        Width = 902
        ExplicitWidth = 592
      end
      inherited SpFilter: TSplitter
        Width = 902
        ExplicitWidth = 592
      end
      inherited PlRodaPe: TPanel
        Width = 902
        ExplicitWidth = 902
      end
      inherited PlFiltros: TPanel
        Width = 902
        ExplicitWidth = 902
      end
      inherited PlSelecao: TPanel
        Width = 902
        ExplicitWidth = 902
        inherited GBPlSelecao: TGroupBox
          Width = 898
          ExplicitWidth = 898
          inherited DBLista: TDBGrid
            Width = 791
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 902
        ExplicitWidth = 902
        inherited DBGLista: TDBGrid
          Width = 902
          Columns = <
            item
              Expanded = False
              FieldName = 'grpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cgridentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpremoto'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpordem'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 902
          ExplicitWidth = 902
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1046
      ExplicitWidth = 1046
      inherited plid: TPanel
        Left = 596
        Caption = '01-04-003'
        ExplicitLeft = 596
      end
      inherited PlSair: TPanel
        Left = 840
        ExplicitLeft = 840
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
    inherited ActRelatorios: TAction
      Enabled = False
      Visible = False
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
  inherited cls: TUniQuery
    ParamData = <
      item
        DataType = ftInteger
        Name = 'usrcodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'clsnomeform'
        ParamType = ptInput
        Value = nil
      end>
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  grpcodigo,'
      '  grpidentificacao,'
      '  grp.tgrcodigo,'
      '  tgr.tgridentificacao,'
      '  cgr.cgridentificacao,'
      '  grp.grpremoto,'
      '  grp.grpordem,'
      '  sip.sipcodigo'
      'FROM grp,'
      '     tgr,'
      '     cgr,'
      '     sip'
      'WHERE grp.tgrcodigo = tgr.tgrcodigo'
      'AND cgr.cgrcodigo = grp.cgrcodigo'
      'AND grp.sipcodigo = sip.sipcodigo')
    object uqtabelagrpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grpcodigo'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'grpidentificacao'
      Size = 30
    end
    object uqtabelacgridentificacao: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'cgridentificacao'
      Size = 50
    end
    object uqtabelagrpremoto: TIntegerField
      DisplayLabel = 'Publicar no SITE/APP'
      FieldName = 'grpremoto'
    end
    object uqtabelagrpordem: TIntegerField
      DisplayLabel = 'Ordem de Card'#225'pio'
      FieldName = 'grpordem'
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
    Left = 436
    Top = 484
    object sipsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object sipsipidentificacao: TStringField
      FieldName = 'sipidentificacao'
      Size = 35
    end
  end
end
