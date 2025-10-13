inherited lclc: Tlclc
  Caption = 'Classes de Consumo'
  ClientWidth = 726
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 726
    inherited bconfirma: TBitBtn
      Left = 572
    end
    inherited bcancela: TBitBtn
      Left = 647
    end
  end
  inline fraclc: Tfraclc
    Left = 0
    Top = 0
    Width = 726
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 726
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
        Width = 582
        Height = 606
        inherited SplLista: TSplitter
          Top = 575
          Width = 582
        end
        inherited SpFilter: TSplitter
          Width = 582
        end
        inherited PlRodaPe: TPanel
          Top = 580
          Width = 582
        end
        inherited PlFiltros: TPanel
          Width = 582
        end
        inherited PlSelecao: TPanel
          Width = 582
          inherited GBPlSelecao: TGroupBox
            Width = 578
            inherited DBLista: TDBGrid
              Width = 471
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 582
          Height = 446
          inherited DBGLista: TDBGrid
            Width = 582
            Height = 421
          end
          inherited PnlRodapeGrid: TPanel
            Top = 421
            Width = 582
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 726
        inherited plid: TPanel
          Left = 375
          Caption = '06-02-001'
        end
        inherited PlSair: TPanel
          Left = 565
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
