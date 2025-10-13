inherited lccu: Tlccu
  Caption = 'Centro de Custo'
  ClientWidth = 1053
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1053
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 899
    end
    inherited bcancela: TBitBtn
      Left = 974
    end
  end
  inline fraccu: Tfraccu
    Left = 0
    Top = 0
    Width = 1053
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1053
      Height = 632
      inherited SplBotoes: TSplitter
        Height = 606
      end
      inherited PlBotoes: TPanel
        Height = 606
        inherited ImageLogoBase: TImage
          Top = 527
        end
        inherited PlInfo: TPanel
          Top = 588
        end
        inherited SBBotoes: TScrollBox
          Height = 527
        end
      end
      inherited PlLista: TPanel
        Width = 901
        Height = 606
        inherited SplLista: TSplitter
          Top = 574
          Width = 899
        end
        inherited SpFilter: TSplitter
          Width = 899
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 899
        end
        inherited PlFiltros: TPanel
          Width = 899
        end
        inherited PlSelecao: TPanel
          Width = 899
          inherited GBPlSelecao: TGroupBox
            Width = 893
            inherited DBLista: TDBGrid
              Width = 786
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 899
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 899
            Height = 398
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 899
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1045
        inherited plid: TPanel
          Left = 643
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
