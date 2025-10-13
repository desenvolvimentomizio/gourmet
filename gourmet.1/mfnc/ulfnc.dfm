inherited lfnc: Tlfnc
  Caption = 'Fun'#231#245'es'
  ClientHeight = 392
  ClientWidth = 701
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 363
    Width = 701
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 547
    end
    inherited bcancela: TBitBtn
      Left = 622
    end
  end
  inline frafnc: Tfrafnc
    Left = 0
    Top = 0
    Width = 701
    Height = 363
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 701
      Height = 363
      inherited SplBotoes: TSplitter
        Height = 329
      end
      inherited PlBotoes: TPanel
        Height = 329
        inherited ImageLogoBase: TImage
          Top = 250
        end
        inherited PlInfo: TPanel
          Top = 311
        end
        inherited SBBotoes: TScrollBox
          Height = 250
        end
      end
      inherited PlLista: TPanel
        Width = 549
        Height = 329
        inherited SplLista: TSplitter
          Top = 297
          Width = 547
        end
        inherited SpFilter: TSplitter
          Width = 547
        end
        inherited PlRodaPe: TPanel
          Top = 302
          Width = 547
        end
        inherited PlFiltros: TPanel
          Width = 547
        end
        inherited PlSelecao: TPanel
          Width = 547
          inherited GBPlSelecao: TGroupBox
            Width = 541
            inherited DBLista: TDBGrid
              Width = 434
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 547
          Height = 146
          inherited DBGLista: TDBGrid
            Width = 547
            Height = 121
          end
          inherited PnlRodapeGrid: TPanel
            Top = 121
            Width = 547
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 693
        inherited plid: TPanel
          Left = 291
        end
        inherited PlSair: TPanel
          Left = 511
        end
      end
    end
    inherited DSTabela: TUniDataSource
      Left = 292
      Top = 216
    end
    inherited vcls: TVirtualTable
      Top = 196
      Data = {03000000000000000000}
    end
  end
end
