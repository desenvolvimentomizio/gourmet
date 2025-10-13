inherited fcle: Tfcle
  ActiveControl = nrTelefone
  Caption = 'Dados para Entrega'
  ClientHeight = 672
  ClientWidth = 768
  ExplicitWidth = 784
  ExplicitHeight = 711
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 643
    Width = 768
    ExplicitTop = 643
    ExplicitWidth = 768
    inherited bconfirma: TBitBtn
      Left = 614
      ExplicitLeft = 614
    end
    inherited bcancela: TBitBtn
      Left = 689
      ExplicitLeft = 689
    end
    inherited bfechar: TBitBtn
      Left = 549
      ExplicitLeft = 549
    end
  end
  inherited paginas: TPageControl
    Width = 768
    Height = 643
    ExplicitWidth = 768
    ExplicitHeight = 643
    inherited Principal: TTabSheet
      ExplicitWidth = 760
      ExplicitHeight = 615
      object eetdidentificacao: TLabel
        Left = 19
        Top = 111
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
        Top = 200
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
        Left = 370
        Top = 200
        Width = 82
        Height = 19
        CustomHint = BalloonHint
        Caption = 'CPF/CNPJ'
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
        Top = 250
        Width = 760
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
        Top = 429
        Width = 760
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
        Top = 111
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
      object Label4: TLabel
        Left = 19
        Top = 76
        Width = 145
        Height = 19
        CustomHint = BalloonHint
        Caption = 'Forma de Entrega'
        FocusControl = tpecodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 373
        Top = 76
        Width = 145
        Height = 19
        CustomHint = BalloonHint
        Caption = 'Origem do Pedido'
        FocusControl = tpecodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 19
        Top = 159
        Width = 102
        Height = 19
        CustomHint = BalloonHint
        Caption = 'Observa'#231#245'es'
        FocusControl = etdobs
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
        Width = 760
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
        Top = 114
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
        TabOrder = 3
        OnEnter = etdidentificacaoEnter
        OnExit = etdidentificacaoExit
      end
      object tpecodigo: TDBEdit
        Left = 182
        Top = 197
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
        TabOrder = 6
        OnEnter = tpecodigoEnter
      end
      object etddoc1: TDBEdit
        Left = 468
        Top = 197
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
        TabOrder = 7
        OnExit = etddoc1Exit
        OnKeyPress = FormKeyPress
      end
      object Bvalidar: TBitBtn
        Left = 655
        Top = 197
        Width = 69
        Height = 28
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 8
        OnClick = BvalidarClick
      end
      object PledrCle: TPanel
        Left = 0
        Top = 432
        Width = 760
        Height = 183
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 9
      end
      object Pletf: TPanel
        Left = 0
        Top = 253
        Width = 760
        Height = 176
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 10
      end
      object dpfdtnasc: TDBEdit
        Left = 523
        Top = 111
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
        TabOrder = 4
        OnExit = dpfdtnascExit
      end
      object CbFormaEntrega: TComboBox
        Left = 181
        Top = 73
        Width = 161
        Height = 27
        CustomHint = BalloonHint
        ParentCustomHint = False
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = CbFormaEntregaChange
        OnEnter = CbFormaEntregaEnter
        OnExit = CbFormaEntregaExit
        OnKeyPress = FormKeyPress
        Items.Strings = (
          'ENTREGA'
          'BALC'#195'O')
      end
      object oridentificacao: TComboBox
        Left = 524
        Top = 73
        Width = 197
        Height = 27
        ParentCustomHint = False
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = oridentificacaoEnter
        OnExit = oridentificacaoExit
        OnKeyPress = FormKeyPress
        Items.Strings = (
          'ENTREGA'
          'BALC'#195'O')
      end
      object etdobs: TDBEdit
        Left = 182
        Top = 156
        Width = 540
        Height = 27
        CustomHint = BalloonHint
        DataField = 'etdobs'
        DataSource = DSRegistro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
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
    Left = 616
    Top = 348
  end
  inherited psf: TUniQuery
    Left = 680
    Top = 372
  end
  inherited dcl: TUniQuery
    Left = 724
    Top = 352
  end
  inherited err: TUniQuery
    Top = 308
  end
  inherited BalloonHint: TBalloonHint
    Top = 264
  end
  inherited acoesfrm: TActionList
    Images = ImgBusca
    Left = 292
    Top = 260
    object ActClientes: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Clientes'
      ImageIndex = 0
      ImageName = '7181_16x16'
      ShortCut = 118
      OnExecute = ActClientesExecute
    end
  end
  inherited ImgBusca: TPngImageList
    Left = 316
    Top = 65520
  end
  object tpe: TUniQuery
    SQL.Strings = (
      'select * from tpe')
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
    Left = 436
    Top = 464
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
    Left = 456
    Top = 344
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
  object ori: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  oricodigo,'
      '  oriidentificacao,'
      '  etdcodigo'
      'FROM ori')
    Left = 548
    Top = 466
    object orioricodigo: TIntegerField
      FieldName = 'oricodigo'
    end
    object orioriidentificacao: TStringField
      FieldName = 'oriidentificacao'
      Size = 50
    end
    object orietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object adc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adccodigo,'
      '  adcidentificacao,'
      '  adcchaveintegracao,'
      '  adcserviconome,'
      '  etdcodigo,'
      '  ctacodigo'
      'FROM adc where adc.adcencerramento IS null')
    Left = 268
    Top = 520
    object adcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object adcadcidentificacao: TStringField
      FieldName = 'adcidentificacao'
      Size = 50
    end
    object adcadcchaveintegracao: TStringField
      FieldName = 'adcchaveintegracao'
      Size = 1000
    end
    object adcadcserviconome: TStringField
      FieldName = 'adcserviconome'
      Size = 50
    end
    object adcetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object adcctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
  end
end
