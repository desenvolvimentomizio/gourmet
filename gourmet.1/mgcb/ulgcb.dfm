inherited lgcb: Tlgcb
  Caption = 'lgcb'
  PixelsPerInch = 96
  TextHeight = 13
  inline fragcb: Tfragcb
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
        Height = 606
      end
      inherited PlBotoes: TPanel
        Height = 606
        inherited ImageLogoBase: TImage
          Top = 527
        end
        inherited PlInfo: TPanel
          Top = 588
        end
        inherited SBBotoes: TScrollBox
          Height = 527
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 606
        inherited SplLista: TSplitter
          Top = 451
          Width = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
        end
        inherited PlRodaPe: TPanel
          Top = 456
          Width = 880
          inherited DBGrfi: TDBGrid
            Width = 880
          end
          inherited Panel1: TPanel
            Width = 880
          end
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
          Height = 322
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 257
          end
          inherited PnlRodapeGrid: TPanel
            Top = 257
            Width = 880
            inherited GroupBox1: TGroupBox
              Width = 880
              inherited gcbobservacao: TDBMemo
                Width = 876
              end
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 673
        end
        inherited PlSair: TPanel
          Left = 863
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
