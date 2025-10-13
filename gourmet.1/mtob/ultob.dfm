inherited ltob: Tltob
  Caption = 'Tabela de Ocorr'#234'ncia de Boletos'
  PixelsPerInch = 96
  TextHeight = 13
  inline fratob: Tfratob
    Left = 0
    Top = 0
    Width = 1032
    Height = 640
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1032
      Height = 640
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
          Top = 574
          Width = 878
        end
        inherited SpFilter: TSplitter
          Width = 878
        end
        inherited PlRodaPe: TPanel
          Top = 579
          Width = 878
        end
        inherited PlFiltros: TPanel
          Width = 878
        end
        inherited PlSelecao: TPanel
          Width = 878
          inherited GBPlSelecao: TGroupBox
            Width = 872
            inherited DBLista: TDBGrid
              Width = 765
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 878
          Height = 423
          inherited DBGLista: TDBGrid
            Width = 878
            Height = 398
            Columns = <
              item
                Expanded = False
                FieldName = 'tobcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tobidentificacao'
                Width = 235
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'bcocodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'bconome'
                Width = 153
                Visible = True
              end>
          end
          inherited PnlRodapeGrid: TPanel
            Top = 398
            Width = 878
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 662
        end
        inherited PlSair: TPanel
          Left = 880
        end
      end
    end
    inherited DSTabela: tunidatasource
      Left = 232
      Top = 160
    end
    inherited uqtabela: tuniquery
      inherited uqtabelabconome: TStringField
        DisplayLabel = 'Banco'
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
