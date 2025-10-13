inherited ltdv: Tltdv
  Caption = 'Troca ou Devolu'#231#227'o'
  ClientHeight = 835
  ExplicitHeight = 874
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 806
    ExplicitTop = 806
  end
  inline fratdv: Tfratdv
    Left = 0
    Top = 0
    Width = 1024
    Height = 806
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 806
    inherited PlGeral: TPanel
      Width = 1024
      Height = 806
      ExplicitWidth = 1024
      ExplicitHeight = 806
      inherited SplBotoes: TSplitter
        Height = 786
        ExplicitHeight = 606
      end
      inherited PlBotoes: TPanel
        Height = 786
        ExplicitHeight = 786
        inherited PlInfo: TPanel
          Top = 766
          ExplicitTop = 766
        end
        inherited SBBotoes: TScrollBox
          Height = 763
          ExplicitHeight = 763
          inherited ImageLogoBase: TImage
            Top = 707
            ExplicitTop = 527
          end
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 786
        ExplicitWidth = 880
        ExplicitHeight = 786
        inherited SplLista: TSplitter
          Top = 626
          Width = 880
          Height = 10
          ExplicitTop = 486
          ExplicitWidth = 880
          ExplicitHeight = 10
        end
        inherited SpFilter: TSplitter
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlRodaPe: TPanel
          Top = 636
          Width = 880
          Height = 150
          ExplicitTop = 636
          ExplicitWidth = 880
          ExplicitHeight = 150
          inherited plDetalheTroca: TPanel
            Top = 115
            Width = 880
            ExplicitTop = 115
            ExplicitWidth = 880
            inherited PlTotal: TPanel
              Left = 673
              ExplicitLeft = 673
            end
          end
          inherited listatroca: TDBGrid
            Width = 880
            Height = 115
          end
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
          Height = 497
          ExplicitWidth = 880
          ExplicitHeight = 497
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 347
          end
          inherited PnlRodapeGrid: TPanel
            Top = 347
            Width = 880
            Height = 150
            ExplicitTop = 347
            ExplicitWidth = 880
            ExplicitHeight = 150
            inherited plTituloItensDetalhe: TPanel
              Width = 878
              ExplicitWidth = 878
            end
            inherited listaitm: TDBGrid
              Width = 878
              Height = 128
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 1024
        inherited plid: TPanel
          Left = 574
          ExplicitLeft = 574
        end
        inherited PlSair: TPanel
          Left = 818
          ExplicitLeft = 818
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited Dsfi: TUniDataSource
      Left = 720
      Top = 396
    end
    inherited sfi: TUniQuery
      Left = 668
      Top = 392
    end
    inherited protroca: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
