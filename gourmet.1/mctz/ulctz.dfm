inherited lctz: Tlctz
  Caption = 'Contabiliza'#231#227'o'
  ClientWidth = 1135
  OnActivate = FormActivate
  ExplicitWidth = 1151
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 1135
    ExplicitWidth = 1135
    inherited bconfirma: TBitBtn
      Left = 981
      ExplicitLeft = 981
    end
    inherited bcancela: TBitBtn
      Left = 1056
      ExplicitLeft = 1056
    end
  end
  inline fractz: Tfractz
    Left = 0
    Top = 0
    Width = 1135
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1135
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 1135
      Height = 632
      ExplicitWidth = 1135
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
        Width = 991
        Height = 612
        ExplicitWidth = 991
        ExplicitHeight = 612
        inherited SplLista: TSplitter
          Top = 581
          Width = 991
          ExplicitTop = 575
          ExplicitWidth = 991
        end
        inherited SpFilter: TSplitter
          Width = 991
          ExplicitWidth = 991
        end
        inherited PlRodaPe: TPanel
          Top = 586
          Width = 991
          ExplicitTop = 586
          ExplicitWidth = 991
        end
        inherited PlFiltros: TPanel
          Width = 991
          ExplicitWidth = 991
        end
        inherited PlSelecao: TPanel
          Width = 991
          ExplicitWidth = 991
          inherited GBPlSelecao: TGroupBox
            Width = 987
            ExplicitWidth = 987
            inherited DBLista: TDBGrid
              Width = 880
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 991
          Height = 452
          ExplicitWidth = 991
          ExplicitHeight = 452
          inherited DBGLista: TDBGrid
            Width = 991
            Height = 407
          end
          inherited PnlRodapeGrid: TPanel
            Top = 407
            Width = 991
            ExplicitTop = 407
            ExplicitWidth = 991
            inherited GroupBox3: TGroupBox
              Left = 519
              ExplicitLeft = 519
            end
            inherited GroupBox7: TGroupBox
              Left = 833
              ExplicitLeft = 833
            end
            inherited GroupBox1: TGroupBox
              Left = 676
              ExplicitLeft = 676
            end
            inherited GroupBox4: TGroupBox
              Left = 362
              ExplicitLeft = 362
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1135
        ExplicitWidth = 1135
        inherited plid: TPanel
          Left = 755
          ExplicitLeft = 755
        end
        inherited PlSair: TPanel
          Left = 974
          ExplicitLeft = 974
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
