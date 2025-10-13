inherited lccg: Tlccg
  Caption = 'Classifica'#231#227'o Financeira'
  ClientWidth = 1079
  ExplicitWidth = 1095
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1079
    ExplicitWidth = 1079
    inherited bconfirma: TBitBtn
      Left = 925
      ExplicitLeft = 925
    end
    inherited bcancela: TBitBtn
      Left = 1000
      ExplicitLeft = 1000
    end
  end
  inline fraccg: Tfraccg
    Left = 0
    Top = 0
    Width = 1079
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1079
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 1079
      Height = 632
      ExplicitWidth = 1079
      ExplicitHeight = 632
      inherited SplBotoes: TSplitter
        Height = 612
        ExplicitHeight = 606
      end
      inherited PlBotoes: TPanel
        Height = 612
        ExplicitHeight = 612
        inherited ImageLogoBase: TImage
          Top = 533
          ExplicitTop = 527
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
        Width = 935
        Height = 612
        ExplicitWidth = 935
        ExplicitHeight = 612
        inherited SplLista: TSplitter
          Top = 581
          Width = 935
          ExplicitTop = 575
          ExplicitWidth = 935
        end
        inherited SpFilter: TSplitter
          Width = 935
          ExplicitWidth = 935
        end
        inherited PlRodaPe: TPanel
          Top = 586
          Width = 935
          ExplicitTop = 586
          ExplicitWidth = 935
        end
        inherited PlFiltros: TPanel
          Width = 935
          ExplicitWidth = 935
        end
        inherited PlSelecao: TPanel
          Width = 935
          ExplicitWidth = 935
          inherited GBPlSelecao: TGroupBox
            Width = 931
            ExplicitWidth = 931
            inherited DBLista: TDBGrid
              Width = 824
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 935
          Height = 452
          ExplicitWidth = 935
          ExplicitHeight = 452
          inherited Splitter1: TSplitter
            Height = 427
            ExplicitHeight = 421
          end
          inherited DBGLista: TDBGrid
            Width = 930
            Height = 427
          end
          inherited PnlRodapeGrid: TPanel
            Top = 427
            Width = 935
            ExplicitTop = 427
            ExplicitWidth = 935
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1079
        ExplicitWidth = 1079
        inherited plid: TPanel
          Left = 629
          ExplicitLeft = 629
        end
        inherited PlSair: TPanel
          Left = 873
          ExplicitLeft = 873
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
