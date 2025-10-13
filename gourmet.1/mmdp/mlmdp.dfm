inherited lmdp: Tlmdp
  Caption = 'M'#243'dulos'
  ClientWidth = 1105
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1105
    inherited bconfirma: TBitBtn
      Left = 951
    end
    inherited bcancela: TBitBtn
      Left = 1026
    end
  end
  inline framdp: Tframdp
    Left = 0
    Top = 0
    Width = 1105
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1105
      Height = 632
      inherited SplBotoes: TSplitter
        Height = 598
      end
      inherited PlBotoes: TPanel
        Height = 598
        inherited ImageLogoBase: TImage
          Top = 519
        end
        inherited PlInfo: TPanel
          Top = 580
        end
        inherited SBBotoes: TScrollBox
          Height = 519
        end
      end
      inherited PlLista: TPanel
        Width = 953
        Height = 598
        inherited SplLista: TSplitter
          Top = 513
          Width = 951
        end
        inherited SpFilter: TSplitter
          Width = 951
        end
        inherited PlRodaPe: TPanel
          Top = 518
          Width = 951
          inherited mdpdescricao: TDBMemo
            Width = 951
          end
        end
        inherited PlFiltros: TPanel
          Width = 951
        end
        inherited PlSelecao: TPanel
          Width = 951
          inherited GBPlSelecao: TGroupBox
            Width = 945
            inherited DBLista: TDBGrid
              Width = 838
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 951
          Height = 362
          inherited DBGLista: TDBGrid
            Width = 951
            Height = 337
          end
          inherited PnlRodapeGrid: TPanel
            Top = 337
            Width = 951
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1097
        inherited plid: TPanel
          Left = 759
        end
        inherited PlSair: TPanel
          Left = 975
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
    inherited MenuRelatorios: TPopupMenu
      Left = 514
      Top = 340
    end
  end
end
