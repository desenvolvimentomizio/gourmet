inherited lctp: Tlctp
  Caption = 'Teclas'
  ClientWidth = 1022
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1022
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 868
    end
    inherited bcancela: TBitBtn
      Left = 943
    end
  end
  inline fractp: Tfractp
    Left = 0
    Top = 0
    Width = 1022
    Height = 640
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1022
      Height = 640
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
        Width = 870
        Height = 606
        inherited SplLista: TSplitter
          Top = 574
          Width = 868
        end
        inherited SpFilter: TSplitter
          Width = 868
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 868
        end
        inherited PlFiltros: TPanel
          Width = 868
        end
        inherited PlSelecao: TPanel
          Width = 868
          inherited GBPlSelecao: TGroupBox
            Width = 862
            inherited DBLista: TDBGrid
              Width = 755
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 868
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 868
            Height = 398
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 868
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1014
        inherited plid: TPanel
          Left = 612
        end
        inherited PlSair: TPanel
          Left = 832
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
