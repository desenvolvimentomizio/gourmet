inherited lare: Tlare
  Caption = 'lare'
  PixelsPerInch = 96
  TextHeight = 13
  inline fraare: Tfraare
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      inherited SplBotoes: TSplitter
        Height = 598
      end
      inherited PlBotoes: TPanel
        Height = 598
        inherited ImageLogoBase: TImage
          Top = 519
        end
        inherited PlInfo: TPanel
          Top = 580
        end
        inherited SBBotoes: TScrollBox
          Height = 519
        end
      end
      inherited PlLista: TPanel
        Width = 872
        Height = 598
        inherited SplLista: TSplitter
          Top = 566
          Width = 870
        end
        inherited SpFilter: TSplitter
          Width = 870
        end
        inherited PlRodaPe: TPanel
          Top = 571
          Width = 870
        end
        inherited PlFiltros: TPanel
          Width = 870
        end
        inherited PlSelecao: TPanel
          Width = 870
          inherited GBPlSelecao: TGroupBox
            Width = 864
            inherited DBLista: TDBGrid
              Width = 757
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 870
          Height = 415
          inherited DBGLista: TDBGrid
            Width = 870
            Height = 390
          end
          inherited PnlRodapeGrid: TPanel
            Top = 390
            Width = 870
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1016
        inherited plid: TPanel
          Left = 614
        end
        inherited PlSair: TPanel
          Left = 834
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
