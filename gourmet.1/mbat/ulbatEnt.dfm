inherited lbatEnt: TlbatEnt
  Caption = 'lbatEnt'
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inline frabat: Tfrabat
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitLeft = -154
    ExplicitTop = 304
    ExplicitHeight = 9
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      inherited SplBotoes: TSplitter
        Height = 612
      end
      inherited PlBotoes: TPanel
        Height = 612
        ExplicitHeight = 604
        inherited ImageLogoBase: TImage
          Top = 533
        end
        inherited PlInfo: TPanel
          Top = 594
          ExplicitTop = 586
        end
        inherited SBBotoes: TScrollBox
          Height = 533
          ExplicitHeight = 525
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 612
        inherited SplLista: TSplitter
          Top = 378
          Width = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
        end
        inherited PlRodaPe: TPanel
          Top = 383
          Width = 880
          ExplicitTop = 375
          inherited DBGListaItens: TDBGrid
            Width = 880
          end
          inherited pservico: TPanel
            Width = 880
            ExplicitWidth = 1034
            inherited Panel8: TPanel
              Width = 878
              ExplicitWidth = 1032
            end
            inherited itoproservico: TDBMemo
              Width = 878
              ExplicitWidth = 1032
            end
          end
        end
        inherited PlFiltros: TPanel
          Width = 880
        end
        inherited PlSelecao: TPanel
          Width = 880
          inherited GBPlSelecao: TGroupBox
            Width = 876
            inherited DBLista: TDBGrid
              Width = 769
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 880
          Height = 249
          ExplicitHeight = 241
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 157
          end
          inherited PnlRodapeGrid: TPanel
            Top = 157
            Width = 880
            ExplicitTop = 149
            inherited PnlDadosCliente: TPanel
              Width = 878
              ExplicitWidth = 1032
              inherited PnlNomeCliente: TPanel
                Width = 878
                ExplicitWidth = 1032
                inherited LbDadosConsumidor: TLabel
                  Width = 866
                end
              end
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 644
        end
        inherited PlSair: TPanel
          Left = 863
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
