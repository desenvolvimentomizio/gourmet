inherited lmfi: Tlmfi
  Caption = 'lmfi'
  ClientHeight = 731
  ClientWidth = 1074
  ExplicitTop = -91
  ExplicitWidth = 1090
  ExplicitHeight = 770
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 702
    Width = 1074
    ExplicitTop = 702
    ExplicitWidth = 1074
    inherited bconfirma: TBitBtn
      Left = 920
      ExplicitLeft = 920
    end
    inherited bcancela: TBitBtn
      Left = 995
      ExplicitLeft = 995
    end
  end
  inline framfi: Tframfi
    Left = 0
    Top = 0
    Width = 1074
    Height = 702
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1074
    ExplicitHeight = 702
    inherited PlGeral: TPanel
      Width = 1074
      Height = 702
      ExplicitWidth = 1074
      ExplicitHeight = 702
      inherited SplBotoes: TSplitter
        Height = 682
        ExplicitHeight = 676
      end
      inherited PlBotoes: TPanel
        Height = 682
        ExplicitHeight = 682
        inherited ImageLogoBase: TImage
          Top = 603
          ExplicitTop = 597
        end
        inherited PlInfo: TPanel
          Top = 664
          ExplicitTop = 664
        end
        inherited SBBotoes: TScrollBox
          Height = 603
          ExplicitHeight = 603
        end
      end
      inherited PlLista: TPanel
        Width = 930
        Height = 682
        ExplicitWidth = 930
        ExplicitHeight = 682
        inherited SplLista: TSplitter
          Top = 666
          Width = 930
          ExplicitTop = 660
          ExplicitWidth = 930
        end
        inherited SpFilter: TSplitter
          Width = 930
          ExplicitWidth = 930
        end
        inherited PlRodaPe: TPanel
          Top = 671
          Width = 930
          Height = 11
          Visible = False
          ExplicitTop = 671
          ExplicitWidth = 930
          ExplicitHeight = 11
        end
        inherited PlFiltros: TPanel
          Width = 930
          ExplicitWidth = 930
        end
        inherited PlSelecao: TPanel
          Width = 930
          ExplicitWidth = 930
          inherited GBPlSelecao: TGroupBox
            Width = 926
            ExplicitWidth = 926
            inherited DBLista: TDBGrid
              Width = 819
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 930
          Height = 537
          ExplicitWidth = 930
          ExplicitHeight = 537
          inherited DBGLista: TDBGrid
            Height = 166
          end
          inherited PnlRodapeGrid: TPanel
            Top = 166
            Width = 930
            ExplicitTop = 166
            ExplicitWidth = 930
            inherited plRegistroFinanceiro: TPanel
              Width = 928
              ExplicitWidth = 928
              inherited GroupBox2: TGroupBox
                Width = 926
                ExplicitWidth = 926
                inherited DBGContaCorrente: TDBGrid
                  Width = 922
                end
              end
            end
            inherited plCheques: TPanel
              Width = 928
              ExplicitWidth = 928
              inherited GBDetalhes: TGroupBox
                Left = 611
                ExplicitLeft = 611
              end
              inherited plCheRcd: TPanel
                Width = 610
                ExplicitWidth = 610
                inherited GBCheques: TGroupBox
                  Width = 606
                  ExplicitWidth = 606
                  inherited DBlistafin: TDBGrid
                    Width = 602
                  end
                end
                inherited GbCartoes: TGroupBox
                  Width = 606
                  ExplicitWidth = 606
                  inherited DBGrid1: TDBGrid
                    Width = 602
                  end
                end
              end
            end
            inherited plEstornar: TPanel
              Width = 928
              ExplicitWidth = 928
              inherited meamotivo: TDBText
                Width = 866
                ExplicitWidth = 866
              end
            end
          end
          inherited GBTitulos: TGroupBox
            Width = 625
            Height = 163
            ExplicitWidth = 625
            ExplicitHeight = 163
            inherited DBGTitulos: TDBGrid
              Width = 621
              Height = 140
            end
          end
          inherited GBLote: TGroupBox
            Height = 166
            ExplicitHeight = 166
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1074
        ExplicitWidth = 1074
        inherited plid: TPanel
          Left = 624
          ExplicitLeft = 624
        end
        inherited PlSair: TPanel
          Left = 868
          ExplicitLeft = 868
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited dtl: TUniQuery
      Left = 952
      Top = 516
    end
    inherited rdc: TUniQuery
      Left = 200
      Top = 592
    end
    inherited Drdc: TDataSource
      Left = 231
      Top = 592
    end
    inherited ccm: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
