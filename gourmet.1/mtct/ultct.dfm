inherited ltct: Tltct
  Caption = 'Tipos de Contas'
  ClientHeight = 347
  ClientWidth = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 318
    Width = 475
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 321
    end
    inherited bcancela: TBitBtn
      Left = 396
    end
  end
  inline fratct: Tfratct
    Left = 0
    Top = 0
    Width = 475
    Height = 318
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 475
      Height = 318
      inherited SplBotoes: TSplitter
        Height = 284
      end
      inherited PlBotoes: TPanel
        Height = 284
        inherited ImageLogoBase: TImage
          Top = 205
        end
        inherited PlInfo: TPanel
          Top = 266
        end
        inherited SBBotoes: TScrollBox
          Height = 205
        end
      end
      inherited PlLista: TPanel
        Width = 323
        Height = 284
        inherited SplLista: TSplitter
          Top = 252
          Width = 321
        end
        inherited SpFilter: TSplitter
          Width = 321
        end
        inherited PlRodaPe: TPanel
          Top = 257
          Width = 321
        end
        inherited PlFiltros: TPanel
          Width = 321
        end
        inherited PlSelecao: TPanel
          Width = 321
          inherited GBPlSelecao: TGroupBox
            Width = 315
            inherited DBLista: TDBGrid
              Width = 208
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 321
          Height = 101
          inherited DBGLista: TDBGrid
            Width = 321
            Height = 76
          end
          inherited PnlRodapeGrid: TPanel
            Top = 76
            Width = 321
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 467
        inherited plid: TPanel
          Left = 65
        end
        inherited PlSair: TPanel
          Left = 285
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
