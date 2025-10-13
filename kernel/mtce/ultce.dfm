inherited ltce: Tltce
  Caption = 'C'#243'digos CESTs'
  PixelsPerInch = 96
  TextHeight = 13
  inline fratce: Tfratce
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitLeft = -302
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
          Top = 528
        end
        inherited PlInfo: TPanel
          Top = 592
        end
        inherited SBBotoes: TScrollBox
          Height = 528
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 612
        inherited SplLista: TSplitter
          Top = 411
          Width = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
        end
        inherited PlRodaPe: TPanel
          Top = 416
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
          Height = 282
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 257
          end
          inherited PnlRodapeGrid: TPanel
            Top = 257
            Width = 880
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 574
        end
        inherited PlSair: TPanel
          Left = 818
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
