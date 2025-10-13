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
            Width = 444
            ExplicitWidth = 444
            inherited mostra: TProgressBar
              Width = 76
              ExplicitWidth = 76
            end
          end
          inherited GroupBox8: TGroupBox
            Left = 446
            Width = 166
            ExplicitLeft = 446
            ExplicitWidth = 166
            object SpeedButtonAlterardata: TSpeedButton [0]
              Left = 114
              Top = 15
              Width = 50
              Height = 20
              Action = ActAlterarDataBaixa
              Align = alRight
              Caption = '...'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFD4D4D5
                37444B31424A31424A31424A31424A31424A31424A31424A31424A303E467B85
                8BFFFFFFFFFFFFFFFFFFFFFFFF737D822499BE25C5F525C5F525C5F52390B123
                819F25B7E425C5F525C5F525C3F3304049FBFBFBFFFFFFFFFFFFFFFFFF6A757B
                24A6CD25C5F525C5F525C5F52E343A6C6C6E23819F25C5F525C5F525C5F53247
                51F8F8F8FFFFFFFFFFFFFFFFFF6A757B24A6CD25C5F525C5F525C5F5374249A1
                A1A223819F25C5F525C5F525C5F5324751F8F8F8FFFFFFFFFFFFFFFFFF6A757B
                24A6CD25C5F525C5F524B4E0424E55ADADAE29728A25C5F525C5F525C5F53247
                51F8F8F8FFFFFFFFFFFFFFFFFF6A757B24A6CD25C5F525C5F52A7891A3A4A6EB
                EBEB33434C25C5F525C5F525C5F5324751F8F8F8FFFFFFFFFFFFFFFFFF6A757B
                24A6CD25C5F525C5F5249FC44450577A818631607025C5F525C5F525C5F53247
                51F8F8F8FFFFFFFFFFFFFFFFFF737D82249ABF25C5F525C5F525C5F524ADD724
                94B625C3F325C5F525C5F525C4F331424AFBFBFBFFFFFFFFFFFFFFFFFFD2D1D2
                3542492F47512C4651304751324751324751324751324751324751304149737E
                84D5D5D6CCCCCDFFFFFFFFFFFFFFFFFFF0F0F0334C5625B6E2435057F8F8F8F8
                F8F8F8F8F8F8F8F8F8F8F8FBFBFBB2B2B3555558DCDCDCFFFFFFFFFFFFFFFFFF
                F1F1F1334C5725BBE8445158FFFFFFFFFFFFFCFBFC56616846535AEAEAEAFAFA
                FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4344C5725BDEB424E55FFFFFFFF
                FFFFBFBFC02D6A7F257E9B969A9DB0B0B15B5B5EE0DFE0FFFFFFFFFFFFFFFFFF
                FFFFFF37474F25C5F5365460DFDEDFFBFBFB57626924ABD42B7892B4B3B5FFFF
                FFD5D5D6D2D1D2FFFFFFFFFFFFFFFFFFFFFFFF6C777C2691B326A7CF36596636
                474F2D809A25BFEE33454EEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF2F2F23C484F288FAF25C4F325C5F524B3DE315360A5A9ADFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3707A7F37444B34
                424B47535AC7C7C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            inherited diabaixa: TDateTimePicker
              Align = alLeft
              Enabled = False
              ExplicitHeight = 20
            end
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
  inherited acoes: TActionList
    object ActAlterarDataBaixa: TAction [14]
      Category = 'Manuten'#231#227'o'
      Caption = 'Alterar Data da Baixa'
      OnExecute = ActAlterarDataBaixaExecute
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
  inherited Dfmd: TDataSource
    Left = 840
  end
  inherited XMLDocument1: TXMLDocument
    Top = 341
  end
  inherited lte: TUniQuery
    SQL.Strings = (
      
        'select  ltechave, tfdcodigo, ltedata, lteprincipal, ltejuros, lt' +
        'edesconto, ltetotal, lteextenso,  ltehistorico,ltemulta, ccxchav' +
        'e from lte where ltechave=:ltechave')
    object lteccxchave: TIntegerField
      FieldName = 'ccxchave'
    end
  end
  inherited mfi: TUniQuery
    Left = 576
    Top = 588
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
    Left = 740
    Top = 556
    Data = {04000000000000000000}
  end
  inherited Dvbaixa: TUniDataSource
    Left = 788
    Top = 556
  end
  inherited VTBaixaLte: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited DVTBaixaLte: TUniDataSource
    Left = 965
    Top = 630
  end
end
