inherited lcpa: Tlcpa
  Caption = 'Contas a Pagar'
  ClientWidth = 1253
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1253
    inherited bconfirma: TBitBtn
      Left = 1099
    end
    inherited bcancela: TBitBtn
      Left = 1174
    end
  end
  inline fracpa: Tfracpa
    Left = 0
    Top = 0
    Width = 1253
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1253
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
        Width = 1109
        Height = 606
        inherited SplLista: TSplitter
          Top = 450
          Width = 1109
        end
        inherited SpFilter: TSplitter
          Width = 1109
        end
        inherited PlRodaPe: TPanel
          Top = 455
          Width = 1109
        end
        inherited PlFiltros: TPanel
          Width = 1109
        end
        inherited PlSelecao: TPanel
          Width = 1109
          inherited GBPlSelecao: TGroupBox
            Width = 1105
            inherited DBLista: TDBGrid
              Width = 998
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 1109
          Height = 321
          inherited DBGLista: TDBGrid
            Width = 1109
            Height = 276
          end
          inherited PnlRodapeGrid: TPanel
            Top = 276
            Width = 1109
            inherited PlDetalhe: TPanel
              Width = 1105
              inherited GbGeral: TGroupBox
                Left = 958
              end
              inherited GBEmAberto: TGroupBox
                Left = 668
              end
              inherited GBRecebidos: TGroupBox
                Left = 523
              end
              inherited GBTotal: TGroupBox
                Left = 378
              end
              inherited GBVencidos: TGroupBox
                Left = 813
              end
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1253
        inherited plid: TPanel
          Left = 902
          Caption = '02.02.15.004-01'
        end
        inherited PlSair: TPanel
          Left = 1092
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
