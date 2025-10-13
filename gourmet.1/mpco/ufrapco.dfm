inherited frapco: Tfrapco
  Width = 815
  ExplicitWidth = 815
  inherited PlGeral: TPanel
    Width = 815
    ExplicitWidth = 815
    inherited PlLista: TPanel
      Width = 671
      ExplicitWidth = 671
      inherited SplLista: TSplitter
        Width = 671
        ExplicitWidth = 661
      end
      inherited SpFilter: TSplitter
        Width = 671
        ExplicitWidth = 661
      end
      inherited PlRodaPe: TPanel
        Width = 671
        ExplicitWidth = 671
      end
      inherited PlFiltros: TPanel
        Width = 671
        ExplicitWidth = 671
      end
      inherited PlSelecao: TPanel
        Width = 671
        ExplicitWidth = 671
        inherited GBPlSelecao: TGroupBox
          Width = 667
          ExplicitWidth = 667
          inherited DBLista: TDBGrid
            Width = 560
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 671
        ExplicitWidth = 671
        inherited DBGLista: TDBGrid
          Width = 671
          Columns = <
            item
              Expanded = False
              FieldName = 'pcocodigo'
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
              FieldName = 'pcoquantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 671
          ExplicitWidth = 671
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 815
      Caption = 'Composi'#231#227'o dos Produtos'
      ExplicitWidth = 815
      inherited plid: TPanel
        Left = 569
        Caption = '01-04-001'
        ExplicitLeft = 569
      end
      inherited PlSair: TPanel
        Left = 365
        ExplicitLeft = 365
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
      
        'select pcocodigo, pro.procodigo, pronome, pcosubproduto,pcoquant' +
        'idade,unisimbolo,senidentificacao from pco,pro,uni, sen'
      
        'where pco.pcosaborfixo=sen.sencodigo and pco.unicodigo=uni.unico' +
        'digo and pco.pcosubproduto=pro.procodigo and pco.procodigo=:proc' +
        'odigo order by pco.procodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object uqtabelapcocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcocodigo'
    end
    object uqtabelaprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 150
    end
    object uqtabelapcoquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'pcoquantidade'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object uqtabelaunisimbolo: TStringField
      DisplayLabel = 'UN'
      FieldName = 'unisimbolo'
      Size = 3
    end
    object uqtabelasenidentificacao: TStringField
      DisplayLabel = 'Produto/Sabor Fixo'
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
