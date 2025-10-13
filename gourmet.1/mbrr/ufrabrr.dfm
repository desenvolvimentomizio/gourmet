inherited frabrr: Tfrabrr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PlFiltros: TPanel
        inherited PlEdTextoBusca: TPanel
          inherited GrBTextoProcurar: TGroupBox
            inherited PlGbEdtBusca: TPanel
              inherited edbusca: TEdit
                Color = 11206655
              end
            end
          end
        end
      end
      inherited PnlGrid: TPanel
        inherited PnlRodapeGrid: TPanel
          inherited plbotoesincluir: TPanel
            Width = 471
            ExplicitWidth = 471
            inherited mostra: TProgressBar
              Width = 103
              ExplicitWidth = 103
            end
          end
          inherited GroupBox8: TGroupBox
            Left = 473
            ExplicitLeft = 473
          end
        end
        inherited plSugestao: TPanel
          inherited cbSelecaoExata: TCheckBox
            Checked = True
            State = cbChecked
          end
        end
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT distinct rfi.rfichave'
      '     , rfi.etdcodigo'
      '     , rfi.tfdcodigo'
      '     , rfi.flacodigo'
      '     , rfi.tficodigo'
      '     , rfi.bcocodigo'
      '     , rfi.carcodigo'
      '     , rfi.rfiemissao'
      '     , rfi.rfivencimento'
      '     , rfi.rfinumero'
      '     , rfi.rfivalor'
      '     , rfi.rfihistorico'
      '     , rfi.srfidentificacao'
      '     , rfi.srfcodigo'
      '     , rfi.frrcodigo'
      '     , rfi.rfipercmesmora'
      '     , rfi.rfirepetir'
      '     , rfi.rfiprevisao'
      '     , rfi.rfivalorparcela'
      '     , rfi.moecodigo'
      '     , rfi.rfidatadesc'
      '     , rfi.rfivalodesc'
      '     , rfi.rfidatamulta'
      '     , rfi.rfipercmulta'
      '     , rfi.rfivalomulta'
      '     , rfi.etdidentificacao'
      '     , rfi.tfiidentificacao'
      '     , rfi.caridentificacao'
      '     , rfi.rfidtultbaixa'
      '     , rfi.rfidias'
      '     , rfi.rfibaixadocapital'
      '     , rfi.rfisaldocapital'
      '     , rfi.rfijuros'
      '     , rfi.rfimulta'
      '     , rfi.rfidesconto'
      '     , rfi.rfisaldogeral'
      '     , rfi.rfimoradia'
      '     , rfi.bconome'
      '     , rfi.titcodigo'
      '     , rfi.SaldoJurosMora AS rfisaldomora'
      '     , rfi.bolnossonumero'
      '     , rfi.rfimarca'
      
        '     , (select meschave from rfm where rfm.rfichave=rfi.rfichave' +
        ' limit 1) meschave'
      '     , rfi.rdcnrauto'
      ''
      'FROM v_rfi rfi, rfi r'
      'WHERE rfi.tfdcodigo = :tfdcodigo'
      'and rfi.rfichave=r.rfichave'
      'AND rfi.srfcodigo IN (0, 1)'
      
        'AND rfi.flacodigo in (select flacodigo from fcb where clbcodigo=' +
        ':clbcodigo )')
  end
  inherited cca: TUniQuery
    Top = 200
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited MenuRelatorios: TPopupMenu
    Left = 458
    Top = 268
  end
  inherited Dfmd: TDataSource
    Left = 840
  end
  inherited extrfi: TUniQuery
    SQL.Strings = (
      '/*CALL extratoCRE(:vtfdcdigo)*/'
      ''
      'CALL extratoRFI(:vtfdcdigo)')
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfg.cfgdtinictb'
      '     , cfg.cfgusactb'
      '     , cfg.cfgusabol'
      '     , cfg.cfgdatapadrao'
      '     , cfgmcre.cfgfiltrarrec'
      '     , cfgctbusaccg'
      '     , ccgmultajuros'
      'FROM cfg, cfgmcre, cfgmctb'
      
        '   where cfg.cfgcodigo=cfgmcre.cfgcodigo and flacodigo=:flacodig' +
        'o'
      '     AND cfg.cfgcodigo=cfgmctb.cfgcodigo')
    object cfgcfgfiltrarrec: TIntegerField
      FieldName = 'cfgfiltrarrec'
    end
  end
  inherited tabela: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited vbaixa: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited VTBaixaLte: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited DVTBaixaLte: TUniDataSource
    Left = 965
    Top = 630
  end
end
