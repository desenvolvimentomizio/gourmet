inherited lcst: Tlcst
  Caption = 'Situa'#231#227'o Tribut'#225'ria'
  ClientWidth = 969
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 969
    inherited bconfirma: TBitBtn
      Left = 815
    end
    inherited bcancela: TBitBtn
      Left = 890
    end
  end
  inline fracst: Tfracst
    Left = 0
    Top = 0
    Width = 969
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 969
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
        Width = 817
        Height = 606
        inherited SplLista: TSplitter
          Top = 574
          Width = 815
        end
        inherited SpFilter: TSplitter
          Width = 815
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 815
        end
        inherited PlFiltros: TPanel
          Width = 815
        end
        inherited PlSelecao: TPanel
          Width = 815
          inherited GBPlSelecao: TGroupBox
            Width = 809
            inherited DBLista: TDBGrid
              Width = 702
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 815
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 815
            Height = 398
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 815
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 961
        inherited plid: TPanel
          Left = 559
          Caption = '04-17-000'
        end
        inherited PlSair: TPanel
          Left = 779
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
