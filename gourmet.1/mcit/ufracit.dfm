inherited fracit: Tfracit
  Width = 857
  ExplicitWidth = 857
  inherited PlGeral: TPanel
    Width = 857
    ExplicitWidth = 857
    inherited PlLista: TPanel
      Width = 713
      ExplicitWidth = 713
      inherited SplLista: TSplitter
        Width = 713
        ExplicitWidth = 713
      end
      inherited SpFilter: TSplitter
        Width = 713
        ExplicitWidth = 713
      end
      inherited PlRodaPe: TPanel
        Width = 713
        ExplicitWidth = 713
      end
      inherited PlFiltros: TPanel
        Width = 713
        ExplicitWidth = 713
      end
      inherited PlSelecao: TPanel
        Width = 713
        ExplicitWidth = 713
        inherited GBPlSelecao: TGroupBox
          Width = 709
          ExplicitWidth = 709
          inherited DBLista: TDBGrid
            Width = 602
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 713
        ExplicitWidth = 713
        inherited DBGLista: TDBGrid
          Width = 713
          Columns = <
            item
              Expanded = False
              FieldName = 'citcodigo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'trmcodigo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'trmidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mitidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tciporta'
              Width = 120
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 713
          ExplicitWidth = 713
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 857
      ExplicitWidth = 857
      inherited plid: TPanel
        Left = 407
        ExplicitLeft = 407
      end
      inherited PlSair: TPanel
        Left = 651
        ExplicitLeft = 651
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
    Left = 324
    Top = 260
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  citcodigo,'
      '  trmidentificacao,'
      '  trm.trmcodigo,'
      '  tci.mitcodigo,'
      '  mit.mitidentificacao,'
      '  tciporta'
      'FROM cit,trm,tci,mit'
      'where'
      'cit.trmcodigo = trm.trmcodigo and'
      'cit.tcicodigo = tci.tcicodigo and'
      'tci.mitcodigo = mit.mitcodigo and'
      'cit.trmcodigo=:trmcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trmcodigo'
        Value = nil
      end>
    object uqtabelacitcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'citcodigo'
    end
    object uqtabelatrmcodigo: TIntegerField
      DisplayLabel = 'Nr.Ter.'
      FieldName = 'trmcodigo'
    end
    object uqtabelatrmidentificacao: TStringField
      DisplayLabel = 'Terminal'
      FieldName = 'trmidentificacao'
      Size = 50
    end
    object uqtabelamitidentificacao: TStringField
      DisplayLabel = 'Impressora'
      FieldName = 'mitidentificacao'
      Size = 50
    end
    object uqtabelatciporta: TStringField
      DisplayLabel = 'Porta de Comunica'#231#227'o'
      FieldName = 'tciporta'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
