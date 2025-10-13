inherited lcsv: Tlcsv
  Caption = 'Contas de Consumo'
  ClientHeight = 574
  ClientWidth = 914
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 545
    Width = 914
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 760
    end
    inherited bcancela: TBitBtn
      Left = 835
    end
  end
  inline fracsv: Tfracsv
    Left = 0
    Top = 0
    Width = 914
    Height = 545
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 914
      Height = 545
      inherited SplBotoes: TSplitter
        Height = 511
      end
      inherited PlBotoes: TPanel
        Height = 511
        inherited ImageLogoBase: TImage
          Top = 432
        end
        inherited PlInfo: TPanel
          Top = 493
        end
        inherited SBBotoes: TScrollBox
          Height = 432
        end
      end
      inherited PlLista: TPanel
        Width = 762
        Height = 511
        inherited SplLista: TSplitter
          Top = 479
          Width = 760
        end
        inherited SpFilter: TSplitter
          Width = 760
        end
        inherited PlRodaPe: TPanel
          Top = 484
          Width = 760
        end
        inherited PlFiltros: TPanel
          Width = 760
        end
        inherited PlSelecao: TPanel
          Width = 760
          inherited GBPlSelecao: TGroupBox
            Width = 754
            inherited DBLista: TDBGrid
              Width = 647
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 760
          Height = 328
          inherited DBGLista: TDBGrid
            Width = 760
            Height = 303
          end
          inherited PnlRodapeGrid: TPanel
            Top = 303
            Width = 760
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 906
        inherited plid: TPanel
          Left = 504
        end
        inherited PlSair: TPanel
          Left = 724
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
