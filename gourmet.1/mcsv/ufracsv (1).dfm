inherited fracsv: Tfracsv
  Width = 930
  Height = 519
  ExplicitWidth = 930
  ExplicitHeight = 519
  inherited PlGeral: TPanel
    Width = 930
    Height = 519
    ExplicitWidth = 930
    ExplicitHeight = 519
    inherited SplBotoes: TSplitter
      Height = 493
      ExplicitHeight = 493
    end
    inherited PlBotoes: TPanel
      Height = 493
      ExplicitHeight = 493
      inherited ImageLogoBase: TImage
        Top = 414
        ExplicitTop = 414
      end
      inherited PlInfo: TPanel
        Top = 475
        ExplicitTop = 475
      end
      inherited SBBotoes: TScrollBox
        Height = 414
        ExplicitHeight = 414
      end
    end
    inherited PlLista: TPanel
      Width = 786
      Height = 493
      ExplicitWidth = 786
      ExplicitHeight = 493
      inherited SplLista: TSplitter
        Top = 462
        Width = 786
        ExplicitTop = 462
        ExplicitWidth = 786
      end
      inherited SpFilter: TSplitter
        Width = 786
        ExplicitWidth = 786
      end
      inherited PlRodaPe: TPanel
        Top = 467
        Width = 786
        ExplicitTop = 467
        ExplicitWidth = 786
      end
      inherited PlFiltros: TPanel
        Width = 786
        ExplicitWidth = 786
      end
      inherited PlSelecao: TPanel
        Width = 786
        ExplicitWidth = 786
        inherited GBPlSelecao: TGroupBox
          Width = 782
          ExplicitWidth = 782
          inherited DBLista: TDBGrid
            Width = 675
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 786
        Height = 333
        ExplicitWidth = 786
        ExplicitHeight = 333
        inherited DBGLista: TDBGrid
          Width = 786
          Height = 308
          Columns = <
            item
              Expanded = False
              FieldName = 'csvchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'csvemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'csvregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcsidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'csvgeral'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'csvvencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfichave'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 308
          Width = 786
          ExplicitTop = 308
          ExplicitWidth = 786
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 930
      ExplicitWidth = 930
      inherited plid: TPanel
        Left = 550
        Caption = '02-10-000'
        ExplicitLeft = 550
      end
      inherited PlSair: TPanel
        Left = 769
        ExplicitLeft = 769
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
      Caption = 'Cancelar'
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select csvchave,csv.etdcodigo,etdidentificacao,csvnumero, csvemi' +
        'ssao, csvregistro,csvvalor,csvdesconto, csvgeral, tcsidentificac' +
        'ao, rfichave, csvvencimento from csv,etd,tcs where'
      'csv.etdcodigo=etd.etdcodigo and csv.tcscodigo=tcs.tcscodigo')
    object uqtabelacsvchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'csvchave'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
      Required = True
    end
    object uqtabelatcsidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tcsidentificacao'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Identificacao'
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object uqtabelacsvnumero: TStringField
      DisplayLabel = 'N'#250'mero Doc.'
      FieldName = 'csvnumero'
      Required = True
      Size = 10
    end
    object uqtabelacsvemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'csvemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelacsvregistro: TDateField
      DisplayLabel = 'Dt.Registro'
      FieldName = 'csvregistro'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelacsvgeral: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'csvgeral'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelarfichave: TIntegerField
      DisplayLabel = 'Reg. Contas a Pagar'
      FieldName = 'rfichave'
    end
    object uqtabelacsvvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'csvvencimento'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
