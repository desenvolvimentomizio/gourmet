inherited livt: Tlivt
  Caption = 'Invent'#225'rio'
  ClientWidth = 982
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 982
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 828
    end
    inherited bcancela: TBitBtn
      Left = 903
    end
  end
  inline fraivt: Tfraivt
    Left = 0
    Top = 0
    Width = 982
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 982
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
        Width = 830
        Height = 606
        inherited SplLista: TSplitter
          Top = 574
          Width = 828
        end
        inherited SpFilter: TSplitter
          Width = 828
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 828
        end
        inherited PlFiltros: TPanel
          Width = 828
        end
        inherited PlSelecao: TPanel
          Width = 828
          inherited GBPlSelecao: TGroupBox
            Width = 822
            inherited DBLista: TDBGrid
              Width = 715
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 828
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 828
            Height = 398
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 828
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 974
        inherited plid: TPanel
          Left = 572
        end
        inherited PlSair: TPanel
          Left = 792
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
