inherited lmdc: Tlmdc
  Caption = 'A'#237'neas de Devolu'#231#227'o de Cheques'
  ClientHeight = 552
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 523
  end
  inline framdc: Tframdc
    Left = 0
    Top = 0
    Width = 1024
    Height = 523
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1024
      Height = 523
      inherited SplBotoes: TSplitter
        Height = 489
      end
      inherited PlBotoes: TPanel
        Height = 489
        inherited ImageLogoBase: TImage
          Top = 410
        end
        inherited PlInfo: TPanel
          Top = 471
        end
        inherited SBBotoes: TScrollBox
          Height = 410
        end
      end
      inherited PlLista: TPanel
        Width = 872
        Height = 489
        inherited SplLista: TSplitter
          Top = 457
          Width = 870
        end
        inherited SpFilter: TSplitter
          Width = 870
        end
        inherited PlRodaPe: TPanel
          Top = 462
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
          Height = 306
          inherited DBGLista: TDBGrid
            Width = 870
            Height = 281
          end
          inherited PnlRodapeGrid: TPanel
            Top = 281
            Width = 870
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1016
        inherited plid: TPanel
          Left = 690
        end
        inherited PlSair: TPanel
          Left = 910
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
