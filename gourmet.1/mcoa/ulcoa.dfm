inherited lcoa: Tlcoa
  Caption = 'Controle Altera'#231#227'o de Campo'
  PixelsPerInch = 96
  TextHeight = 13
  inline fracoa: Tfracoa
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
                FieldName = 'coacodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtbcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dcpcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clbcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'coadata'
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
          Left = 842
        end
      end
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
