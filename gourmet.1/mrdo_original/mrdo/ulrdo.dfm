inherited lrdo: Tlrdo
  Caption = 'Reimpress'#227'o de Documento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    inherited bconfirma: TBitBtn
      Visible = False
    end
    inherited bcancela: TBitBtn
      Caption = 'Fechar'
    end
  end
  inline frardo: Tfrardo
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
        Height = 612
        ExplicitHeight = 612
      end
      inherited PlBotoes: TPanel
        Height = 612
        ExplicitHeight = 612
        inherited ImageLogoBase: TImage
          Top = 533
          ExplicitTop = 533
        end
        inherited PlInfo: TPanel
          Top = 594
          ExplicitTop = 594
        end
        inherited SBBotoes: TScrollBox
          Height = 533
          ExplicitHeight = 533
          inherited DBGrid1: TDBGrid
            Top = 413
          end
        end
      end
      inherited PlLista: TPanel
        Width = 880
        Height = 612
        ExplicitWidth = 880
        ExplicitHeight = 612
        inherited SplLista: TSplitter
          Top = 443
          Width = 880
          ExplicitTop = 581
          ExplicitWidth = 880
        end
        inherited SpFilter: TSplitter
          Width = 880
          ExplicitWidth = 880
        end
        inherited PlRodaPe: TPanel
          Top = 448
          Width = 880
          ExplicitTop = 448
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
          Height = 314
          ExplicitWidth = 880
          ExplicitHeight = 314
          inherited DBGLista: TDBGrid
            Width = 880
            Height = 289
          end
          inherited PnlRodapeGrid: TPanel
            Top = 289
            Width = 880
            ExplicitTop = 289
            ExplicitWidth = 880
          end
        end
      end
      inherited PlTitulo: TPanel
        Width = 1024
        ExplicitWidth = 1024
        inherited plid: TPanel
          Left = 574
          ExplicitLeft = 574
        end
        inherited PlSair: TPanel
          Left = 818
          ExplicitLeft = 818
        end
      end
    end
    inherited uqtabela: TUniQuery
      SQL.Strings = (
        'SELECT '
        '  mes.meschave, '
        '  IF((SELECT '
        '      COUNT(micchave) '
        '    FROM mic '
        
          '    WHERE mic.meschave = mes.meschave) > 0, CONCAT(etd.etdidenti' +
          'ficacao, '#39' '#39', (SELECT '
        '      idcnome '
        '    FROM idc, '
        '         mic '
        '    WHERE idc.idccodigo = mic.idccodigo '
        
          '    AND mic.meschave = mes.meschave limit 1) ), etd.etdidentific' +
          'acao) AS etdidentificacao, '
        '  sde.sdeidentificacao, '
        '  tdf.tdfidentificacao, '
        '  toe.toeidentificacao, '
        '  mes.mesemissao, '
        '  mes.mesnumero, '
        '  mes.etdcodigo, '
        '  mes.messerie, '
        '  meschavenfe, '
        '  mes.mesregistro, '
        '  mes.mesvalor, '
        '  mes.mesdesconto, '
        '  mes.mestotal, '
        '  mes.temcodigo, '
        '  mes.clbcodigo, '
        '  mes.trmcodigo, '
        '  mesprotocolo, '
        '  mes.sdecodigo, '
        '  mesdatanfe, '
        '  toeorigem, '
        '  mes.tdfcodigo, '
        '  toe.ttecodigo, '
        '  tte.tteidentificacao, '
        '  temidentificacao, '
        '  mesprodutos, '
        '  messervicos, '
        '  toe.ttocodigo, '
        '  mes.mespis, '
        '  mes.mescofins, '
        '  mes.mesipi, '
        '  mes.mesicm, '
        '  mes.mesicms, '
        '  mes.flacodigo, '
        '  mes.mesrefeicao,'
        
          '  (select orcchave from mor where mor.meschave=mes.meschave limi' +
          't 1) orcchave,'
        
          '  (select orctotalav from mor,orc where orc.orcchave=mor.orcchav' +
          'e and mor.meschave=mes.meschave limit 1) orctotalav,'
        
          '  (select orctotalap from mor,orc where orc.orcchave=mor.orcchav' +
          'e and mor.meschave=mes.meschave limit 1) orctotalap,'
        '  mes.mesinclusao'
        'FROM mes, '
        '     etd, '
        '     sde, '
        '     tdf, '
        '     toe, '
        '     tte, '
        '     tem '
        'WHERE (etd.etdcodigo = mes.etdcodigo '
        'AND mes.temcodigo = tem.temcodigo '
        'AND sde.sdecodigo = mes.sdecodigo '
        'AND tte.ttecodigo = toe.ttecodigo '
        'AND tdf.tdfcodigo = mes.tdfcodigo '
        'AND toe.toecodigo = mes.toecodigo '
        'AND toe.ttmcodigo = 0 '
        'AND toe.ttecodigo = 1 '
        'AND mes.tdfcodigo NOT IN ('#39'01'#39', '#39'2D'#39', '#39'AF'#39', '#39'RF'#39', '#39'CE'#39' ) '
        
          'AND IF(mes.sdecodigo = '#39'02'#39', NOT mes.tdfcodigo = '#39'00'#39', toe.ttmco' +
          'digo = 0)) '
        ''
        '-- Filtros')
    end
    inherited vcls: TVirtualTable
      Data = {04000000000000000000}
    end
    inherited refeicoes: TUniStoredProc
      CommandStoredProcName = 'RegistraRefeicao'
    end
  end
end
