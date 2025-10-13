inherited lspt: Tlspt
  Caption = 'Sprint para Teste'
  ClientWidth = 856
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 856
    inherited bconfirma: TBitBtn
      Left = 702
    end
    inherited bcancela: TBitBtn
      Left = 777
    end
  end
  inline fraspt: Tfraspt
    Left = 0
    Top = 0
    Width = 856
    Height = 640
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 856
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
        Width = 704
        Height = 606
        inherited SplLista: TSplitter
          Top = 464
          Width = 702
        end
        inherited SpFilter: TSplitter
          Width = 702
        end
        inherited PlRodaPe: TPanel
          Top = 469
          Width = 702
          Height = 136
          inherited GroupBox1: TGroupBox
            Width = 145
            Height = 136
            inherited Splitter1: TSplitter
              Top = 21
              Width = 141
            end
            inherited hmddescricao: TDBMemo
              Width = 141
              Height = 6
            end
            inherited GroupBox2: TGroupBox
              Top = 24
              Width = 141
              inherited DBGHistorico: TDBGrid
                Width = 137
              end
            end
          end
          inherited DBGPsh: TDBGrid
            Height = 136
          end
        end
        inherited PlFiltros: TPanel
          Width = 702
        end
        inherited PlSelecao: TPanel
          Width = 702
          inherited GBPlSelecao: TGroupBox
            Width = 696
            inherited DBLista: TDBGrid
              Width = 589
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 702
          Height = 313
          inherited DBGLista: TDBGrid
            Width = 702
            Height = 280
          end
          inherited PnlRodapeGrid: TPanel
            Top = 280
            Width = 702
            Height = 33
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 848
        inherited plid: TPanel
          Left = 446
        end
        inherited PlSair: TPanel
          Left = 666
        end
      end
    end
    inherited DSTabela: tunidatasource
      Left = 308
      Top = 236
    end
    inherited MenuManutencao: TPopupMenu
      Left = 428
      Top = 296
    end
    inherited uqtabela: tuniquery
      Left = 248
      Top = 232
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
