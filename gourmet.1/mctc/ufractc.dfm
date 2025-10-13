inherited fractc: Tfractc
  Width = 715
  inherited PlGeral: TPanel
    Width = 715
    inherited PlLista: TPanel
      Width = 571
      inherited SplLista: TSplitter
        Width = 571
      end
      inherited SpFilter: TSplitter
        Width = 571
      end
      inherited PlRodaPe: TPanel
        Width = 571
      end
      inherited PlFiltros: TPanel
        Width = 571
      end
      inherited PlSelecao: TPanel
        Width = 571
        inherited GBPlSelecao: TGroupBox
          Width = 567
          inherited DBLista: TDBGrid
            Width = 460
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 571
        inherited DBGLista: TDBGrid
          Width = 571
          Columns = <
            item
              Expanded = False
              FieldName = 'ctccodigo'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctacodigo'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctaidentificacao'
              Width = 352
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 571
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 715
      inherited plid: TPanel
        Left = 361
      end
      inherited PlSair: TPanel
        Left = 553
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
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 336
    Top = 364
  end
  inherited mdl: TUniQuery
    Left = 544
    Top = 260
  end
  inherited dau: TUniQuery
    Left = 580
    Top = 260
  end
  inherited act: TUniQuery
    Left = 504
    Top = 260
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select ctccodigo, ctc.ctacodigo, ctaidentificacao, clbcodigo fro' +
        'm ctc, cta where ctc.ctacodigo=cta.ctacodigo and ctc.clbcodigo=:' +
        'clbcodigo')
    Left = 332
    Top = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object uqtabelactccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ctccodigo'
    end
    object uqtabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object uqtabelactacodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'ctacodigo'
    end
    object uqtabelactaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
  inherited cau: TUniQuery
    Left = 504
    Top = 312
  end
  inherited cca: TUniQuery
    Left = 540
    Top = 312
  end
  inherited vcls: TVirtualTable
    Left = 512
    Data = {03000000000000000000}
  end
end
