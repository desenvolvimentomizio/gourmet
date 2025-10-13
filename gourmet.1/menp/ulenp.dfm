inherited lenp: Tlenp
  Caption = 'lenp'
  ExplicitWidth = 1040
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inline fraenp: Tfraenp
    Left = 0
    Top = 0
    Width = 1024
    Height = 632
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 1024
    ExplicitHeight = 632
    inherited PlGeral: TPanel
      Width = 1024
      Height = 632
      ExplicitWidth = 1024
      ExplicitHeight = 632
      inherited SplBotoes: TSplitter
        Height = 606
        ExplicitHeight = 598
      end
      inherited PlBotoes: TPanel
        Height = 606
        ExplicitHeight = 606
        inherited ImageLogoBase: TImage
          Top = 527
          ExplicitTop = 519
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
        Width = 880
        Height = 606
        ExplicitWidth = 880
        ExplicitHeight = 606
        inherited SplLista: TSplitter
          Top = 575
          Width = 880
          ExplicitTop = 566
          ExplicitWidth = 870
        end
        inherited SpFilter: TSplitter
          Width = 880
          ExplicitWidth = 870
        end
        inherited PlRodaPe: TPanel
          Top = 580
          Width = 880
          ExplicitTop = 580
          ExplicitWidth = 880
        end
        inherited PlFiltros: TPanel
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlSelecao: TPanel
          Width = 880
          ExplicitWidth = 880
          inherited GBPlSelecao: TGroupBox
            Width = 876
            ExplicitWidth = 876
            inherited DBLista: TDBGrid
              Width = 769
            end
          end
        end
        inherited PnlGrid: TPanel
          Width = 880
          Height = 446
          ExplicitWidth = 880
          ExplicitHeight = 446
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 421
          end
          inherited PnlRodapeGrid: TPanel
            Top = 421
            Width = 880
            ExplicitTop = 421
            ExplicitWidth = 880
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 1024
        inherited plid: TPanel
          Left = 644
          ExplicitLeft = 644
        end
        inherited PlSair: TPanel
          Left = 863
          ExplicitLeft = 863
        end
      end
    end
    inherited uqtabela: TUniQuery
      SQL.Strings = (
        'SELECT'
        '  enp.enpcodigo,'
        '  enp.enpendereco'
        'FROM enp'
        '  JOIN (SELECT'
        '      enpcodigo AS encodigoSub,'
        
          '      CONVERT(CONCAT(are.areidentificacao, '#39'.'#39', rue.rueidentific' +
          'acao, '#39'.'#39', pde.pdeidentificacao, '#39'.'#39', ane.aneidentificacao), cha' +
          'r) AS enpendereco'
        '    FROM enp,'
        '         are,'
        '         rue,'
        '         pde,'
        '         ane'
        '    WHERE are.arecodigo = enp.arecodigo'
        '    AND rue.ruecodigo = enp.ruecodigo'
        '    AND pde.pdecodigo = enp.pdecodigo'
        '    AND ane.anecodigo = enp.anecodigo) enp'
        '    ON enp.encodigoSub = enp.enpcodigo'
        '    AND enp.flacodigo=:flacodigo')
      ParamData = <
        item
          DataType = ftUnknown
          Name = 'flacodigo'
          Value = nil
        end>
    end
    inherited vcls: TVirtualTable
      Data = {03000000000000000000}
    end
  end
end
