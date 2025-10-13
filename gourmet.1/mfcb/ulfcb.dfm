inherited lfcb: Tlfcb
  Caption = 'Vincula'#231#227'o do Colaborador a Filial'
  ClientHeight = 476
  ClientWidth = 905
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 447
    Width = 905
    inherited bconfirma: TBitBtn
      Left = 751
    end
    inherited bcancela: TBitBtn
      Left = 826
    end
  end
  inline frafcb: Tfrafcb
    Left = 0
    Top = 0
    Width = 905
    Height = 447
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 905
      Height = 447
      inherited SplBotoes: TSplitter
        Height = 421
      end
      inherited PlBotoes: TPanel
        Height = 421
        inherited ImageLogoBase: TImage
          Top = 342
        end
        inherited PlInfo: TPanel
          Top = 403
        end
        inherited SBBotoes: TScrollBox
          Height = 342
        end
      end
      inherited PlLista: TPanel
        Width = 761
        Height = 421
        inherited SplLista: TSplitter
          Top = 390
          Width = 761
        end
        inherited SpFilter: TSplitter
          Width = 761
        end
        inherited PlRodaPe: TPanel
          Top = 395
          Width = 761
        end
        inherited PlFiltros: TPanel
          Width = 761
        end
        inherited PlSelecao: TPanel
          Width = 761
          inherited GBPlSelecao: TGroupBox
            Width = 757
            inherited DBLista: TDBGrid
              Width = 650
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 761
          Height = 261
          inherited DBGLista: TDBGrid
            Width = 761
            Height = 236
          end
          inherited PnlRodapeGrid: TPanel
            Top = 236
            Width = 761
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 905
        inherited plid: TPanel
          Left = 551
        end
        inherited PlSair: TPanel
          Left = 743
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
