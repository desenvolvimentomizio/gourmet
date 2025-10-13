inherited ltoe: Tltoe
  Caption = 'Opera'#231#227'o de Estoque'
  ClientHeight = 587
  ClientWidth = 959
  ExplicitWidth = 975
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 558
    Width = 959
    TabOrder = 1
    ExplicitTop = 558
    ExplicitWidth = 959
    inherited bconfirma: TBitBtn
      Left = 805
      ExplicitLeft = 805
    end
    inherited bcancela: TBitBtn
      Left = 880
      ExplicitLeft = 880
    end
  end
  inline fratoe: Tfratoe
    Left = 0
    Top = 0
    Width = 959
    Height = 558
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 959
    ExplicitHeight = 558
    inherited PlGeral: TPanel
      Width = 959
      Height = 558
      ExplicitWidth = 959
      ExplicitHeight = 558
      inherited SplBotoes: TSplitter
        Height = 538
        ExplicitHeight = 532
      end
      inherited PlBotoes: TPanel
        Height = 538
        ExplicitHeight = 538
        inherited ImageLogoBase: TImage
          Top = 459
          ExplicitTop = 453
        end
        inherited PlInfo: TPanel
          Top = 520
          ExplicitTop = 520
        end
        inherited SBBotoes: TScrollBox
          Height = 459
          ExplicitHeight = 459
        end
      end
      inherited PlLista: TPanel
        Width = 815
        Height = 538
        ExplicitWidth = 815
        ExplicitHeight = 538
        inherited SplLista: TSplitter
          Top = 501
          Width = 815
          ExplicitTop = 495
          ExplicitWidth = 815
        end
        inherited SpFilter: TSplitter
          Width = 815
          ExplicitWidth = 815
        end
        inherited PlRodaPe: TPanel
          Top = 506
          Width = 815
          ExplicitTop = 506
          ExplicitWidth = 815
        end
        inherited PlFiltros: TPanel
          Width = 815
          ExplicitWidth = 815
        end
        inherited PlSelecao: TPanel
          Width = 815
          ExplicitWidth = 815
          inherited GBPlSelecao: TGroupBox
            Width = 811
            ExplicitWidth = 811
            inherited DBLista: TDBGrid
              Width = 704
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 815
          Height = 372
          ExplicitWidth = 815
          ExplicitHeight = 372
          inherited DBGLista: TDBGrid
            Width = 815
            Height = 285
          end
          inherited PnlRodapeGrid: TPanel
            Top = 285
            Width = 815
            ExplicitTop = 285
            ExplicitWidth = 815
            inherited toedescricao: TDBMemo
              Width = 813
              ExplicitWidth = 813
            end
            inherited plMensagem: TPanel
              Width = 813
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 959
        Caption = 'Opera'#231#227'o de Estoque'
        ExplicitWidth = 959
        inherited plid: TPanel
          Left = 509
          Caption = '02.04.11.001-03'
          ExplicitLeft = 509
        end
        inherited PlSair: TPanel
          Left = 753
          ExplicitLeft = 753
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
