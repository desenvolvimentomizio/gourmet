inherited ltrs: Tltrs
  Caption = 'Transportadores'
  ClientWidth = 1040
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1040
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 886
    end
    inherited bcancela: TBitBtn
      Left = 961
    end
  end
  inline fratrs: Tfratrs
    Left = 0
    Top = 0
    Width = 1040
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1040
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
        Width = 888
        Height = 598
        inherited SplLista: TSplitter
          Top = 566
          Width = 886
        end
        inherited SpFilter: TSplitter
          Width = 886
        end
        inherited PlRodaPe: TPanel
          Top = 571
          Width = 886
        end
        inherited PlFiltros: TPanel
          Width = 886
        end
        inherited PlSelecao: TPanel
          Width = 886
          inherited GBPlSelecao: TGroupBox
            Width = 880
            inherited DBLista: TDBGrid
              Width = 773
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 886
          Height = 415
          inherited DBGLista: TDBGrid
            Width = 886
            Height = 390
          end
          inherited PnlRodapeGrid: TPanel
            Top = 390
            Width = 886
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1032
        inherited plid: TPanel
          Left = 630
        end
        inherited PlSair: TPanel
          Left = 850
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
