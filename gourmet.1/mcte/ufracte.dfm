inherited fracte: Tfracte
  Width = 1082
  Height = 490
  inherited PlGeral: TPanel
    Width = 1082
    Height = 490
    inherited SplBotoes: TSplitter
      Height = 456
    end
    inherited PlBotoes: TPanel
      Height = 456
      inherited ImageLogoBase: TImage
        Top = 377
      end
      inherited PlInfo: TPanel
        Top = 438
      end
      inherited SBBotoes: TScrollBox
        Height = 377
      end
    end
    inherited PlLista: TPanel
      Width = 930
      Height = 456
      inherited SplLista: TSplitter
        Top = 424
        Width = 928
      end
      inherited SpFilter: TSplitter
        Width = 928
      end
      inherited PlRodaPe: TPanel
        Top = 429
        Width = 928
      end
      inherited PlFiltros: TPanel
        Width = 928
      end
      inherited PlSelecao: TPanel
        Width = 928
        inherited GBPlSelecao: TGroupBox
          Width = 922
          inherited DBLista: TDBGrid
            Width = 815
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 928
        Height = 273
        inherited DBGLista: TDBGrid
          Width = 928
          Height = 248
          Columns = <
            item
              Expanded = False
              FieldName = 'ctechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctedtaquis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cteoperacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cteemissor'
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
              Width = 279
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'refcodigo'
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctenumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctevalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctevalordoc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctebicm'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cteicm'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 248
          Width = 928
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1074
      inherited plid: TPanel
        Left = 672
        Caption = '03-04-000'
      end
      inherited PlSair: TPanel
        Left = 892
      end
    end
  end
  inherited acoes: TActionList
    Left = 492
    Top = 76
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select ctechave, cteoperacao, cteemissor, cte.etdcodigo,etd.etdi' +
        'dentificacao, ctenumero, cteemissao,ctedtaquis, tcfcodigo,  ctev' +
        'alor, ctedesconto, refcodigo,  ctevalordoc, ctebicm, cteicm from' +
        ' cte,etd where cte.etdcodigo=etd.etdcodigo')
    object uqtabelactechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'ctechave'
    end
    object uqtabelacteoperacao: TStringField
      DisplayLabel = 'Op'
      FieldName = 'cteoperacao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object uqtabelacteemissor: TStringField
      DisplayLabel = 'Em'
      FieldName = 'cteemissor'
      Required = True
      FixedChar = True
      Size = 1
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
      Required = True
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object uqtabelactenumero: TStringField
      DisplayLabel = 'Nr. CTE'
      FieldName = 'ctenumero'
      Size = 10
    end
    object uqtabelacteemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cteemissao'
      Required = True
    end
    object uqtabelactevalor: TFloatField
      DisplayLabel = 'Valor Frete R$'
      FieldName = 'ctevalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelactedesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'ctedesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelactevalordoc: TFloatField
      DisplayLabel = 'Vlr Documento'
      FieldName = 'ctevalordoc'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelactebicm: TFloatField
      DisplayLabel = 'Base ICM R$'
      FieldName = 'ctebicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelacteicm: TFloatField
      DisplayLabel = 'Vlr ICM'
      FieldName = 'cteicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelactedtaquis: TDateField
      DisplayLabel = 'Dt.Registro'
      FieldName = 'ctedtaquis'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelatcfcodigo: TStringField
      DisplayLabel = 'TP'
      FieldName = 'tcfcodigo'
      Size = 1
    end
    object uqtabelarefcodigo2: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'refcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
