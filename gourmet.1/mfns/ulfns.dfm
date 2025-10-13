inherited lfns: Tlfns
  Caption = 'Fun'#231#245'es do M'#243'dulo'
  ClientWidth = 1115
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1115
    inherited bconfirma: TBitBtn
      Left = 961
    end
    inherited bcancela: TBitBtn
      Left = 1036
    end
  end
  inline frafns: Tfrafns
    Left = 0
    Top = 0
    Width = 1115
    Height = 640
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1115
      Height = 640
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
        Width = 963
        Height = 606
        inherited SplLista: TSplitter
          Top = 574
          Width = 961
        end
        inherited SpFilter: TSplitter
          Width = 961
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 961
        end
        inherited PlFiltros: TPanel
          Width = 961
        end
        inherited PlSelecao: TPanel
          Width = 961
          inherited GBPlSelecao: TGroupBox
            Width = 955
            inherited DBLista: TDBGrid
              Width = 848
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 961
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 961
            Height = 398
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 961
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1107
        inherited plid: TPanel
          Left = 745
        end
        inherited PlSair: TPanel
          Left = 925
        end
      end
    end
    inherited uqtabela: tuniquery
      Left = 296
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
