inherited ligp: Tligp
  Caption = 'Ingredientes'
  PixelsPerInch = 96
  TextHeight = 13
  inline fraigp: Tfraigp
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      ExplicitWidth = 1024
      ExplicitHeight = 632
      inherited SplBotoes: TSplitter
        Height = 612
        ExplicitHeight = 612
      end
      inherited PlBotoes: TPanel
        Height = 612
        ExplicitHeight = 612
        inherited ImageLogoBase: TImage
          Top = 533
          ExplicitTop = 533
        end
        inherited PlInfo: TPanel
          Top = 594
          ExplicitTop = 594
        end
        inherited SBBotoes: TScrollBox
          Height = 533
          ExplicitHeight = 533
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 612
        ExplicitWidth = 880
        ExplicitHeight = 612
        inherited SplLista: TSplitter
          Top = 581
          Width = 880
          ExplicitTop = 581
          ExplicitWidth = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlRodaPe: TPanel
          Top = 586
          Width = 880
          ExplicitTop = 586
          ExplicitWidth = 880
        end
        inherited PlFiltros: TPanel
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlSelecao: TPanel
          Width = 880
          ExplicitWidth = 880
          inherited GBPlSelecao: TGroupBox
            Width = 876
            ExplicitWidth = 876
            inherited DBLista: TDBGrid
              Width = 769
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 880
          Height = 452
          ExplicitWidth = 880
          ExplicitHeight = 452
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 427
          end
          inherited PnlRodapeGrid: TPanel
            Top = 427
            Width = 880
            ExplicitTop = 427
            ExplicitWidth = 880
          end
          inherited plSugestao: TPanel
            inherited pbotoes: TPanel
              ExplicitTop = 203
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 1024
        inherited plid: TPanel
          Left = 644
          ExplicitLeft = 644
        end
        inherited PlSair: TPanel
          Left = 863
          ExplicitLeft = 863
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
