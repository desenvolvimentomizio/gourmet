inherited ldtf: Tldtf
  Caption = 'ldtf'
  PixelsPerInch = 96
  TextHeight = 13
  inline fradtf: Tfradtf
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
          Top = 379
          Width = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
        end
        inherited PlRodaPe: TPanel
          Top = 384
          Width = 880
          inherited PlRodapeItens: TPanel
            Width = 880
          end
          inherited listaitm: TDBGrid
            Width = 880
            Columns = <
              item
                Expanded = False
                FieldName = 'itmchave'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmitem'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronome'
                Width = 345
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unisimbolo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmvalor'
                Title.Caption = 'Vlr Unit.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmquantidade'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotal'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmdesconto'
                Title.Caption = 'Desc.'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotalliq'
                Title.Caption = 'Total Liquido'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cfocfop'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmaliqipi'
                Width = 30
                Visible = True
              end>
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
          Height = 250
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 225
          end
          inherited PnlRodapeGrid: TPanel
            Top = 225
            Width = 880
            inherited Pnl1: TPanel
              Width = 878
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        inherited plid: TPanel
          Left = 644
        end
        inherited PlSair: TPanel
          Left = 863
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
