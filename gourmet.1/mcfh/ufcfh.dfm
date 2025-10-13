inherited fcfh: Tfcfh
  ActiveControl = etdidentificacao
  Caption = 'Colaborador'
  ClientHeight = 703
  ClientWidth = 839
  ExplicitWidth = 855
  ExplicitHeight = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 674
    Width = 839
    ExplicitTop = 674
    ExplicitWidth = 839
    object Label1: TLabel [0]
      Left = 106
      Top = 7
      Width = 70
      Height = 13
      CustomHint = BalloonHint
      Caption = 'Data Cadastro'
      FocusControl = etddatacad
    end
    object Label2: TLabel [1]
      Left = 262
      Top = 7
      Width = 72
      Height = 13
      CustomHint = BalloonHint
      Caption = 'Data Altera'#231#227'o'
      FocusControl = etddataalt
    end
    inherited bconfirma: TBitBtn
      Left = 685
      ExplicitLeft = 685
    end
    inherited bcancela: TBitBtn
      Left = 760
      ExplicitLeft = 760
    end
    inherited bfechar: TBitBtn
      Left = 620
      ExplicitLeft = 620
    end
    object etddatacad: TDBEdit
      Left = 186
      Top = 6
      Width = 66
      Height = 21
      CustomHint = BalloonHint
      TabStop = False
      DataField = 'etddatacad'
      DataSource = DSRegistro
      ReadOnly = True
      TabOrder = 4
    end
    object etddataalt: TDBEdit
      Left = 337
      Top = 6
      Width = 66
      Height = 21
      CustomHint = BalloonHint
      TabStop = False
      DataField = 'etddataalt'
      DataSource = DSRegistro
      ReadOnly = True
      TabOrder = 5
    end
  end
  inherited paginas: TPageControl
    Width = 839
    Height = 674
    ExplicitWidth = 839
    ExplicitHeight = 674
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 831
      ExplicitHeight = 646
      object BvTopo: TBevel
        Left = 0
        Top = 0
        Width = 831
        Height = 161
        CustomHint = BalloonHint
        Align = alTop
      end
      object eetdcodigo: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'&digo'
        FocusControl = etdcodigo
      end
      object eetdidentificacao: TLabel
        Left = 8
        Top = 33
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Raz'#227'o Social / Nome'
        FocusControl = etdidentificacao
      end
      object Label6: TLabel
        Left = 8
        Top = 59
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Pessoa'
        FocusControl = tpecodigo
      end
      object Label7: TLabel
        Left = 420
        Top = 60
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CNPJ / CPF'
        FocusControl = etddoc1
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome Fantasia / Apelido'
        FocusControl = etdapelido
      end
      object Label23: TLabel
        Left = 8
        Top = 114
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#245'es'
        FocusControl = etdapelido
      end
      object Spt1: TSplitter
        Left = 0
        Top = 196
        Width = 831
        Height = 4
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
        AutoSnap = False
        Beveled = True
      end
      object Spt2: TSplitter
        Left = 0
        Top = 346
        Width = 831
        Height = 4
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
        AutoSnap = False
        Beveled = True
      end
      object Spt3: TSplitter
        Left = 0
        Top = 496
        Width = 831
        Height = 4
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
        AutoSnap = False
        Beveled = True
      end
      object etdcodigo: TDBEdit
        Left = 140
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdidentificacao: TDBEdit
        Left = 140
        Top = 30
        Width = 465
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tpecodigo: TDBEdit
        Left = 140
        Top = 57
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpecodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object etddoc1: TDBEdit
        Left = 480
        Top = 57
        Width = 125
        Height = 21
        CustomHint = BalloonHint
        Color = 16372104
        DataField = 'etddoc1'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = etddoc1Exit
        OnKeyPress = FormKeyPress
      end
      object etdapelido: TDBEdit
        Left = 140
        Top = 84
        Width = 273
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdapelido'
        DataSource = DSRegistro
        TabOrder = 4
        OnEnter = etdapelidoEnter
      end
      object etdobs: TDBMemo
        Left = 139
        Top = 111
        Width = 391
        Height = 35
        CustomHint = BalloonHint
        DataField = 'etdobs'
        DataSource = DSRegistro
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object Bvalidar: TBitBtn
        Left = 537
        Top = 125
        Width = 68
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 6
        OnClick = BvalidarClick
      end
      object Pledr: TPanel
        Left = 0
        Top = 200
        Width = 831
        Height = 146
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 7
      end
      object Plete: TPanel
        Left = 0
        Top = 500
        Width = 831
        Height = 146
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 8
      end
      object Pletf: TPanel
        Left = 0
        Top = 350
        Width = 831
        Height = 146
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 9
      end
    end
    object referencias: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Refer'#234'ncias'
      ImageIndex = 1
      TabVisible = False
      object Sp4: TSplitter
        Left = 0
        Top = 296
        Width = 831
        Height = 4
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alTop
      end
      object Sp5: TSplitter
        Left = 0
        Top = 146
        Width = 831
        Height = 4
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alTop
      end
      object Splitter1: TSplitter
        Left = 0
        Top = 446
        Width = 831
        Height = 4
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alTop
      end
      object Plrfc: TPanel
        Left = 0
        Top = 300
        Width = 831
        Height = 146
        CustomHint = BalloonHint
        Align = alTop
        TabOrder = 0
      end
      object Plrfb: TPanel
        Left = 0
        Top = 150
        Width = 831
        Height = 146
        CustomHint = BalloonHint
        Align = alTop
        TabOrder = 1
      end
      object Plstc: TPanel
        Left = 0
        Top = 0
        Width = 831
        Height = 146
        CustomHint = BalloonHint
        Align = alTop
        TabOrder = 2
      end
      object Plrfp: TPanel
        Left = 0
        Top = 450
        Width = 831
        Height = 146
        CustomHint = BalloonHint
        Align = alTop
        TabOrder = 3
      end
    end
    object DadosPessoais: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Dados Pessoais'
      ImageIndex = 2
      TabVisible = False
      OnEnter = DadosPessoaisEnter
      object ldpfnatural: TLabel
        Left = 11
        Top = 14
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Naturalidade'
        FocusControl = dpfnatural
      end
      object ldpfdtnasc: TLabel
        Left = 406
        Top = 14
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Nascimento'
      end
      object ldpfssp: TLabel
        Left = 283
        Top = 41
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'SSP/UF'
        FocusControl = dpfssp
      end
      object ldpfrg: TLabel
        Left = 11
        Top = 41
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Identidade'
        FocusControl = dpfrg
      end
      object ldpfnomemae: TLabel
        Left = 11
        Top = 68
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome da M'#227'e'
        FocusControl = dpfnomemae
      end
      object ldpfnomepai: TLabel
        Left = 11
        Top = 95
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Pai'
        FocusControl = dpfnomepai
      end
      object letccodigo: TLabel
        Left = 11
        Top = 122
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado Civil'
        FocusControl = etccodigo
      end
      object ldpfnudepend: TLabel
        Left = 11
        Top = 203
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. de Dependentes'
        FocusControl = dpfnudepend
      end
      object ldpftrabconj: TLabel
        Left = 11
        Top = 176
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Trabalho do Conjuge'
        FocusControl = dpftrabconj
      end
      object ldpfconjuge: TLabel
        Left = 11
        Top = 149
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do C'#244'njuge'
        FocusControl = dpfconjuge
      end
      object ldpfdtnascmae: TLabel
        Left = 406
        Top = 68
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Nascimento'
      end
      object ldpfdtnascpai: TLabel
        Left = 406
        Top = 95
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Nascimento'
      end
      object ldpfdtcas: TLabel
        Left = 407
        Top = 149
        Width = 95
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Casamento'
      end
      object ldpfdtnasccon: TLabel
        Left = 348
        Top = 203
        Width = 154
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Nascimento do C'#244'njuge'
      end
      object ldpffoneconj: TLabel
        Left = 402
        Top = 176
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Telefone do C'#244'njuge'
      end
      object dpfnatural: TDBEdit
        Left = 139
        Top = 11
        Width = 237
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpfnatural'
        DataSource = Ddpf
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object dpfdtnasc: TDBEdit
        Left = 508
        Top = 11
        Width = 100
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpfdtnasc'
        DataSource = Ddpf
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object dpfssp: TDBEdit
        Left = 324
        Top = 38
        Width = 52
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'dpfssp'
        DataSource = Ddpf
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object dpfrg: TDBEdit
        Left = 139
        Top = 38
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'dpfrg'
        DataSource = Ddpf
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object dpfnomemae: TDBEdit
        Left = 139
        Top = 65
        Width = 237
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpfnomemae'
        DataSource = Ddpf
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object dpfnomepai: TDBEdit
        Left = 139
        Top = 92
        Width = 237
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpfnomepai'
        DataSource = Ddpf
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object etccodigo: TDBEdit
        Left = 139
        Top = 119
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        Color = clWhite
        DataField = 'etccodigo'
        DataSource = Ddpf
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object dpfconjuge: TDBEdit
        Left = 139
        Top = 146
        Width = 237
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpfconjuge'
        DataSource = Ddpf
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object dpftrabconj: TDBEdit
        Left = 139
        Top = 173
        Width = 191
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpftrabconj'
        DataSource = Ddpf
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object dpfnudepend: TDBEdit
        Left = 139
        Top = 200
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dpfnudepend'
        DataSource = Ddpf
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
      object dpfdtnasccon: TDBEdit
        Left = 508
        Top = 200
        Width = 100
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpfdtnasccon'
        DataSource = Ddpf
        TabOrder = 14
        OnKeyPress = FormKeyPress
      end
      object dpffoneconj: TDBEdit
        Left = 508
        Top = 173
        Width = 100
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpffoneconj'
        DataSource = Ddpf
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object dpfdtcas: TDBEdit
        Left = 508
        Top = 146
        Width = 99
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dpfdtcas'
        DataSource = Ddpf
        TabOrder = 10
      end
      object dpfdtnascpai: TDBEdit
        Left = 508
        Top = 92
        Width = 100
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpfdtnascpai'
        DataSource = Ddpf
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object dpfdtnascmae: TDBEdit
        Left = 508
        Top = 65
        Width = 100
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        DataField = 'dpfdtnascmae'
        DataSource = Ddpf
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
    end
    object DadosFiscais: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Dados Trabalhistas / Cont'#225'beis'
      ImageIndex = 3
      OnEnter = DadosFiscaisEnter
      object lbpcgcodigo: TLabel
        Left = 8
        Top = 168
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil'
        FocusControl = pcgcodigo
      end
      object Label4: TLabel
        Left = 9
        Top = 6
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Admiss'#227'o'
        FocusControl = dtrdataadmissao
      end
      object Label8: TLabel
        Left = 9
        Top = 60
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do PIS'
        FocusControl = dtrpis
      end
      object Label9: TLabel
        Left = 9
        Top = 114
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Demiss'#227'o'
        FocusControl = dtrdatademissao
      end
      object Label10: TLabel
        Left = 8
        Top = 33
        Width = 95
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero de Registro'
        FocusControl = dtrnumeregistro
      end
      object Label11: TLabel
        Left = 8
        Top = 87
        Width = 119
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fun'#231#227'o atual em registro'
        FocusControl = ffhcodigo
        Visible = False
      end
      object Label12: TLabel
        Left = 8
        Top = 141
        Width = 94
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Sindicato'
        FocusControl = sincodigo
        Visible = False
      end
      object pcgcodigo: TDBEdit
        Left = 140
        Top = 165
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = Detv
        TabOrder = 6
      end
      object dtrdataadmissao: TDBEdit
        Left = 140
        Top = 3
        Width = 108
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtrdataadmissao'
        DataSource = Ddtr
        TabOrder = 0
        OnEnter = dtrdataadmissaoEnter
      end
      object dtrpis: TDBEdit
        Left = 140
        Top = 57
        Width = 198
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtrpis'
        DataSource = Ddtr
        TabOrder = 2
      end
      object dtrdatademissao: TDBEdit
        Left = 140
        Top = 111
        Width = 108
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtrdatademissao'
        DataSource = Ddtr
        TabOrder = 4
      end
      object dtrnumeregistro: TDBEdit
        Left = 140
        Top = 30
        Width = 125
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtrnumeregistro'
        DataSource = Ddtr
        TabOrder = 1
      end
      object ffhcodigo: TDBEdit
        Left = 140
        Top = 84
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ffhcodigo'
        DataSource = Ddtr
        TabOrder = 3
        Visible = False
      end
      object sincodigo: TDBEdit
        Left = 140
        Top = 138
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sincodigo'
        DataSource = Ddtr
        TabOrder = 5
        Visible = False
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Width = 73
    Caption = '01.01.001-01'
    ExplicitWidth = 73
    inherited spChamaAjuda: TSpeedButton
      Left = 53
      ExplicitLeft = 53
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 344
    Top = 552
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfg.cfgcodigo,'
      '  cfgcontrolalimite,'
      '  cfgmclivalidacpf,'
      '  cfgctbclb,'
      '  cfgctbclbindiv,'
      '  cfgusactb,'
      '  cfgctbusaccg'
      'FROM cfg,'
      '     cfgmcre,'
      '     cfgmcli,'
      '     cfgmctb'
      'WHERE cfg.cfgcodigo = cfgmcli.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmcre.cfgcodigo'
      'AND cfgmctb.cfgcodigo = cfg.cfgcodigo')
    Left = 596
    Top = 448
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgcontrolalimite: TIntegerField
      FieldName = 'cfgcontrolalimite'
    end
    object cfgcfgmclivalidacpf: TIntegerField
      FieldName = 'cfgmclivalidacpf'
    end
    object cfgcfgctbclbindiv: TIntegerField
      FieldName = 'cfgctbclbindiv'
    end
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
    object cfgcfgctbclb: TIntegerField
      FieldName = 'cfgctbclb'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
  end
  inherited consulta: TUniQuery
    Left = 516
    Top = 444
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select * from etd where etdcodigo=:etdcodigo')
    BeforePost = registroBeforePost
    AfterPost = registroAfterPost
    Left = 264
    Top = 244
    ParamData = <
      item
        DataType = ftInteger
        Name = 'etdcodigo'
        ParamType = ptInput
        Value = nil
      end>
    object registroetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object registroetdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social / Nome'
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object registroetdapelido: TStringField
      DisplayLabel = 'Nome Fantasia / Apelido'
      FieldName = 'etdapelido'
      Required = True
      Size = 100
    end
    object registroetddeletar: TIntegerField
      DefaultExpression = '0'
      FieldName = 'etddeletar'
      Required = True
    end
    object registrotpecodigo: TIntegerField
      DisplayLabel = 'Tipo de Pessoa'
      FieldName = 'tpecodigo'
      Required = True
    end
    object registrotpeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tpeidentificacao'
      LookupDataSet = tpe
      LookupKeyFields = 'tpecodigo'
      LookupResultField = 'tpeidentificacao'
      KeyFields = 'tpecodigo'
      Lookup = True
    end
    object registroetddatacad: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'etddatacad'
    end
    object registroetddataalt: TDateField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'etddataalt'
    end
    object registroetddoc1: TStringField
      DisplayLabel = 'CNPJ / CPF'
      FieldName = 'etddoc1'
      Required = True
    end
    object registroetdativo: TIntegerField
      FieldName = 'etdativo'
      Required = True
    end
    object registrotsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object registroetdobs: TStringField
      FieldName = 'etdobs'
      Size = 2000
    end
    object registroetdsuframa: TStringField
      DisplayLabel = 'SUFRAMA'
      FieldName = 'etdsuframa'
      Size = 50
    end
    object registrotcbcodigo: TIntegerField
      FieldName = 'tcbcodigo'
      Required = True
    end
    object registrotcbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tcbidentificacao'
      LookupDataSet = tcb
      LookupKeyFields = 'tcbcodigo'
      LookupResultField = 'tcbidentificacao'
      KeyFields = 'tcbcodigo'
      Size = 35
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 160
    Top = 364
  end
  inherited dtb: TUniQuery
    Left = 96
    Top = 396
  end
  inherited coa: TUniQuery
    Left = 36
    Top = 384
  end
  inherited pfr: TUniQuery
    Left = 580
    Top = 500
  end
  inherited psf: TUniQuery
    Left = 540
    Top = 520
  end
  inherited dcl: TUniQuery
    Left = 368
    Top = 420
  end
  object ACBrValidador: TACBrValidador [13]
    TipoDocto = docInscEst
    IgnorarChar = './-'
    Left = 256
    Top = 448
  end
  object etv: TUniQuery [14]
    SQL.Strings = (
      
        'select  etvcodigo, etdcodigo, tvicodigo, pcgcodigo from etv limi' +
        't 1')
    AfterInsert = etvAfterInsert
    Left = 340
    Top = 444
    object etvetvcodigo: TIntegerField
      FieldName = 'etvcodigo'
    end
    object etvtvicodigo: TIntegerField
      FieldName = 'tvicodigo'
    end
    object etvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etvpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object etvpcgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgidentificacao'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Size = 50
      Lookup = True
    end
  end
  object tpe: TUniQuery [15]
    SQL.Strings = (
      'SELECT'
      '  tpecodigo,'
      '  tpeidentificacao'
      'FROM tpe ')
    Left = 408
    Top = 456
    object tpetpecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tpecodigo'
    end
    object tpetpeidentificacao: TStringField
      FieldName = 'tpeidentificacao'
    end
  end
  object dpf: TUniQuery [16]
    SQL.Strings = (
      'select * from dpf where dpf.etdcodigo=:etdcodigo')
    Left = 508
    Top = 372
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object dpfdpfcodigo: TIntegerField
      FieldName = 'dpfcodigo'
    end
    object dpfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object dpfdpfdtnasc: TDateField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'dpfdtnasc'
      EditMask = '!99/99/9999;1;_'
    end
    object Naturalidade: TStringField
      FieldName = 'dpfnatural'
      Size = 30
    end
    object dpfdpfrg: TStringField
      DisplayLabel = 'Nr. Identidade'
      FieldName = 'dpfrg'
      Size = 15
    end
    object dpfdpfssp: TStringField
      DisplayLabel = 'SSP/UF'
      FieldName = 'dpfssp'
      Size = 10
    end
    object dpfdpfnomemae: TStringField
      DisplayLabel = 'Nome da M'#227'e'
      FieldName = 'dpfnomemae'
      Size = 30
    end
    object dpfdpfdtnascmae: TDateField
      DisplayLabel = 'Data Nasc. M'#227'e'
      FieldName = 'dpfdtnascmae'
    end
    object dpfdpfnomepai: TStringField
      DisplayLabel = 'Nome do Pai'
      FieldName = 'dpfnomepai'
      Size = 30
    end
    object dpfdpfdtnascpai: TDateField
      DisplayLabel = 'Data Nasc. Pai'
      FieldName = 'dpfdtnascpai'
      EditMask = '!99/99/9999;1;_'
    end
    object dpfetccodigo: TIntegerField
      FieldName = 'etccodigo'
    end
    object dpfetcidentificacao: TStringField
      DisplayLabel = 'Estado Civil'
      FieldKind = fkLookup
      FieldName = 'etcidentificacao'
      LookupDataSet = etc
      LookupKeyFields = 'etccodigo'
      LookupResultField = 'etcidentificacao'
      KeyFields = 'etccodigo'
      Size = 30
      Lookup = True
    end
    object dpfdpfconjuge: TStringField
      DisplayLabel = 'Nome do C'#244'njuge'
      FieldName = 'dpfconjuge'
      Size = 50
    end
    object dpfdpfdtnasccon: TDateField
      DisplayLabel = 'Data Nasc. C'#244'njuge'
      FieldName = 'dpfdtnasccon'
      EditMask = '!99/99/9999;1;_'
    end
    object dpfdpfdtcas: TDateField
      DisplayLabel = 'Data de Casamento'
      FieldName = 'dpfdtcas'
      EditMask = '!99/99/9999;1;_'
    end
    object dpfdpftrabconj: TStringField
      DisplayLabel = 'Trabalho do C'#244'njuge'
      FieldName = 'dpftrabconj'
      Size = 30
    end
    object dpfdpffoneconj: TStringField
      DisplayLabel = 'Telefone do C'#244'njuge'
      FieldName = 'dpffoneconj'
    end
    object dpfdpfnudepend: TIntegerField
      DisplayLabel = 'Nr. de Dependentes'
      FieldName = 'dpfnudepend'
    end
  end
  object Ddpf: TUniDataSource [17]
    DataSet = dpf
    Left = 548
    Top = 372
  end
  object etc: TUniQuery [18]
    SQL.Strings = (
      'select etccodigo, etcidentificacao from etc')
    Left = 468
    Top = 456
    object etcetccodigo: TIntegerField
      FieldName = 'etccodigo'
    end
    object etcetcidentificacao: TStringField
      FieldName = 'etcidentificacao'
      Size = 50
    end
  end
  object cfgmcli: TUniQuery [19]
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgmcliusarefpes,'
      '  cfgmcliusarefecom,'
      '  cfgmcliusarefban,'
      '  cfgmcliusaconemp,'
      '  cfgmcliusadapefi,'
      '  cfgmclivalidacpf'
      'FROM cfgmcli'
      'WHERE cfgcodigo = :cfgcodigo')
    Left = 176
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgmclicodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgmclicfgmcliusarefpes: TIntegerField
      FieldName = 'cfgmcliusarefpes'
    end
    object cfgmclicfgmcliusarefecom: TIntegerField
      FieldName = 'cfgmcliusarefecom'
    end
    object cfgmclicfgmcliusarefban: TIntegerField
      FieldName = 'cfgmcliusarefban'
    end
    object cfgmclicfgmcliusaconemp: TIntegerField
      FieldName = 'cfgmcliusaconemp'
    end
    object cfgmclicfgmcliusadapefi: TIntegerField
      FieldName = 'cfgmcliusadapefi'
    end
    object cfgmclicfgmclivalidacpf: TIntegerField
      FieldName = 'cfgmclivalidacpf'
    end
  end
  inherited BalloonHint: TBalloonHint
    Left = 452
    Top = 264
  end
  inherited acoesfrm: TActionList
    Left = 684
    Top = 316
  end
  inherited ImgBusca: TPngImageList
    Left = 708
    Top = 200
    Bitmap = {}
  end
  object tcb: TUniQuery
    SQL.Strings = (
      'select tcbcodigo, tcbidentificacao from tcb')
    Left = 768
    Top = 144
    object tcbtcbcodigo: TIntegerField
      FieldName = 'tcbcodigo'
    end
    object tcbtcbidentificacao: TStringField
      FieldName = 'tcbidentificacao'
      Size = 35
    end
  end
  object Detv: TDataSource
    DataSet = etv
    Left = 340
    Top = 495
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcgcodigo,'
      
        '  CONCAT(pcgestrutural, '#39' - '#39', pcgidentificacao) AS pcgidentific' +
        'acao'
      'FROM pcg')
    Left = 336
    Top = 392
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 150
    end
  end
  object dtr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dtrcodigo,'
      '  etdcodigo,'
      '  dtrdataadmissao,'
      '  dtrpis,'
      '  dtrdatademissao,'
      '  dtrnumeregistro,'
      '  ffhcodigo,'
      '  sincodigo,'
      '  dprcodigo,'
      '  ffhcodigo'
      'FROM dtr where etdcodigo=:etdcodigo')
    BeforePost = dtrBeforePost
    Left = 728
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object dtrdtrcodigo: TIntegerField
      FieldName = 'dtrcodigo'
    end
    object dtretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object dtrdtrdataadmissao: TDateField
      DisplayLabel = 'Data de Admiss'#227'o'
      FieldName = 'dtrdataadmissao'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object dtrdtrpis: TStringField
      DisplayLabel = 'N'#250'mero do PIS'
      FieldName = 'dtrpis'
      Size = 50
    end
    object dtrdtrdatademissao: TDateField
      DisplayLabel = 'Data de Demiss'#227'o'
      FieldName = 'dtrdatademissao'
      EditMask = '!99/99/0000;1;_'
    end
    object dtrdtrnumeregistro: TStringField
      DisplayLabel = 'N'#250'mero de Registro'
      FieldName = 'dtrnumeregistro'
      Size = 50
    end
    object dtrffhcodigo: TIntegerField
      DisplayLabel = 'Fun'#231#227'o atual em registro'
      FieldName = 'ffhcodigo'
    end
    object dtrffhidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ffhidentificacao'
      LookupDataSet = ffh
      LookupKeyFields = 'ffhcodigo'
      LookupResultField = 'ffhidentificacao'
      KeyFields = 'ffhcodigo'
      Size = 50
      Lookup = True
    end
    object dtrsincodigo: TIntegerField
      DisplayLabel = 'Sindicato'
      FieldName = 'sincodigo'
    end
    object dtrsinidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'sinidentificacao'
      LookupDataSet = sin
      LookupKeyFields = 'sincodigo'
      LookupResultField = 'sinidentificacao'
      KeyFields = 'sincodigo'
      Size = 50
      Lookup = True
    end
  end
  object Ddtr: TDataSource
    DataSet = dtr
    Left = 732
    Top = 344
  end
  object ffh: TUniQuery
    SQL.Strings = (
      'select ffhcodigo, ffhidentificacao from ffh')
    Left = 628
    Top = 152
    object ffhffhcodigo: TIntegerField
      FieldName = 'ffhcodigo'
    end
    object ffhffhidentificacao: TStringField
      FieldName = 'ffhidentificacao'
      Size = 50
    end
  end
  object sin: TUniQuery
    SQL.Strings = (
      'select sincodigo, sinidentificacao from sin')
    Left = 628
    Top = 392
    object sinsincodigo: TIntegerField
      FieldName = 'sincodigo'
    end
    object sinsinidentificacao: TStringField
      FieldName = 'sinidentificacao'
      Size = 50
    end
  end
  object dpr: TUniQuery
    SQL.Strings = (
      'SELECT dpr.dprcodigo'
      '     , dpr.dpridentificacao'
      'FROM dpr')
    Left = 731
    Top = 408
    object dprdprcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'dprcodigo'
    end
    object dprdpridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'dpridentificacao'
      Size = 30
    end
  end
end
