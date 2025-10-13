inherited lmnc: Tlmnc
  Caption = 'lmnc'
  PixelsPerInch = 96
  TextHeight = 13
  inline framnc: Tframnc
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      ExplicitWidth = 1024
      ExplicitHeight = 632
      inherited SplBotoes: TSplitter
        Height = 612
        ExplicitHeight = 598
      end
      inherited PlBotoes: TPanel
        Height = 612
        ExplicitHeight = 612
        inherited ImageLogoBase: TImage
          Top = 533
          ExplicitTop = 519
        end
        inherited PlInfo: TPanel
          Top = 594
          ExplicitTop = 594
        end
        inherited SBBotoes: TScrollBox
          Height = 533
          ExplicitHeight = 533
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 612
        ExplicitWidth = 880
        ExplicitHeight = 612
        inherited SplLista: TSplitter
          Top = 428
          Width = 880
          ExplicitTop = 453
          ExplicitWidth = 870
        end
        inherited SpFilter: TSplitter
          Width = 880
          ExplicitWidth = 870
        end
        inherited PlRodaPe: TPanel
          Top = 433
          Width = 880
          ExplicitTop = 433
          ExplicitWidth = 880
          inherited PlRodapeItens: TPanel
            Width = 880
            ExplicitWidth = 880
          end
          inherited listaitm: TDBGrid
            Width = 505
          end
          inherited pdetalhe: TPanel
            Left = 505
            ExplicitLeft = 505
          end
        end
        inherited PlFiltros: TPanel
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlSelecao: TPanel
          Width = 880
          ExplicitWidth = 880
          inherited GBPlSelecao: TGroupBox
            Width = 876
            ExplicitWidth = 876
            inherited DBLista: TDBGrid
              Width = 769
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 880
          Height = 299
          ExplicitWidth = 880
          ExplicitHeight = 299
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 273
          end
          inherited PnlRodapeGrid: TPanel
            Top = 273
            Width = 880
            ExplicitTop = 273
            ExplicitWidth = 880
            inherited Pnl1: TPanel
              Width = 878
              ExplicitWidth = 878
              inherited Pltotalnfesaidas: TPanel
                Caption = 'NFCe Emitidas'
              end
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 1024
        inherited plid: TPanel
          Left = 574
          ExplicitLeft = 574
        end
        inherited PlSair: TPanel
          Left = 818
          ExplicitLeft = 818
        end
      end
    end
    inherited acoes: TActionList
      Left = 700
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited TotaisDtls: TVirtualTable
      Data = {
        0400030010006D64616964656E74696669636163616F01002300000000000800
        64746C76616C6F72060000000F00000009006D6461636F6469676F0300000000
        000000000000000000}
    end
  end
end
