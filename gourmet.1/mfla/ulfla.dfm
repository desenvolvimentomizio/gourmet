inherited lfla: Tlfla
  Caption = 'Filiais'
  ClientHeight = 416
  ClientWidth = 686
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 387
    Width = 686
    inherited bconfirma: TBitBtn
      Left = 532
    end
    inherited bcancela: TBitBtn
      Left = 607
    end
  end
  inline frafla: Tfrafla
    Left = 0
    Top = 0
    Width = 686
    Height = 387
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 686
      Height = 387
      inherited SplBotoes: TSplitter
        Height = 361
      end
      inherited PlBotoes: TPanel
        Height = 361
        inherited ImageLogoBase: TImage
          Top = 282
        end
        inherited PlInfo: TPanel
          Top = 343
        end
        inherited SBBotoes: TScrollBox
          Height = 282
        end
      end
      inherited PlLista: TPanel
        Width = 542
        Height = 361
        inherited SplLista: TSplitter
          Top = 330
          Width = 542
        end
        inherited SpFilter: TSplitter
          Width = 542
        end
        inherited PlRodaPe: TPanel
          Top = 335
          Width = 542
        end
        inherited PlFiltros: TPanel
          Width = 542
        end
        inherited PlSelecao: TPanel
          Width = 542
          inherited GBPlSelecao: TGroupBox
            Width = 538
            inherited DBLista: TDBGrid
              Width = 431
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 542
          Height = 201
          inherited DBGLista: TDBGrid
            Width = 542
            Height = 176
          end
          inherited PnlRodapeGrid: TPanel
            Top = 176
            Width = 542
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 686
        inherited plid: TPanel
          Left = 335
        end
        inherited PlSair: TPanel
          Left = 525
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
