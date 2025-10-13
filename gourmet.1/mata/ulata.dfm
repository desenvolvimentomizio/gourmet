inherited lata: Tlata
  Caption = 'Atribui'#231#227'o de Atividades'
  ClientHeight = 639
  ClientWidth = 1088
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 610
    Width = 1088
    inherited bconfirma: TBitBtn
      Left = 934
    end
    inherited bcancela: TBitBtn
      Left = 1009
    end
  end
  inline fraata: Tfraata
    Left = 0
    Top = 0
    Width = 1088
    Height = 610
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    inherited PlGeral: TPanel
      Width = 1088
      Height = 610
      inherited SplBotoes: TSplitter
        Height = 576
      end
      inherited PlBotoes: TPanel
        Height = 576
        inherited ImageLogoBase: TImage
          Top = 497
        end
        inherited PlInfo: TPanel
          Top = 558
        end
        inherited SBBotoes: TScrollBox
          Height = 497
        end
      end
      inherited PlLista: TPanel
        Width = 936
        Height = 576
        inherited SplLista: TSplitter
          Top = 544
          Width = 934
        end
        inherited SpFilter: TSplitter
          Width = 934
        end
        inherited PlRodaPe: TPanel
          Top = 549
          Width = 934
        end
        inherited PlFiltros: TPanel
          Width = 934
        end
        inherited PlSelecao: TPanel
          Width = 934
          inherited GBPlSelecao: TGroupBox
            Width = 928
            inherited DBLista: TDBGrid
              Width = 821
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 934
          Height = 393
          inherited DBGLista: TDBGrid
            Width = 934
            Height = 368
          end
          inherited PnlRodapeGrid: TPanel
            Top = 368
            Width = 934
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1080
        inherited plid: TPanel
          Left = 678
        end
        inherited PlSair: TPanel
          Left = 898
        end
      end
    end
    inherited uqtabela: tuniquery
      SQL.Strings = (
        
          'select  atachave, ata.fnvchave,fnsidentificacao, ata.clbcodigo,c' +
          'lbidentificacao, ata.etacodigo,etaidentificacao,  ata.feccodigo,' +
          ' fecidentificacao, atadtinicial, atadtfinal, ata.fnscodigo, ata.' +
          'mdacodigo from ata, fnv, fns, clb, eta, fec where'
        'ata.fnvchave=fnv.fnvchave and'
        'fns.fnscodigo=fnv.fnscodigo and'
        'ata.clbcodigo=clb.clbcodigo and'
        'ata.etacodigo=eta.etacodigo and'
        'ata.feccodigo=fec.feccodigo')
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
