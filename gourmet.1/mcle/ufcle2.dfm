inherited fcle: Tfcle
  ActiveControl = nrTelefone
  Caption = 'Dados para Entrega'
  ClientHeight = 591
  ClientWidth = 739
  ExplicitWidth = 755
  ExplicitHeight = 630
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 562
    Width = 739
    ExplicitTop = 562
    ExplicitWidth = 739
    inherited bconfirma: TBitBtn
      Left = 585
      ExplicitLeft = 585
    end
    inherited bcancela: TBitBtn
      Left = 660
      ExplicitLeft = 660
    end
    inherited bfechar: TBitBtn
      Left = 520
      ExplicitLeft = 520
    end
  end
  inherited paginas: TPageControl
    Width = 739
    Height = 562
    ExplicitWidth = 739
    ExplicitHeight = 562
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 731
      ExplicitHeight = 534
      object eetdidentificacao: TLabel
        Left = 19
        Top = 77
        Width = 132
        Height = 19
        CustomHint = BalloonHint
        Caption = 'Nome do cliente'
        FocusControl = etdidentificacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 19
        Top = 116
        Width = 139
        Height = 19
        CustomHint = BalloonHint
        Caption = 'Tipo de Cadastro'
        FocusControl = tpecodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 371
        Top = 116
        Width = 92
        Height = 19
        CustomHint = BalloonHint
        Caption = 'Documento'
        FocusControl = etddoc1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Spt1: TSplitter
        Left = 0
        Top = 144
        Width = 731
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
        AutoSnap = False
        Beveled = True
        ExplicitTop = 168
        ExplicitWidth = 909
      end
      object Spt2: TSplitter
        Left = 0
        Top = 293
        Width = 731
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
        AutoSnap = False
        Beveled = True
        ExplicitTop = 317
        ExplicitWidth = 909
      end
      object Label3: TLabel
        Left = 468
        Top = 77
        Width = 49
        Height = 19
        CustomHint = BalloonHint
        Caption = 'Nasc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object plTelefone: TPanel
        Left = 0
        Top = 0
        Width = 731
        Height = 47
        CustomHint = BalloonHint
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 97
          Top = 12
          Width = 72
          Height = 19
          CustomHint = BalloonHint
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object spClientes: TSpeedButton
          Left = 300
          Top = 8
          Width = 117
          Height = 27
          CustomHint = BalloonHint
          Action = ActClientes
        end
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 33
          Height = 19
          CustomHint = BalloonHint
          Caption = 'DDD'
        end
        object nrTelefone: TMaskEdit
          Left = 175
          Top = 8
          Width = 106
          Height = 27
          CustomHint = BalloonHint
          Color = 16765348
          TabOrder = 0
          Text = ''
          OnEnter = nrTelefoneEnter
          OnExit = nrTelefoneExit
          OnKeyUp = nrTelefoneKeyUp
        end
        object plNome: TPanel
          Left = 423
          Top = 8
          Width = 298
          Height = 27
          CustomHint = BalloonHint
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 4
          ParentBackground = False
          TabOrder = 1
        end
        object nrDDD: TMaskEdit
          Left = 48
          Top = 8
          Width = 30
          Height = 27
          CustomHint = BalloonHint
          Color = clYellow
          EditMask = '!99;1;_'
          MaxLength = 2
          TabOrder = 2
          Text = '66'
        end
      end
      object etdidentificacao: TDBEdit
        Left = 181
        Top = 80
        Width = 270
        Height = 27
        CustomHint = BalloonHint
        DataField = 'etdidentificacao'
        DataSource = DSRegistro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = etdidentificacaoEnter
        OnExit = etdidentificacaoExit
      end
      object tpecodigo: TDBEdit
        Left = 181
        Top = 113
        Width = 29
        Height = 27
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'tpecodigo'
        DataSource = DSRegistro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnEnter = tpecodigoEnter
      end
      object etddoc1: TDBEdit
        Left = 471
        Top = 113
        Width = 181
        Height = 27
        CustomHint = BalloonHint
        TabStop = False
        Color = 16372104
        DataField = 'etddoc1'
        DataSource = DSRegistro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = etddoc1Exit
        OnKeyPress = FormKeyPress
      end
      object Bvalidar: TBitBtn
        Left = 658
        Top = 115
        Width = 68
        Height = 27
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 5
        OnClick = BvalidarClick
      end
      object PledrCle: TPanel
        Left = 0
        Top = 296
        Width = 731
        Height = 238
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 6
      end
      object Pletf: TPanel
        Left = 0
        Top = 147
        Width = 731
        Height = 146
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 7
      end
      object dpfdtnasc: TDBEdit
        Left = 523
        Top = 77
        Width = 198
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dpfdtnasc'
        DataSource = dsdpf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = dpfdtnascExit
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 388
    Top = 248
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfg.cfgcodigo, cfgcontrolalimite, cfgmclivalidacpf,cfgemi' +
        'nclusao from cfg,cfgmcre, cfgmcli where cfg.cfgcodigo=cfgmcli.cf' +
        'gcodigo and cfg.cfgcodigo=cfgmcre.cfgcodigo')
    Left = 676
    Top = 252
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgcontrolalimite: TIntegerField
      FieldName = 'cfgcontrolalimite'
    end
    object cfgcfgmclivalidacpf: TIntegerField
      FieldName = 'cfgmclivalidacpf'
    end
    object cfgcfgeminclusao: TIntegerField
      FieldName = 'cfgeminclusao'
    end
  end
  inherited consulta: TUniQuery
    Left = 800
    Top = 252
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select * from etd where etdcodigo=:etdcodigo')
    BeforePost = registroBeforePost
    Left = 388
    Top = 304
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
    end
  end
  inherited dcp: TUniQuery
    Left = 96
    Top = 268
  end
  inherited dtb: TUniQuery
    Top = 260
  end
  inherited coa: TUniQuery
    Left = 56
    Top = 324
  end
  inherited pfr: TUniQuery
    Left = 680
    Top = 204
  end
  inherited psf: TUniQuery
    Left = 704
    Top = 212
  end
  inherited dcl: TUniQuery
    Left = 732
    Top = 208
  end
  inherited err: TUniQuery
    Top = 308
  end
  inherited acoesfrm: TActionList
    Images = ImgBusca
    Left = 292
    Top = 260
    object ActClientes: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Clientes'
      ImageIndex = 0
      ShortCut = 118
      OnExecute = ActClientesExecute
    end
  end
  inherited ImgBusca: TPngImageList
    Left = 316
    Top = 65520
    Bitmap = {}
  end
  object tpe: TUniQuery
    SQL.Strings = (
      'select * from tpe where tpecodigo<>9')
    Left = 560
    Top = 248
    object tpetpecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tpecodigo'
    end
    object tpetpeidentificacao: TStringField
      FieldName = 'tpeidentificacao'
    end
  end
  object ACBrValidador: TACBrValidador
    TipoDocto = docInscEst
    IgnorarChar = './-'
    Left = 256
    Top = 369
  end
  object etv: TUniQuery
    SQL.Strings = (
      'select  etvcodigo, etdcodigo, tvicodigo from etv limit 1')
    Left = 388
    Top = 356
    object etvetvcodigo: TIntegerField
      FieldName = 'etvcodigo'
    end
    object etvtvicodigo: TIntegerField
      FieldName = 'tvicodigo'
    end
    object etvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object etf: TUniQuery
    Left = 492
    Top = 360
  end
  object dpf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dpfcodigo,'
      '  etdcodigo,'
      '  dpfdtnasc'
      '  FROM dpf')
    MasterSource = DSRegistro
    MasterFields = 'etdcodigo'
    DetailFields = 'etdcodigo'
    BeforePost = dpfBeforePost
    Left = 356
    Top = 208
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
    end
    object dpfdpfdtnasc: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'dpfdtnasc'
    end
  end
  object dsdpf: TUniDataSource
    DataSet = dpf
    Left = 256
    Top = 224
  end
  object ets: TUniQuery
    SQL.Strings = (
      
        'select etscodigo, tsecodigo, etdcodigo, etsdata, etshistorico fr' +
        'om ets where etdcodigo=:etdcodigo order by etsdata desc')
    Left = 343
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etsetscodigo: TIntegerField
      FieldName = 'etscodigo'
    end
    object etstsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object etsetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etsetsdata: TDateField
      FieldName = 'etsdata'
    end
    object etsetshistorico: TStringField
      FieldName = 'etshistorico'
      Size = 250
    end
  end
end
