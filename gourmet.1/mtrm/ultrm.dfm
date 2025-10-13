inherited ltrm: Tltrm
  Caption = 'Terminais'
  ClientWidth = 1015
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1015
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 861
    end
    inherited bcancela: TBitBtn
      Left = 936
    end
  end
  inline fratrm: Tfratrm
    Left = 0
    Top = 0
    Width = 1015
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1015
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
        Width = 863
        Height = 606
        inherited SplLista: TSplitter
          Top = 574
          Width = 861
        end
        inherited SpFilter: TSplitter
          Width = 861
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 861
        end
        inherited PlFiltros: TPanel
          Width = 861
        end
        inherited PlSelecao: TPanel
          Width = 861
          inherited GBPlSelecao: TGroupBox
            Width = 855
            inherited DBLista: TDBGrid
              Width = 748
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 861
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 861
            Height = 398
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 861
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1007
        inherited plid: TPanel
          Left = 605
          Caption = '02.03.81.001-03'
        end
        inherited PlSair: TPanel
          Left = 825
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
