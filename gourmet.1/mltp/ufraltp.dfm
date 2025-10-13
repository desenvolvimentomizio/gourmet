inherited fraltp: Tfraltp
  Width = 1132
  inherited PlGeral: TPanel
    Width = 1132
    inherited PlLista: TPanel
      Width = 980
      inherited SplLista: TSplitter
        Width = 978
      end
      inherited SpFilter: TSplitter
        Width = 978
      end
      inherited PlRodaPe: TPanel
        Width = 978
      end
      inherited PlFiltros: TPanel
        Width = 978
      end
      inherited PlSelecao: TPanel
        Width = 978
        inherited GBPlSelecao: TGroupBox
          Width = 972
          inherited DBLista: TDBGrid
            Width = 865
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 978
        inherited DBGLista: TDBGrid
          Width = 978
          Columns = <
            item
              Expanded = False
              FieldName = 'ltpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ltplote'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ltpvencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sltnome'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 978
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1124
      inherited plid: TPanel
        Left = 798
      end
      inherited PlSair: TPanel
        Left = 1018
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
    object ActMarcarEmAberto: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Marcar Em Aberto'
      ShortCut = 123
      OnExecute = ActMarcarEmAbertoExecute
    end
    object ActDesmarcarEmAberto: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Marcar Baixado'
      ShortCut = 122
      OnExecute = ActDesmarcarEmAbertoExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 280
    Top = 244
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT '
      '  ltpcodigo,'
      '  ltp.procodigo,'
      '  pro.pronome,'
      '  ltplote,'
      '  ltpvencimento,'
      '  ltp.sltcodigo,'
      '  slt.sltnome '
      'FROM ltp,slt, pro'
      
        'where ltp.sltcodigo=slt.sltcodigo and pro.procodigo=ltp.procodig' +
        'o')
    Left = 340
    Top = 276
    object uqtabelaltpcodigo: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'ltpcodigo'
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 80
    end
    object uqtabelaltplote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'ltplote'
    end
    object uqtabelaltpvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'ltpvencimento'
    end
    object uqtabelasltcodigo: TIntegerField
      FieldName = 'sltcodigo'
    end
    object uqtabelasltnome: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'sltnome'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object slt: TUniQuery
    SQL.Strings = (
      'select sltcodigo, sltnome from  slt')
    Left = 794
    Top = 284
    object sltsltcodigo: TIntegerField
      FieldName = 'sltcodigo'
    end
    object sltsltnome: TStringField
      FieldName = 'sltnome'
    end
  end
end
