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
  inherited frarfi: Tfrarfi
    Width = 1253
    inherited PlGeral: TPanel
      Width = 1253
      inherited SplBotoes: TSplitter
      end
      inherited PlBotoes: TPanel
        inherited ImageLogoBase: TImage
        end
        inherited PlInfo: TPanel
        end
        inherited SBBotoes: TScrollBox
        end
      end
      inherited PlLista: TPanel
        Width = 1101
        inherited SplLista: TSplitter
          Width = 1099
        end
        inherited SpFilter: TSplitter
          Width = 1099
        end
        inherited PlRodaPe: TPanel
          Width = 1099
        end
        inherited PlFiltros: TPanel
          Width = 1099
        end
        inherited PlSelecao: TPanel
          Width = 1099
          inherited GBPlSelecao: TGroupBox
            Width = 1093
            inherited DBLista: TDBGrid
              Width = 986
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 1099
          inherited DBGLista: TDBGrid
            Width = 1099
          end
          inherited PnlRodapeGrid: TPanel
            Width = 1099
            inherited PlDetalhe: TPanel
              Width = 1095
              inherited GbGeral: TGroupBox
                Left = 948
              end
              inherited GBEmAberto: TGroupBox
                Left = 658
              end
              inherited GBRecebidos: TGroupBox
                Left = 513
              end
              inherited GBTotal: TGroupBox
                Left = 368
              end
              inherited GBVencidos: TGroupBox
                Left = 803
              end
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1245
        inherited plid: TPanel
          Left = 843
        end
        inherited PlSair: TPanel
          Left = 1063
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
