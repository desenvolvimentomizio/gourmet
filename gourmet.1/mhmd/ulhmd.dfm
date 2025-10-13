inherited lhmd: Tlhmd
  Caption = 'Hist'#243'rias dos M'#243'dulos'
  ClientWidth = 1130
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1130
    inherited bconfirma: TBitBtn
      Left = 976
    end
    inherited bcancela: TBitBtn
      Left = 1051
    end
  end
  inline frahmd: Tfrahmd
    Left = 0
    Top = 0
    Width = 1130
    Height = 640
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1130
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
        Width = 978
        Height = 606
        inherited SplLista: TSplitter
          Top = 492
          Width = 976
        end
        inherited SpFilter: TSplitter
          Width = 976
        end
        inherited PlRodaPe: TPanel
          Top = 497
          Width = 976
          inherited hmddescricao: TDBMemo
            Width = 333
          end
          inherited GroupBox1: TGroupBox
            Left = 333
            Width = 643
            inherited DBGHistorico: TDBGrid
              Width = 639
            end
          end
        end
        inherited PlFiltros: TPanel
          Width = 976
        end
        inherited PlSelecao: TPanel
          Width = 976
          inherited GBPlSelecao: TGroupBox
            Width = 970
            inherited DBLista: TDBGrid
              Width = 863
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 976
          Height = 341
          inherited DBGLista: TDBGrid
            Width = 976
            Height = 321
          end
          inherited PnlRodapeGrid: TPanel
            Top = 321
            Width = 976
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1122
        inherited plid: TPanel
          Left = 760
        end
        inherited PlSair: TPanel
          Left = 940
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
