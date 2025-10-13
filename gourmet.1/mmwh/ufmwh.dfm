inherited fmwh: Tfmwh
  ActiveControl = mwhtexto
  Caption = 'Mensagens do Whats'
  ClientHeight = 478
  ClientWidth = 672
  ExplicitWidth = 688
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 449
    Width = 672
    ExplicitTop = 582
    ExplicitWidth = 932
    inherited bconfirma: TBitBtn
      Left = 518
      ExplicitLeft = 778
    end
    inherited bcancela: TBitBtn
      Left = 593
      ExplicitLeft = 853
    end
    inherited bfechar: TBitBtn
      Left = 453
      ExplicitLeft = 713
    end
  end
  inherited paginas: TPageControl
    Width = 672
    Height = 449
    ExplicitWidth = 932
    ExplicitHeight = 582
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 924
      ExplicitHeight = 554
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = mwhchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Mensagens'
        FocusControl = mwhchave
      end
      object Label3: TLabel
        Left = 8
        Top = 226
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segunda'
        FocusControl = mwhsegunda
      end
      object Label4: TLabel
        Left = 8
        Top = 253
        Width = 27
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ter'#231'a'
        FocusControl = mwhterca
      end
      object Label5: TLabel
        Left = 8
        Top = 280
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quarta'
        FocusControl = mwhquarta
      end
      object Label6: TLabel
        Left = 8
        Top = 307
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quinta'
        FocusControl = mwhquinta
      end
      object Label7: TLabel
        Left = 8
        Top = 334
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sexta'
        FocusControl = mwhsexta
      end
      object Label8: TLabel
        Left = 8
        Top = 361
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'S'#225'bado'
        FocusControl = mwhsabado
      end
      object Label9: TLabel
        Left = 8
        Top = 388
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Domingo'
        FocusControl = mwhdomingo
      end
      object mwhchave: TDBEdit
        Left = 136
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mwhchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mwhtexto: TDBMemo
        Left = 136
        Top = 30
        Width = 513
        Height = 89
        CustomHint = BalloonHint
        DataField = 'mwhtexto'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object mwhsegunda: TDBEdit
        Left = 136
        Top = 223
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mwhsegunda'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object mwhterca: TDBEdit
        Left = 136
        Top = 250
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mwhterca'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object mwhquarta: TDBEdit
        Left = 136
        Top = 277
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mwhquarta'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object mwhquinta: TDBEdit
        Left = 136
        Top = 304
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mwhquinta'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object mwhsexta: TDBEdit
        Left = 136
        Top = 331
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mwhsexta'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object mwhsabado: TDBEdit
        Left = 136
        Top = 358
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mwhsabado'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object mwhdomingo: TDBEdit
        Left = 136
        Top = 385
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mwhdomingo'
        DataSource = DSRegistro
        TabOrder = 8
      end
    end
  end
  object DBRadioGroup1: TDBRadioGroup [3]
    Left = 140
    Top = 149
    Width = 513
    Height = 76
    CustomHint = BalloonHint
    Caption = 'Situa'#231#227'o - Tipo '
    Columns = 3
    DataField = 'mwhtipo'
    DataSource = DSRegistro
    Items.Strings = (
      'Inativa'
      'Pedidos Recebidos'
      'Pedidos Prontos'
      'Pedidos Saidas'
      'Pedidos Agradecimentos'
      'Promo'#231#227'o')
    TabOrder = 3
    Values.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '9')
  end
  inherited DSRegistro: TUniDataSource
    Left = 804
    Top = 176
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mwhchave,'
      '  mwhtexto,'
      '  mwhimagem,'
      '  mwhtipo,'
      '  mwhsegunda,'
      '  mwhterca,'
      '  mwhquarta,'
      '  mwhquinta,'
      '  mwhsexta,'
      '  mwhsabado,'
      '  mwhdomingo'
      'FROM mwh where mwhchave=:mwhchave')
    Left = 476
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mwhchave'
        Value = nil
      end>
    object registromwhchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mwhchave'
    end
    object registromwhtipo: TIntegerField
      FieldName = 'mwhtipo'
    end
    object registromwhtexto: TStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'mwhtexto'
      Size = 1000
    end
    object registromwhsegunda: TIntegerField
      DisplayLabel = 'Segunda'
      FieldName = 'mwhsegunda'
      Required = True
    end
    object registrosensegunda: TStringField
      FieldKind = fkLookup
      FieldName = 'sensegunda'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'mwhsegunda'
      Size = 5
      Lookup = True
    end
    object registromwhterca: TIntegerField
      DisplayLabel = 'Ter'#231'a'
      FieldName = 'mwhterca'
      Required = True
    end
    object registrosenterca: TStringField
      FieldKind = fkLookup
      FieldName = 'senterca'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'mwhterca'
      Size = 5
      Lookup = True
    end
    object registromwhquarta: TIntegerField
      DisplayLabel = 'Quarta'
      FieldName = 'mwhquarta'
      Required = True
    end
    object registrosenquarta: TStringField
      FieldKind = fkLookup
      FieldName = 'senquarta'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'mwhquarta'
      Size = 5
      Lookup = True
    end
    object registromwhquinta: TIntegerField
      DisplayLabel = 'Quinta'
      FieldName = 'mwhquinta'
      Required = True
    end
    object registrosenquinta: TStringField
      FieldKind = fkLookup
      FieldName = 'senquinta'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'mwhquinta'
      Size = 5
      Lookup = True
    end
    object registromwhsexta: TIntegerField
      DisplayLabel = 'Sexta'
      FieldName = 'mwhsexta'
      Required = True
    end
    object registrosensexta: TStringField
      FieldKind = fkLookup
      FieldName = 'sensexta'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'mwhsexta'
      Size = 5
      Lookup = True
    end
    object registromwhsabado: TIntegerField
      DisplayLabel = 'S'#225'bado'
      FieldName = 'mwhsabado'
      Required = True
    end
    object registrosensabado: TStringField
      FieldKind = fkLookup
      FieldName = 'sensabado'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'mwhsabado'
      Size = 5
      Lookup = True
    end
    object registromwhdomingo: TIntegerField
      DisplayLabel = 'Domingo'
      FieldName = 'mwhdomingo'
      Required = True
    end
    object registrosendomingo: TStringField
      FieldKind = fkLookup
      FieldName = 'sendomingo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'mwhdomingo'
      Size = 5
      Lookup = True
    end
    object registromwhimagem: TBlobField
      FieldName = 'mwhimagem'
    end
  end
  inherited dcp: TUniQuery
    Left = 408
    Top = 300
  end
  inherited dtb: TUniQuery
    Left = 428
    Top = 340
  end
  inherited coa: TUniQuery
    Left = 336
    Top = 44
  end
  inherited cpg: TUniQuery
    Left = 524
    Top = 400
  end
  inherited cpc: TUniQuery
    Left = 525
    Top = 441
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited stg: TUniQuery
    Left = 540
    Top = 432
  end
  inherited consultashema: TUniQuery
    Left = 252
    Top = 336
  end
  inherited stgid: TUniQuery
    Left = 484
    Top = 368
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 588
    Top = 384
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
