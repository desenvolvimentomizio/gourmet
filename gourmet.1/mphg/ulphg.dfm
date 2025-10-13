inherited lphg: Tlphg
  Caption = 'Hist'#243'ricos'
  ClientHeight = 476
  ClientWidth = 756
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 447
    Width = 756
    inherited bconfirma: TBitBtn
      Left = 602
    end
    inherited bcancela: TBitBtn
      Left = 677
    end
  end
  inline fraphg: Tfraphg
    Left = 0
    Top = 0
    Width = 756
    Height = 447
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 756
      Height = 447
      inherited SplBotoes: TSplitter
        Height = 413
      end
      inherited PlBotoes: TPanel
        Height = 413
        inherited ImageLogoBase: TImage
          Top = 334
        end
        inherited PlInfo: TPanel
          Top = 395
        end
        inherited SBBotoes: TScrollBox
          Height = 334
        end
      end
      inherited PlLista: TPanel
        Width = 604
        Height = 413
        inherited SplLista: TSplitter
          Top = 381
          Width = 602
        end
        inherited SpFilter: TSplitter
          Width = 602
        end
        inherited PlRodaPe: TPanel
          Top = 386
          Width = 602
        end
        inherited PlFiltros: TPanel
          Width = 602
        end
        inherited PlSelecao: TPanel
          Width = 602
          inherited GBPlSelecao: TGroupBox
            Width = 596
            inherited DBLista: TDBGrid
              Width = 489
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 602
          Height = 230
          inherited DBGLista: TDBGrid
            Width = 602
            Height = 205
          end
          inherited PnlRodapeGrid: TPanel
            Top = 205
            Width = 602
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 748
        inherited plid: TPanel
          Left = 386
        end
        inherited PlSair: TPanel
          Left = 604
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
