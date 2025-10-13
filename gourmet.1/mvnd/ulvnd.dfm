inherited lvnd: Tlvnd
  Caption = 'Sa'#237'das'
  ClientHeight = 778
  ClientWidth = 1255
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 749
    Width = 1255
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 1101
    end
    inherited bcancela: TBitBtn
      Left = 1176
    end
  end
  inline fravnd: Tfravnd
    Left = 0
    Top = 0
    Width = 1255
    Height = 749
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    inherited PlGeral: TPanel
      Width = 1255
      Height = 749
      inherited SplBotoes: TSplitter
        Height = 723
      end
      inherited PlBotoes: TPanel
        Height = 723
        inherited ImageLogoBase: TImage
          Top = 636
        end
        inherited PlInfo: TPanel
          Top = 697
        end
        inherited SBBotoes: TScrollBox
          Height = 636
        end
      end
      inherited PlLista: TPanel
        Width = 1111
        Height = 723
        inherited SplLista: TSplitter
          Top = 562
          Width = 1111
        end
        inherited SpFilter: TSplitter
          Width = 1111
        end
        inherited PlRodaPe: TPanel
          Top = 567
          Width = 1111
          inherited SplItens: TSplitter
            Left = 717
          end
          inherited PlResumo: TPanel
            Left = 774
          end
          inherited PlItens: TPanel
            Width = 717
            inherited listaitm: TDBGrid
              Width = 713
            end
            inherited PlRodapeItens: TPanel
              Width = 713
            end
          end
        end
        inherited PlFiltros: TPanel
          Width = 1111
        end
        inherited PlSelecao: TPanel
          Width = 1111
          inherited GBPlSelecao: TGroupBox
            Width = 1095
            inherited DBLista: TDBGrid
              Width = 988
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 1111
          Height = 433
          inherited DBGLista: TDBGrid
            Width = 1111
            Height = 286
          end
          inherited PnlRodapeGrid: TPanel
            Top = 318
            Width = 1111
            inherited PCDetalhes: TPageControl
              Width = 1109
              inherited TSObservacoes: TTabSheet
                inherited listaobs: TDBGrid
                  Width = 1091
                end
              end
            end
            inherited Pnl1: TPanel
              Width = 1109
            end
          end
          inherited plInformacoes: TPanel
            Top = 286
            Width = 1111
            inherited plEstorno: TPanel
              Width = 1097
            end
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1255
        inherited plid: TPanel
          Left = 909
          Caption = '02.04.09.001-01'
        end
        inherited PlSair: TPanel
          Left = 1125
        end
      end
    end
    inherited acoes: TActionList
      Left = 420
      Top = 64
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
    inherited cfg: TUniQuery
      SQL.Strings = ()
    end
  end
end
