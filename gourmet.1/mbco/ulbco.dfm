inherited lbco: Tlbco
  Caption = 'Controle Banc'#225'rio'
  ClientHeight = 459
  ClientWidth = 781
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 430
    Width = 781
    inherited bconfirma: TBitBtn
      Left = 627
    end
    inherited bcancela: TBitBtn
      Left = 702
    end
  end
  inline frabco: Tfrabco
    Left = 0
    Top = 0
    Width = 781
    Height = 430
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 781
      Height = 430
      inherited SplBotoes: TSplitter
        Height = 404
      end
      inherited PlBotoes: TPanel
        Height = 404
        inherited ImageLogoBase: TImage
          Top = 325
        end
        inherited PlInfo: TPanel
          Top = 386
        end
        inherited SBBotoes: TScrollBox
          Height = 325
        end
      end
      inherited PlLista: TPanel
        Width = 637
        Height = 404
        inherited SplLista: TSplitter
          Top = 373
          Width = 637
        end
        inherited SpFilter: TSplitter
          Width = 637
        end
        inherited PlRodaPe: TPanel
          Top = 378
          Width = 637
        end
        inherited PlFiltros: TPanel
          Width = 637
        end
        inherited PlSelecao: TPanel
          Width = 637
          inherited GBPlSelecao: TGroupBox
            Width = 633
            inherited DBLista: TDBGrid
              Width = 526
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 637
          Height = 244
          inherited DBGLista: TDBGrid
            Width = 637
            Height = 219
          end
          inherited PnlRodapeGrid: TPanel
            Top = 219
            Width = 637
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 781
        inherited plid: TPanel
          Left = 430
        end
        inherited PlSair: TPanel
          Left = 620
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
