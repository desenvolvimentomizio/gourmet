inherited ftrs: Tftrs
  ActiveControl = etdidentificacao
  Caption = 'Transportador'
  ClientHeight = 651
  ClientWidth = 665
  ExplicitWidth = 681
  ExplicitHeight = 690
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 622
    Width = 665
    ExplicitTop = 622
    ExplicitWidth = 665
    object Letddatacad: TLabel [0]
      Left = 105
      Top = 6
      Width = 49
      Height = 13
      CustomHint = BalloonHint
      Caption = 'Data Cad.'
      FocusControl = etddatacad
    end
    object Letddataalt: TLabel [1]
      Left = 296
      Top = 6
      Width = 43
      Height = 13
      CustomHint = BalloonHint
      Caption = 'Data Alt.'
      FocusControl = etddataalt
    end
    inherited bconfirma: TBitBtn
      Left = 511
      ExplicitLeft = 511
    end
    inherited bcancela: TBitBtn
      Left = 586
      ExplicitLeft = 586
    end
    inherited bfechar: TBitBtn
      Left = 446
      ExplicitLeft = 446
    end
    object etddatacad: TDBEdit
      Left = 156
      Top = 4
      Width = 92
      Height = 21
      CustomHint = BalloonHint
      DataField = 'etddatacad'
      DataSource = DSRegistro
      TabOrder = 4
    end
    object etddataalt: TDBEdit
      Left = 345
      Top = 6
      Width = 87
      Height = 21
      CustomHint = BalloonHint
      DataField = 'etddataalt'
      DataSource = DSRegistro
      TabOrder = 5
    end
  end
  inherited paginas: TPageControl
    Width = 665
    Height = 622
    ExplicitWidth = 665
    ExplicitHeight = 622
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = etdcodigo
      end
      object Label2: TLabel
        Left = 16
        Top = 33
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Raz'#227'o Social / Nome '
        FocusControl = etdidentificacao
      end
      object Label4: TLabel
        Left = 16
        Top = 60
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Pessoa'
        FocusControl = tpecodigo
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome Fantasia / Apelido'
        FocusControl = etdapelido
      end
      object Label5: TLabel
        Left = 421
        Top = 60
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CPF / CNPJ'
        FocusControl = etddoc1
      end
      object Spt1: TSplitter
        Left = 0
        Top = 465
        Width = 657
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
      end
      object Spt2: TSplitter
        Left = 0
        Top = 321
        Width = 657
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
      end
      object etdidentificacao: TDBEdit
        Left = 138
        Top = 30
        Width = 511
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 138
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdapelido: TDBEdit
        Left = 138
        Top = 85
        Width = 337
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdapelido'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object tpecodigo: TDBEdit
        Left = 138
        Top = 57
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpecodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object etddoc1: TDBEdit
        Left = 481
        Top = 57
        Width = 168
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etddoc1'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = etddoc1Exit
      end
      object Bvalidar: TBitBtn
        Left = 581
        Top = 84
        Width = 68
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 5
        OnClick = BvalidarClick
      end
      object Pletf: TPanel
        Left = 0
        Top = 468
        Width = 657
        Height = 126
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 6
      end
      object Pledr: TPanel
        Left = 0
        Top = 324
        Width = 657
        Height = 141
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 7
      end
    end
    object DadosFiscais: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Dados Fiscais/Cont'#225'beis'
      ImageIndex = 1
      OnEnter = DadosFiscaisEnter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbpcgcodigo: TLabel
        Left = 8
        Top = 6
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil'
        FocusControl = pcgcodigo
      end
      object pcgcodigo: TDBEdit
        Left = 140
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = Detv
        TabOrder = 0
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '01-07-001'
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfg.cfgcodigo,'
      '  cfgctbtrn,'
      '  cfgctbtrnindiv,'
      '  cfgusactb'
      'FROM cfg,'
      '     cfgmctb'
      'WHERE cfgmctb.cfgcodigo = cfg.cfgcodigo')
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select etdcodigo, etdidentificacao,etdapelido,tpecodigo,etddatac' +
        'ad,etddataalt,etddoc1,tsecodigo from etd '
      'where etdcodigo=:etdcodigo')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object registroetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object registroetdidentificacao: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object registroetdapelido: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'etdapelido'
      Required = True
      Size = 35
    end
    object registroetddatacad: TDateField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'etddatacad'
    end
    object registroetddataalt: TDateField
      DisplayLabel = 'Dt. Altera'#231#227'o'
      FieldName = 'etddataalt'
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
      Required = True
      Lookup = True
    end
    object registroetddoc1: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'etddoc1'
      Required = True
    end
    object registrotsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tpe: TUniQuery
    SQL.Strings = (
      'select tpecodigo, tpeidentificacao from tpe')
    Constraints = <>
    Left = 144
    Top = 292
    object tpetpecodigo: TIntegerField
      DisplayLabel = 'Tipo Pessoa'
      FieldName = 'tpecodigo'
      Required = True
    end
    object tpetpeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tpeidentificacao'
      Required = True
    end
  end
  object etv: TUniQuery
    SQL.Strings = (
      'select etdcodigo,tvicodigo, pcgcodigo from etv')
    Constraints = <>
    AfterInsert = etvAfterInsert
    Left = 192
    Top = 292
    object etvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etvtvicodigo: TIntegerField
      FieldName = 'tvicodigo'
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
  object ACBrValidador: TACBrValidador
    IgnorarChar = './-;,\'
    AjustarTamanho = True
    Left = 68
    Top = 316
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcgcodigo,'
      
        '  CONCAT(pcgestrutural, '#39' - '#39', pcgidentificacao) AS pcgidentific' +
        'acao'
      'FROM pcg')
    Constraints = <>
    Left = 280
    Top = 200
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 150
    end
  end
  object Detv: TDataSource
    DataSet = etv
    Left = 188
    Top = 343
  end
end
