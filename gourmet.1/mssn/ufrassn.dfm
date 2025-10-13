inherited frassn: Tfrassn
  Width = 867
  inherited PlGeral: TPanel
    Width = 867
    inherited PlLista: TPanel
      Width = 715
      inherited SplLista: TSplitter
        Width = 713
      end
      inherited SpFilter: TSplitter
        Width = 713
      end
      inherited PlRodaPe: TPanel
        Width = 713
      end
      inherited PlFiltros: TPanel
        Width = 713
      end
      inherited PlSelecao: TPanel
        Width = 713
        inherited GBPlSelecao: TGroupBox
          Width = 707
          inherited DBLista: TDBGrid
            Width = 600
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 713
        inherited DBGLista: TDBGrid
          Width = 713
          Columns = <
            item
              Expanded = False
              FieldName = 'ssncodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssnfaturamento'
              Width = 147
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssnaliquota'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssnirpj'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssncsll'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssncofins'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssnpis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssncpp'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssnicms'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 713
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 859
      inherited plid: TPanel
        Left = 637
        Caption = '04-14-000'
      end
      inherited PlSair: TPanel
        Left = 457
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
      
        'select ssncodigo,ssnfaturamento,ssnaliquota,ssnirpj,ssncsll,ssnc' +
        'ofins,ssnpis,ssncpp,ssnicms from ssn')
    object uqtabelassncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ssncodigo'
      Required = True
    end
    object uqtabelassnfaturamento: TStringField
      DisplayLabel = 'Faturamento'
      FieldName = 'ssnfaturamento'
      Required = True
      Size = 50
    end
    object uqtabelassnaliquota: TFloatField
      DisplayLabel = 'Simples'
      FieldName = 'ssnaliquota'
      Required = True
    end
    object uqtabelassnirpj: TFloatField
      DisplayLabel = 'IRPJ'
      FieldName = 'ssnirpj'
      Required = True
    end
    object uqtabelassncsll: TFloatField
      DisplayLabel = 'CSLL'
      FieldName = 'ssncsll'
      Required = True
    end
    object uqtabelassncofins: TFloatField
      DisplayLabel = 'COFINS'
      FieldName = 'ssncofins'
      Required = True
    end
    object uqtabelassnpis: TFloatField
      DisplayLabel = 'PIS'
      FieldName = 'ssnpis'
      Required = True
    end
    object uqtabelassncpp: TFloatField
      DisplayLabel = 'CPP'
      FieldName = 'ssncpp'
      Required = True
    end
    object uqtabelassnicms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'ssnicms'
      Required = True
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
