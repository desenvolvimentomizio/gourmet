inherited lmit: Tlmit
  Caption = 'Impressoras'
  ClientHeight = 414
  ClientWidth = 757
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 385
    Width = 757
    inherited bconfirma: TBitBtn
      Left = 603
    end
    inherited bcancela: TBitBtn
      Left = 678
    end
  end
  inline framit: Tframit
    Left = 0
    Top = 0
    Width = 757
    Height = 385
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 757
      Height = 385
      inherited SplBotoes: TSplitter
        Height = 351
      end
      inherited PlBotoes: TPanel
        Height = 351
        inherited ImageLogoBase: TImage
          Top = 272
        end
        inherited PlInfo: TPanel
          Top = 333
        end
        inherited SBBotoes: TScrollBox
          Height = 272
        end
      end
      inherited PlLista: TPanel
        Width = 605
        Height = 351
        inherited SplLista: TSplitter
          Top = 319
          Width = 603
        end
        inherited SpFilter: TSplitter
          Width = 603
        end
        inherited PlRodaPe: TPanel
          Top = 324
          Width = 603
        end
        inherited PlFiltros: TPanel
          Width = 603
        end
        inherited PlSelecao: TPanel
          Width = 603
          inherited GBPlSelecao: TGroupBox
            Width = 597
            inherited DBLista: TDBGrid
              Width = 490
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 603
          Height = 168
          inherited DBGLista: TDBGrid
            Width = 603
            Height = 143
          end
          inherited PnlRodapeGrid: TPanel
            Top = 143
            Width = 603
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 749
        inherited plid: TPanel
          Left = 347
        end
        inherited PlSair: TPanel
          Left = 567
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
