inherited lvfovfe: Tlvfovfe
  Caption = 'lvfovfe'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Visible = True
  end
  inline fravfovfe: Tfravfovfe
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      inherited SplBotoes: TSplitter
        Height = 606
      end
      inherited PlBotoes: TPanel
        Height = 606
        inherited ImageLogoBase: TImage
          Top = 527
        end
        inherited PlInfo: TPanel
          Top = 588
        end
        inherited SBBotoes: TScrollBox
          Height = 527
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 606
        inherited SplLista: TSplitter
          Top = 401
          Width = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
        end
        inherited PlRodaPe: TPanel
          Top = 406
          Width = 880
          inherited GBSelecionados: TGroupBox
            Width = 880
            inherited DBGSelecionados: TDBGrid
              Width = 876
            end
          end
          inherited PnlSelecionados: TPanel
            Width = 880
            inherited GBTotalAtendSel: TGroupBox
              Left = 769
            end
            inherited GBQtdAtendSel: TGroupBox
              Left = 709
            end
          end
        end
        inherited PlFiltros: TPanel
          Width = 880
        end
        inherited PlSelecao: TPanel
          Width = 880
          inherited GBPlSelecao: TGroupBox
            Width = 876
            inherited DBLista: TDBGrid
              Width = 769
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 880
          Height = 272
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 232
          end
          inherited PnlRodapeGrid: TPanel
            Top = 232
            Width = 880
            inherited GBTotalAtend: TGroupBox
              Left = 769
            end
            inherited GBQtdAtend: TGroupBox
              Left = 709
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 670
        end
        inherited PlSair: TPanel
          Left = 862
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
