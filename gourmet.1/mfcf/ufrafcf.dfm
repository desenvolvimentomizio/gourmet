inherited frafcf: Tfrafcf
  Width = 796
  inherited PlGeral: TPanel
    Width = 796
    inherited PlLista: TPanel
      Width = 644
      inherited SplLista: TSplitter
        Width = 642
      end
      inherited SpFilter: TSplitter
        Width = 642
      end
      inherited PlRodaPe: TPanel
        Width = 642
      end
      inherited PlFiltros: TPanel
        Width = 642
      end
      inherited PlSelecao: TPanel
        Width = 642
        inherited GBPlSelecao: TGroupBox
          Width = 636
          inherited DBLista: TDBGrid
            Width = 529
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 642
        inherited DBGLista: TDBGrid
          Width = 642
          Columns = <
            item
              Expanded = False
              FieldName = 'fcfchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fnccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'feccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fecidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 642
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 788
      inherited plid: TPanel
        Left = 566
        Caption = '01.01.02.002'
      end
      inherited PlSair: TPanel
        Left = 386
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
      
        'select  fcfchave, fcf.feccodigo, fnccodigo, fecidentificacao fro' +
        'm fcf, fec where fcf.feccodigo=fec.feccodigo  and fnccodigo=:fnc' +
        'codigo')
    Left = 232
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fnccodigo'
        Value = nil
      end>
    object uqtabelafcfchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'fcfchave'
    end
    object uqtabelafnccodigo: TIntegerField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fnccodigo'
    end
    object uqtabelafeccodigo: TStringField
      DisplayLabel = 'C'#243'd'
      FieldName = 'feccodigo'
      Size = 3
    end
    object uqtabelafecidentificacao: TStringField
      DisplayLabel = 'Permiss'#227'o'
      FieldName = 'fecidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Left = 664
    Top = 104
    Data = {03000000000000000000}
  end
end
