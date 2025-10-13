inherited lssn: Tlssn
  Caption = 'Tabela de C'#225'lculo para Faixa do Simples Nacional'
  ClientWidth = 1052
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1052
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 898
    end
    inherited bcancela: TBitBtn
      Left = 973
    end
  end
  inline frassn: Tfrassn
    Left = 0
    Top = 0
    Width = 1052
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1052
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
        Width = 900
        Height = 606
        inherited SplLista: TSplitter
          Top = 574
          Width = 898
        end
        inherited SpFilter: TSplitter
          Width = 898
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 898
        end
        inherited PlFiltros: TPanel
          Width = 898
        end
        inherited PlSelecao: TPanel
          Width = 898
          inherited GBPlSelecao: TGroupBox
            Width = 892
            inherited DBLista: TDBGrid
              Width = 785
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 898
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 898
            Height = 398
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 898
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1044
        inherited plid: TPanel
          Left = 642
        end
        inherited PlSair: TPanel
          Left = 862
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
