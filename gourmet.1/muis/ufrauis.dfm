inherited frauis: Tfrauis
  Height = 599
  ExplicitHeight = 599
  inherited PlGeral: TPanel
    Height = 599
    ExplicitHeight = 599
    inherited SplBotoes: TSplitter
      Height = 573
      ExplicitHeight = 573
    end
    inherited PlBotoes: TPanel
      Height = 573
      ExplicitHeight = 573
      inherited ImageLogoBase: TImage
        Top = 494
        ExplicitTop = 494
      end
      inherited PlInfo: TPanel
        Top = 555
        ExplicitTop = 555
      end
      inherited SBBotoes: TScrollBox
        Height = 494
        ExplicitHeight = 494
      end
    end
    inherited PlLista: TPanel
      Height = 573
      ExplicitHeight = 573
      inherited SplLista: TSplitter
        Top = 542
        ExplicitTop = 542
      end
      inherited PlRodaPe: TPanel
        Top = 547
        ExplicitTop = 547
      end
      inherited PnlGrid: TPanel
        Height = 413
        ExplicitHeight = 413
        inherited DBGLista: TDBGrid
          Height = 388
          Columns = <
            item
              Expanded = False
              FieldName = 'uiscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ufscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ufsnome'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'uispercentual'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 388
          ExplicitTop = 388
        end
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
      'SELECT'
      '  uis.uiscodigo,'
      '  uis.ufscodigo,'
      '  uis.uispercentual,'
      '  ufsnome'
      'FROM uis, ufs'
      'where uis.ufscodigo=ufs.ufscodigo')
    object uqtabelauiscodigo: TStringField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'uiscodigo'
      Size = 10
    end
    object uqtabelaufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 3
    end
    object uqtabelaufsnome: TStringField
      DisplayLabel = 'Estado da Federa'#231#227'o'
      FieldName = 'ufsnome'
      Size = 50
    end
    object uqtabelauispercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'uispercentual'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
