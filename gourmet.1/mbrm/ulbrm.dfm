inherited lbrm: Tlbrm
  Caption = 'Registro de Ocorr'#234'ncia em Boletos'
  PixelsPerInch = 96
  TextHeight = 13
  inline frabrm: Tfrabrm
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 61
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      ExplicitWidth = 840
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
        ExplicitWidth = 696
        inherited SplLista: TSplitter
          Top = 575
          Width = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
        end
        inherited PlRodaPe: TPanel
          Top = 580
          Width = 880
          ExplicitWidth = 696
        end
        inherited PlFiltros: TPanel
          Width = 880
          ExplicitWidth = 696
        end
        inherited PlSelecao: TPanel
          Width = 880
          ExplicitWidth = 696
          inherited GBPlSelecao: TGroupBox
            Width = 876
            ExplicitWidth = 692
            inherited DBLista: TDBGrid
              Width = 769
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 880
          Height = 446
          ExplicitWidth = 696
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 421
          end
          inherited PnlRodapeGrid: TPanel
            Top = 421
            Width = 880
            ExplicitWidth = 696
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 840
        inherited plid: TPanel
          Left = 644
          ExplicitLeft = 460
        end
        inherited PlSair: TPanel
          Left = 863
          ExplicitLeft = 679
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
