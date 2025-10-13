inherited fcfgment: Tfcfgment
  ActiveControl = cfgtoeativofora
  Caption = 'Configura'#231#245'es para Entradas de Mercadorias'
  ClientHeight = 569
  ClientWidth = 659
  ExplicitWidth = 675
  ExplicitHeight = 608
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 540
    Width = 659
    ExplicitTop = 518
    ExplicitWidth = 659
    inherited bconfirma: TBitBtn
      Left = 505
      ExplicitLeft = 505
    end
    inherited bcancela: TBitBtn
      Left = 580
      ExplicitLeft = 580
    end
    inherited bfechar: TBitBtn
      Left = 440
      ExplicitLeft = 440
    end
  end
  inherited paginas: TPageControl
    Width = 659
    Height = 540
    ExplicitWidth = 659
    ExplicitHeight = 518
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 651
      ExplicitHeight = 490
      object Bevel4: TBevel
        Left = 3
        Top = 352
        Width = 633
        Height = 72
        CustomHint = BalloonHint
      end
      object Bevel1: TBevel
        Left = 4
        Top = 12
        Width = 633
        Height = 65
        CustomHint = BalloonHint
      end
      object Bevel3: TBevel
        Left = 3
        Top = 207
        Width = 633
        Height = 68
        CustomHint = BalloonHint
      end
      object Bevel2: TBevel
        Left = 3
        Top = 90
        Width = 633
        Height = 101
        CustomHint = BalloonHint
      end
      object Label4: TLabel
        Left = 13
        Top = 4
        Width = 262
        Height = 13
        CustomHint = BalloonHint
        Caption = ' Opera'#231#245'es padr'#245'es para compra de Ativo Imobilizado '
        Transparent = False
      end
      object Label38: TLabel
        Left = 13
        Top = 27
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Compra fora do Estado'
        FocusControl = cfgtoeativofora
      end
      object Label39: TLabel
        Left = 13
        Top = 54
        Width = 88
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Compra no Estado'
        FocusControl = cfgtoeativointe
      end
      object Label7: TLabel
        Left = 13
        Top = 84
        Width = 252
        Height = 13
        CustomHint = BalloonHint
        Caption = ' Opera'#231#245'es padr'#245'es para compra de Uso e Consumo'
        Transparent = False
      end
      object Label5: TLabel
        Left = 13
        Top = 115
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Compra fora do Estado'
        FocusControl = cfgtoeusofora
      end
      object Label6: TLabel
        Left = 13
        Top = 142
        Width = 88
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Compra no Estado'
        FocusControl = cfgtoeusointe
      end
      object Label3: TLabel
        Left = 13
        Top = 169
        Width = 122
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto de Uso/Consumo'
        FocusControl = cfgprouso
      end
      object Label8: TLabel
        Left = 13
        Top = 200
        Width = 132
        Height = 13
        CustomHint = BalloonHint
        Caption = ' Opera'#231#245'es em andamento '
        Transparent = False
      end
      object Label1: TLabel
        Left = 13
        Top = 223
        Width = 130
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pedidos em processamento'
        FocusControl = cfgtoeped
      end
      object Label2: TLabel
        Left = 13
        Top = 250
        Width = 126
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#245'es em andamento'
        FocusControl = cfgtoetmp
      end
      object Label10: TLabel
        Left = 13
        Top = 375
        Width = 117
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial de FORA do Estado'
        FocusControl = cfgtoetransentflafora
      end
      object Label11: TLabel
        Left = 13
        Top = 402
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial DO Estado'
        FocusControl = cfgtoetransentflainte
      end
      object Label12: TLabel
        Left = 16
        Top = 346
        Width = 179
        Height = 13
        CustomHint = BalloonHint
        Caption = ' Opera'#231#245'es entradas vindas de filiais '
        Transparent = False
      end
      object Label13: TLabel
        Left = 3
        Top = 443
        Width = 187
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Importa Contas a Pagar junto com NFE'
        FocusControl = cfgimpfatura
      end
      object Label14: TLabel
        Left = 3
        Top = 467
        Width = 185
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ajusta Custo do itens ao Importar NFE'
        FocusControl = cfgajustacusto
      end
      object cfgtoeativofora: TDBEdit
        Left = 164
        Top = 24
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeativofora'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object lcfgtoeativofora: TDBLookupComboBox
        Left = 213
        Top = 24
        Width = 412
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeativofora'
        DataSource = DSRegistro
        KeyField = 'toecodigo'
        ListField = 'toeidentificacao'
        ListSource = Dtoe
        TabOrder = 1
        TabStop = False
      end
      object lcfgtoeativointe: TDBLookupComboBox
        Left = 213
        Top = 51
        Width = 412
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeativointe'
        DataSource = DSRegistro
        KeyField = 'toecodigo'
        ListField = 'toeidentificacao'
        ListSource = Dtoe
        TabOrder = 3
        TabStop = False
      end
      object cfgtoeativointe: TDBEdit
        Left = 164
        Top = 51
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeativointe'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgtoeusofora: TDBEdit
        Left = 164
        Top = 112
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeusofora'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object lcfgtoeusofora: TDBLookupComboBox
        Left = 213
        Top = 112
        Width = 412
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeusofora'
        DataSource = DSRegistro
        KeyField = 'toecodigo'
        ListField = 'toeidentificacao'
        ListSource = Dtoe
        TabOrder = 5
        TabStop = False
      end
      object llcfgtoeusointe: TDBLookupComboBox
        Left = 213
        Top = 139
        Width = 412
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeusointe'
        DataSource = DSRegistro
        KeyField = 'toecodigo'
        ListField = 'toeidentificacao'
        ListSource = Dtoe
        TabOrder = 7
        TabStop = False
      end
      object cfgtoeusointe: TDBEdit
        Left = 164
        Top = 139
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeusointe'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object cfgprouso: TDBEdit
        Left = 164
        Top = 166
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgprouso'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object cfgtoeped: TDBEdit
        Left = 164
        Top = 220
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeped'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object lcfgtoeped: TDBLookupComboBox
        Left = 213
        Top = 220
        Width = 412
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoeped'
        DataSource = DSRegistro
        KeyField = 'toecodigo'
        ListField = 'toeidentificacao'
        ListSource = Dtoe
        TabOrder = 10
        TabStop = False
      end
      object lcfgtoetmp: TDBLookupComboBox
        Left = 213
        Top = 247
        Width = 412
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoetmp'
        DataSource = DSRegistro
        KeyField = 'toecodigo'
        ListField = 'toeidentificacao'
        ListSource = Dtoe
        TabOrder = 12
        TabStop = False
      end
      object cfgtoetmp: TDBEdit
        Left = 164
        Top = 247
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoetmp'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 281
        Width = 634
        Height = 56
        CustomHint = BalloonHint
        Caption = ' Configura'#231#245'es para importa'#231#227'o de XML '
        TabOrder = 13
        object Label9: TLabel
          Left = 13
          Top = 24
          Width = 182
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Cadastra produto para reclassifica'#231#227'o'
        end
        object cfgcadastrapro: TDBEdit
          Left = 201
          Top = 21
          Width = 32
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cfgcadastrapro'
          DataSource = DSRegistro
          TabOrder = 0
        end
      end
      object cfgtoetransentflafora: TDBEdit
        Left = 164
        Top = 372
        Width = 46
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoetransentflafora'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object cfgtoetransentflainte: TDBEdit
        Left = 164
        Top = 399
        Width = 46
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtoetransentflainte'
        DataSource = DSRegistro
        TabOrder = 15
      end
      object cfgimpfatura: TDBEdit
        Left = 196
        Top = 440
        Width = 31
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgimpfatura'
        DataSource = DSRegistro
        TabOrder = 16
      end
      object cfgajustacusto: TDBEdit
        Left = 196
        Top = 467
        Width = 31
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgajustacusto'
        DataSource = DSRegistro
        TabOrder = 17
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '01-01-004'
  end
  inherited DSRegistro: TUniDataSource
    Left = 548
    Top = 52
  end
  inherited cfg: TUniQuery
    Left = 700
    Top = 192
  end
  inherited consulta: TUniQuery
    Left = 680
    Top = 68
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT cfgment.cfgcodigo'
      '     , cfgment.cfgtoeativofora'
      '     , cfgment.cfgtoeativointe'
      '     , cfgment.cfgtoeped'
      '     , cfgment.cfgtoetmp'
      '     , cfgment.cfgtoeusofora'
      '     , cfgment.cfgtoeusointe'
      '     , cfgment.cfgtoetransentflafora'
      '     , cfgment.cfgtoetransentflainte'
      '     , cfgment.cfgprouso'
      '     , cfgment.cfgcadastrapro'
      '     , cfgment.cfgimpfatura'
      '     , cfgment.cfgajustacusto'
      ''
      '  FROM cfgment'
      ' WHERE cfgment.cfgcodigo = :cfgcodigo')
    Left = 384
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object registrocfgtoeativofora: TIntegerField
      FieldName = 'cfgtoeativofora'
      Required = True
    end
    object registrocfgtoeativointe: TIntegerField
      FieldName = 'cfgtoeativointe'
      Required = True
    end
    object registrocfgtoeped: TIntegerField
      FieldName = 'cfgtoeped'
      Required = True
    end
    object registrocfgtoetmp: TIntegerField
      FieldName = 'cfgtoetmp'
      Required = True
    end
    object registrocfgtoeusofora: TIntegerField
      FieldName = 'cfgtoeusofora'
      Required = True
    end
    object registrocfgtoeusointe: TIntegerField
      FieldName = 'cfgtoeusointe'
      Required = True
    end
    object registrocfgprouso: TIntegerField
      DisplayLabel = 'Produo de Uso'
      FieldName = 'cfgprouso'
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'cfgprouso'
      Size = 60
      Lookup = True
    end
    object registrocfgcadastrapro: TIntegerField
      FieldName = 'cfgcadastrapro'
      Required = True
    end
    object registrosenidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'senidentificacao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgcadastrapro'
      Size = 5
      Lookup = True
    end
    object registrocfgtoetransentflafora: TIntegerField
      DisplayLabel = 'Opera'#231#227'o de entrada para Filial de FORA do Estado'
      FieldName = 'cfgtoetransentflafora'
    end
    object registrotoecfgtoetransentflafora: TStringField
      FieldKind = fkLookup
      FieldName = 'toecfgtoetransentflafora'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'cfgtoetransentflafora'
      Size = 50
      Lookup = True
    end
    object registrocfgtoetransentflainte: TIntegerField
      DisplayLabel = 'Opera'#231#227'o de entrada para Filial DO Estado'
      FieldName = 'cfgtoetransentflainte'
    end
    object registrotoecfgtoetransentflainte: TStringField
      FieldKind = fkLookup
      FieldName = 'toecfgtoetransentflainte'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'cfgtoetransentflainte'
      Size = 50
      Lookup = True
    end
    object registrocfgimpfatura: TIntegerField
      FieldName = 'cfgimpfatura'
      Required = True
    end
    object registrosencfgimpfatura: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgimpfatura'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgimpfatura'
      Size = 5
      Lookup = True
    end
    object registrocfgajustacusto: TIntegerField
      FieldName = 'cfgajustacusto'
      Required = True
    end
    object registrosencfgajustacusto: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgajustacusto'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgajustacusto'
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 696
    Top = 236
  end
  inherited dtb: TUniQuery
    Left = 736
    Top = 280
  end
  inherited coa: TUniQuery
    Left = 656
    Top = 148
  end
  inherited cau: TUniQuery
    Left = 756
    Top = 132
  end
  inherited err: TUniQuery
    Left = 656
    Top = 92
  end
  inherited BalloonHint: TBalloonHint
    Left = 768
    Top = 16
  end
  inherited cpg: TUniQuery
    Left = 316
    Top = 80
  end
  inherited cpc: TUniQuery
    Left = 317
    Top = 129
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 644
    Top = 172
  end
  object Dtoe: TUniDataSource
    DataSet = toe
    Left = 608
    Top = 24
  end
  object toe: TUniQuery
    SQL.Strings = (
      'select toecodigo, toeidentificacao from toe')
    Left = 612
    Top = 52
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 572
    Top = 120
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 671
    Top = 289
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
