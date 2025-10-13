inherited fpcg: Tfpcg
  ActiveControl = seacodigo
  Caption = 'Plano de Contas Ger'#234'nciais'
  ClientHeight = 382
  ClientWidth = 787
  ExplicitWidth = 803
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 353
    Width = 787
    ExplicitTop = 339
    ExplicitWidth = 748
    inherited bconfirma: TBitBtn
      Left = 633
      ExplicitLeft = 594
    end
    inherited bcancela: TBitBtn
      Left = 708
      ExplicitLeft = 669
    end
    inherited bfechar: TBitBtn
      Left = 568
      ExplicitLeft = 529
    end
  end
  inherited paginas: TPageControl
    Width = 787
    Height = 353
    ExplicitWidth = 748
    ExplicitHeight = 339
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 779
      ExplicitHeight = 382
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = pcgcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 114
        Width = 67
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Conta'
        FocusControl = seacodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Classifica'#231#227'o Estrutural'
        FocusControl = pcgestrutural
      end
      object Label4: TLabel
        Left = 8
        Top = 141
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = pcgidentificacao
      end
      object Label5: TLabel
        Left = 8
        Top = 33
        Width = 122
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Configura'#231#227'o da M'#225'scara'
        FocusControl = cfpcodigo
      end
      object Label6: TLabel
        Left = 574
        Top = 33
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
        FocusControl = cedidentificacaogrupo
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza da Conta'
        FocusControl = cedcodigo
      end
      object Label8: TLabel
        Left = 8
        Top = 273
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Ativa'
        FocusControl = pcgativa
      end
      object Label9: TLabel
        Left = 8
        Top = 60
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Formato da M'#225'scara'
        FocusControl = cfpmascara
      end
      object Label11: TLabel
        Left = 8
        Top = 195
        Width = 106
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil - SPED'
        FocusControl = pcccodigo
      end
      object lbpcgorcamento: TLabel
        Left = 8
        Top = 300
        Width = 170
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Considerar no Or'#231'amento Gerencial'
      end
      object pcgcodigo: TDBEdit
        Left = 192
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object seacodigo: TDBEdit
        Left = 192
        Top = 111
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'seacodigo'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = seacodigoExit
      end
      object pcgestrutural: TDBEdit
        Left = 192
        Top = 84
        Width = 281
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'pcgestrutural'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object pcgidentificacao: TDBEdit
        Left = 192
        Top = 138
        Width = 581
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgidentificacao'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object cfpcodigo: TDBEdit
        Left = 192
        Top = 30
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfpcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cedidentificacaogrupo: TDBEdit
        Left = 624
        Top = 30
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cedidentificacaogrupo'
        DataSource = DSRegistro
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 6
      end
      object cedcodigo: TDBEdit
        Left = 192
        Top = 165
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 7
        OnExit = cedcodigoExit
      end
      object pcgativa: TDBEdit
        Left = 192
        Top = 270
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'pcgativa'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object cfpmascara: TDBEdit
        Left = 192
        Top = 57
        Width = 281
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfpmascara'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object pcccodigo: TDBEdit
        Left = 192
        Top = 192
        Width = 281
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcccodigo'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object bbuscarplano: TButton
        Left = 480
        Top = 192
        Width = 194
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Pesquisar Conta no plano do SPED'
        TabOrder = 11
        TabStop = False
        OnClick = bbuscarplanoClick
      end
      object pcgrecdes: TDBRadioGroup
        Left = 192
        Top = 219
        Width = 377
        Height = 45
        CustomHint = BalloonHint
        Caption = 'Regime de Caixa'
        Columns = 3
        DataField = 'pcgrecdes'
        DataSource = DSRegistro
        Items.Strings = (
          'Pagamento'
          'Recebimento'
          'N'#227'o se Aplica')
        TabOrder = 9
        Values.Strings = (
          '0'
          '1'
          '9')
      end
      object pcgorcamento: TDBEdit
        Left = 192
        Top = 297
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'pcgorcamento'
        DataSource = DSRegistro
        TabOrder = 12
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 650
    ExplicitLeft = 650
  end
  inherited DSRegistro: TUniDataSource
    Left = 540
    Top = 80
  end
  inherited cfg: TUniQuery
    Left = 472
    Top = 56
  end
  inherited consulta: TUniQuery
    Left = 688
    Top = 168
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select pcgcodigo, seacodigo, cfpcodigo, pcgestrutural, pcgidenti' +
        'ficacao,cedcodigo, pcgativa,pcgrecdes,pcccodigo, pcgorcamento fr' +
        'om pcg where pcgcodigo=:pcgcodigo')
    Left = 688
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcgcodigo'
        Value = nil
      end>
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object registroseacodigo: TIntegerField
      DisplayLabel = 'Tipo de Conta'
      FieldName = 'seacodigo'
      Required = True
    end
    object registroseaidentificacao: TStringField
      DisplayLabel = 'Tipo de Conta'
      FieldKind = fkLookup
      FieldName = 'seaidentificacao'
      LookupDataSet = sea
      LookupKeyFields = 'seacodigo'
      LookupResultField = 'seaidentificacao'
      KeyFields = 'seacodigo'
      Size = 15
      Lookup = True
    end
    object registropcgestrutural: TStringField
      DisplayLabel = 'Classif. Estrutural'
      FieldName = 'pcgestrutural'
      Required = True
      Size = 30
    end
    object registrocfpcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'cfpcodigo'
      Required = True
    end
    object registrocfpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cfpidentificacao'
      LookupDataSet = cfp
      LookupKeyFields = 'cfpcodigo'
      LookupResultField = 'cfpidentificacao'
      KeyFields = 'cfpcodigo'
      Size = 35
      Lookup = True
    end
    object registropcgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pcgidentificacao'
      Required = True
      Size = 80
    end
    object registrocedidentificacaogrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacaogrupo'
      LookupDataSet = cfp
      LookupKeyFields = 'cfpcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cfpcodigo'
      Required = True
      Visible = False
      Size = 35
      Lookup = True
    end
    object registrocfpmascara: TStringField
      FieldKind = fkLookup
      FieldName = 'cfpmascara'
      LookupDataSet = cfp
      LookupKeyFields = 'cfpcodigo'
      LookupResultField = 'cfpmascara'
      KeyFields = 'cfpcodigo'
      Visible = False
      Size = 50
      Lookup = True
    end
    object registrocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrocedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 15
      Lookup = True
    end
    object registropcgativa: TIntegerField
      FieldName = 'pcgativa'
      Required = True
    end
    object registrosenativo: TStringField
      FieldKind = fkLookup
      FieldName = 'senativo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pcgativa'
      Required = True
      Size = 5
      Lookup = True
    end
    object registropcgrecdes: TIntegerField
      DisplayLabel = 'Utilizada na Classifica'#231#227'o'
      FieldName = 'pcgrecdes'
      Required = True
    end
    object registrosenpcgrecdes: TStringField
      FieldKind = fkLookup
      FieldName = 'senpcgrecdes'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pcgrecdes'
      Size = 5
      Lookup = True
    end
    object registropcccodigo: TStringField
      DisplayLabel = 'Conta Cont'#225'bil - SPED'
      FieldName = 'pcccodigo'
      Size = 60
    end
    object registropccidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pccidentificacao'
      LookupDataSet = pcc
      LookupKeyFields = 'pcccodigo'
      LookupResultField = 'pccidentificacao'
      KeyFields = 'pcccodigo'
      Visible = False
      Size = 60
      Lookup = True
    end
    object registropcgorcamento: TIntegerField
      DisplayLabel = 'Considerar no Or'#231'amento Gerencial'
      FieldName = 'pcgorcamento'
      Required = True
    end
    object registrosenpcgorcamento: TStringField
      FieldKind = fkLookup
      FieldName = 'senpcgorcamento'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pcgorcamento'
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 656
    Top = 28
  end
  inherited dtb: TUniQuery
    Left = 612
    Top = 28
  end
  inherited coa: TUniQuery
    Left = 576
    Top = 28
  end
  inherited pfr: TUniQuery
    Top = 56
  end
  inherited psf: TUniQuery
    Left = 528
    Top = 65532
  end
  inherited dcl: TUniQuery
    Left = 444
    Top = 56
  end
  inherited err: TUniQuery
    Left = 624
    Top = 164
  end
  inherited BalloonHint: TBalloonHint
    Left = 556
    Top = 160
  end
  inherited acoesfrm: TActionList
    Left = 388
    Top = 65516
  end
  inherited cpg: TUniQuery
    Left = 652
    Top = 216
  end
  inherited cpc: TUniQuery
    Left = 557
    Top = 329
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 616
    Top = 320
  end
  object sea: TUniQuery
    SQL.Strings = (
      'select seacodigo, seaidentificacao from sea')
    Left = 580
    Top = 65532
    object seaseacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'seacodigo'
    end
    object seaseaidentificacao: TStringField
      DisplayLabel = 'Tipo de Conta'
      FieldName = 'seaidentificacao'
      Size = 15
    end
  end
  object cfp: TUniQuery
    SQL.Strings = (
      
        'select cfpcodigo, cfpidentificacao, cfp.cedcodigo, if(cfp.cedcod' +
        'igo=0,'#39'Devedora'#39','#39'Credora'#39') as cedidentificacao,cfpmascara from ' +
        'cfp, ced where cfp.cedcodigo=ced.cedcodigo')
    Left = 484
    Top = 8
    object cfpcfpcodigo: TIntegerField
      FieldName = 'cfpcodigo'
    end
    object cfpcfpidentificacao: TStringField
      FieldName = 'cfpidentificacao'
      Size = 35
    end
    object cfpcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cfpcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Required = True
      Size = 35
    end
    object cfpcfpmascara: TStringField
      FieldName = 'cfpmascara'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 640
    Top = 160
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object ced: TUniQuery
    SQL.Strings = (
      
        'select cedcodigo,  if(cedcodigo=0,'#39'Devedora'#39','#39'Credora'#39') as cedid' +
        'entificacao  from ced')
    Left = 688
    Top = 112
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 15
    end
  end
  object pcc: TUniQuery
    SQL.Strings = (
      'select pcccodigo, pccidentificacao from pcc')
    Left = 416
    Top = 112
    object pccpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 60
    end
    object pccpccidentificacao: TStringField
      FieldName = 'pccidentificacao'
      Size = 60
    end
  end
end
