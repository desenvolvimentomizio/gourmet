inherited ldpr: Tldpr
  Caption = 'ldpr'
  ClientHeight = 432
  ClientWidth = 699
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 403
    Width = 699
    inherited bconfirma: TBitBtn
      Left = 545
    end
    inherited bcancela: TBitBtn
      Left = 620
    end
  end
  inline fradpr: Tfradpr
    Left = 0
    Top = 0
    Width = 699
    Height = 403
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 699
      Height = 403
      inherited SplBotoes: TSplitter
        Height = 377
      end
      inherited PlBotoes: TPanel
        Height = 377
        inherited ImageLogoBase: TImage
          Top = 298
        end
        inherited PlInfo: TPanel
          Top = 359
        end
        inherited SBBotoes: TScrollBox
          Height = 298
        end
      end
      inherited PlLista: TPanel
        Width = 555
        Height = 377
        inherited SplLista: TSplitter
          Top = 346
          Width = 555
        end
        inherited SpFilter: TSplitter
          Width = 555
        end
        inherited PlRodaPe: TPanel
          Top = 351
          Width = 555
        end
        inherited PlFiltros: TPanel
          Width = 555
        end
        inherited PlSelecao: TPanel
          Width = 555
          inherited GBPlSelecao: TGroupBox
            Width = 551
            inherited DBLista: TDBGrid
              Width = 444
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 555
          Height = 217
          inherited DBGLista: TDBGrid
            Width = 555
            Height = 192
          end
          inherited PnlRodapeGrid: TPanel
            Top = 192
            Width = 555
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 699
        inherited plid: TPanel
          Left = 345
        end
        inherited PlSair: TPanel
          Left = 537
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
