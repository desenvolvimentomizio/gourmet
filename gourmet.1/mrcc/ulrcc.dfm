inherited lrcc: Tlrcc
  Caption = 'lrcc'
  ClientWidth = 1129
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1129
    inherited bconfirma: TBitBtn
      Left = 975
    end
    inherited bcancela: TBitBtn
      Left = 1050
    end
  end
  inline frarcc: Tfrarcc
    Left = 0
    Top = 0
    Width = 1129
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1129
      Height = 632
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
        Width = 985
        Height = 606
        inherited SplLista: TSplitter
          Top = 510
          Width = 985
        end
        inherited SpFilter: TSplitter
          Width = 985
        end
        inherited PlRodaPe: TPanel
          Top = 515
          Width = 985
        end
        inherited PlFiltros: TPanel
          Width = 985
        end
        inherited PlSelecao: TPanel
          Width = 985
          inherited GBPlSelecao: TGroupBox
            Width = 981
            inherited DBLista: TDBGrid
              Width = 874
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 985
          Height = 381
          inherited DBGLista: TDBGrid
            Width = 985
            Height = 336
          end
          inherited PnlRodapeGrid: TPanel
            Top = 336
            Width = 985
            inherited PlDetalhe: TPanel
              Width = 983
              inherited GbGeral: TGroupBox
                Left = 836
              end
              inherited GBBaixados: TGroupBox
                Left = 546
              end
              inherited GBDisponivel: TGroupBox
                Left = 691
              end
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1129
        inherited plid: TPanel
          Left = 749
        end
        inherited PlSair: TPanel
          Left = 968
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
