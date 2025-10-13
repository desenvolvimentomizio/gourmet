inherited lpun: Tlpun
  Caption = 'Embalagens'
  ClientWidth = 819
  ExplicitWidth = 835
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 819
    ExplicitWidth = 819
    inherited bconfirma: TBitBtn
      Left = 665
      ExplicitLeft = 665
    end
    inherited bcancela: TBitBtn
      Left = 740
      ExplicitLeft = 740
    end
  end
  inline frapun: Tfrapun
    Left = 0
    Top = 0
    Width = 819
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 819
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 819
      Height = 632
      ExplicitWidth = 819
      ExplicitHeight = 632
      inherited SplBotoes: TSplitter
        Height = 612
        ExplicitHeight = 598
      end
      inherited PlBotoes: TPanel
        Height = 612
        ExplicitHeight = 612
        inherited ImageLogoBase: TImage
          Top = 533
          ExplicitTop = 519
        end
        inherited PlInfo: TPanel
          Top = 594
          ExplicitTop = 594
        end
        inherited SBBotoes: TScrollBox
          Height = 533
          ExplicitHeight = 533
        end
      end
      inherited PlLista: TPanel
        Width = 675
        Height = 612
        ExplicitWidth = 675
        ExplicitHeight = 612
        inherited SplLista: TSplitter
          Top = 581
          Width = 675
          ExplicitTop = 566
          ExplicitWidth = 665
        end
        inherited SpFilter: TSplitter
          Width = 675
          ExplicitWidth = 665
        end
        inherited PlRodaPe: TPanel
          Top = 586
          Width = 675
          ExplicitTop = 586
          ExplicitWidth = 675
        end
        inherited PlFiltros: TPanel
          Width = 675
          ExplicitWidth = 675
        end
        inherited PlSelecao: TPanel
          Width = 675
          ExplicitWidth = 675
          inherited GBPlSelecao: TGroupBox
            Width = 671
            ExplicitWidth = 671
            inherited DBLista: TDBGrid
              Width = 564
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 675
          Height = 452
          ExplicitWidth = 675
          ExplicitHeight = 452
          inherited DBGLista: TDBGrid
            Width = 675
            Height = 427
          end
          inherited PnlRodapeGrid: TPanel
            Top = 427
            Width = 675
            ExplicitTop = 427
            ExplicitWidth = 675
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 819
        ExplicitWidth = 819
        inherited plid: TPanel
          Left = 369
          ExplicitLeft = 369
        end
        inherited PlSair: TPanel
          Left = 613
          ExplicitLeft = 613
        end
      end
    end
    inherited acoes: TActionList
      Left = 388
      Top = 104
      inherited ActAlteraPreco: TAction
        OnExecute = frapunActAlteraPrecoExecute
      end
    end
    inherited uqtabela: TUniQuery
      Left = 228
      Top = 260
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
