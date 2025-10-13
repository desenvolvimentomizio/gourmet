object FprinciEntregadores: TFprinciEntregadores
  Left = 0
  Top = 0
  Caption = 'Entregadores'
  ClientHeight = 634
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pltopo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 956
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 962
    object lbNomeEmpresa: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 237
      Height = 33
      Align = alLeft
      TabOrder = 0
    end
    object lterminal: TPanel
      AlignWithMargins = True
      Left = 715
      Top = 4
      Width = 237
      Height = 33
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 436
      ExplicitTop = 20
    end
    object plMensagemPrincipal: TPanel
      Left = 244
      Top = 1
      Width = 468
      Height = 39
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 264
      ExplicitTop = 8
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 45
    Top = 36
  end
  object UniSQLMonitor: TUniSQLMonitor
    Left = 51
    Top = 95
  end
  object Conexao: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
      end
      item
        DBType = 211
        FieldType = ftInteger
      end
      item
        DBType = 217
        FieldType = ftDateTime
      end
      item
        DBType = 218
        FieldType = ftDateTime
      end>
    ProviderName = 'MySQL'
    Database = 'kuskao0406'
    SpecificOptions.Strings = (
      'MySQL.ConnectionTimeout=180')
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    Left = 45
    Top = 172
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object consulta: TUniQuery
    Connection = Conexao
    Left = 48
    Top = 240
  end
  object cfg: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  /*Principal*/'
      '  cfgidentificacao'
      ', cfgdoisprecos'
      ', cfgusasrv'
      ', cfgpedeoperador'
      ', cfgmsai.cfgpercomismed'
      ', cfgmsai.cfgusamultiplicador'
      ', cfgmsai.cfgidentificaequip'
      ', cfgmsai.cfgrefepro'
      ', cfgmsai.cfgdefinetoeatendimento'
      ', cfgmsai.cfgusaveiculo'
      ', cfgmsai.cfgcontrolaestoquedisp'
      ', cfgmsai.cfgpedeclientevenda'
      ', cfgmsai.cfgtipocomissao'
      ', cfgmsai.cfgusaafaturar'
      ', cfg.cfgusanfc'
      ', cfg.cfgusapdv'
      ', cfg.cfgusaadc'
      ', cfg.cfgusacre'
      ', cfg.cfgusache'
      ', cfg.cfgusabol'
      ', cfgmcfg.cfgcodigo'
      ', cfgmcfg.cfgetdempresa'
      ''
      ''
      '  /*Entradas*/'
      ', cfgment.cfgprouso'
      ', cfgment.cfgtoeusofora'
      ', cfgment.cfgtoeusointe'
      ''
      ''
      '  /*Sa'#237'das*/'
      ', cfgmsai.cfgtoecuffora'
      ', cfgmsai.cfgtoecufinte'
      ', cfgmsai.cfgmensagempdv'
      ', cfgmsai.cfgusacondiconsumidor'
      ', cfgmsai.cfgdigitosbalanca'
      ', cfgmsai.cfgidentificatecnico'
      ', cfgmsai.cfgusacaixaprevenda'
      ', cfgmsai.cfgidentificavendedor'
      ', cfgmsai.cfgajustaperccomissao'
      ', cfgmsai.cfgusavendaforaestab'
      ', cfgmsai.cfgdescontonoservico'
      ', cfgmsai.cfgformapagamento'
      ', cfgmsai.cfgformacancelamento'
      ', cfgmsai.cfgarredondapeso'
      ', cfgmsai.cfgusaafaturar'
      ', cfgmsai.cfgproinativsaldozero'
      ', cfgmsai.cfgprevisualizarimpressao'
      ''
      '  /*Contas a Receber*/'
      ', cfgmcre.cfgviaassinar'
      ', cfgmcre.cfgcontrolalimite'
      ''
      ''
      ''
      ''
      '  /*Emiss'#227'o NFe*/'
      ', cfgmnfe.cfgviasnfe'
      ', cfgmnfe.cfgnumeronfe'
      ', cfgmnfe.cfgserienfe'
      ', cfgmnfe.cfgnumeronfce'
      ', cfgmnfe.cfgserienfce'
      ', cfgmnfe.cfgobs1'
      ', cfgmnfe.cfgobs2'
      ', cfgmnfe.cfgobs3'
      ', cfgmnfe.cfgobs4'
      ', cfgmnfe.cfgdescrinfe'
      ', cfgmnfe.cfgmodonfe'
      ', cfgmnfe.cfgservarqnfes'
      ', cfgmnfe.cfgnumecertifa1'
      ', cfg.cfgusanfc'
      ''
      ''
      '  /*Email*/'
      ', cfgmnfe.cfgemailnfe'
      ', cfgmnfe.cfgemailservidornfe'
      ', cfgmnfe.cfgemailsenhanfe'
      ', cfgmnfe.cfgmailportnfe'
      ', cfgmnfe.cfgemailusatls'
      ''
      ''
      '  /*SPED*/'
      ', cfgmcfg.crtcodigo'
      ', cfgmspd.cfgcstterceiros'
      ''
      '  /*Gourmet*/'
      ', cfgmgou.cfgmgoucobraentrega'
      ', cfg.cfgusagou'
      ''
      '  /*Dados da Empresa*/'
      ', etd.etdapelido'
      ', etd.etdidentificacao'
      ', etd.etddoc1'
      ', edr.ufscodigo'
      ', edr.cddcodigo'
      ', edr.edrinscest'
      ', edr.edrrua'
      ', edr.edrnumero'
      ', edr.edrbairro'
      ', edr.edrcep'
      ', cdd.cddnome'
      ', ufs.ufssigla'
      ', etf.etftelefone'
      ''
      ''
      '  /*Box-e - Dom'#237'nio Sistemas*/'
      ', ctd.ctdboxedominio'
      'FROM cfgmcfg'
      '   , cfgmspd'
      '   , cfgmnfe'
      '   , cfgment'
      '   , cfgmsai'
      '   , cfgmcre'
      '   , cfgmgou'
      '   , ufs'
      '   , etd'
      '   , edr'
      '   , cfg'
      '   , etf'
      '   , cdd'
      '   , ctd'
      'WHERE cfg.cfgcodigo = ctd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmgou.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmcre.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND etd.etdcodigo = etf.etdcodigo'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND ufs.ufscodigo = edr.ufscodigo'
      'AND etf.ttfcodigo = 1'
      'AND edr.tedcodigo = 1'
      'AND cfg.flacodigo = :flacodigo')
    Left = 45
    Top = 356
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cfgcodigo'
    end
    object cfgcfgidentificacao: TStringField
      FieldName = 'cfgidentificacao'
      Required = True
      Size = 50
    end
    object cfgcfgdoisprecos: TIntegerField
      FieldName = 'cfgdoisprecos'
      ReadOnly = True
      Required = True
    end
    object cfgcfgusasrv: TIntegerField
      FieldName = 'cfgusasrv'
      Required = True
    end
    object cfgcfgpedeoperador: TIntegerField
      FieldName = 'cfgpedeoperador'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtipocomissao: TIntegerField
      FieldName = 'cfgtipocomissao'
      ReadOnly = True
      Required = True
    end
    object cfgcfgpercomismed: TIntegerField
      FieldName = 'cfgpercomismed'
      ReadOnly = True
      Required = True
    end
    object cfgcfgusamultiplicador: TIntegerField
      FieldName = 'cfgusamultiplicador'
      ReadOnly = True
      Required = True
    end
    object cfgcfgidentificaequip: TIntegerField
      FieldName = 'cfgidentificaequip'
      ReadOnly = True
      Required = True
    end
    object cfgcfgrefepro: TIntegerField
      FieldName = 'cfgrefepro'
      ReadOnly = True
      Required = True
    end
    object cfgcfgdefinetoeatendimento: TIntegerField
      FieldName = 'cfgdefinetoeatendimento'
      ReadOnly = True
      Required = True
    end
    object cfgcfgusaveiculo: TIntegerField
      FieldName = 'cfgusaveiculo'
      ReadOnly = True
      Required = True
    end
    object cfgcfgcontrolaestoquedisp: TIntegerField
      FieldName = 'cfgcontrolaestoquedisp'
      ReadOnly = True
      Required = True
    end
    object cfgcfgpedeclientevenda: TIntegerField
      FieldName = 'cfgpedeclientevenda'
      ReadOnly = True
      Required = True
    end
    object cfgetdapelido: TStringField
      FieldName = 'etdapelido'
      ReadOnly = True
      Size = 100
    end
    object cfgcfgusanfc: TIntegerField
      FieldName = 'cfgusanfc'
      Required = True
    end
    object cfgcfgusapdv: TIntegerField
      FieldName = 'cfgusapdv'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgcfgprouso: TIntegerField
      FieldName = 'cfgprouso'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtoeusofora: TIntegerField
      FieldName = 'cfgtoeusofora'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtoeusointe: TIntegerField
      FieldName = 'cfgtoeusointe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgtoecuffora: TIntegerField
      FieldName = 'cfgtoecuffora'
      ReadOnly = True
    end
    object cfgcfgtoecufinte: TIntegerField
      FieldName = 'cfgtoecufinte'
      ReadOnly = True
    end
    object cfgcfgviasnfe: TIntegerField
      FieldName = 'cfgviasnfe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgnumeronfe: TIntegerField
      FieldName = 'cfgnumeronfe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      ReadOnly = True
      Size = 5
    end
    object cfgcfgnumeronfce: TIntegerField
      FieldName = 'cfgnumeronfce'
      ReadOnly = True
    end
    object cfgcfgserienfce: TStringField
      FieldName = 'cfgserienfce'
      ReadOnly = True
      Size = 5
    end
    object cfgcfgobs1: TIntegerField
      FieldName = 'cfgobs1'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs2: TIntegerField
      FieldName = 'cfgobs2'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs3: TIntegerField
      FieldName = 'cfgobs3'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs4: TIntegerField
      FieldName = 'cfgobs4'
      ReadOnly = True
      Required = True
    end
    object cfgcfgdescrinfe: TIntegerField
      FieldName = 'cfgdescrinfe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgmodonfe: TIntegerField
      FieldName = 'cfgmodonfe'
      ReadOnly = True
      Required = True
    end
    object cfgcfgemailnfe: TStringField
      FieldName = 'cfgemailnfe'
      ReadOnly = True
      Size = 50
    end
    object cfgcfgemailservidornfe: TStringField
      FieldName = 'cfgemailservidornfe'
      ReadOnly = True
      Size = 50
    end
    object cfgcfgemailsenhanfe: TStringField
      FieldName = 'cfgemailsenhanfe'
      ReadOnly = True
      Size = 50
    end
    object cfgcfgmailportnfe: TStringField
      FieldName = 'cfgmailportnfe'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object cfgcfgemailusatls: TIntegerField
      FieldName = 'cfgemailusatls'
      ReadOnly = True
      Required = True
    end
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
      ReadOnly = True
      Required = True
    end
    object cfgcfgcstterceiros: TStringField
      FieldName = 'cfgcstterceiros'
      ReadOnly = True
      Size = 3
    end
    object cfgetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object cfgufscodigo: TStringField
      FieldName = 'ufscodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cfgcddcodigo: TStringField
      FieldName = 'cddcodigo'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cfgedrinscest: TStringField
      FieldName = 'edrinscest'
      ReadOnly = True
      Required = True
    end
    object cfgedrrua: TStringField
      FieldName = 'edrrua'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cfgedrnumero: TStringField
      FieldName = 'edrnumero'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cfgedrbairro: TStringField
      FieldName = 'edrbairro'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object cfgedrcep: TStringField
      FieldName = 'edrcep'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cfgcddnome: TStringField
      FieldName = 'cddnome'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cfgufssigla: TStringField
      FieldName = 'ufssigla'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object cfgetftelefone: TStringField
      FieldName = 'etftelefone'
      ReadOnly = True
      Required = True
    end
    object cfgctdboxedominio: TStringField
      FieldName = 'ctdboxedominio'
      ReadOnly = True
      Size = 200
    end
    object cfgcfgmensagempdv: TStringField
      FieldName = 'cfgmensagempdv'
      ReadOnly = True
      Size = 50
    end
    object cfgcfgservarqnfes: TStringField
      FieldName = 'cfgservarqnfes'
      ReadOnly = True
      Size = 100
    end
    object cfgcfgusacondiconsumidor: TIntegerField
      FieldName = 'cfgusacondiconsumidor'
    end
    object cfgcfgviaassinar: TIntegerField
      FieldName = 'cfgviaassinar'
    end
    object cfgcfgusaadc: TIntegerField
      FieldName = 'cfgusaadc'
    end
    object cfgcfgusacre: TIntegerField
      FieldName = 'cfgusacre'
    end
    object cfgcfgdigitosbalanca: TIntegerField
      FieldName = 'cfgdigitosbalanca'
    end
    object cfgcfgcontrolalimite: TIntegerField
      FieldName = 'cfgcontrolalimite'
    end
    object cfgcfgidentificatecnico: TIntegerField
      FieldName = 'cfgidentificatecnico'
    end
    object cfgcfgusacaixaprevenda: TIntegerField
      FieldName = 'cfgusacaixaprevenda'
    end
    object cfgcfgusache: TIntegerField
      FieldName = 'cfgusache'
    end
    object cfgcfgidentificavendedor: TIntegerField
      FieldName = 'cfgidentificavendedor'
    end
    object cfgcfgajustaperccomissao: TIntegerField
      FieldName = 'cfgajustaperccomissao'
    end
    object cfgcfgusabol: TIntegerField
      FieldName = 'cfgusabol'
    end
    object cfgcfgusavendaforaestab: TIntegerField
      FieldName = 'cfgusavendaforaestab'
    end
    object cfgcfgdescontonoservico: TIntegerField
      FieldName = 'cfgdescontonoservico'
    end
    object cfgcfgformapagamento: TIntegerField
      FieldName = 'cfgformapagamento'
    end
    object cfgcfgformacancelamento: TIntegerField
      FieldName = 'cfgformacancelamento'
    end
    object cfgcfgarredondapeso: TIntegerField
      FieldName = 'cfgarredondapeso'
    end
    object cfgcfgusaafaturar: TIntegerField
      FieldName = 'cfgusaafaturar'
    end
    object cfgcfgusagou: TIntegerField
      FieldName = 'cfgusagou'
    end
    object cfgcfgproinativsaldozero: TIntegerField
      FieldName = 'cfgproinativsaldozero'
    end
    object cfgcfgprevisualizarimpressao: TIntegerField
      FieldName = 'cfgprevisualizarimpressao'
    end
  end
  object trm: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT trm.trmcodigo'
      '     , trm.trmidentificacao'
      '     , tci.tciporta'
      '     , mit.ecfcodigo'
      '     , mit.tipcodigo'
      '     , ctr.ctacodigo'
      '     , trm.trmbalamodelo'
      '     , trm.trmbalaporta'
      '     , trm.trmbalabaud'
      '     , trm.trmbalahandshake'
      '     , trm.trmbalaparity'
      '     , trm.trmbalastop'
      '     , trm.trmbaladata'
      '     , trm.trmgaveta     '
      'FROM trm'
      '  LEFT JOIN ctr ON trm.trmcodigo = ctr.trmcodigo'
      '  INNER JOIN tci ON trm.trmcodigo = tci.trmcodigo'
      '  INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo'
      '  INNER JOIN cit ON tci.tcicodigo = cit.tcicodigo'
      'WHERE trm.trmcodigo = :trmcodigo')
    Left = 44
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trmcodigo'
        Value = nil
      end>
    object trmtrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object trmtrmidentificacao: TStringField
      FieldName = 'trmidentificacao'
      Size = 50
    end
    object trmtciporta: TStringField
      FieldName = 'tciporta'
      Size = 50
    end
    object trmecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
    end
    object trmtipcodigo: TIntegerField
      FieldName = 'tipcodigo'
    end
    object trmctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object trmtrmbalamodelo: TStringField
      FieldName = 'trmbalamodelo'
      Size = 50
    end
    object trmtrmbalaporta: TStringField
      FieldName = 'trmbalaporta'
      Size = 50
    end
    object trmtrmbalabaud: TStringField
      FieldName = 'trmbalabaud'
      Size = 50
    end
    object trmtrmbalahandshake: TStringField
      FieldName = 'trmbalahandshake'
      Size = 50
    end
    object trmtrmbalaparity: TStringField
      FieldName = 'trmbalaparity'
      Size = 50
    end
    object trmtrmbalastop: TStringField
      FieldName = 'trmbalastop'
      Size = 50
    end
    object trmtrmbaladata: TStringField
      FieldName = 'trmbaladata'
      Size = 50
    end
    object trmtrmgaveta: TIntegerField
      FieldName = 'trmgaveta'
    end
  end
  object fla: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  flacodigo,'
      '  flaidentificacao,'
      '  flasigla,'
      '  etdcodigo'
      'FROM fla'
      '  where fla.flacodigo=:flacodigo')
    Left = 48
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
    object flaflasigla: TStringField
      FieldName = 'flasigla'
      Size = 3
    end
    object flaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object acoes: TActionList
    Left = 48
    Top = 480
    object ActAbreCaixa: TAction
      Category = 'Caixa'
      Caption = 'Abre Caixa'
    end
    object ActFechaCaixa: TAction
      Category = 'Caixa'
      Caption = 'Fecha Caixa'
    end
    object ActListaCaixas: TAction
      Category = 'Caixa'
      Caption = 'Lista Caixas'
    end
    object ActSangria: TAction
      Category = 'Caixa'
      Caption = 'Sangria'
    end
    object ActSuprimento: TAction
      Category = 'Caixa'
      Caption = 'Suprimento'
    end
    object ActImprimeCaixa: TAction
      Category = 'Caixa'
      Caption = 'Imprime Caixa'
    end
    object ActClientes: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Clientes'
    end
    object ActProdutos: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Produtos'
    end
    object ActLiberaBloqParcial: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Libera Bloqueio Parcial'
    end
    object ActLiberaBloqTotal: TAction
      Category = 'Utilit'#225'rios'
      Caption = 'Libera Bloqueio Total'
    end
    object ActAbreGaveta: TAction
      Tag = -1
      Category = 'Utilit'#225'rios'
      Caption = 'Abre Gaveta'
    end
    object ActLimpaAtendimento: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Limpa Atendimento'
    end
    object ActCancelaItem: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Cancela Item'
    end
    object ActDescontoItem: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Desc. no Item'
    end
    object ActDescontoGeral: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Desc. Geral'
    end
    object ActFinalizaVenda: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'Finaliza Venda'
    end
    object ActAFaturar: TAction
      Category = 'Fun'#231#245'es'
      Caption = 'A Faturar'
    end
    object ActSair: TAction
      Tag = -1
      Category = 'Fun'#231#245'es'
      Caption = 'Sair'
    end
    object ActReimprimeAbertura: TAction
      Category = 'Reimpress'#227'o'
      Caption = 'Abertura'
    end
    object ActReimprimeSangria: TAction
      Category = 'Reimpress'#227'o'
      Caption = 'Sangria'
    end
    object ActReimprimeSuprimento: TAction
      Category = 'Reimpress'#227'o'
      Caption = 'Suprimento'
    end
    object ActReimprimeFechamento: TAction
      Category = 'Reimpress'#227'o'
      Caption = 'Fechamento'
    end
    object ActReimprimeComprovante: TAction
      Category = 'Reimpress'#227'o'
      Caption = 'Comprovantes'
    end
    object ActReimprimeNFCes: TAction
      Category = 'Reimpress'#227'o'
      Caption = 'NFCes'
    end
    object ActReimprimeTEF: TAction
      Category = 'Reimpress'#227'o'
      Caption = 'ReimprimeTEF'
    end
  end
  object act: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select actcodigo, mdlcodigo, actidentificacao, actformulario, ac' +
        'tacao,actativa from act where mdlcodigo=:mdlcodigo and actacao=:' +
        'actacao')
    Left = 48
    Top = 532
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdlcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'actacao'
        Value = nil
      end>
    object actactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 20000
    Left = 142
    Top = 48
  end
  object ccx: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  ccx.ccxchave,'
      '  ccx.clbcodigo,'
      '  ccx.ctacodigo,'
      '  ccx.ccxturno,'
      '  ccx.ccxdataber,'
      '  ccx.ccxhoraaber,'
      '  ccx.ccxsaldoaber,'
      '  ccx.ccxdatafecha,'
      '  ccx.ccxhorafecha,'
      '  ccx.ccxsaldofecha,'
      '  ccx.ccxsangrias,'
      '  ccx.ccxsuprimentos'
      'FROM ccx'
      'where ccx.clbcodigo=:clbcodigo and ccx.ctacodigo=:ctacodigo'
      ''
      'ORDER BY ccx.ccxchave')
    Left = 136
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object ccxccxchave: TIntegerField
      FieldName = 'ccxchave'
      Required = True
    end
    object ccxclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object ccxctacodigo: TIntegerField
      FieldName = 'ctacodigo'
      Required = True
    end
    object ccxccxturno: TIntegerField
      FieldName = 'ccxturno'
      Required = True
    end
    object ccxccxdataber: TDateField
      FieldName = 'ccxdataber'
      Required = True
    end
    object ccxccxhoraaber: TTimeField
      FieldName = 'ccxhoraaber'
      Required = True
    end
    object ccxccxsaldoaber: TFloatField
      FieldName = 'ccxsaldoaber'
      Required = True
    end
    object ccxccxdatafecha: TDateField
      FieldName = 'ccxdatafecha'
    end
    object ccxccxhorafecha: TTimeField
      FieldName = 'ccxhorafecha'
    end
    object ccxccxsaldofecha: TFloatField
      FieldName = 'ccxsaldofecha'
      Required = True
    end
    object ccxccxsangrias: TFloatField
      FieldName = 'ccxsangrias'
      Required = True
    end
    object ccxccxsuprimentos: TFloatField
      FieldName = 'ccxsuprimentos'
      Required = True
    end
  end
  object Dccx: TDataSource
    DataSet = ccx
    Left = 179
    Top = 127
  end
end
