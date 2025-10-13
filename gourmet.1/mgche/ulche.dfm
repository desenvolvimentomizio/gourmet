inherited lche: Tlche
  Caption = 'Registro de Cheques'
  ClientWidth = 1114
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1114
    Visible = True
    ExplicitWidth = 1114
    inherited bconfirma: TBitBtn
      Left = 960
      ExplicitLeft = 960
    end
    inherited bcancela: TBitBtn
      Left = 1035
      Visible = False
      ExplicitLeft = 1035
    end
  end
  inline frache: Tfrache
    Left = 0
    Top = 0
    Width = 1114
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1114
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 1114
      Height = 632
      ExplicitWidth = 1114
      ExplicitHeight = 632
      inherited SplBotoes: TSplitter
        Height = 606
        ExplicitHeight = 606
      end
      inherited PlBotoes: TPanel
        Height = 606
        ExplicitHeight = 606
        inherited ImageLogoBase: TImage
          Top = 527
          ExplicitTop = 527
        end
        inherited PlInfo: TPanel
          Top = 588
          ExplicitTop = 588
        end
        inherited SBBotoes: TScrollBox
          Height = 527
          ExplicitLeft = 1
          ExplicitTop = -3
          ExplicitHeight = 527
        end
      end
      inherited PlLista: TPanel
        Width = 970
        Height = 606
        ExplicitWidth = 970
        ExplicitHeight = 606
        inherited SplLista: TSplitter
          Top = 575
          Width = 970
          ExplicitTop = 575
          ExplicitWidth = 970
        end
        inherited SpFilter: TSplitter
          Width = 970
          ExplicitWidth = 970
        end
        inherited PlRodaPe: TPanel
          Top = 580
          Width = 970
          ExplicitTop = 580
          ExplicitWidth = 970
        end
        inherited PlFiltros: TPanel
          Width = 970
          ExplicitWidth = 970
        end
        inherited PlSelecao: TPanel
          Width = 970
          ExplicitWidth = 970
          inherited GBPlSelecao: TGroupBox
            Width = 966
            ExplicitWidth = 966
            inherited DBLista: TDBGrid
              Width = 859
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 970
          Height = 446
          ExplicitWidth = 970
          ExplicitHeight = 446
          inherited DBGLista: TDBGrid
            Width = 970
            Height = 401
          end
          inherited PnlRodapeGrid: TPanel
            Top = 401
            Width = 970
            ExplicitTop = 401
            ExplicitWidth = 970
            inherited GBARegistrar: TGroupBox
              Left = 579
              ExplicitLeft = 579
            end
            inherited GBRegistrado: TGroupBox
              Left = 709
              ExplicitLeft = 709
            end
            inherited GBDiferenca: TGroupBox
              Left = 839
              ExplicitLeft = 839
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1114
        ExplicitWidth = 1114
        inherited plid: TPanel
          Left = 734
          ExplicitLeft = 734
        end
        inherited PlSair: TPanel
          Left = 953
          ExplicitLeft = 953
        end
      end
    end
    inherited uqtabela: TUniQuery
      Left = 300
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
