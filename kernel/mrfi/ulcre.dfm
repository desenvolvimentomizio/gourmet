inherited lrfi1: Tlrfi1
  Caption = 'lrfi1'
  PixelsPerInch = 96
  TextHeight = 13
  inherited frarfi: Tfrarfi
    inherited PlGeral: TPanel
      inherited SplBotoes: TSplitter
      end
      inherited PlBotoes: TPanel
        inherited ImageLogoBase: TImage
        end
        inherited PlInfo: TPanel
        end
        inherited SBBotoes: TScrollBox
        end
      end
      inherited PlLista: TPanel
        inherited SplLista: TSplitter
        end
        inherited SpFilter: TSplitter
        end
        inherited PlRodaPe: TPanel
        end
        inherited PlFiltros: TPanel
        end
        inherited PlSelecao: TPanel
          inherited GBPlSelecao: TGroupBox
          end
        end
        inherited PnlGrid: TPanel
          inherited PnlRodapeGrid: TPanel
          end
        end
      end
      inherited PlTitulo: TPanel
        inherited plid: TPanel
        end
        inherited PlSair: TPanel
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
