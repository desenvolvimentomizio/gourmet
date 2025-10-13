inherited lspr: Tlspr
  Caption = 'Sprint'
  ClientHeight = 536
  ClientWidth = 861
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 507
    Width = 861
    inherited bconfirma: TBitBtn
      Left = 707
    end
    inherited bcancela: TBitBtn
      Left = 782
    end
  end
  inline fraspr: Tfraspr
    Left = 0
    Top = 0
    Width = 861
    Height = 507
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 861
      Height = 507
      inherited SplBotoes: TSplitter
        Height = 473
      end
      inherited PlBotoes: TPanel
        Height = 473
        inherited ImageLogoBase: TImage
          Top = 394
        end
        inherited PlInfo: TPanel
          Top = 455
        end
        inherited SBBotoes: TScrollBox
          Height = 394
        end
      end
      inherited PlLista: TPanel
        Width = 709
        Height = 473
        inherited SplLista: TSplitter
          Top = 318
          Width = 707
        end
        inherited SpFilter: TSplitter
          Width = 707
        end
        inherited PlRodaPe: TPanel
          Top = 323
          Width = 707
          inherited GroupBox1: TGroupBox
            Width = 150
            inherited Splitter1: TSplitter
              Width = 146
            end
            inherited hmddescricao: TDBMemo
              Width = 146
            end
            inherited GroupBox2: TGroupBox
              Width = 146
              inherited DBGHistorico: TDBGrid
                Width = 142
              end
            end
          end
        end
        inherited PlFiltros: TPanel
          Width = 707
        end
        inherited PlSelecao: TPanel
          Width = 707
          inherited GBPlSelecao: TGroupBox
            Width = 701
            inherited DBLista: TDBGrid
              Width = 594
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 707
          Height = 167
          inherited DBGLista: TDBGrid
            Width = 707
            Height = 142
            Columns = <
              item
                Expanded = False
                FieldName = 'sprcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sprdtfinal'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sprdtfinal'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clbidentificacao'
                Visible = True
              end>
          end
          inherited PnlRodapeGrid: TPanel
            Top = 142
            Width = 707
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 853
        inherited plid: TPanel
          Left = 451
        end
        inherited PlSair: TPanel
          Left = 671
        end
      end
    end
    inherited DSTabela: tunidatasource
      Top = 216
    end
    inherited MenuManutencao: TPopupMenu
      Left = 464
      Top = 240
    end
    inherited uqtabela: tuniquery
      Left = 216
      Top = 212
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
