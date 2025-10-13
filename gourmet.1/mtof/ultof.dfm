inherited ltof: Tltof
  Caption = 'Observa'#231#245'es das NFEs'
  ClientHeight = 605
  ClientWidth = 902
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 576
    Width = 902
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 748
    end
    inherited bcancela: TBitBtn
      Left = 823
    end
  end
  inline fratof: Tfratof
    Left = 0
    Top = 0
    Width = 902
    Height = 576
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 902
      Height = 576
      inherited SplBotoes: TSplitter
        Height = 542
      end
      inherited PlBotoes: TPanel
        Height = 542
        inherited ImageLogoBase: TImage
          Top = 463
        end
        inherited PlInfo: TPanel
          Top = 524
        end
        inherited SBBotoes: TScrollBox
          Height = 463
        end
      end
      inherited PlLista: TPanel
        Width = 750
        Height = 542
        inherited SplLista: TSplitter
          Top = 510
          Width = 748
        end
        inherited SpFilter: TSplitter
          Width = 748
        end
        inherited PlRodaPe: TPanel
          Top = 515
          Width = 748
        end
        inherited PlFiltros: TPanel
          Width = 748
        end
        inherited PlSelecao: TPanel
          Width = 748
          inherited GBPlSelecao: TGroupBox
            Width = 742
            inherited DBLista: TDBGrid
              Width = 635
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 748
          Height = 359
          inherited DBGLista: TDBGrid
            Width = 748
            Height = 334
          end
          inherited PnlRodapeGrid: TPanel
            Top = 334
            Width = 748
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 894
        inherited plid: TPanel
          Left = 556
        end
        inherited PlSair: TPanel
          Left = 772
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
