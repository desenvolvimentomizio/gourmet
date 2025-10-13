inherited fratpo: Tfratpo
  Width = 1003
  Height = 424
  inherited PlGeral: TPanel
    Width = 1003
    Height = 424
    inherited SplBotoes: TSplitter
      Height = 398
    end
    inherited PlBotoes: TPanel
      Height = 398
      inherited ImageLogoBase: TImage
        Top = 319
      end
      inherited PlInfo: TPanel
        Top = 380
      end
      inherited SBBotoes: TScrollBox
        Height = 319
      end
    end
    inherited PlLista: TPanel
      Width = 859
      Height = 398
      inherited SplLista: TSplitter
        Top = 367
        Width = 859
      end
      inherited SpFilter: TSplitter
        Width = 859
      end
      inherited PlRodaPe: TPanel
        Top = 372
        Width = 859
      end
      inherited PlFiltros: TPanel
        Width = 859
      end
      inherited PlSelecao: TPanel
        Width = 859
        inherited GBPlSelecao: TGroupBox
          Width = 855
          inherited DBLista: TDBGrid
            Width = 748
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 859
        Height = 238
        inherited DBGLista: TDBGrid
          Width = 859
          Height = 213
          Columns = <
            item
              Expanded = False
              FieldName = 'tpocodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpoidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 213
          Width = 859
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1003
      inherited plid: TPanel
        Left = 649
        Caption = '01-04-006'
      end
      inherited PlSair: TPanel
        Left = 841
      end
    end
  end
  inherited acoes: TActionList
    inherited ActRelatorios: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tpocodigo, tpoidentificacao from tpo')
    object uqtabelatpocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tpocodigo'
    end
    object uqtabelatpoidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tpoidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
