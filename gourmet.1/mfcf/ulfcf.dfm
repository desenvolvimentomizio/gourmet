inherited lfcf: Tlfcf
  Caption = 'Fun'#231#245'es'
  ClientHeight = 511
  ClientWidth = 863
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 482
    Width = 863
    inherited bconfirma: TBitBtn
      Left = 709
    end
    inherited bcancela: TBitBtn
      Left = 784
    end
  end
  inline frafcf: Tfrafcf
    Left = 0
    Top = 0
    Width = 863
    Height = 482
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 863
      Height = 482
      inherited SplBotoes: TSplitter
        Height = 448
      end
      inherited PlBotoes: TPanel
        Height = 448
        inherited ImageLogoBase: TImage
          Top = 369
        end
        inherited PlInfo: TPanel
          Top = 430
        end
        inherited SBBotoes: TScrollBox
          Height = 369
        end
      end
      inherited PlLista: TPanel
        Width = 711
        Height = 448
        inherited SplLista: TSplitter
          Top = 416
          Width = 709
        end
        inherited SpFilter: TSplitter
          Width = 709
        end
        inherited PlRodaPe: TPanel
          Top = 421
          Width = 709
        end
        inherited PlFiltros: TPanel
          Width = 709
        end
        inherited PlSelecao: TPanel
          Width = 709
          inherited GBPlSelecao: TGroupBox
            Width = 703
            inherited DBLista: TDBGrid
              Width = 596
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 709
          Height = 265
          inherited DBGLista: TDBGrid
            Width = 709
            Height = 240
          end
          inherited PnlRodapeGrid: TPanel
            Top = 240
            Width = 709
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 855
        inherited plid: TPanel
          Left = 493
        end
        inherited PlSair: TPanel
          Left = 673
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
