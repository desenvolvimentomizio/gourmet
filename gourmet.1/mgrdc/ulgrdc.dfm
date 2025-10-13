inherited lgrdc: Tlgrdc
  Caption = 'lgrdc'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Visible = True
    inherited bconfirma: TBitBtn
      Left = 855
      Width = 90
      ExplicitLeft = 855
      ExplicitWidth = 90
    end
    inherited bcancela: TBitBtn
      Visible = False
    end
  end
  inline fragrdc: Tfragrdc
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      ExplicitWidth = 1024
      ExplicitHeight = 632
      inherited SplBotoes: TSplitter
        Height = 612
        ExplicitHeight = 606
      end
      inherited PlBotoes: TPanel
        Height = 612
        ExplicitHeight = 612
        inherited ImageLogoBase: TImage
          Top = 533
          ExplicitTop = 527
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
        Width = 880
        Height = 612
        ExplicitWidth = 880
        ExplicitHeight = 612
        inherited SplLista: TSplitter
          Top = 581
          Width = 880
          ExplicitTop = 575
          ExplicitWidth = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlRodaPe: TPanel
          Top = 586
          Width = 880
          ExplicitTop = 586
          ExplicitWidth = 880
        end
        inherited PlFiltros: TPanel
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlSelecao: TPanel
          Width = 880
          ExplicitWidth = 880
          inherited GBPlSelecao: TGroupBox
            Width = 876
            ExplicitWidth = 876
            inherited DBLista: TDBGrid
              Width = 769
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 880
          Height = 452
          ExplicitWidth = 880
          ExplicitHeight = 452
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 407
          end
          inherited PnlRodapeGrid: TPanel
            Top = 407
            Width = 880
            ExplicitTop = 407
            ExplicitWidth = 880
            inherited GroupBox2: TGroupBox
              Left = 489
              ExplicitLeft = 489
            end
            inherited GroupBox7: TGroupBox
              Left = 749
              ExplicitLeft = 749
            end
            inherited GroupBox3: TGroupBox
              Left = 619
              ExplicitLeft = 619
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 1024
        inherited plid: TPanel
          Left = 574
          ExplicitLeft = 574
        end
        inherited PlSair: TPanel
          Left = 818
          ExplicitLeft = 818
        end
      end
    end
    inherited acoes: TActionList
      inherited ActAtualizar: TAction
        OnExecute = frardcActAtualizarExecute
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
