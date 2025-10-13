inherited lmdv: Tlmdv
  Caption = 'Vers'#245'es de M'#243'dulos'
  ClientHeight = 642
  ClientWidth = 1049
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 613
    Width = 1049
    inherited bconfirma: TBitBtn
      Left = 895
    end
    inherited bcancela: TBitBtn
      Left = 970
    end
  end
  inline framdv: Tframdv
    Left = 0
    Top = 0
    Width = 1049
    Height = 613
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1049
      Height = 613
      inherited SplBotoes: TSplitter
        Height = 579
      end
      inherited PlBotoes: TPanel
        Height = 579
        inherited ImageLogoBase: TImage
          Top = 500
        end
        inherited PlInfo: TPanel
          Top = 561
        end
        inherited SBBotoes: TScrollBox
          Height = 500
        end
      end
      inherited PlLista: TPanel
        Width = 897
        Height = 579
        inherited SplLista: TSplitter
          Top = 547
          Width = 895
        end
        inherited SpFilter: TSplitter
          Width = 895
        end
        inherited PlRodaPe: TPanel
          Top = 552
          Width = 895
        end
        inherited PlFiltros: TPanel
          Width = 895
        end
        inherited PlSelecao: TPanel
          Width = 895
          inherited GBPlSelecao: TGroupBox
            Width = 889
            inherited DBLista: TDBGrid
              Width = 782
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 895
          Height = 396
          inherited DBGLista: TDBGrid
            Width = 895
            Height = 371
          end
          inherited PnlRodapeGrid: TPanel
            Top = 371
            Width = 895
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1041
        inherited plid: TPanel
          Left = 679
        end
        inherited PlSair: TPanel
          Left = 859
        end
      end
    end
    inherited vcls: TVirtualTable
      Left = 612
      Top = 132
      Data = {03000000000000000000}
    end
  end
end
