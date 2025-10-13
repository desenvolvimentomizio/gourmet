inherited lidc: Tlidc
  Caption = 'Cadastro para Emiss'#227'o de NFCe'
  ClientHeight = 618
  ClientWidth = 916
  ExplicitWidth = 932
  ExplicitHeight = 657
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 589
    Width = 916
    ExplicitTop = 589
    ExplicitWidth = 916
    inherited bconfirma: TBitBtn
      Left = 762
      ExplicitLeft = 762
    end
    inherited bcancela: TBitBtn
      Left = 837
      ExplicitLeft = 837
    end
  end
  inline fraidc: Tfraidc
    Left = 0
    Top = 0
    Width = 916
    Height = 589
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 916
    ExplicitHeight = 589
    inherited PlGeral: TPanel
      Width = 916
      Height = 589
      ExplicitWidth = 916
      ExplicitHeight = 589
      inherited SplBotoes: TSplitter
        Height = 569
        ExplicitHeight = 555
      end
      inherited PlBotoes: TPanel
        Height = 569
        ExplicitHeight = 569
        inherited ImageLogoBase: TImage
          Top = 490
          ExplicitTop = 476
        end
        inherited PlInfo: TPanel
          Top = 551
          ExplicitTop = 551
        end
        inherited SBBotoes: TScrollBox
          Height = 490
          ExplicitHeight = 490
        end
      end
      inherited PlLista: TPanel
        Width = 772
        Height = 569
        ExplicitWidth = 772
        ExplicitHeight = 569
        inherited SplLista: TSplitter
          Top = 538
          Width = 772
          ExplicitTop = 523
          ExplicitWidth = 762
        end
        inherited SpFilter: TSplitter
          Width = 772
          ExplicitWidth = 762
        end
        inherited PlRodaPe: TPanel
          Top = 543
          Width = 772
          ExplicitTop = 543
          ExplicitWidth = 772
        end
        inherited PlFiltros: TPanel
          Width = 772
          ExplicitWidth = 772
        end
        inherited PlSelecao: TPanel
          Width = 772
          ExplicitWidth = 772
          inherited GBPlSelecao: TGroupBox
            Width = 768
            ExplicitWidth = 768
            inherited DBLista: TDBGrid
              Width = 661
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 772
          Height = 409
          ExplicitWidth = 772
          ExplicitHeight = 409
          inherited DBGLista: TDBGrid
            Width = 772
            Height = 384
          end
          inherited PnlRodapeGrid: TPanel
            Top = 384
            Width = 772
            ExplicitTop = 384
            ExplicitWidth = 772
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 916
        ExplicitWidth = 916
        inherited plid: TPanel
          Left = 466
          ExplicitLeft = 466
        end
        inherited PlSair: TPanel
          Left = 710
          ExplicitLeft = 710
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
  end
end
