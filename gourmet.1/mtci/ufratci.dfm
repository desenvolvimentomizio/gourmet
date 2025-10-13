inherited fratci: Tfratci
  Width = 1006
  ExplicitWidth = 1006
  inherited PlGeral: TPanel
    Width = 1006
    ExplicitWidth = 1006
    inherited PlLista: TPanel
      Width = 862
      ExplicitWidth = 862
      inherited SplLista: TSplitter
        Width = 862
        ExplicitWidth = 852
      end
      inherited SpFilter: TSplitter
        Width = 862
        ExplicitWidth = 852
      end
      inherited PlRodaPe: TPanel
        Width = 862
        ExplicitWidth = 862
      end
      inherited PlFiltros: TPanel
        Width = 862
        ExplicitWidth = 862
      end
      inherited PlSelecao: TPanel
        Width = 862
        ExplicitWidth = 862
        inherited GBPlSelecao: TGroupBox
          Width = 858
          ExplicitWidth = 858
          inherited DBLista: TDBGrid
            Width = 751
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 862
        ExplicitWidth = 862
        inherited DBGLista: TDBGrid
          Width = 862
          Columns = <
            item
              Expanded = False
              FieldName = 'tcicodigo'
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
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mitcodigo'
              Width = 25
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
            end
            item
              Expanded = False
              FieldName = 'tciprioridade'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 862
          ExplicitWidth = 862
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1006
      ExplicitWidth = 1006
      inherited plid: TPanel
        Left = 556
        ExplicitLeft = 556
      end
      inherited PlSair: TPanel
        Left = 800
        ExplicitLeft = 800
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
    Left = 304
    Top = 232
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tci.tcicodigo,'
      '  tci.trmcodigo,'
      '  trm.trmidentificacao,'
      '  tci.mitcodigo,'
      '  mit.mitidentificacao,'
      '  tci.tciporta,'
      '  tci.tciprioridade'
      'FROM tci'
      '  INNER JOIN mit'
      '    ON tci.mitcodigo = mit.mitcodigo'
      '  INNER JOIN trm'
      '    ON tci.trmcodigo = trm.trmcodigo'
      '')
    Left = 264
    Top = 176
    object uqtabelatcicodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tcicodigo'
    end
    object uqtabelatrmcodigo: TIntegerField
      DisplayLabel = 'Nr.Ter.'
      FieldName = 'trmcodigo'
    end
    object uqtabelatrmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Terminal'
      FieldName = 'trmidentificacao'
      Size = 50
    end
    object uqtabelamitcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'mitcodigo'
    end
    object uqtabelamitidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o Impressora'
      FieldName = 'mitidentificacao'
      Size = 50
    end
    object uqtabelatciporta: TStringField
      DisplayLabel = 'Porta de Comunica'#231#227'o'
      FieldName = 'tciporta'
      Size = 30
    end
    object uqtabelatciprioridade: TIntegerField
      DisplayLabel = 'Prioriade'
      FieldName = 'tciprioridade'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
