inherited lbrr: Tlbrr
  Caption = 'Recebimento de Contas'
  ClientHeight = 762
  ExplicitLeft = -206
  ExplicitTop = -171
  ExplicitHeight = 801
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 733
    ExplicitTop = 733
  end
  inline frabrr: Tfrabrr
    Left = 0
    Top = 0
    Width = 1272
    Height = 733
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1272
    ExplicitHeight = 733
    inherited PlGeral: TPanel
      Width = 1272
      Height = 733
      ExplicitWidth = 1272
      ExplicitHeight = 733
      inherited SplBotoes: TSplitter
        Height = 713
        ExplicitHeight = 613
      end
      inherited PlBotoes: TPanel
        Height = 713
        ExplicitHeight = 713
        inherited ImageLogoBase: TImage
          Top = 634
          ExplicitTop = 534
        end
        inherited PlInfo: TPanel
          Top = 695
          ExplicitTop = 695
        end
        inherited SBBotoes: TScrollBox
          Height = 634
          ExplicitHeight = 634
        end
      end
      inherited PlLista: TPanel
        Width = 1128
        Height = 713
        ExplicitWidth = 1128
        ExplicitHeight = 713
        inherited SplLista: TSplitter
          Top = 404
          Width = 1128
          ExplicitTop = 304
          ExplicitWidth = 1128
        end
        inherited SpFilter: TSplitter
          Width = 1128
          ExplicitWidth = 1128
        end
        inherited PlRodaPe: TPanel
          Top = 409
          Width = 1128
          ExplicitTop = 409
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
          Height = 275
          ExplicitWidth = 1128
          ExplicitHeight = 275
          inherited DBGLista: TDBGrid
            Width = 1128
            Height = 234
          end
          inherited PnlRodapeGrid: TPanel
            Top = 234
            Width = 1128
            ExplicitTop = 234
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
      OnDataChange = frabrrDvbaixaDataChange
    end
    inherited VTBaixaLte: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited let: TUniQuery
      Left = 520
      Top = 472
    end
  end
  object cri: TUniQuery
    Left = 336
    Top = 552
  end
end
