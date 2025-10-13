inherited frarfc: Tfrarfc
  Width = 842
  Height = 398
  ExplicitWidth = 842
  ExplicitHeight = 398
  inherited PlGeral: TPanel
    Width = 842
    Height = 398
    ExplicitWidth = 842
    ExplicitHeight = 398
    inherited SplBotoes: TSplitter
      Height = 378
      ExplicitHeight = 372
    end
    inherited PlBotoes: TPanel
      Height = 378
      ExplicitHeight = 378
      inherited ImageLogoBase: TImage
        Top = 299
        ExplicitTop = 293
      end
      inherited PlInfo: TPanel
        Top = 360
        ExplicitTop = 360
      end
      inherited SBBotoes: TScrollBox
        Height = 299
        ExplicitHeight = 299
      end
    end
    inherited PlLista: TPanel
      Width = 698
      Height = 378
      ExplicitWidth = 698
      ExplicitHeight = 378
      inherited SplLista: TSplitter
        Top = 347
        Width = 698
        ExplicitTop = 341
        ExplicitWidth = 698
      end
      inherited SpFilter: TSplitter
        Width = 698
        ExplicitWidth = 698
      end
      inherited PlRodaPe: TPanel
        Top = 352
        Width = 698
        ExplicitTop = 352
        ExplicitWidth = 698
      end
      inherited PlFiltros: TPanel
        Width = 698
        ExplicitWidth = 698
      end
      inherited PlSelecao: TPanel
        Width = 698
        ExplicitWidth = 698
        inherited GBPlSelecao: TGroupBox
          Width = 694
          ExplicitWidth = 694
          inherited DBLista: TDBGrid
            Width = 587
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 698
        Height = 218
        ExplicitWidth = 698
        ExplicitHeight = 218
        inherited DBGLista: TDBGrid
          Width = 698
          Height = 193
          Columns = <
            item
              Expanded = False
              FieldName = 'rfcloja'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfccontato'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfcfonecont'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfcdtcons'
              Width = 75
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 193
          Width = 698
          ExplicitTop = 193
          ExplicitWidth = 698
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 842
      ExplicitWidth = 842
      inherited plid: TPanel
        Left = 392
        Caption = '09-00-006'
        ExplicitLeft = 392
      end
      inherited PlSair: TPanel
        Left = 636
        ExplicitLeft = 636
      end
    end
  end
  inherited acoes: TActionList
    Top = 108
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActPesquisar: TAction
      Visible = False
    end
    inherited ActRelatorios: TAction
      Visible = False
    end
    inherited ActVerFiltros: TAction
      Visible = False
    end
    inherited ActFiltrar: TAction
      Visible = False
    end
    inherited ActConfig: TAction
      Visible = False
    end
    inherited ActConfiguracoes: TAction
      Visible = False
    end
  end
  inherited cls: TUniQuery
    Left = 92
    Top = 64
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select rfccodigo,etdcodigo,rfcloja,rfccontato,rfcfonecont,rfcdtc' +
        'ad, rfcdtcons from rfc'
      'where rfc.etdcodigo=:etdcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object uqtabelarfccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'rfccodigo'
    end
    object uqtabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object uqtabelarfcloja: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'rfcloja'
      Size = 30
    end
    object uqtabelarfccontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'rfccontato'
      Size = 30
    end
    object uqtabelarfcfonecont: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'rfcfonecont'
    end
    object uqtabelarfcdtcad: TDateField
      DisplayLabel = 'Data Consulta'
      FieldName = 'rfcdtcad'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelarfcdtcons: TDateField
      DisplayLabel = 'Dt.Consulta'
      FieldName = 'rfcdtcons'
      EditMask = '!99/99/9999;1;_'
    end
  end
  inherited dcl: TUniQuery
    Top = 140
  end
  inherited vcls: TVirtualTable
    Left = 404
    Top = 108
    Data = {04000000000000000000}
  end
end
