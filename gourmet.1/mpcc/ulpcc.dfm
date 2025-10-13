inherited lpcc: Tlpcc
  Caption = 'Plano de Contas Cont'#225'beis'
  ClientWidth = 752
  ExplicitWidth = 768
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 752
    TabOrder = 1
    ExplicitWidth = 752
    inherited bconfirma: TBitBtn
      Left = 598
      ExplicitLeft = 598
    end
    inherited bcancela: TBitBtn
      Left = 673
      ExplicitLeft = 673
    end
  end
  inline frapcc: Tfrapcc
    Left = 0
    Top = 0
    Width = 752
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 752
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 752
      Height = 632
      ExplicitWidth = 752
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
          ExplicitHeight = 527
        end
      end
      inherited PlLista: TPanel
        Width = 608
        Height = 606
        ExplicitWidth = 608
        ExplicitHeight = 606
        inherited SplLista: TSplitter
          Top = 499
          Width = 608
          ExplicitTop = 498
          ExplicitWidth = 598
        end
        inherited SpFilter: TSplitter
          Width = 608
          ExplicitWidth = 598
        end
        inherited PlRodaPe: TPanel
          Top = 504
          Width = 608
          ExplicitTop = 504
          ExplicitWidth = 608
          inherited pccdescricao: TDBMemo
            Width = 608
            ExplicitWidth = 608
          end
        end
        inherited PlFiltros: TPanel
          Width = 608
          ExplicitWidth = 608
        end
        inherited PlSelecao: TPanel
          Width = 608
          ExplicitWidth = 608
          inherited GBPlSelecao: TGroupBox
            Width = 604
            ExplicitWidth = 604
            inherited DBLista: TDBGrid
              Width = 497
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 608
          Height = 370
          ExplicitWidth = 608
          ExplicitHeight = 370
          inherited DBGLista: TDBGrid
            Width = 608
            Height = 345
            Columns = <
              item
                Expanded = False
                FieldName = 'pcccodigo'
                Width = 157
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pccidentificacao'
                Width = 264
                Visible = True
              end>
          end
          inherited PnlRodapeGrid: TPanel
            Top = 345
            Width = 608
            ExplicitTop = 345
            ExplicitWidth = 608
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 752
        ExplicitWidth = 752
        inherited plid: TPanel
          Left = 372
          ExplicitLeft = 372
        end
        inherited PlSair: TPanel
          Left = 591
          ExplicitLeft = 591
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
