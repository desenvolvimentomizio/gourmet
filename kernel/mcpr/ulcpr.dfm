inherited lcpr: Tlcpr
  Caption = 'Entradas'
  ClientHeight = 649
  ClientWidth = 1006
  ExplicitWidth = 1022
  ExplicitHeight = 688
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 620
    Width = 1006
    TabOrder = 1
    ExplicitTop = 620
    ExplicitWidth = 1006
    inherited bconfirma: TBitBtn
      Left = 852
      ExplicitLeft = 852
    end
    inherited bcancela: TBitBtn
      Left = 927
      ExplicitLeft = 927
    end
  end
  inline fracpr: Tfracpr
    Left = 0
    Top = 0
    Width = 1006
    Height = 620
    Align = alClient
    Color = 7105644
    ParentBackground = False
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 1006
    ExplicitHeight = 620
    inherited PlGeral: TPanel
      Width = 1006
      Height = 620
      ExplicitWidth = 1006
      ExplicitHeight = 620
      inherited SplBotoes: TSplitter
        Height = 600
        ExplicitHeight = 594
      end
      inherited PlBotoes: TPanel
        Height = 600
        ExplicitHeight = 600
        inherited PlInfo: TPanel
          Top = 580
          ExplicitTop = 580
        end
        inherited SBBotoes: TScrollBox
          Height = 577
          ExplicitHeight = 577
          inherited ImageLogoBase: TImage
            Top = 521
            ExplicitTop = 515
          end
        end
      end
      inherited PlLista: TPanel
        Width = 862
        Height = 600
        ExplicitWidth = 862
        ExplicitHeight = 600
        inherited SplLista: TSplitter
          Top = 340
          Width = 862
          Height = 3
          ExplicitTop = 334
          ExplicitWidth = 862
          ExplicitHeight = 3
        end
        inherited SpFilter: TSplitter
          Width = 862
          ExplicitWidth = 862
        end
        inherited PlRodaPe: TPanel
          Top = 343
          Width = 862
          ExplicitTop = 343
          ExplicitWidth = 862
          inherited PlResumoItens: TPanel
            Width = 862
            ExplicitWidth = 862
          end
          inherited listaitm: TDBGrid
            Width = 862
          end
        end
        inherited PlFiltros: TPanel
          Width = 862
          ExplicitWidth = 862
        end
        inherited PlSelecao: TPanel
          Width = 862
          ExplicitWidth = 862
          inherited GBPlSelecao: TGroupBox
            Width = 858
            ExplicitWidth = 858
            inherited DBLista: TDBGrid
              Width = 751
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 862
          Height = 211
          ExplicitWidth = 862
          ExplicitHeight = 211
          inherited DBGLista: TDBGrid
            Width = 862
            Height = 127
          end
          inherited PnlRodapeGrid: TPanel
            Top = 127
            Width = 862
            ExplicitTop = 127
            ExplicitWidth = 862
            inherited pltotais: TPanel
              Width = 862
              ExplicitWidth = 862
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1006
        ExplicitWidth = 1006
        inherited plid: TPanel
          Left = 556
          ExplicitLeft = 556
        end
        inherited PlSair: TPanel
          Left = 800
          ExplicitLeft = 800
        end
      end
    end
    inherited acoes: TActionList
      inherited ActConfiguracoes: TAction [8]
      end
      inherited ActSair: TAction [9]
      end
      inherited ActVerificarCFOP: TAction [10]
      end
      inherited ActGerarEtiquetas: TAction [13]
      end
      inherited ActConfig: TAction [14]
      end
      inherited ActPesquisar: TAction [18]
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
