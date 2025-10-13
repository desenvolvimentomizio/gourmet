inherited lbrp: Tlbrp
  Caption = 'Pagamento de Contas'
  ClientHeight = 713
  ExplicitHeight = 752
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 684
    ExplicitTop = 684
  end
  inline frabrp: Tfrabrp
    Left = 0
    Top = 0
    Width = 1272
    Height = 684
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1272
    ExplicitHeight = 684
    inherited PlGeral: TPanel
      Width = 1272
      Height = 684
      ExplicitWidth = 1272
      ExplicitHeight = 684
      inherited SplBotoes: TSplitter
        Height = 664
        ExplicitHeight = 613
      end
      inherited PlBotoes: TPanel
        Height = 664
        ExplicitHeight = 664
        inherited ImageLogoBase: TImage
          Top = 585
          ExplicitTop = 534
        end
        inherited PlInfo: TPanel
          Top = 646
          ExplicitTop = 646
        end
        inherited SBBotoes: TScrollBox
          Height = 585
          ExplicitHeight = 585
        end
      end
      inherited PlLista: TPanel
        Width = 1128
        Height = 664
        ExplicitWidth = 1128
        ExplicitHeight = 664
        inherited SplLista: TSplitter
          Top = 355
          Width = 1128
          ExplicitTop = 304
          ExplicitWidth = 1128
        end
        inherited SpFilter: TSplitter
          Width = 1128
          ExplicitWidth = 1128
        end
        inherited PlRodaPe: TPanel
          Top = 360
          Width = 1128
          ExplicitTop = 360
          ExplicitWidth = 1128
          inherited PlTotal: TPanel
            Width = 1124
            ExplicitWidth = 1124
            inherited GBTotalABaixar: TGroupBox
              Left = 1034
              ExplicitLeft = 1034
            end
            inherited GBDescontoABaixar: TGroupBox
              Left = 674
              ExplicitLeft = 674
            end
            inherited GBJurosABaixar: TGroupBox
              Left = 914
              ExplicitLeft = 914
            end
            inherited GBPrincipalABaixar: TGroupBox
              Left = 594
              ExplicitLeft = 594
            end
            inherited GroupBox5: TGroupBox
              Left = 554
              ExplicitLeft = 554
            end
            inherited GBMultasABaixar: TGroupBox
              Left = 794
              ExplicitLeft = 794
            end
          end
          inherited GBselecionados: TGroupBox
            Width = 1124
            ExplicitWidth = 1124
            inherited DBGListaSelecionados: TDBGrid
              Width = 1120
            end
          end
        end
        inherited PlFiltros: TPanel
          Width = 1128
          ExplicitWidth = 1128
        end
        inherited PlSelecao: TPanel
          Width = 1128
          ExplicitWidth = 1128
          inherited GBPlSelecao: TGroupBox
            Width = 1124
            ExplicitWidth = 1124
            inherited DBLista: TDBGrid
              Width = 1017
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 1128
          Height = 226
          ExplicitWidth = 1128
          ExplicitHeight = 226
          inherited DBGLista: TDBGrid
            Width = 1128
            Height = 185
          end
          inherited PnlRodapeGrid: TPanel
            Top = 185
            Width = 1128
            ExplicitTop = 185
            ExplicitWidth = 1128
            inherited GroupBox4: TGroupBox
              Left = 527
              ExplicitLeft = 527
            end
            inherited GroupBox3: TGroupBox
              Left = 645
              ExplicitLeft = 645
            end
            inherited GroupBox2: TGroupBox
              Left = 885
              ExplicitLeft = 885
            end
            inherited GroupBox1: TGroupBox
              Left = 1005
              ExplicitLeft = 1005
            end
            inherited GroupBox6: TGroupBox
              Left = 487
              ExplicitLeft = 487
            end
            inherited GroupBox7: TGroupBox
              Left = 765
              ExplicitLeft = 765
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1272
        ExplicitWidth = 1272
        inherited plid: TPanel
          Left = 822
          ExplicitLeft = 822
        end
        inherited PlSair: TPanel
          Left = 1066
          ExplicitLeft = 1066
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited tabela: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited vbaixa: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited Dvbaixa: TUniDataSource
      OnDataChange = frabrpDvbaixaDataChange
      Left = 748
    end
    inherited VTBaixaLte: TVirtualTable
      Left = 996
      Top = 540
      Data = {04000000000000000000}
    end
    inherited DVTBaixaLte: TUniDataSource
      Left = 1085
      Top = 542
    end
  end
end
