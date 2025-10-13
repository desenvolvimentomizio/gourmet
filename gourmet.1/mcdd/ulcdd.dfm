inherited lcdd: Tlcdd
  Caption = 'Cidades'
  ClientHeight = 340
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 311
  end
  inline fracdd: Tfracdd
    Left = 0
    Top = 0
    Width = 1024
    Height = 311
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1024
      Height = 311
      inherited SplBotoes: TSplitter
        Height = 277
      end
      inherited PlBotoes: TPanel
        Height = 277
        inherited ImageLogoBase: TImage
          Top = 198
        end
        inherited PlInfo: TPanel
          Top = 259
        end
        inherited SBBotoes: TScrollBox
          Height = 198
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 277
        inherited SplLista: TSplitter
          Top = 245
          Width = 878
        end
        inherited SpFilter: TSplitter
          Width = 878
        end
        inherited PlRodaPe: TPanel
          Top = 250
          Width = 878
        end
        inherited PlFiltros: TPanel
          Width = 878
        end
        inherited PlSelecao: TPanel
          Width = 878
          inherited GBPlSelecao: TGroupBox
            Width = 872
            inherited DBLista: TDBGrid
              Width = 765
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 878
          Height = 94
          inherited DBGLista: TDBGrid
            Width = 878
            Height = 69
          end
          inherited PnlRodapeGrid: TPanel
            Top = 69
            Width = 878
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 622
          Caption = '06-01-000'
        end
        inherited PlSair: TPanel
          Left = 842
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
