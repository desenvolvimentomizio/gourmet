inherited frapsh: Tfrapsh
  Width = 862
  inherited PlGeral: TPanel
    Width = 862
    inherited PlLista: TPanel
      Width = 710
      inherited SplLista: TSplitter
        Top = 418
        Width = 708
      end
      inherited SpFilter: TSplitter
        Width = 708
      end
      inherited PlRodaPe: TPanel
        Top = 423
        Width = 708
        Height = 100
        Visible = True
        object hmddescricao: TDBMemo
          Left = 0
          Top = 0
          Width = 708
          Height = 100
          Align = alClient
          DataField = 'hmddescricao'
          DataSource = DSTabela
          ReadOnly = True
          TabOrder = 0
        end
      end
      inherited PlFiltros: TPanel
        Width = 708
      end
      inherited PlSelecao: TPanel
        Width = 708
        inherited GBPlSelecao: TGroupBox
          Width = 702
          inherited DBLista: TDBGrid
            Width = 595
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 708
        Height = 267
        inherited DBGLista: TDBGrid
          Width = 708
          Height = 242
          Columns = <
            item
              Expanded = False
              FieldName = 'pshchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sprcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hmdtitulo'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 242
          Width = 708
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 854
      inherited plid: TPanel
        Left = 632
        Caption = '03.07.80.007'
      end
      inherited PlSair: TPanel
        Left = 452
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
    Left = 392
    Top = 76
  end
  inherited MenuManutencao: TPopupMenu
    Left = 536
    Top = 72
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select  pshchave, psh.sprcodigo, psh.hmdchave, hmdtitulo, hmddes' +
        'cricao from psh,hmd where psh.hmdchave=hmd.hmdchave  and sprcodi' +
        'go=:sprcodigo')
    Left = 336
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sprcodigo'
        Value = nil
      end>
    object uqtabelapshchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'pshchave'
    end
    object uqtabelasprcodigo: TIntegerField
      DisplayLabel = 'Tarefa'
      FieldName = 'sprcodigo'
    end
    object uqtabelahmdchave: TIntegerField
      DisplayLabel = 'Hist'#243'ria'
      FieldName = 'hmdchave'
    end
    object uqtabelahmdtitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'hmdtitulo'
      Size = 50
    end
    object uqtabelahmddescricao: TStringField
      FieldName = 'hmddescricao'
      Size = 500
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
