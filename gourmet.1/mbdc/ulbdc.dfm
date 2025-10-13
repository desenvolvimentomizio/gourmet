inherited lbdc: Tlbdc
  Caption = 'Banceiras de Cart'#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inline frabdc: Tfrabdc
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitLeft = -154
    ExplicitTop = 61
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      inherited SplBotoes: TSplitter
        Height = 612
      end
      inherited PlBotoes: TPanel
        Height = 612
        inherited ImageLogoBase: TImage
          Top = 533
        end
        inherited PlInfo: TPanel
          Top = 594
        end
        inherited SBBotoes: TScrollBox
          Height = 533
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 612
        inherited SplLista: TSplitter
          Top = 581
          Width = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
        end
        inherited PlRodaPe: TPanel
          Top = 586
          Width = 880
        end
        inherited PlFiltros: TPanel
          Width = 880
        end
        inherited PlSelecao: TPanel
          Width = 880
          inherited GBPlSelecao: TGroupBox
            Width = 876
            inherited DBLista: TDBGrid
              Width = 769
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 880
          Height = 452
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 427
          end
          inherited PnlRodapeGrid: TPanel
            Top = 427
            Width = 880
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 621
        end
        inherited PlSair: TPanel
          Left = 840
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
