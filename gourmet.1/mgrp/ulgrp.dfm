inherited lgrp: Tlgrp
  Caption = 'Grupos de Produtos'
  ClientHeight = 548
  ClientWidth = 1079
  ExplicitWidth = 1095
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 519
    Width = 1079
    TabOrder = 1
    ExplicitTop = 519
    ExplicitWidth = 1079
    inherited bconfirma: TBitBtn
      Left = 925
      ExplicitLeft = 925
    end
    inherited bcancela: TBitBtn
      Left = 1000
      ExplicitLeft = 1000
    end
  end
  inline fragrp: Tfragrp
    Left = 0
    Top = 0
    Width = 1079
    Height = 519
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 1079
    ExplicitHeight = 519
    inherited PlGeral: TPanel
      Width = 1079
      Height = 519
      ExplicitWidth = 1079
      ExplicitHeight = 519
      inherited SplBotoes: TSplitter
        Height = 499
        ExplicitHeight = 376
      end
      inherited PlBotoes: TPanel
        Height = 499
        ExplicitHeight = 499
        inherited ImageLogoBase: TImage
          Top = 420
          ExplicitTop = 297
        end
        inherited PlInfo: TPanel
          Top = 481
          ExplicitTop = 481
        end
        inherited SBBotoes: TScrollBox
          Height = 420
          ExplicitHeight = 420
        end
      end
      inherited PlLista: TPanel
        Width = 935
        Height = 499
        ExplicitWidth = 935
        ExplicitHeight = 499
        inherited SplLista: TSplitter
          Top = 468
          Width = 935
          ExplicitTop = 344
          ExplicitWidth = 564
        end
        inherited SpFilter: TSplitter
          Width = 935
          ExplicitWidth = 564
        end
        inherited PlRodaPe: TPanel
          Top = 473
          Width = 935
          ExplicitTop = 473
          ExplicitWidth = 935
        end
        inherited PlFiltros: TPanel
          Width = 935
          ExplicitWidth = 935
        end
        inherited PlSelecao: TPanel
          Width = 935
          ExplicitWidth = 935
          inherited GBPlSelecao: TGroupBox
            Width = 931
            ExplicitWidth = 931
            inherited DBLista: TDBGrid
              Width = 824
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 935
          Height = 339
          ExplicitWidth = 935
          ExplicitHeight = 339
          inherited DBGLista: TDBGrid
            Width = 935
            Height = 314
          end
          inherited PnlRodapeGrid: TPanel
            Top = 314
            Width = 935
            ExplicitTop = 314
            ExplicitWidth = 935
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1079
        ExplicitWidth = 1079
        inherited plid: TPanel
          Left = 833
          ExplicitLeft = 833
        end
        inherited PlSair: TPanel
          Left = 629
          ExplicitLeft = 629
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
