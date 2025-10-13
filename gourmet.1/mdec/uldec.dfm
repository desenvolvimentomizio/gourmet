inherited ldec: Tldec
  Caption = 'Natureza'
  ClientHeight = 374
  ClientWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 345
    Width = 713
    inherited bconfirma: TBitBtn
      Left = 559
    end
    inherited bcancela: TBitBtn
      Left = 634
    end
  end
  inline fradec: Tfradec
    Left = 0
    Top = 0
    Width = 713
    Height = 345
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 713
      Height = 345
      inherited SplBotoes: TSplitter
        Height = 311
      end
      inherited PlBotoes: TPanel
        Height = 311
        inherited ImageLogoBase: TImage
          Top = 232
        end
        inherited PlInfo: TPanel
          Top = 293
        end
        inherited SBBotoes: TScrollBox
          Height = 232
        end
      end
      inherited PlLista: TPanel
        Width = 561
        Height = 311
        inherited SplLista: TSplitter
          Top = 279
          Width = 559
        end
        inherited SpFilter: TSplitter
          Width = 559
        end
        inherited PlRodaPe: TPanel
          Top = 284
          Width = 559
        end
        inherited PlFiltros: TPanel
          Width = 559
        end
        inherited PlSelecao: TPanel
          Width = 559
          inherited GBPlSelecao: TGroupBox
            Width = 553
            inherited DBLista: TDBGrid
              Width = 446
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 559
          Height = 128
          inherited DBGLista: TDBGrid
            Width = 559
            Height = 103
          end
          inherited PnlRodapeGrid: TPanel
            Top = 103
            Width = 559
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 705
        inherited plid: TPanel
          Left = 343
        end
        inherited PlSair: TPanel
          Left = 561
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
