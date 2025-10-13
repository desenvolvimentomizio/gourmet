inherited lcgg: Tlcgg
  Caption = 'Grupo de Contas Cont'#225'beis'
  ClientHeight = 675
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 646
  end
  inline fracgg: Tfracgg
    Left = 0
    Top = 0
    Width = 1024
    Height = 646
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1024
      Height = 646
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
        Width = 872
        Height = 612
        inherited SplLista: TSplitter
          Top = 580
          Width = 870
        end
        inherited SpFilter: TSplitter
          Width = 870
        end
        inherited PlRodaPe: TPanel
          Top = 585
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
          Height = 429
          inherited DBGLista: TDBGrid
            Width = 870
            Height = 404
          end
          inherited PnlRodapeGrid: TPanel
            Top = 404
            Width = 870
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1016
        inherited plid: TPanel
          Left = 678
        end
        inherited PlSair: TPanel
          Left = 894
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
