inherited lpcb: Tlpcb
  Caption = 'Contabiliza'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inline frapcb: Tfrapcb
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
            Height = 407
          end
          inherited PnlRodapeGrid: TPanel
            Top = 407
            Width = 880
            ExplicitTop = 375
            inherited GroupBox2: TGroupBox
              Left = 619
              ExplicitLeft = 773
            end
            inherited GroupBox3: TGroupBox
              Left = 489
              ExplicitLeft = 643
            end
            inherited GroupBox7: TGroupBox
              Left = 749
              ExplicitLeft = 903
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 644
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
