inherited frafcb: Tfrafcb
  Width = 896
  inherited PlGeral: TPanel
    Width = 896
    inherited PlLista: TPanel
      Width = 752
      inherited SplLista: TSplitter
        Width = 752
      end
      inherited SpFilter: TSplitter
        Width = 752
      end
      inherited PlRodaPe: TPanel
        Width = 752
      end
      inherited PlFiltros: TPanel
        Width = 752
      end
      inherited PlSelecao: TPanel
        Width = 752
        inherited GBPlSelecao: TGroupBox
          Width = 748
          inherited DBLista: TDBGrid
            Width = 641
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 752
        inherited DBGLista: TDBGrid
          Width = 752
          Columns = <
            item
              Expanded = False
              FieldName = 'fcbchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flaidentificacao'
              Width = 200
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 752
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 896
      inherited plid: TPanel
        Left = 702
        Caption = '01.01.06.001'
      end
      inherited PlSair: TPanel
        Left = 542
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT fcb.fcbchave'
      '     , fcb.flacodigo'
      '     , fla.flaidentificacao'
      '  FROM fcb'
      ' INNER JOIN fla ON fcb.flacodigo = fla.flacodigo'
      ' WHERE fcb.clbcodigo = :clbcodigo')
    Left = 180
    Top = 196
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object uqtabelafcbchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'fcbchave'
    end
    object uqtabelaflacodigo: TIntegerField
      DisplayLabel = 'Cod.Filial'
      FieldName = 'flacodigo'
    end
    object uqtabelaflaidentificacao: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
