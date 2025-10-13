inherited linf: Tlinf
  Caption = 'Informa'#231#245'es'
  ClientHeight = 824
  ExplicitWidth = 1040
  ExplicitHeight = 863
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 795
    inherited bconfirma: TBitBtn
      Caption = 'Fechar'
    end
    inherited bcancela: TBitBtn
      Caption = 'Fechar'
      Visible = False
    end
  end
  inline frainf: Tfrainf
    Left = 0
    Top = 0
    Width = 1024
    Height = 795
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 1024
      Height = 795
      ExplicitWidth = 1024
      ExplicitHeight = 632
      inherited SplBotoes: TSplitter
        Height = 775
        ExplicitHeight = 606
      end
      inherited PlBotoes: TPanel
        Height = 775
        ExplicitHeight = 612
        inherited ImageLogoBase: TImage
          Top = 696
          ExplicitTop = 527
        end
        inherited PlInfo: TPanel
          Top = 757
          ExplicitTop = 594
        end
        inherited SBBotoes: TScrollBox
          Height = 696
          ExplicitHeight = 533
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 775
        ExplicitWidth = 880
        ExplicitHeight = 612
        inherited SplLista: TSplitter
          Top = 744
          Width = 880
          ExplicitTop = 575
          ExplicitWidth = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlRodaPe: TPanel
          Top = 749
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
          Height = 615
          ExplicitWidth = 880
          ExplicitHeight = 615
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 429
          end
          inherited PnlRodapeGrid: TPanel
            Top = 429
            Width = 880
            ExplicitTop = 266
            ExplicitWidth = 880
            inherited plResumo: TPanel
              Left = 513
              ExplicitLeft = 513
            end
            inherited plGrupoItens: TPanel
              Width = 308
              inherited plItens: TPanel
                Width = 306
                inherited listaitm: TDBGrid
                  Width = 304
                end
                inherited plMes: TPanel
                  Width = 304
                end
              end
              inherited plTituloItens: TPanel
                Width = 306
              end
            end
            inherited pdetalhe: TPanel
              Left = 309
              Width = 204
              ExplicitLeft = 309
              ExplicitTop = 1
              ExplicitWidth = 204
              ExplicitHeight = 184
              inherited plTituloFinaliazdores: TPanel
                Width = 200
              end
              inherited listapor: TDBGrid
                Width = 200
              end
              inherited pvalordetalhe: TPanel
                Width = 200
              end
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 1024
        inherited plid: TPanel
          Left = 644
          ExplicitLeft = 644
        end
        inherited PlSair: TPanel
          Left = 863
          ExplicitLeft = 863
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
