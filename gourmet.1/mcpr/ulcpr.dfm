inherited lcpr: Tlcpr
  Caption = 'Entradas'
  ClientHeight = 649
  ClientWidth = 1006
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 620
    Width = 1006
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 852
    end
    inherited bcancela: TBitBtn
      Left = 927
    end
  end
  inline fracpr: Tfracpr
    Left = 0
    Top = 0
    Width = 1006
    Height = 620
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1006
      Height = 620
      inherited SplBotoes: TSplitter
        Height = 594
      end
      inherited PlBotoes: TPanel
        Height = 594
        inherited ImageLogoBase: TImage
          Top = 515
        end
        inherited PlInfo: TPanel
          Top = 576
        end
        inherited SBBotoes: TScrollBox
          Height = 515
        end
      end
      inherited PlLista: TPanel
        Width = 862
        Height = 594
        inherited SplLista: TSplitter
          Top = 334
          Width = 862
          Height = 3
        end
        inherited SpFilter: TSplitter
          Width = 862
        end
        inherited PlRodaPe: TPanel
          Top = 337
          Width = 862
          inherited PlResumoItens: TPanel
            Width = 862
          end
          inherited listaitm: TDBGrid
            Width = 862
          end
        end
        inherited PlFiltros: TPanel
          Width = 862
        end
        inherited PlSelecao: TPanel
          Width = 862
          inherited GBPlSelecao: TGroupBox
            Width = 858
            inherited DBLista: TDBGrid
              Width = 751
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 862
          Height = 205
          inherited DBGLista: TDBGrid
            Width = 862
            Height = 177
          end
          inherited PnlRodapeGrid: TPanel
            Top = 177
            Width = 862
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1006
        inherited plid: TPanel
          Left = 626
        end
        inherited PlSair: TPanel
          Left = 845
        end
      end
    end
    inherited acoes: TActionList
      inherited ActConfiguracoes: TAction [8]
      end
      inherited ActSair: TAction [9]
      end
      inherited ActVerFiltros: TAction [11]
      end
      inherited ActRelatorios: TAction [12]
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
