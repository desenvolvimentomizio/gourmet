inherited fraivt: Tfraivt
  Width = 887
  ExplicitWidth = 887
  inherited PlGeral: TPanel
    Width = 887
    ExplicitWidth = 887
    inherited PlLista: TPanel
      Width = 743
      ExplicitWidth = 743
      inherited SplLista: TSplitter
        Width = 743
        ExplicitWidth = 743
      end
      inherited SpFilter: TSplitter
        Width = 743
        ExplicitWidth = 743
      end
      inherited PlRodaPe: TPanel
        Width = 743
        ExplicitWidth = 743
      end
      inherited PlFiltros: TPanel
        Width = 743
        ExplicitWidth = 743
      end
      inherited PlSelecao: TPanel
        Width = 743
        ExplicitWidth = 743
        inherited GBPlSelecao: TGroupBox
          Width = 739
          ExplicitWidth = 739
          inherited DBLista: TDBGrid
            Width = 632
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 743
        ExplicitWidth = 743
        inherited DBGLista: TDBGrid
          Width = 743
          Columns = <
            item
              Expanded = False
              FieldName = 'ivtchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spdexercicio'
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
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ivtquantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ivtvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ivtvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'spddatabalanco'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 743
          ExplicitWidth = 743
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 887
      ExplicitWidth = 887
      inherited plid: TPanel
        Left = 437
        Caption = '04-15-000'
        ExplicitLeft = 437
      end
      inherited PlSair: TPanel
        Left = 681
        ExplicitLeft = 681
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
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT ivtchave'
      '     , ivt.spdchave'
      '     , ivt.procodigo'
      '     , ivtquantidade'
      '     , ivtvalor'
      '     , ivttotal'
      '     , spd.spdexercicio'
      '     , spd.spddatabalanco'
      '     , pronome'
      'FROM ivt'
      '  JOIN spd'
      '    ON ivt.spdchave = spd.spdchave'
      '  JOIN pro'
      '    ON ivt.procodigo = pro.procodigo'
      'where spd.spddatabalanco='#39'2018-10-25'#39
      '')
    object uqtabelaivtchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ivtchave'
    end
    object uqtabelaspdexercicio: TIntegerField
      DisplayLabel = 'Exerc'#237'cio'
      FieldName = 'spdexercicio'
      ReadOnly = True
      Required = True
    end
    object uqtabelaspdchave: TIntegerField
      FieldName = 'spdchave'
      Required = True
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Descri'#231#227'o do Item'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object uqtabelaivtquantidade: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'ivtquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object uqtabelaivtvalor: TFloatField
      DisplayLabel = 'Valor Unit. R$'
      FieldName = 'ivtvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaivttotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'ivttotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaspddatabalanco: TDateField
      DisplayLabel = 'Balan'#231'o'
      FieldName = 'spddatabalanco'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
