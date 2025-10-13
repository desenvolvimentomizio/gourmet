inherited ledr: Tledr
  Caption = 'Endere'#231'os'
  ClientHeight = 589
  ExplicitHeight = 628
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 560
    ExplicitTop = 560
  end
  inline fraedr: Tfraedr
    Left = 0
    Top = 0
    Width = 1024
    Height = 560
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 560
    inherited PlGeral: TPanel
      Width = 1024
      Height = 560
      ExplicitWidth = 1024
      ExplicitHeight = 560
      inherited SplBotoes: TSplitter
        Height = 540
        ExplicitHeight = 534
      end
      inherited PlBotoes: TPanel
        Height = 540
        ExplicitHeight = 540
        inherited ImageLogoBase: TImage
          Top = 461
          ExplicitTop = 455
        end
        inherited PlInfo: TPanel
          Top = 522
          ExplicitTop = 522
        end
        inherited SBBotoes: TScrollBox
          Height = 461
          ExplicitHeight = 461
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 540
        ExplicitWidth = 880
        ExplicitHeight = 540
        inherited SplLista: TSplitter
          Top = 509
          Width = 880
          ExplicitTop = 503
          ExplicitWidth = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlRodaPe: TPanel
          Top = 514
          Width = 880
          ExplicitTop = 514
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
          Height = 380
          ExplicitWidth = 880
          ExplicitHeight = 380
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 355
          end
          inherited PnlRodapeGrid: TPanel
            Top = 355
            Width = 880
            ExplicitTop = 355
            ExplicitWidth = 880
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 1024
        inherited plid: TPanel
          Left = 574
          Caption = '09-01-001'
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
  end
end
