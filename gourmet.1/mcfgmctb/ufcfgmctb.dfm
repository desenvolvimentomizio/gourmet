inherited fcfgmctb: Tfcfgmctb
  Caption = 'Configura'#231#245'es Gerais da Contabiliza'#231#227'o'
  ClientHeight = 410
  ClientWidth = 937
  ExplicitWidth = 953
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 381
    Width = 937
    ExplicitTop = 381
    ExplicitWidth = 937
    inherited bconfirma: TBitBtn
      Left = 783
      ExplicitLeft = 783
    end
    inherited bcancela: TBitBtn
      Left = 858
      ExplicitLeft = 858
    end
    inherited bfechar: TBitBtn
      Left = 718
      ExplicitLeft = 718
    end
  end
  inherited paginas: TPageControl
    Width = 937
    Height = 381
    ExplicitWidth = 937
    ExplicitHeight = 381
    inherited Principal: TTabSheet
      ExplicitWidth = 929
      ExplicitHeight = 353
      object Label6: TLabel
        Left = 10
        Top = 183
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Centro de Custo Padr'#227'o'
        FocusControl = ccgcodigo
      end
      object Label1: TLabel
        Left = 10
        Top = 74
        Width = 200
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Contas para Despesas e Custos'
        FocusControl = cfgctbpcgpagamentos
      end
      object Label12: TLabel
        Left = 3
        Top = 6
        Width = 150
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Contas para Receitas'
        FocusControl = cfgctbpcgrecebimentos
      end
      object Label19: TLabel
        Left = 10
        Top = 156
        Width = 167
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Utiliza Centro de Custos Gerenciais'
        FocusControl = cfgctbusaccg
      end
      object Label2: TLabel
        Left = 10
        Top = 210
        Width = 208
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Centro de Custo para Juros e Multas Pagos'
        FocusControl = ccgmultajuros
      end
      object ccgcodigo: TDBEdit
        Left = 249
        Top = 180
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cfgctbpcgpagamentos: TDBEdit
        Left = 249
        Top = 71
        Width = 64
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgpagamentos'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfgctbpcgrecebimentos: TDBEdit
        Left = 249
        Top = 3
        Width = 64
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbpcgrecebimentos'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgctbusaccg: TDBEdit
        Left = 249
        Top = 153
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgctbusaccg'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object bcfgctbcpr: TButton
        Left = 481
        Top = 189
        Width = 205
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Configura'#231#227'o de Compras'
        TabOrder = 5
        Visible = False
        OnClick = bcfgctbcprClick
      end
      object bcfgctbvnd: TButton
        Left = 481
        Top = 220
        Width = 205
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Configura'#231#227'o de Vendas'
        TabOrder = 6
        Visible = False
        OnClick = bcfgctbvndClick
      end
      object bcfgctbsrv: TButton
        Left = 481
        Top = 251
        Width = 205
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Configura'#231#227'o de Servi'#231'os'
        TabOrder = 7
        Visible = False
        OnClick = bcfgctbsrvClick
      end
      object bcfgctbpgto: TButton
        Left = 249
        Top = 98
        Width = 205
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Configura'#231#227'o para Despesas'
        TabOrder = 8
        OnClick = bcfgctbpgtoClick
      end
      object bcfgctbrcto: TButton
        Left = 249
        Top = 30
        Width = 205
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Configura'#231#227'o para Receitas'
        TabOrder = 9
        OnClick = bcfgctbrctoClick
      end
      object bcfgctbcco: TButton
        Left = 481
        Top = 158
        Width = 205
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Configura'#231#227'o para Contas Correntes'
        TabOrder = 10
        Visible = False
        OnClick = bcfgctbccoClick
      end
      object bcfgctbpdr: TButton
        Left = 249
        Top = 234
        Width = 205
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Configura'#231#227'o de Padr'#244'es'
        ImageIndex = 10
        TabOrder = 11
        OnClick = bcfgctbpdrClick
      end
      object btImplantarContabilizacaoPadrao: TButton
        Left = 10
        Top = 384
        Width = 205
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Implantar Contabiliza'#231#227'o Padr'#227'o'
        TabOrder = 0
        OnClick = btImplantarContabilizacaoPadraoClick
      end
      object ccgmultajuros: TDBEdit
        Left = 249
        Top = 207
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgmultajuros'
        DataSource = DSRegistro
        TabOrder = 12
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 516
    Top = 552
  end
  inherited cfg: TUniQuery
    Left = 852
    Top = 300
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgusaccg: TIntegerField
      FieldName = 'cfgusaccg'
    end
  end
  inherited consulta: TUniQuery
    Left = 864
    Top = 356
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT cfgmctb.cfgcodigo'
      '       -- Modo de contabiliza'#231#227'o'
      '     , cfgmctb.cfgctbmodo'
      ''
      '       -- Contabiliza'#231#227'o individual'
      '     , cfgmctb.cfgctbcliindiv'
      '     , cfgmctb.cfgctbforindiv'
      '     , cfgmctb.cfgctbclbindiv'
      '     , cfgmctb.cfgctbtrnindiv'
      ''
      '       -- Conta Sint'#233'tica de pagamentos e recebimentos'
      '     , cfgmctb.cfgctbpcgpagamentos'
      '     , cfgmctb.cfgctbpcgrecebimentos'
      ''
      '       -- Centro de Custos'
      '     , cfgmctb.cfgctbusaccg'
      '     , cfgmctb.ccgcodigo'
      '     , cfgmctb.cfgctbusanucleosgeren'
      '     , cfgmctb.cfgctgusaorcamento'
      '     , cfgmctb.ccgmultajuros'
      '  FROM cfgmctb'
      ' WHERE cfgmctb.cfgcodigo = :cfgcodigo')
    Left = 148
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cfgcodigo'
    end
    object registrocfgctbmodo: TIntegerField
      FieldName = 'cfgctbmodo'
    end
    object registrocfgctbforindiv: TIntegerField
      FieldName = 'cfgctbforindiv'
      Required = True
    end
    object registrosenforindiv: TStringField
      FieldKind = fkLookup
      FieldName = 'senforindiv'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgctbforindiv'
      Size = 5
      Lookup = True
    end
    object registrocfgctbcliindiv: TIntegerField
      DisplayLabel = 'Contabiliza'#231#227'o individual para Clientes'
      FieldName = 'cfgctbcliindiv'
      Required = True
    end
    object registrosencliindiv: TStringField
      FieldKind = fkLookup
      FieldName = 'sencliindiv'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgctbcliindiv'
      Size = 5
      Lookup = True
    end
    object registrocfgctbclbindiv: TIntegerField
      FieldName = 'cfgctbclbindiv'
      Required = True
    end
    object registrosenclbindiv: TStringField
      FieldKind = fkLookup
      FieldName = 'senclbindiv'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgctbclbindiv'
      Size = 5
      Lookup = True
    end
    object registrocfgctbtrnindiv: TIntegerField
      FieldName = 'cfgctbtrnindiv'
      Required = True
    end
    object registrosentrnindiv: TStringField
      FieldKind = fkLookup
      FieldName = 'sentrnindiv'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgctbtrnindiv'
      Size = 5
      Lookup = True
    end
    object registrocfgctbpcgpagamentos: TIntegerField
      DisplayLabel = 'Grupo para Pagamentos - Regime de Caixa'
      FieldName = 'cfgctbpcgpagamentos'
    end
    object registropcgpagamentos: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgpagamentos'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'cfgctbpcgpagamentos'
      Size = 50
      Lookup = True
    end
    object registrocfgctbpcgrecebimentos: TIntegerField
      DisplayLabel = 'Grupo para Recebimentos - Regime de Caixa'
      FieldName = 'cfgctbpcgrecebimentos'
    end
    object registropcgrecebimentos: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgrecebimentos'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'cfgctbpcgrecebimentos'
      Size = 50
      Lookup = True
    end
    object registrocfgctbusaccg: TIntegerField
      DisplayLabel = 'Utiliza Centro de Custos Gerenciais'
      FieldName = 'cfgctbusaccg'
      Required = True
    end
    object registrosenusaccg: TStringField
      FieldKind = fkLookup
      FieldName = 'senusaccg'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgctbusaccg'
      Size = 5
      Lookup = True
    end
    object registroccgcodigo: TIntegerField
      DisplayLabel = 'Centro de Custo Padr'#227'o'
      FieldName = 'ccgcodigo'
      Required = True
    end
    object registroccgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgidentificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'ccgcodigo'
      Size = 50
      Lookup = True
    end
    object registrocfgctbusanucleosgeren: TIntegerField
      FieldName = 'cfgctbusanucleosgeren'
      Required = True
    end
    object registrosencfgctbusanucleosgeren: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgctbusanucleosgeren'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgctbusanucleosgeren'
      Size = 5
      Lookup = True
    end
    object registrocfgctgusaorcamento: TIntegerField
      FieldName = 'cfgctgusaorcamento'
      Required = True
    end
    object registrosencfgctgusaorcamento: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgctgusaorcamento'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgctgusaorcamento'
      Size = 5
      Lookup = True
    end
    object registroccgmultajuros: TIntegerField
      FieldName = 'ccgmultajuros'
    end
    object registroccgccgmultajuros: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgccgmultajuros'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'ccgmultajuros'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 816
    Top = 92
  end
  inherited dtb: TUniQuery
    Left = 772
    Top = 92
  end
  inherited coa: TUniQuery
    Left = 736
    Top = 92
  end
  inherited pfr: TUniQuery
    Left = 552
    Top = 540
  end
  inherited psf: TUniQuery
    Left = 696
    Top = 132
  end
  inherited dcl: TUniQuery
    Left = 556
    Top = 65520
  end
  inherited cau: TUniQuery
    Left = 880
    Top = 312
  end
  inherited err: TUniQuery
    Left = 816
    Top = 124
  end
  inherited BalloonHint: TBalloonHint
    Left = 788
    Top = 344
  end
  inherited acoesfrm: TActionList
    Left = 420
    Top = 556
  end
  inherited cpg: TUniQuery
    Left = 580
    Top = 584
  end
  inherited cpc: TUniQuery
    Left = 661
    Top = 57
  end
  inherited ImgBusca: TPngImageList
    Left = 340
    Top = 584
  end
  inherited lou: TUniQuery
    Left = 752
    Top = 32
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 600
    Top = 568
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object pcg: TUniQuery
    SQL.Strings = (
      
        'select pcgcodigo,concat(pcgestrutural,'#39' - '#39', pcgidentificacao) a' +
        's pcgidentificacao from pcg')
    Left = 824
    Top = 48
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 80
    end
  end
  object tog: TUniQuery
    SQL.Strings = (
      'SELECT togcodigo,'
      '  togidentificacao,'
      '  tog.gtocodigo,'
      '  togcampo,'
      '  togdescricao,'
      '  togtabela,'
      '  gtoidentificacao'
      
        'FROM tog,gto where tog.gtocodigo=gto.gtocodigo and lower(togtabe' +
        'la)='#39'cfgmctb'#39
      '  ORDER BY gto.gtocodigo')
    Left = 696
    Top = 72
    object togtogcodigo: TIntegerField
      FieldName = 'togcodigo'
    end
    object togtogidentificacao: TStringField
      FieldName = 'togidentificacao'
      Size = 50
    end
    object toggtocodigo: TIntegerField
      FieldName = 'gtocodigo'
    end
    object togtogcampo: TStringField
      FieldName = 'togcampo'
      Size = 50
    end
    object togtogdescricao: TStringField
      FieldName = 'togdescricao'
      Size = 500
    end
    object togtogtabela: TStringField
      FieldName = 'togtabela'
      Size = 50
    end
    object toggtoidentificacao: TStringField
      FieldName = 'gtoidentificacao'
      Size = 50
    end
  end
  object cfgmctb: TUniQuery
    Left = 656
    Top = 512
  end
  object Dcfgmctb: TDataSource
    DataSet = cfgmctb
    Left = 708
    Top = 512
  end
  object ccg: TUniQuery
    SQL.Strings = (
      
        'select ccgcodigo,concat(ccgestrutural,'#39' - '#39', ccgidentificacao) a' +
        's ccgidentificacao from ccg')
    Left = 740
    Top = 272
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 640
    Top = 160
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object UniScript: TUniScript
    SQL.Strings = (
      ''
      'UPDATE cta set pcgcodigo=NULL;'
      ''
      ''
      'DELETE FROM dmc;'
      'DELETE from gre;'
      'DELETE FROM dre;'
      'DELETE from pcr;'
      'DELETE from pcg;'
      ''
      ''
      ''
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(1, 0, 1, '#39'1'#39', '#39'ATIVO'#39', 0, 1, 9, '#39#39', '#39'Agrega o conjunto dos bens' +
        ' e direitos realiz'#225'veis'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(2, 0, 1, '#39'1.1'#39', '#39'ATIVO CIRCULANTE'#39', 0, 1, 9, '#39#39', '#39'Agrega bens e' +
        ' direitos que est'#227'o em frequente circula'#231#227'o no patrim'#244'nio, at'#233' o' +
        ' final do exerc'#237'cio subsequente'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(7, 0, 1, '#39'1.1.1.02'#39', '#39'BANCO CONTA MOVIMENTO'#39', 0, 1, 9, '#39#39', '#39'Agr' +
        'ega os valores dispon'#237'veis nas contas banc'#225'rias jur'#237'dicas e dos ' +
        'propriet'#225'rios da empresa.'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(11, 0, 1, '#39'1.1.2'#39', '#39'CLIENTES'#39', 0, 1, 9, '#39#39', '#39'Rela'#231#227'o de valores' +
        ' devidos de clientes.'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(37, 0, 1, '#39'1.1.6'#39', '#39'ESTOQUES'#39', 0, 1, 9, '#39#39', '#39'Valores referentes' +
        ' a estoques de produtos, mat'#233'ria prima e insumos'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(56, 0, 1, '#39'1.2'#39', '#39'ATIVO N'#195'O-CIRCULANTE'#39', 0, 1, 9, '#39#39', '#39'Agrega b' +
        'ens e direitos que quase n'#227'o circulam no patrim'#244'nio, ou que poss' +
        'uem realiza'#231#227'o ap'#243's o final do exerc'#237'cio subsequente'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(57, 0, 1, '#39'1.2.1'#39', '#39'ATIVO REALIZ'#193'VEL A LONGO PRAZO'#39', 0, 1, 9, '#39 +
        #39', '#39'Direitos a realizar que possuem sua data de liquida'#231#227'o super' +
        'ior ao final do exerc'#237'cio seguinte'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(60, 0, 1, '#39'1.2.1.12'#39', '#39'DUPLICATAS A RECEBER DE PESSOAS LIGADAS'#39 +
        ', 0, 1, 9, '#39#39', '#39'Valores a receber de pessoas ligadas que extrapo' +
        'lam o limite do Exerc'#237'cio seguinte'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(76, 0, 1, '#39'1.2.2'#39', '#39'INVESTIMENTOS'#39', 0, 1, 9, '#39#39', '#39'Valores a rec' +
        'eber de investimentos que escapam da atividade final'#237'stica da em' +
        'presa.'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(83, 0, 1, '#39'1.2.2.23'#39', '#39'OUTROS INVESTIMENTOS'#39', 0, 1, 9, '#39#39', '#39'Inv' +
        'estimentos n'#227'o previstos nas contas alocadoras descritas acima'#39',' +
        ' 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(88, 0, 1, '#39'1.2.3'#39', '#39'IMOBILIZADO'#39', 0, 1, 9, '#39#39', '#39'Grupo alocador ' +
        'de investimentos em estruturas permanentes para operacionaliza'#231#227 +
        'o da entidade'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(89, 0, 1, '#39'1.2.3.01'#39', '#39'OPERACIONAL TANG'#205'VEL'#39', 0, 1, 9, '#39#39', '#39'Gru' +
        'po alocador de investimentos em estruturas f'#237'sicas para operacio' +
        'naliza'#231#227'o da entidade.'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(104, 0, 1, '#39'1.2.3.05'#39', '#39'(-) DEPRECIA'#199#213'ES ACUMULADAS'#39', 1, 1, 9, ' +
        #39#39', '#39'Grupo alocador de contas que apresentam a deprecia'#231#227'o de be' +
        'ns tang'#237'veis do imobilizado'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(108, 0, 1, '#39'1.2.4'#39', '#39'INTANG'#205'VEL'#39', 0, 1, 9, '#39#39', '#39'Grupo alocador ' +
        'de bens e direitos incorp'#243'reos'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(109, 0, 1, '#39'1.2.4.01'#39', '#39'OPERACIONAL INTANG'#205'VEL'#39', 0, 1, 9, '#39#39', '#39 +
        'Conta alocadora de valores patrimoniais incorp'#243'reos da entidade.' +
        #39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(113, 0, 1, '#39'1.2.4.02'#39', '#39'(-) Amortiza'#231#245'es Acumuladas'#39', 1, 1, 9, ' +
        #39#39', '#39'Grupo alocador de contas que evidenciam a amortiza'#231#227'o de be' +
        'ns e direitos incorp'#243'reos utilizados pela entidade'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(115, 0, 2, '#39'2'#39', '#39'PASSIVO'#39', 1, 1, 9, '#39#39', '#39'Agrega o conjunto das ' +
        'obriga'#231#245'es e compromissos da entidade com relacionados e terceir' +
        'os.'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(116, 0, 2, '#39'2.1'#39', '#39'PASSIVO CIRCULANTE'#39', 1, 1, 9, '#39#39', '#39'Agrega o ' +
        'conjunto das obriga'#231#245'es e compromissos da entidade com relaciona' +
        'dos e terceiros que ir'#227'o ocorrer at'#233' o final do exerc'#237'cio seguin' +
        'te'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(117, 0, 2, '#39'2.1.1'#39', '#39'OBRIGA'#199#213'ES A FORNECEDORES'#39', 1, 1, 9, '#39#39', '#39 +
        'Grupo alocador de obriga'#231#245'es junto a fornecedores operacionais d' +
        'a entidade.'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(124, 0, 2, '#39'2.1.2'#39', '#39'EMPR'#201'STIMOS E FINANCIAMENTOS'#39', 1, 1, 9, '#39#39 +
        ', '#39'Obriga'#231#245'es referentes a empr'#233'stimos e financiamentos com terc' +
        'eiros'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(133, 0, 2, '#39'2.1.3'#39', '#39'OBRIGA'#199#213'ES TRIBUT'#193'RIAS'#39', 1, 1, 9, '#39#39', '#39'Gru' +
        'po alocador de obriga'#231#245'es tribut'#225'rias devidas pela entidade'#39', 0)' +
        ';'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(134, 0, 2, '#39'2.1.3.01'#39', '#39'IMPOSTOS A RECOLHER'#39', 1, 1, 9, '#39#39', '#39'Con' +
        'ta alocadora de impostos devidos pela entidade at'#233' o final do ex' +
        'erc'#237'cio seguinte.'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(140, 0, 2, '#39'2.1.4'#39', '#39'OBRIGA'#199#213'ES TRABALHISTAS E PREVIDENCI'#193'RIAS'#39 +
        ', 1, 1, 9, '#39#39', '#39'Grupo alocador de Tributos e Obriga'#231#245'es Trabalhi' +
        'stas e Previdenci'#225'rias'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(154, 0, 2, '#39'2.1.5'#39', '#39'OUTRAS OBRIGA'#199#213'ES'#39', 1, 1, 9, '#39#39', '#39'Grupo al' +
        'ocador de obriga'#231#245'es em geral n'#227'o relacionadas acima'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(157, 0, 2, '#39'2.1.5.02'#39', '#39'ALUGUEIS PASSIVOS A PAGAR'#39', 1, 1, 9, '#39#39 +
        ', '#39'Conta alocadora de alugueis devidos pela empresa'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(159, 0, 2, '#39'2.1.5.05'#39', '#39'Contas a Pagar'#39', 1, 1, 9, '#39#39', '#39'Contas e' +
        'm geral devidas pela entidade'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(161, 0, 2, '#39'2.2'#39', '#39'PASSIVO N'#195'O-CIRCULANTE'#39', 1, 1, 9, '#39#39', '#39'Agreg' +
        'a o conjunto das obriga'#231#245'es e compromissos da entidade com relac' +
        'ionados e terceiros que ir'#227'o ocorrer ap'#243's o final do exerc'#237'cio s' +
        'eguinte'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(162, 0, 2, '#39'2.2.1'#39', '#39'PASSIVO EXIG'#205'VEL A LONGO PRAZO'#39', 1, 1, 9, ' +
        #39#39', '#39'Agrega contas de obriga'#231#245'es semelhantes ao Pass'#237'vo Circulan' +
        'te mas a serem realizadas ap'#243's o final do Exerc'#237'cio seguinte'#39', 0' +
        ');'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(163, 0, 2, '#39'2.3'#39', '#39'PATRIM'#212'NIO L'#205'QUIDO'#39', 1, 1, 9, '#39#39', '#39'Agrega o ' +
        'conjunto das obriga'#231#245'es e compromissos pr'#243'prios da entidade.'#39', 0' +
        ');'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(164, 0, 2, '#39'2.3.1'#39', '#39'CAPITAL SOCIAL'#39', 1, 1, 9, '#39#39', '#39'Grupo aloca' +
        'dor dos valores disponibilizados pelos s'#243'cios para constitui'#231#227'o ' +
        'da empresa e suas altera'#231#245'es'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(172, 0, 4, '#39'4'#39', '#39'DESPESAS E CUSTOS'#39', 0, 1, 0, '#39#39', '#39'Agrega valor' +
        'es referentes a dusp'#234'ndios que a entidade realizou para efetuar ' +
        'suas opera'#231#245'es'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(173, 0, 4, '#39'4.1'#39', '#39'DESPESAS OPERACIONAIS'#39', 0, 1, 0, '#39#39', '#39'Agrega' +
        ' valores utilizados para produzir os bens e servi'#231'os final'#237'stico' +
        's da empresa'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(174, 0, 4, '#39'4.1.1'#39', '#39'DESPESAS COM VENDAS'#39', 0, 1, 0, '#39#39', '#39'Grupo ' +
        'alocador das despesas necess'#225'rias para disponibilizar os bens ou' +
        ' servi'#231'os para entrega aos clientes'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(240, 0, 4, '#39'4.1.2'#39', '#39'DESPESAS FINANCEIRAS'#39', 0, 1, 0, '#39#39', '#39'Grupo' +
        ' alocador de gastos com opera'#231#245'es financeiras da empresa'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(251, 0, 4, '#39'4.1.3'#39', '#39'DESPESAS ADMINISTRATIVAS'#39', 0, 1, 0, '#39#39', '#39'G' +
        'rupo alocador de gastos referentes '#224' parte administrativa da emp' +
        'resa'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(252, 0, 4, '#39'4.1.3.01'#39', '#39'PESSOAL'#39', 0, 1, 0, '#39#39', '#39'Contas alocador' +
        'as de gastos com colaboradores administrativos'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(268, 0, 4, '#39'4.1.3.02'#39', '#39'PR'#211'-LABORE'#39', 0, 1, 0, '#39#39', '#39'Contas aloca' +
        'doras de pr'#243'-labore de diretores administrativos'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(284, 0, 4, '#39'4.1.3.05'#39', '#39'GERAIS'#39', 0, 1, 0, '#39#39', '#39'Contas Alocadora' +
        's de despesas em geral do setor administrativo da empresa'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(300, 0, 4, '#39'4.1.3.06'#39', '#39'SERVI'#199'OS DE TERCEIROS'#39', 0, 1, 0, '#39#39', '#39'C' +
        'ontas alocadoras de gastos administrativos com servi'#231'os de pesso' +
        'as f'#237'sicas ou jur'#237'dicas n'#227'o pertencentes '#224' empresa'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(316, 0, 4, '#39'4.1.4'#39', '#39'OUTRAS DESPESAS OPERACIONAIS'#39', 0, 1, 0, '#39#39 +
        ', '#39'Grupo Alocador de Despesas n'#227'o enquadr'#225'veis nos grupos acima'#39 +
        ', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(317, 0, 4, '#39'4.1.4.01'#39', '#39'GERAIS'#39', 0, 1, 0, '#39#39', '#39'Contas alocadora' +
        's de Despesas n'#227'o enquadr'#225'veis nos grupos acima.'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(324, 0, 4, '#39'4.2'#39', '#39'OUTRAS DESPESAS (N'#195'O-OPERACIONAIS)'#39', 0, 1, 0' +
        ', '#39#39', '#39'Agrega valores incorrentes de atividades que n'#227'o podem se' +
        'r classificadas como atividade final'#237'stica da empresa'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(325, 0, 4, '#39'4.2.1'#39', '#39'PERDAS DE CAPITAL NO ATIVO N'#195'O-CIRCULANTE'#39 +
        ', 0, 0, 0, '#39#39', '#39'Grupo alocador de perdas de capital na aliena'#231#227'o' +
        ' de bens e direitos constantes no ativo n'#227'o-circulante'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(326, 0, 4, '#39'4.2.1.01'#39', '#39'Perdas de capital nos Investimentos'#39', 0' +
        ', 0, 0, '#39#39', '#39'Contas alocadoras de Perdas de capital no subgrupo ' +
        'investimentos'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(329, 0, 4, '#39'4.2.1.02'#39', '#39'Perdas de capital no Ativo Imobilizado'#39 +
        ', 0, 0, 0, '#39#39', '#39'Contas alocadoras de Perdas de capital no subgru' +
        'po Imobilizado'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(331, 0, 4, '#39'4.2.1.03'#39', '#39'Perdas de capital no Ativo Intang'#237'vel'#39',' +
        ' 0, 0, 0, '#39#39', '#39'Contas alocadoras de Perdas de capital no subgrup' +
        'o Intang'#237'vel'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(333, 0, 4, '#39'4.3'#39', '#39'CUSTOS'#39', 0, 1, 0, '#39#39', '#39'Agrega valores utiliz' +
        'ados diretamente na disponibiliza'#231#227'o dos Produtos ou Servi'#231'os'#39', ' +
        '0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(334, 0, 4, '#39'4.3.1'#39', '#39'CUSTOS DAS COMPRAS DE MERCADORIAS'#39', 0, 0, ' +
        '0, '#39#39', '#39'Grupo Alocador de valores dispendidos com aquisi'#231#227'o de m' +
        'ateriais e mercadorias'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(353, 0, 4, '#39'4.4 '#39', '#39'CUSTO DA PRESTA'#199#195'O DE SERVI'#199'OS'#39', 0, 1, 0, '#39 +
        #39', '#39'Agrega valores utilizados diretamente na disponibiliza'#231#227'o do' +
        's Servi'#231'os'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(357, 0, 4, '#39'4.4.1.02'#39', '#39'M'#195'O-DE-OBRA DIRETA'#39', 0, 1, 0, '#39#39', '#39'Cont' +
        'as alocadoras de custos com m'#227'o-de-obra direta'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(415, 0, 3, '#39'3'#39', '#39'RECEITAS'#39', 1, 1, 1, '#39#39', '#39'Receitas auferidas '#224' ' +
        'empresa no Per'#237'odo'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(417, 0, 3, '#39'3.1.1'#39', '#39'RECEITA BRUTA DE VENDA DE MERCADORIAS'#39', 1,' +
        ' 1, 1, '#39#39', '#39'Receitas com vendas de mercadorias da empresa'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(418, 0, 3, '#39'3.1.1.01'#39', '#39'RECEITA BRUTA DE VENDAS '#192' VISTA'#39', 1, 1,' +
        ' 1, '#39#39', '#39'Receitas com vendas de mercadorias da empresa para clie' +
        'ntes do estado'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(427, 0, 3, '#39'3.1.1.02'#39', '#39'RECEITA BRUTA DE VENDAS '#192' PRAZO'#39', 1, 1,' +
        ' 1, '#39#39', '#39'Receitas com vendas de mercadorias da empresa para clie' +
        'ntes fora do estado'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(436, 0, 3, '#39'3.1.3'#39', '#39'RECEITA BRUTA DE PRESTA'#199#195'O DE SERVI'#199'OS'#39', 1' +
        ', 1, 1, '#39#39', '#39'Receita oriunda de Servi'#231'os Prestados pela empresa'#39 +
        ', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(451, 0, 3, '#39'3.1.5'#39', '#39'OUTRAS RECEITAS OPERACIONAIS'#39', 1, 1, 1, '#39#39 +
        ', '#39'Receitas operacionais oriundas de atividades n'#227'o-previstas na' +
        's contas acima'#39', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5291, 0, 3, '#39'3.1.1.03'#39', '#39'CUSTOS COMPRAS DE MERCADORIAS'#39', 0, 1, ' +
        '0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5814, 1, 3, '#39'3.1.1.01.001'#39', '#39'RECEITA BRUTA DE VENDAS '#192' VISTA'#39', ' +
        '1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5815, 1, 3, '#39'3.1.1.02.001'#39', '#39'RECEITA BRUTA DE VENDAS '#192' PRAZO'#39', ' +
        '1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5817, 1, 3, '#39'3.1.1.01.002'#39', '#39'DEVOLU'#199#195'O DE MERCADORIAS '#192' VISTA'#39',' +
        ' 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5818, 1, 3, '#39'3.1.1.02.002'#39', '#39'DEVOLU'#199#195'O DE MERCADORIAS '#192' PRAZO'#39',' +
        ' 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5819, 0, 4, '#39'4.3.2'#39', '#39'TRIBUTOS INCIDENTES SOBRE A RECEITA'#39', 0, ' +
        '1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5820, 0, 4, '#39'4.3.2.01'#39', '#39'DAS SIMPLES NACIONAL'#39', 0, 1, 0, NULL, ' +
        'NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5821, 0, 4, '#39'4.3.2.02'#39', '#39'DARF E DAE SOBRE FATURAMENTO'#39', 0, 1, 0' +
        ', NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5824, 1, 4, '#39'4.1.1.12'#39', '#39'TAXA DE ADMINISTRA'#199#195'O DE OPERADORA DE ' +
        'CART'#195'O'#39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5825, 1, 4, '#39'4.1.3.02.001'#39', '#39'RETIRADA DOS S'#211'CIOS'#39', 0, 1, 0, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5826, 1, 4, '#39'4.1.3.01.001'#39', '#39'SAL'#193'RIO DE PESSOAL ADMINISTRATIVO'#39 +
        ', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5827, 1, 4, '#39'4.4.1.02.001'#39', '#39'SAL'#193'RIO COLABORADORES OPERACIONAIS' +
        #39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5828, 1, 4, '#39'4.1.4.01.001'#39', '#39'ENCARGOS SOCIAIS '#39', 0, 1, 0, NULL,' +
        ' NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5829, 1, 4, '#39'4.1.3.06.001'#39', '#39'HONOR'#193'RIOS CONTADOR'#39', 0, 1, 0, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5830, 1, 4, '#39'4.1.3.06.002'#39', '#39'MENSALIDADE SISTEMA ERP'#39', 0, 1, 0,' +
        ' NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5831, 1, 4, '#39'4.1.4.01.002'#39', '#39'ALUGUEL PASSIVO'#39', 0, 1, 0, NULL, N' +
        'ULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5832, 1, 4, '#39'4.1.4.01.003'#39', '#39'TARIFA DE '#193'GUA E ENERGIA'#39', 0, 1, 0' +
        ', NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5833, 1, 4, '#39'4.1.4.01.004'#39', '#39'TELEFONE E INTERNET'#39', 0, 1, 0, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5834, 1, 4, '#39'4.1.1.03.001'#39', '#39'PUBLICIDADE E PROPAGANDA'#39', 0, 1, 0' +
        ', NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5835, 1, 4, '#39'4.1.3.06.003'#39', '#39'SERVI'#199'OS E MANUTEN'#199#195'O SEGURAN'#199'A'#39', ' +
        '0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5837, 1, 4, '#39'4.1.4.01.005'#39', '#39'ALUGUEL M'#193'QUINA DE CART'#195'O'#39', 0, 1, ' +
        '0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5840, 1, 4, '#39'4.1.3.05.001'#39', '#39'MATERIAL LIMPEZA E ESCRIT'#211'RIO'#39', 0,' +
        ' 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5841, 1, 4, '#39'4.1.3.05.002'#39', '#39'ASSOCIA'#199#195'O E SINDICATOS'#39', 0, 1, 0,' +
        ' NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5842, 1, 4, '#39'4.1.4.01.006'#39', '#39'CONSULTA CHEQUES E SPC'#39', 0, 1, 0, ' +
        'NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5843, 1, 4, '#39'4.1.4.01.007'#39', '#39'LANCHE E REFEI'#199#195'O PARA FUNCION'#193'RIO' +
        'S'#39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5844, 0, 4, '#39'4.2.2'#39', '#39'DESPESAS N'#195'O-DESEMBOLS'#193'VEIS'#39', 0, 1, 9, NU' +
        'LL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5845, 0, 4, '#39'4.2.3'#39', '#39'OUTRAS DESPESAS N'#195'O ENQUADR'#193'VEIS'#39', 0, 1, ' +
        '0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5846, 1, 1, '#39'1.1.1.02.001'#39', '#39'BANCO DO BRASIL'#39', 0, 1, 1, NULL, N' +
        'ULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      '(5847, 0, 1, '#39'1.1.1.01'#39', '#39'CAIXA'#39', 0, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5848, 1, 1, '#39'1.1.1.01.001'#39', '#39'TESOURARIA'#39', 0, 1, 1, NULL, NULL, ' +
        '0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5849, 1, 1, '#39'1.1.1.02.002'#39', '#39'BANCO SICREDI'#39', 0, 1, 1, NULL, NUL' +
        'L, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5850, 1, 1, '#39'1.1.2.01.001'#39', '#39'CONTAS A RECEBER A VENCER'#39', 0, 1, ' +
        '1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5851, 1, 1, '#39'1.1.2.01.002'#39', '#39'CONTAS A RECEBER VENCIDAS'#39', 0, 1, ' +
        '1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5852, 0, 1, '#39'1.1.6.01'#39', '#39'ESTOQUE DE MERCADORIAS PARA REVENDA'#39', ' +
        '0, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5853, 1, 1, '#39'1.2.1.12.001'#39', '#39'ADIANTAMENTOS A COLABORADORES'#39', 0,' +
        ' 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5854, 1, 1, '#39'1.2.1.12.002'#39', '#39'ADIANTAMENTOS A ASSOCIADOS E ADMIN' +
        'ISTRADORES'#39', 0, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5855, 1, 1, '#39'1.2.2.23.001'#39', '#39'IM'#211'VEIS PARA ALUGUEL'#39', 0, 1, 1, NU' +
        'LL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5856, 1, 1, '#39'1.2.3.01.001'#39', '#39'M'#211'VEIS E UTENS'#205'LIOS'#39', 0, 1, 1, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5857, 1, 1, '#39'1.2.3.01.002'#39', '#39'M'#193'QUINAS E EQUIPAMENTOS'#39', 0, 1, 1,' +
        ' NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5858, 1, 1, '#39'1.2.3.01.003'#39', '#39'VE'#205'CULOS'#39', 0, 1, 1, NULL, NULL, 0)' +
        ';'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      '(5859, 1, 1, '#39'1.2.3.01.004'#39', '#39'PR'#201'DIO'#39', 0, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5860, 1, 2, '#39'2.1.1.01.001'#39', '#39'FORNECEDORES A PAGAR'#39', 1, 1, 0, NU' +
        'LL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5861, 1, 2, '#39'2.1.1.01.002'#39', '#39'CONTAS A PAGAR A FORNECEDORES VENC' +
        'IDAS'#39', 1, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5862, 1, 2, '#39'2.1.3.01.001'#39', '#39'TRIBUTOS A PAGAR'#39', 1, 1, 0, NULL, ' +
        'NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5863, 1, 2, '#39'2.1.2.02.001'#39', '#39'EMPR'#201'STIMOS BANC'#193'RIOS A PAGAR '#39', 1' +
        ', 1, 0, '#39#39', NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5864, 1, 2, '#39'2.1.3.01.002'#39', '#39'TRIBUTOS SOBRE O FATURAMENTO'#39', 1, ' +
        '1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5865, 1, 2, '#39'2.1.4.01.001'#39', '#39'GPS E FGTS'#39', 1, 1, 0, NULL, NULL, ' +
        '0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5866, 1, 2, '#39'2.1.4.01.002'#39', '#39'CONTRIBUI'#199#195'O SINDICAL E OUTRAS'#39', 1' +
        ', 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5867, 0, 2, '#39'2.1.4.04'#39', '#39'OBRIGA'#199#213'ES FUNCIONAIS'#39', 1, 1, 0, NULL,' +
        ' NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5868, 1, 2, '#39'2.1.4.04.001'#39', '#39'SAL'#193'RIOS'#39', 1, 1, 0, NULL, NULL, 0)' +
        ';'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5869, 1, 2, '#39'2.1.4.04.002'#39', '#39'GRATIFICA'#199#213'ES'#39', 1, 1, 0, NULL, NUL' +
        'L, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5870, 1, 2, '#39'2.1.4.04.003'#39', '#39'COMISS'#213'ES'#39', 1, 1, 0, NULL, NULL, 0' +
        ');'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5871, 1, 2, '#39'2.1.5.02.001'#39', '#39'ALUGUEIS PASSIVOS'#39', 1, 1, 0, NULL,' +
        ' NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5872, 0, 2, '#39'2.3.1.01'#39', '#39'CAPITAL SOCIAL'#39', 1, 1, 0, NULL, NULL, ' +
        '0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5873, 0, 2, '#39'2.3.3'#39', '#39'PREJU'#205'ZO ACUMULADO'#39', 0, 1, 0, NULL, NULL,' +
        ' 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5874, 1, 3, '#39'3.1.3.01.001'#39', '#39'RECEITA DE VENDA DE SERVI'#199'OS '#192' VIS' +
        'TA'#39', 1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5875, 1, 3, '#39'3.1.3.01.002'#39', '#39'RECEITA DE VENDA DE SERVI'#199'OS A PRA' +
        'ZO'#39', 1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5876, 0, 3, '#39'3.3'#39', '#39'DEDU'#199#213'ES DAS RECEITAS'#39', 0, 1, 0, NULL, NULL' +
        ', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5877, 0, 3, '#39'3.3.1'#39', '#39'DESCONTOS CONCEDIDOS'#39', 0, 1, 0, NULL, NUL' +
        'L, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5878, 1, 4, '#39'4.1.4.01.008'#39', '#39'IRPJ E CSLL'#39', 0, 1, 0, NULL, NULL,' +
        ' 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5879, 1, 4, '#39'4.1.4.01.009'#39', '#39'PIS E COFINS'#39', 0, 1, 0, NULL, NULL' +
        ', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5880, 1, 4, '#39'4.1.2.01.003'#39', '#39'DESCONTOS CONCEDIDOS NO CONTAS A R' +
        'ECEBER'#39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5881, 1, 4, '#39'4.1.2.01.004'#39', '#39'JUROS PASSIVOS NO PAGAMENTO DE CON' +
        'TAS'#39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5882, 1, 4, '#39'4.1.2.01.005'#39', '#39'JUROS RECEBIDOS DE ATRASO DE CLIEN' +
        'TES'#39', 1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5883, 1, 3, '#39'3.1.3.01.003'#39', '#39'RECEBIMENTO DE SERVI'#199'OS '#192' PRAZO'#39', ' +
        '1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5884, 1, 3, '#39'3.1.1.02.003'#39', '#39'RECEBIMENTO DE VENDAS DE MERCADORI' +
        'AS '#192' PRAZO'#39', 1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5885, 1, 3, '#39'3.1.1.03.001'#39', '#39'CUSTO COM PAGAMENTO DE MERCADORIAS' +
        ' '#192' PRAZO'#39', 0, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5886, 1, 3, '#39'3.1.1.03.002'#39', '#39'CUSTO COM COMPRA DE MERCADORIAS '#192' ' +
        'VISTA'#39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5887, 1, 4, '#39'4.1.2.01.006'#39', '#39'PAGAMENTO DE EMPR'#201'STIMOS'#39', 0, 1, 0' +
        ', NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5888, 1, 1, '#39'1.1.1.02.003'#39', '#39'BANCO BRADESCO'#39', 0, 1, 1, '#39#39', NULL' +
        ', 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5889, 1, 1, '#39'1.1.6.01.001'#39', '#39'ESTOQUE DE MERCADORIA PARA REVENDA' +
        #39', 0, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5890, 0, 1, '#39'1.1.7'#39', '#39'DESPESAS PAGAS ANTECIPADAMENTE'#39', 0, 1, 1,' +
        ' NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5891, 0, 1, '#39'1.1.7.01'#39', '#39'ANTECIPA'#199#195'O A FORNECEDORES'#39', 0, 1, 1, ' +
        'NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5892, 0, 1, '#39'1.2.2.24'#39', '#39'INVESTIMENTOS BANC'#193'RIOS'#39', 0, 1, 1, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5893, 1, 1, '#39'1.2.2.24.001'#39', '#39'CONTA INVESTIMENTO BANCO X'#39', 0, 1,' +
        ' 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5894, 1, 1, '#39'1.1.7.01.001'#39', '#39'ANTECIPA'#199#195'O A FORNECEDORES'#39', 0, 1,' +
        ' 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5895, 1, 1, '#39'1.2.3.05.001'#39', '#39'(-)DEPRECIA'#199#195'O DE M'#211'VEIS E UTENS'#205'L' +
        'IOS'#39', 1, 1, 9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5896, 1, 1, '#39'1.2.3.05.002'#39', '#39'(-)DEPRECIA'#199#195'O DE M'#193'QUINAS E EQUIP' +
        'AMENTOS'#39', 1, 1, 9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5897, 1, 1, '#39'1.2.3.05.003'#39', '#39'(-)DEPRECIA'#199#195'O DE VE'#205'CULOS'#39', 1, 1,' +
        ' 9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5898, 1, 1, '#39'1.2.3.05.004'#39', '#39'(-)DEPRECIA'#199#195'O DE PR'#201'DIOS'#39', 1, 1, ' +
        '9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5899, 1, 1, '#39'1.2.4.02.001'#39', '#39'(-)AMORTIZA'#199#195'O DE INTANG'#205'VEIS'#39', 1,' +
        ' 1, 9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5900, 1, 2, '#39'2.3.1.01.001'#39', '#39'CAPITAL SOCIAL'#39', 1, 1, 0, NULL, NU' +
        'LL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5901, 0, 2, '#39'2.3.3.01'#39', '#39'PREJUIZO ACUMULADO'#39', 0, 1, 0, NULL, NU' +
        'LL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      '(5902, 0, 4, '#39'4.1.4.02'#39', '#39'MANUTEN'#199#195'O'#39', 0, 1, 0, '#39#39', NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5903, 1, 4, '#39'4.1.4.02.001'#39', '#39'MANUTEN'#199#195'O EL'#201'TRICA'#39', 0, 1, 0, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5904, 1, 4, '#39'4.1.4.02.002'#39', '#39'MANUTEN'#199#195'O EM PR'#201'DIOS'#39', 0, 1, 0, N' +
        'ULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5905, 1, 4, '#39'4.1.4.02.003'#39', '#39'MANUTEN'#199#195'O EM GERAL'#39', 0, 1, 0, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5906, 1, 2, '#39'2.3.3.01.001'#39', '#39'PREJU'#205'ZOS ACUMULADOS'#39', 0, 1, 0, NU' +
        'LL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5907, 1, 4, '#39'4.3.2.01.001'#39', '#39'DAS SIMPLES NACIONAL'#39', 0, 1, 0, NU' +
        'LL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5908, 0, 4, '#39'4.3.1.01'#39', '#39'CUSTOS DAS MERCADORIAS'#39', 0, 1, 0, NULL' +
        ', NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5909, 1, 4, '#39'4.3.1.01.001'#39', '#39'CUSTO DE REPOSI'#199#195'O DAS MERCADORIAS' +
        #39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5910, 1, 4, '#39'4.3.2.02.001'#39', '#39'DARF E DAE SOBRE FATURAMENTO'#39', 0, ' +
        '1, 0, '#39#39', NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5911, 1, 4, '#39'4.3.1.01.002'#39', '#39'FRETE SOBRE COMPRAS'#39', 0, 1, 0, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5912, 0, 4, '#39'4.3.3'#39', '#39'COMISS'#195'O SOBRE VENDAS'#39', 0, 1, 0, NULL, NU' +
        'LL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5913, 0, 4, '#39'4.3.3.01'#39', '#39'COMISS'#195'O SOBRE VENDAS'#39', 0, 1, 0, NULL,' +
        ' NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5914, 1, 4, '#39'4.3.3.01.001'#39', '#39'COMISS'#195'O VARI'#193'VEL SOBRE VENDAS'#39', 0' +
        ', 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5915, 1, 4, '#39'4.3.3.01.002'#39', '#39'TAXA ADMINISTRADORA DE CART'#213'ES'#39', 0' +
        ', 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5916, 0, 3, '#39'3.3.1.01'#39', '#39'DESCONTOS CONCEDIDOS'#39', 0, 1, 0, NULL, ' +
        'NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5917, 1, 3, '#39'3.3.1.01.001'#39', '#39'DESCONTOS CONCEDIDOS'#39', 0, 1, 0, NU' +
        'LL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5918, 0, 4, '#39'4.1.2.01'#39', '#39'DESPESAS FINANCEIRAS'#39', 0, 1, 0, NULL, ' +
        'NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5919, 1, 4, '#39'4.1.2.01.001'#39', '#39'DESPESAS BANC'#193'RIAS'#39', 0, 1, 0, NULL' +
        ', NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5920, 1, 4, '#39'4.1.2.01.002'#39', '#39'JUROS E DESPESAS COM ANTECIPA'#199#195'O D' +
        'E RECEB'#205'VEIS'#39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5921, 0, 4, '#39'4.2.3.01'#39', '#39'OUTRAS DESPESAS N'#195'O ENQUADR'#193'VEIS'#39', 0, ' +
        '1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5922, 1, 4, '#39'4.2.3.01.001'#39', '#39'OUTRAS DESPESAS N'#195'O ENQUADR'#193'VEIS'#39',' +
        ' 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5923, 0, 4, '#39'4.2.2.01'#39', '#39'DEPRECIA'#199#195'O DE BENS E INVESTIMENTOS'#39', ' +
        '0, 1, 9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5924, 1, 4, '#39'4.2.2.01.001'#39', '#39'DEPRECIA'#199#195'O DE BENS E INVESTIMENTO' +
        'S'#39', 0, 1, 9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5925, 0, 3, '#39'3.1.3.01'#39', '#39'RECEITA COM VENDA DE SERVI'#199'OS'#39', 1, 1, ' +
        '1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5926, 1, 1, '#39'1.2.4.01.001'#39', '#39'INTANG'#205'VEL'#39', 0, 1, 1, NULL, NULL, ' +
        '0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5927, 0, 4, '#39'4.3.2.03'#39', '#39'ISS SOBRE FATURAMENTO DE SERVI'#199'OS'#39', 0,' +
        ' 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5928, 1, 4, '#39'4.3.2.03.001'#39', '#39'ISS SOBRE FATURAMENTO DE SERVI'#199'OS'#39 +
        ', 0, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5929, 0, 4, '#39'4.3.4'#39', '#39'PERDAS DE MERCADORIAS'#39', 0, 1, 9, NULL, NU' +
        'LL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5930, 0, 4, '#39'4.3.4.01'#39', '#39'PERDAS DE MERCADORIAS'#39', 0, 1, 9, NULL,' +
        ' NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5931, 1, 4, '#39'4.3.4.01.001'#39', '#39'PERDAS DE MERCADORIAS'#39', 0, 1, 9, N' +
        'ULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      '(5932, 0, 4, '#39'4.2.2.02'#39', '#39'DOA'#199#213'ES'#39', 0, 1, 9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      '(5933, 1, 4, '#39'4.2.2.02.001'#39', '#39'DOA'#199#213'ES'#39', 0, 1, 9, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5934, 0, 2, '#39'2.1.5.01'#39', '#39'OUTRAS CONTAS A PAGAR'#39', 1, 1, 0, NULL,' +
        ' NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5935, 1, 2, '#39'2.1.5.01.001'#39', '#39'OUTRAS CONTAS A PAGAR EM GERAL'#39', 1' +
        ', 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5936, 0, 3, '#39'3.1.5.01'#39', '#39'ALUGUEIS DE INVESTIMENTOS'#39', 1, 1, 1, N' +
        'ULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5937, 1, 3, '#39'3.1.5.01.001'#39', '#39'ALUGUEIS DE IM'#211'VEIS'#39', 1, 1, 1, NUL' +
        'L, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5938, 1, 3, '#39'3.1.1.01.003'#39', '#39'RECEITA DE VENDA DE MERCADORIAS NO' +
        ' CART'#195'O D'#201'BITO'#39', 1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5939, 1, 3, '#39'3.1.3.01.004'#39', '#39'RECEITA DE VENDA DE SERVI'#199'OS NO CA' +
        'RT'#195'O D'#201'BITO'#39', 1, 1, 1, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5940, 1, 3, '#39'3.1.1.01.004'#39', '#39'CANCELAMENTO DE VENDA DE MERCADORI' +
        'AS'#39', 0, 1, 0, NULL, NULL, 0);'
      
        'INSERT INTO pcg(pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, ' +
        'pcgidentificacao, cedcodigo, pcgativa, pcgrecdes, pcccodigo, pcg' +
        'descricao, pcgconfig) VALUES'
      
        '(5941, 1, 3, '#39'3.1.3.01.005'#39', '#39'CANCELAMENTO DE VENDA DE SERVI'#199'OS'#39 +
        ', 0, 1, 0, NULL, NULL, 0);'
      ''
      ''
      ''
      ''
      ''
      'INSERT INTO dmc(dmccodigo, dmcidentificacao) VALUES'
      '(1, '#39'DRE ECONOMICO'#39');'
      'INSERT INTO dmc(dmccodigo, dmcidentificacao) VALUES'
      '(2, '#39'DRE FINANCEIRO'#39');'
      'INSERT INTO dmc(dmccodigo, dmcidentificacao) VALUES'
      '(3, '#39'RELAT'#211'RIO PATRIMONIAL'#39');'
      ''
      ''
      ''
      ''
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(1, '#39'RECEITAS OPERACIONAIS'#39', 1);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(2, '#39'(-) DEDU'#199#213'ES DAS RECEITAS'#39', 1);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(3, '#39'(-) CUSTOS'#39', 1);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(4, '#39'(+) RECEITAS OPERACIONAIS'#39', 1);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(5, '#39'(-) DESPESAS GERAIS'#39', 1);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(6, '#39'(-) DESPESAS FINANCEIRAS'#39', 1);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(11, '#39'RECEITAS'#39', 2);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(12, '#39'(-) DEDU'#199#213'ES DAS RECEITAS'#39', 2);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(13, '#39'(-) DESPESAS N'#195'O DESEMBOLS'#193'VEIS'#39', 1);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(15, '#39'CUSTOS VARI'#193'VEIS PAGOS'#39', 2);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(16, '#39'(-) CUSTOS E DESPESAS PAGOS'#39', 2);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(17, '#39'(-) DESPESAS FINANCEIRAS'#39', 2);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(18, '#39'ATIVO CIRCULANTE'#39', 3);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(19, '#39'ATIVO N'#195'O CIRCULANTE'#39', 3);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(20, '#39'PASSIVO CIRCULANTE'#39', 3);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(21, '#39'PASSIVO N'#195'O CIRCULANTE'#39', 3);'
      'INSERT INTO gre(grecodigo, greidentificacao, dmccodigo) VALUES'
      '(22, '#39'PATRIM'#212'NIO L'#205'QUIDO'#39', 3);'
      ''
      ''
      ''
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(7, 1, 5815);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(8, 1, 5874);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(10, 2, 5817);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(11, 2, 5818);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(19, 3, 5910);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(22, 3, 5915);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(23, 5, 5825);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(24, 5, 5826);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(25, 5, 5827);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(26, 5, 5828);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(27, 5, 5830);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(28, 5, 5829);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(29, 5, 5831);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(30, 5, 5832);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(31, 5, 5833);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(32, 5, 5834);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(33, 5, 5835);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(35, 5, 5837);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(36, 5, 5840);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(37, 5, 5841);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(38, 5, 5842);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(39, 5, 5843);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(40, 5, 5878);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(41, 5, 5879);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(45, 6, 5880);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(46, 6, 5882);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(47, 11, 5814);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(48, 11, 5874);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(49, 11, 5884);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(50, 11, 5883);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(51, 12, 5817);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(53, 12, 5880);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(55, 15, 5885);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(56, 15, 5886);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(62, 16, 5825);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(63, 16, 5826);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(64, 16, 5827);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(65, 16, 5828);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(66, 16, 5829);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(67, 16, 5830);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(68, 16, 5831);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(69, 16, 5832);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(70, 16, 5833);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(71, 16, 5834);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(72, 16, 5835);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(74, 16, 5837);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(77, 16, 5840);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(78, 16, 5841);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(79, 16, 5842);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(80, 16, 5843);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(82, 16, 5878);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(83, 16, 5879);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(87, 17, 5880);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(88, 17, 5881);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(89, 17, 5882);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(90, 17, 5887);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(91, 18, 5848);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(92, 18, 5846);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(93, 18, 5849);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(94, 18, 5850);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(95, 18, 5851);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(97, 19, 5855);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(98, 19, 5853);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(99, 19, 5854);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(100, 19, 5856);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(101, 19, 5857);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(102, 19, 5858);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(103, 19, 5859);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(104, 20, 5860);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(105, 20, 5861);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(106, 20, 5863);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(107, 20, 5862);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(108, 20, 5864);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(109, 20, 5865);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(110, 20, 5866);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(111, 20, 5868);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(112, 20, 5869);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(113, 20, 5870);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(114, 20, 5871);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(115, 21, 161);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(118, 6, 5887);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(119, 18, 5889);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(120, 22, 5900);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(121, 22, 5906);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(122, 3, 5907);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(123, 3, 5909);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(124, 3, 5911);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(125, 3, 5914);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(126, 2, 5917);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(127, 6, 5881);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(128, 6, 5920);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(129, 6, 5919);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(130, 5, 5922);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(131, 13, 5924);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(132, 1, 5814);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(134, 1, 5875);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(135, 15, 5907);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(136, 15, 5910);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(137, 15, 5914);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(138, 15, 5915);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(139, 17, 5919);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(140, 17, 5920);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(141, 12, 5917);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(143, 19, 5926);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(144, 3, 5928);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(145, 15, 5928);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(147, 3, 5931);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(148, 13, 5933);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(149, 20, 5935);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(150, 5, 5937);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(151, 16, 5937);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(153, 1, 5938);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(154, 1, 5939);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(155, 11, 5938);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(156, 11, 5939);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(157, 2, 5940);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(158, 2, 5941);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(159, 12, 5940);'
      'INSERT INTO dre(drechave, grecodigo, pcgcodigo) VALUES'
      '(160, 12, 5941);')
    Left = 772
    Top = 200
  end
end
