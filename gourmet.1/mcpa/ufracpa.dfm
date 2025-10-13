inherited fracpa: Tfracpa
  Width = 1390
  Height = 675
  ExplicitWidth = 1390
  ExplicitHeight = 675
  inherited PlGeral: TPanel
    Width = 1390
    Height = 675
    ExplicitWidth = 1390
    ExplicitHeight = 675
    inherited SplBotoes: TSplitter
      Height = 655
      ExplicitHeight = 655
    end
    inherited PlBotoes: TPanel
      Height = 655
      ExplicitHeight = 655
      inherited ImageLogoBase: TImage
        Top = 576
        ExplicitTop = 576
      end
      inherited PlInfo: TPanel
        Top = 637
        ExplicitTop = 637
      end
      inherited SBBotoes: TScrollBox
        Height = 576
        ExplicitHeight = 576
      end
    end
    inherited PlLista: TPanel
      Width = 1246
      Height = 655
      ExplicitWidth = 1246
      ExplicitHeight = 655
      inherited SplLista: TSplitter
        Top = 499
        Width = 1246
        ExplicitTop = 499
        ExplicitWidth = 1246
      end
      inherited SpFilter: TSplitter
        Width = 1246
        ExplicitWidth = 1246
      end
      inherited PlRodaPe: TPanel
        Top = 504
        Width = 1246
        ExplicitTop = 504
        ExplicitWidth = 1246
        object Splitter1: TSplitter [0]
          Left = 396
          Top = 0
          Width = 10
          Height = 151
          ExplicitLeft = 386
          ExplicitTop = -5
        end
        object Splitter2: TSplitter [1]
          Left = 838
          Top = 0
          Width = 10
          Height = 151
          ExplicitLeft = 895
          ExplicitTop = 24
        end
        inherited plDetalhes: TPanel
          inherited DBGListaMfi: TDBGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'mfichave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mfidata'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mfivalor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cedidentificacao'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'tmfidentificacao'
                Width = 150
                Visible = True
              end>
          end
        end
        inherited plEstorno: TPanel
          Left = 406
          ExplicitLeft = 406
        end
        object DBGridPcr: TDBGrid
          Left = 848
          Top = 0
          Width = 398
          Height = 151
          Align = alClient
          Color = clCream
          DataSource = Dpcr
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridPcrDrawColumnCell
        end
      end
      inherited PlFiltros: TPanel
        Width = 1246
        ExplicitWidth = 1246
        inherited PlEdTextoBusca: TPanel
          inherited GrBTextoProcurar: TGroupBox
            inherited PlGbEdtBusca: TPanel
              inherited edbusca: TEdit
                Color = 11206655
              end
            end
          end
        end
        inherited PlBotaoFiltroEsp2: TPanel
          Enabled = True
        end
      end
      inherited PlSelecao: TPanel
        Width = 1246
        ExplicitWidth = 1246
        inherited GBPlSelecao: TGroupBox
          Width = 1242
          ExplicitWidth = 1242
          inherited DBLista: TDBGrid
            Width = 1135
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1246
        Height = 370
        ExplicitWidth = 1246
        ExplicitHeight = 370
        inherited DBGLista: TDBGrid
          Width = 1246
          Height = 284
          Columns = <
            item
              Expanded = False
              FieldName = 'titcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfichave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'srfidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 198
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfiidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bconome'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'caridentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfiemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfinumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidtultbaixa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidias'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfibaixadocapital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldocapital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfihistorico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidtprevisao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rngchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bolnossonumero'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfibaixatotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flasigla'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfiprevisao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tngcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfiinclusao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 325
          Width = 1246
          Visible = True
          ExplicitTop = 325
          ExplicitWidth = 1246
          inherited PlDetalhe: TPanel
            Width = 1242
            ExplicitWidth = 1242
            inherited GBRecebidos: TGroupBox
              Caption = 'Total Pago R$'
            end
          end
        end
        object plLInhadabaixa: TPanel
          Left = 0
          Top = 284
          Width = 1246
          Height = 41
          Align = alBottom
          TabOrder = 3
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1390
      ExplicitWidth = 1390
      inherited plid: TPanel
        Left = 940
        ExplicitLeft = 940
      end
      inherited PlSair: TPanel
        Left = 1184
        ExplicitLeft = 1184
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    object ActVencimento: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Vencimento'
      OnExecute = ActVencimentoExecute
    end
    object ActAjustarNucleo: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'N'#250'cleo Gerencial'
      Enabled = False
      Visible = False
      OnExecute = ActAjustarNucleoExecute
    end
    object ActCentroCustos: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Ajustar Centro Custos'
      OnExecute = ActCentroCustosExecute
    end
    object ActContabilizacao: TAction [5]
      Category = 'Manuten'#231#227'o'
      Caption = 'Contabiliza'#231#227'o'
      OnExecute = ActContabilizacaoExecute
    end
    inherited ActCancelar: TAction
      Enabled = True
      OnExecute = ActCancelarExecute
    end
    object ActPagamento: TAction [11]
      Category = 'Movimenta'#231#245'es'
      Caption = 'Pagamento'
      OnExecute = ActPagamentoExecute
    end
    object ActEstorno: TAction [12]
      Category = 'Movimenta'#231#245'es'
      Caption = 'Estorno'
      OnExecute = ActEstornoExecute
    end
    object ActDetalhe: TAction [13]
      Category = 'Movimenta'#231#245'es'
      Caption = 'Detalhes'
      OnExecute = ActDetalheExecute
    end
    object ActGerarPlanilha: TAction [21]
      Category = 'Utilit'#225'rios'
      Caption = 'Gerar Planilha'
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 240
    Top = 224
  end
  inherited MenuManutencao: TPopupMenu
    object mnUtilitarios: TMenuItem [8]
      Caption = 'Utilit'#225'rios'
      object mnVerificarCentrosdeCustos: TMenuItem
        Caption = 'Verificar Centros de Custos'
        OnClick = mnVerificarCentrosdeCustosClick
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
      '     , rfi.rfidtprevisao'
      '     , rfi.meschave'
      '     , rfi.rngchave'
      '     , rfi.rfirepetir'
      '     , rfi.bolnossonumero'
      
        '     , if (rfi.srfcodigo=1 OR rfi.srfcodigo=2,  rfi.rfibaixadoca' +
        'pital+rfi.rfijuros+rfi.rfimulta-rfi.rfidesconto,0) as rfibaixato' +
        'tal'
      '     , rfi.flasigla'
      '     , rfi.tngcodigo'
      '     , rfi.rfiinclusao'
      'FROM v_rfi rfi'
      'WHERE rfi.tfdcodigo = :tfdcodigo'
      
        '    AND rfi.flacodigo in (select flacodigo from fcb where clbcod' +
        'igo=:clbcodigo )')
    inherited uqtabelameschave: TIntegerField
      DisplayLabel = 'Compra'
    end
    inherited uqtabelarfibaixatotal: TFloatField
      DisplayLabel = 'Total Pago R$'
    end
    object uqtabelarfiinclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'rfiinclusao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited MenuRelatorios: TPopupMenu
    Left = 442
    Top = 292
  end
  inherited FechaFiltro: TTimer
    Top = 299
  end
  inherited ColorDialog: TColorDialog
    Left = 912
    Top = 381
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgdtinictb'
      '     , cfgdtfinctb'
      '     , cfg.cfgusabol'
      '     , cfg.cfgdatapadrao'
      '     , cfg.cfgusactb'
      '     , cfgmctb.cfgctbusaccg'
      
        'FROM cfg, cfgmctb WHERE cfg.cfgcodigo=cfgmctb.cfgcodigo and cfg.' +
        'cfgcodigo=:flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
  end
  inherited uqTotais: TUniQuery
    Top = 259
  end
  object pcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcr.pcrchave,'
      '  pcr.titcodigo,'
      '  pcr.pcgcodigo,'
      '  pcg.pcgestrutural,'
      '  pcg.pcgidentificacao,'
      '  pcr.phgcodigo,'
      '  phg.phgidentificacao,'
      '  pcr.pcrvalor,'
      '  pcr.pcrcomplhist'
      'FROM pcr'
      '  INNER JOIN pcg'
      '    ON pcr.pcgcodigo = pcg.pcgcodigo'
      '  INNER JOIN phg'
      '    ON pcr.phgcodigo = phg.phgcodigo'
      '    where pcr.titcodigo=:titcodigo')
    Left = 440
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object pcrpcrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'pcrchave'
    end
    object pcrtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object pcrpcgcodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'pcgcodigo'
    end
    object pcrpcgestrutural: TStringField
      DisplayLabel = 'Estrutural'
      FieldName = 'pcgestrutural'
      Size = 35
    end
    object pcrpcgidentificacao: TStringField
      DisplayLabel = 'Conta Contabil'
      FieldName = 'pcgidentificacao'
      Size = 50
    end
    object pcrphgcodigo: TIntegerField
      DisplayLabel = 'Hist.'
      FieldName = 'phgcodigo'
    end
    object pcrphgidentificacao: TStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'phgidentificacao'
      Size = 50
    end
    object pcrpcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'pcrvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object pcrpcrcomplhist: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'pcrcomplhist'
      Size = 50
    end
  end
  object Dpcr: TDataSource
    DataSet = pcr
    Left = 480
    Top = 456
  end
  object tit: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tit.titcodigo,'
      '  tit.etdcodigo,'
      '  tit.titvalor,'
      '  tit.titnumero,'
      '  tit.titemissao,'
      '  tit.titvalorparcela,'
      '  tit.titparcelas,'
      '  tit.titvctoinicial,'
      '  tit.tfdcodigo,'
      '  tit.srfcodigo,'
      '  tit.tficodigo,'
      '  tit.tithora,'
      '  tit.clbcodigo,'
      '  tit.tithistorico,'
      '  tit.flacodigo,'
      '  tit.bcocodigo,'
      '  tit.carcodigo,'
      '  tit.titprevisao,'
      '  tit.moecodigo,'
      '  tit.titmoradia,'
      '  tit.titdiasmulta,'
      '  tit.titvalomulta,'
      '  tit.titpercmesmora,'
      '  tit.titvalodesc,'
      '  tit.titdiasdesc,'
      '  tit.titpercmulta,'
      '  tit.titpercmesmulta'
      'FROM tit'
      'where titcodigo=:titcodigo')
    Left = 532
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titcodigo'
        Value = nil
      end>
    object tittitcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'titcodigo'
    end
    object titetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object tittitnumero: TStringField
      DisplayLabel = 'N'#250'mero principal / base'
      FieldName = 'titnumero'
      Required = True
      Size = 15
    end
    object tittitvalor: TFloatField
      DisplayLabel = 'Soma de todas parcelas'
      FieldName = 'titvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitemissao: TDateField
      DisplayLabel = 'Data daEmiss'#227'o'
      FieldName = 'titemissao'
      Required = True
    end
    object tittitvctoinicial: TDateField
      DisplayLabel = 'Vencimento 1'#170' Parcela'
      FieldName = 'titvctoinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object tittfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object titsrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object tittficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object tittithora: TTimeField
      FieldName = 'tithora'
    end
    object tittithistorico: TStringField
      DisplayLabel = 'Hist'#243'rico base'
      FieldName = 'tithistorico'
      Required = True
      Size = 255
    end
    object titclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object tittitvalorparcela: TFloatField
      FieldName = 'titvalorparcela'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitparcelas: TIntegerField
      FieldName = 'titparcelas'
      Required = True
    end
    object tittitprevisao: TIntegerField
      FieldName = 'titprevisao'
      Required = True
    end
    object titmoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object tittitmoradia: TFloatField
      FieldName = 'titmoradia'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitvalomulta: TFloatField
      FieldName = 'titvalomulta'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitpercmesmora: TFloatField
      FieldName = 'titpercmesmora'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tittitvalodesc: TFloatField
      FieldName = 'titvalodesc'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tittitpercmulta: TFloatField
      FieldName = 'titpercmulta'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object titflacodigo: TIntegerField
      FieldName = 'flacodigo'
      Required = True
    end
    object titbcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object titcarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object tittitdiasmulta: TIntegerField
      FieldName = 'titdiasmulta'
      Required = True
    end
    object tittitdiasdesc: TIntegerField
      FieldName = 'titdiasdesc'
      Required = True
    end
  end
  object mcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcg.mcgchave,'
      '  mcg.ccgcodigo,'
      '  ccg.ccgidentificacao,'
      '  mcgvalor,'
      '  mcg.mcgdata,'
      '  gcc.gccidentificacao,'
      '  mcg.mcgsituacao,'
      '  mcg.rfichave,'
      '  mcg.mcgcompetencia '
      
        'FROM mcg, ccg, gcc WHERE ccg.gcccodigo=gcc.gcccodigo and mcg.ccg' +
        'codigo=ccg.ccgcodigo and mcgchaveorigem=:mcgchaveorigem  and mcg' +
        'tabela='#39'rfi'#39' and mcg.rfichave=:rfichave')
    Left = 440
    Top = 405
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mcgchaveorigem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object mcgmcgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mcgchave'
    end
    object mcgccgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ccgcodigo'
    end
    object mcgccgidentificacao: TStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'ccgidentificacao'
      Size = 50
    end
    object mcgmcgcompetencia: TStringField
      DisplayLabel = 'Competencia'
      FieldName = 'mcgcompetencia'
      Size = 6
    end
    object mcgmcgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mcgvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mcgmcgdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'mcgdata'
    end
    object mcgmcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
      Visible = False
    end
    object mcgrfichave: TIntegerField
      DisplayLabel = 'Chave CPA'
      FieldName = 'rfichave'
    end
    object mcggccidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'gccidentificacao'
      Size = 35
    end
  end
  object titcan: TUniQuery
    Left = 1064
    Top = 381
  end
  object mcgaju: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcgchave,'
      '  ccgcodigo,'
      '  mcgvalor,'
      '  mcgdata,'
      '  mcgtabela,'
      '  mcgchaveorigem,'
      '  mcgsituacao,'
      '  clbcodigo,'
      '  mcgregistro,'
      '  rfichave'
      
        'FROM mcg where mcgchaveorigem=:mcgchaveorigem and mcgtabela='#39'cco' +
        #39' and rfichave=:rfichave and ccgcodigo=:ccgcodigo ')
    Left = 480
    Top = 405
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mcgchaveorigem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ccgcodigo'
        Value = nil
      end>
    object mcgajumcgchave: TIntegerField
      FieldName = 'mcgchave'
    end
    object mcgajuccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object mcgajumcgvalor: TFloatField
      FieldName = 'mcgvalor'
    end
    object mcgajumcgdata: TDateField
      FieldName = 'mcgdata'
    end
    object mcgajumcgtabela: TStringField
      FieldName = 'mcgtabela'
      Size = 10
    end
    object mcgajumcgchaveorigem: TIntegerField
      FieldName = 'mcgchaveorigem'
    end
    object mcgajumcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
    end
    object mcgajuclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcgajumcgregistro: TDateTimeField
      FieldName = 'mcgregistro'
    end
    object mcgajurfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cco.ccochave,'
      '  mfivalor'
      'FROM rfi'
      '  JOIN mfi'
      '    ON rfi.rfichave = mfi.rfichave'
      '  JOIN mlt'
      '    ON mfi.mfichave = mlt.mfichave'
      '  JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      ''
      '  JOIN clt  ON lte.ltechave = clt.ltechave '
      '  JOIN cco  ON clt.ccochave = cco.ccochave'
      'WHERE lte.tfdcodigo IN (22, 42)'
      'AND rfi.rfichave = :rfichave -- AND mfi.mfichave=:mfichave'
      'ORDER BY mfi.mfichave DESC')
    Left = 616
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object ccoccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object ccomfivalor: TFloatField
      FieldName = 'mfivalor'
    end
  end
  object rfi: TUniQuery
    SQL.Strings = (
      '  SELECT   '
      '  mcgchave,'
      '  ccgcodigo,'
      '  mcgvalor,'
      '  mcgdata,'
      '  mcgtabela,'
      '  mcgchaveorigem,'
      '  mcgsituacao,'
      '  clbcodigo,'
      '  mcgregistro,'
      '  rfichave'
      'FROM mcg'
      ''
      'WHERE rfichave =:rfichave'
      'AND mcgchaveorigem = :mcgchaveorigem'
      'AND mcgtabela = '#39'rfi'#39)
    Left = 688
    Top = 413
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mcgchaveorigem'
        Value = nil
      end>
  end
  object ccorfi: TUniQuery
    SQL.Strings = (
      ''
      '  SELECT   '
      '  mcgchave,'
      '  ccgcodigo,'
      '  mcgvalor,'
      '  mcgdata,'
      '  mcgtabela,'
      '  mcgchaveorigem,'
      '  mcgsituacao,'
      '  clbcodigo,'
      '  mcgregistro,'
      '  rfichave'
      
        ' FROM mcg WHERE mcgtabela='#39'cco'#39' AND rfichave=:rfichave and mcg.c' +
        'cgcodigo=:ccgcodigo')
    Left = 744
    Top = 389
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ccgcodigo'
        Value = nil
      end>
  end
end
