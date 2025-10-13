inherited lpro: Tlpro
  Caption = 'Produtos'
  ClientHeight = 639
  ClientWidth = 1143
  ExplicitWidth = 1159
  ExplicitHeight = 678
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 610
    Width = 1143
    TabOrder = 1
    ExplicitTop = 610
    ExplicitWidth = 1143
    inherited bconfirma: TBitBtn
      Left = 989
      ExplicitLeft = 989
    end
    inherited bcancela: TBitBtn
      Left = 1064
      ExplicitLeft = 1064
    end
  end
  inline frapro: Tfrapro
    Left = 0
    Top = 0
    Width = 1143
    Height = 610
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 1143
    ExplicitHeight = 610
    inherited PlGeral: TPanel
      Width = 1143
      Height = 610
      ExplicitWidth = 1143
      ExplicitHeight = 610
      inherited SplBotoes: TSplitter
        Height = 590
        ExplicitHeight = 584
      end
      inherited PlBotoes: TPanel
        Height = 590
        ExplicitHeight = 590
        inherited ImageLogoBase: TImage
          Top = 511
          ExplicitTop = 505
        end
        inherited PlInfo: TPanel
          Top = 572
          ExplicitTop = 572
        end
        inherited SBBotoes: TScrollBox
          Height = 511
          ExplicitHeight = 511
        end
      end
      inherited PlLista: TPanel
        Width = 999
        Height = 590
        ExplicitWidth = 999
        ExplicitHeight = 590
        inherited SplLista: TSplitter
          Top = 371
          Width = 999
          ExplicitTop = 365
          ExplicitWidth = 999
        end
        inherited SpFilter: TSplitter
          Width = 999
          ExplicitWidth = 999
        end
        inherited PlRodaPe: TPanel
          Top = 376
          Width = 999
          ExplicitTop = 376
          ExplicitWidth = 999
          inherited GBObs: TGroupBox
            Width = 999
            ExplicitWidth = 999
            inherited proobs: TDBMemo
              Width = 995
              ExplicitWidth = 995
            end
          end
        end
        inherited PlFiltros: TPanel
          Width = 999
          ExplicitWidth = 999
          inherited PnlBuscaBarra: TGroupBox
            inherited Panel1: TPanel
              inherited cd: TEdit
                Visible = True
              end
            end
          end
        end
        inherited PlSelecao: TPanel
          Width = 999
          ExplicitWidth = 999
          inherited GBPlSelecao: TGroupBox
            Width = 995
            ExplicitWidth = 995
            inherited DBLista: TDBGrid
              Width = 888
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 999
          Height = 242
          ExplicitWidth = 999
          ExplicitHeight = 242
          inherited DBGLista: TDBGrid
            Width = 999
            Height = 217
          end
          inherited PnlRodapeGrid: TPanel
            Top = 217
            Width = 999
            ExplicitTop = 217
            ExplicitWidth = 999
            inherited ProgressBar1: TProgressBar
              Width = 997
              ExplicitWidth = 997
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1143
        ExplicitWidth = 1143
        inherited plid: TPanel
          Left = 693
          Caption = '01.01.05.001-03'
          ExplicitLeft = 693
        end
        inherited PlSair: TPanel
          Left = 937
          ExplicitLeft = 937
        end
      end
    end
    inherited acoes: TActionList
      inherited ActIncluir: TAction
        OnExecute = fraproActIncluirExecute
      end
      inherited ActPrecoDeVenda: TAction
        OnExecute = fraproActPrecoDeVendaExecute
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited Dpun: TUniDataSource
      Left = 816
      Top = 192
    end
    inherited bbarra: TUniQuery
      Left = 504
      Top = 200
    end
    inherited vtprg: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited vtprd: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
