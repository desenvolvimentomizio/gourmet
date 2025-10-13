inherited laje: Tlaje
  Caption = 'Ajustes de Estoque'
  PixelsPerInch = 96
  TextHeight = 13
  inline fraaje: Tfraaje
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
          Top = 349
          Width = 870
        end
        inherited SpFilter: TSplitter
          Width = 870
        end
        inherited PlRodaPe: TPanel
          Top = 354
          Width = 870
          inherited listaitm: TDBGrid
            Width = 870
          end
          inherited PlResumoItens: TPanel
            Width = 870
          end
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
          Height = 198
          inherited DBGLista: TDBGrid
            Width = 870
            Height = 173
          end
          inherited PnlRodapeGrid: TPanel
            Top = 173
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
