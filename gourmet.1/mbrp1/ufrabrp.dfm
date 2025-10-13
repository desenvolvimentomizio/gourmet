inherited frabrp: Tfrabrp
  Height = 735
  ExplicitHeight = 735
  inherited PlGeral: TPanel
    Height = 735
    ExplicitHeight = 735
    inherited SplBotoes: TSplitter
      Height = 715
      ExplicitHeight = 709
    end
    inherited PlBotoes: TPanel
      Height = 715
      ExplicitHeight = 715
      inherited ImageLogoBase: TImage
        Top = 636
        ExplicitTop = 630
      end
      inherited PlInfo: TPanel
        Top = 697
        ExplicitTop = 697
      end
      inherited SBBotoes: TScrollBox
        Height = 636
        ExplicitHeight = 636
      end
    end
    inherited PlLista: TPanel
      Height = 715
      ExplicitHeight = 715
      inherited SplLista: TSplitter
        Top = 406
        ExplicitTop = 400
      end
      inherited PlRodaPe: TPanel
        Top = 411
        ExplicitTop = 411
      end
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
        Height = 277
        ExplicitHeight = 277
        inherited DBGLista: TDBGrid
          Height = 236
        end
        inherited PnlRodapeGrid: TPanel
          Top = 236
          ExplicitTop = 236
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
  inherited DSTabela: TUniDataSource
    Left = 336
    Top = 268
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
      '     , rfi.rfidtprevisao'
      '     , rfi.meschave'
      '     , rfi.rngchave'
      '     , rfi.bolnossonumero'
      
        '     , if (rfi.srfcodigo=1 OR rfi.srfcodigo=2,  rfi.rfibaixadoca' +
        'pital+rfi.rfijuros+rfi.rfimulta-rfi.rfidesconto,0) as rfibaixato' +
        'tal'
      '     , rfi.flasigla'
      '     , rfi.SaldoJurosMora AS rfisaldomora'
      '     , rfi.rfimarca'
      
        '     , (select meschave from rfm where rfm.rfichave=rfi.rfichave' +
        ' limit 1) meschave'
      '     , rfi.rdcnrauto'
      ''
      'FROM v_rfi rfi, rfi r'
      'WHERE rfi.tfdcodigo = :tfdcodigo'
      'and rfi.rfichave=r.rfichave'
      
        'AND rfi.flacodigo in (select flacodigo from fcb where clbcodigo=' +
        ':clbcodigo )'
      'AND rfi.srfcodigo IN (0, 1)')
  end
  inherited cca: TUniQuery
    Top = 216
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited Dfmd: TDataSource
    Left = 824
    Top = 275
  end
  inherited extrfi: TUniQuery
    Left = 296
    Top = 217
  end
  inherited tabela: TVirtualTable
    Left = 208
    Data = {04000000000000000000}
  end
  inherited vbaixa: TVirtualTable
    Left = 688
    Top = 500
    Data = {04000000000000000000}
  end
  inherited Dvbaixa: TUniDataSource
    Left = 728
    Top = 500
  end
  inherited VTBaixaLte: TVirtualTable
    Data = {04000000000000000000}
  end
end
