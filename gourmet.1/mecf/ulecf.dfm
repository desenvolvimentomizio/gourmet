inherited lecf: Tlecf
  Caption = 'Impressoras Fiscais'
  ClientWidth = 1025
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1025
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 871
    end
    inherited bcancela: TBitBtn
      Left = 946
    end
  end
  inline fraecf: Tfraecf
    Left = 0
    Top = 0
    Width = 1025
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1025
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
        Width = 873
        Height = 606
        inherited SplLista: TSplitter
          Top = 574
          Width = 871
        end
        inherited SpFilter: TSplitter
          Width = 871
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 871
        end
        inherited PlFiltros: TPanel
          Width = 871
        end
        inherited PlSelecao: TPanel
          Width = 871
          inherited GBPlSelecao: TGroupBox
            Width = 865
            inherited DBLista: TDBGrid
              Width = 758
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 871
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 871
            Height = 398
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 871
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1017
        inherited plid: TPanel
          Left = 615
          Caption = '03.08.19.001-03'
        end
        inherited PlSair: TPanel
          Left = 835
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
