inherited fvei: Tfvei
  ActiveControl = veimaquina
  Caption = 'Cadastro de Ve'#237'culo'
  ClientHeight = 391
  ClientWidth = 862
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 362
    Width = 862
    inherited bconfirma: TBitBtn
      Left = 708
    end
    inherited bcancela: TBitBtn
      Left = 783
    end
    inherited bfechar: TBitBtn
      Left = 643
    end
  end
  inherited paginas: TPageControl
    Width = 862
    Height = 362
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 15
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = veicodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 60
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Placa'
        FocusControl = veiplaca
      end
      object Label3: TLabel
        Left = 15
        Top = 141
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Marca'
        FocusControl = mrvcodigo
      end
      object Label4: TLabel
        Left = 15
        Top = 114
        Width = 13
        Height = 13
        CustomHint = BalloonHint
        Caption = 'UF'
        FocusControl = ufscodigo
      end
      object Label5: TLabel
        Left = 233
        Top = 114
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cidade'
        FocusControl = cddcodigo
      end
      object Label6: TLabel
        Left = 15
        Top = 222
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Combust'#237'vel'
        FocusControl = cbvcodigo
      end
      object Label7: TLabel
        Left = 15
        Top = 168
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Modelo'
        FocusControl = veimodelo
      end
      object Label8: TLabel
        Left = 15
        Top = 195
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ano de Fabrica'#231#227'o'
        FocusControl = veianofabricacao
      end
      object Label9: TLabel
        Left = 247
        Top = 195
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ano Modelo'
        FocusControl = veianomodelo
      end
      object Label10: TLabel
        Left = 15
        Top = 87
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Chassi'
        FocusControl = veiniv
      end
      object Label11: TLabel
        Left = 296
        Top = 60
        Width = 43
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Renavan'
        FocusControl = veirenavan
      end
      object Label12: TLabel
        Left = 15
        Top = 249
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Motor'
        FocusControl = veinummotor
      end
      object Label13: TLabel
        Left = 15
        Top = 276
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Kilometragem'
        FocusControl = veikilometragem
      end
      object Label14: TLabel
        Left = 15
        Top = 303
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#227'o'
        FocusControl = veiobs
      end
      object Label15: TLabel
        Left = 15
        Top = 33
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#225'quina'
        FocusControl = veimaquina
      end
      object veicodigo: TDBEdit
        Left = 130
        Top = 3
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veicodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object veiplaca: TDBEdit
        Left = 130
        Top = 57
        Width = 108
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veiplaca'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = veiplacaExit
      end
      object mrvcodigo: TDBEdit
        Left = 130
        Top = 138
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mrvcodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object ufscodigo: TDBEdit
        Left = 130
        Top = 111
        Width = 39
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object cddcodigo: TDBEdit
        Left = 272
        Top = 111
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cddcodigo'
        DataSource = DSRegistro
        TabOrder = 6
        OnEnter = cddcodigoEnter
      end
      object cbvcodigo: TDBEdit
        Left = 130
        Top = 219
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cbvcodigo'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object veimodelo: TDBEdit
        Left = 130
        Top = 165
        Width = 336
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veimodelo'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object veianofabricacao: TDBEdit
        Left = 130
        Top = 192
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veianofabricacao'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object veianomodelo: TDBEdit
        Left = 320
        Top = 192
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veianomodelo'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object veiniv: TDBEdit
        Left = 130
        Top = 84
        Width = 150
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veiniv'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = veinivExit
      end
      object veirenavan: TDBEdit
        Left = 345
        Top = 57
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veirenavan'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object veinummotor: TDBEdit
        Left = 130
        Top = 246
        Width = 264
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veinummotor'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object veikilometragem: TDBEdit
        Left = 130
        Top = 273
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veikilometragem'
        DataSource = DSRegistro
        TabOrder = 13
      end
      object veiobs: TDBEdit
        Left = 130
        Top = 300
        Width = 336
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veiobs'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object veimaquina: TDBEdit
        Left = 130
        Top = 30
        Width = 39
        Height = 21
        CustomHint = BalloonHint
        DataField = 'veimaquina'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = veimaquinaExit
      end
    end
  end
  inherited consulta: TUniQuery
    Left = 368
    Top = 68
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vei.veicodigo,'
      '  vei.veiplaca,'
      '  vei.mrvcodigo,'
      '  vei.ufscodigo,'
      '  vei.cddcodigo,'
      '  vei.cbvcodigo,'
      '  vei.veimodelo,'
      '  vei.veicor,'
      '  vei.veianofabricacao,'
      '  vei.veianomodelo,'
      '  vei.veiniv,'
      '  vei.veirenavan,'
      '  vei.veinummotor,'
      '  vei.veikilometragem,'
      '  vei.veiobs,'
      '  vei.veimaquina'
      'FROM vei'
      'WHERE vei.veicodigo = :veicodigo')
    Left = 236
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'veicodigo'
        Value = nil
      end>
    object registroveicodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'veicodigo'
    end
    object registroveimaquina: TIntegerField
      FieldName = 'veimaquina'
    end
    object registrosenmaquina: TStringField
      FieldKind = fkLookup
      FieldName = 'senmaquina'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'veimaquina'
      Size = 4
      Lookup = True
    end
    object registroveiplaca: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'veiplaca'
      Required = True
      EditMask = 'LLL-0000;1;_'
      Size = 8
    end
    object registromrvcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo da Marca'
      FieldName = 'mrvcodigo'
      Required = True
    end
    object registromrvidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mrvidentificacao'
      LookupDataSet = mrv
      LookupKeyFields = 'mrvcodigo'
      LookupResultField = 'mrvidentificacao'
      KeyFields = 'mrvcodigo'
      Size = 50
      Lookup = True
    end
    object registroufscodigo: TIntegerField
      DisplayLabel = 'UF'
      FieldName = 'ufscodigo'
    end
    object registroufssigla: TStringField
      FieldKind = fkLookup
      FieldName = 'ufssigla'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufssigla'
      KeyFields = 'ufscodigo'
      Size = 2
      Lookup = True
    end
    object registrocddcodigo: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'cddcodigo'
    end
    object registrocddnome: TStringField
      FieldKind = fkLookup
      FieldName = 'cddnome'
      LookupDataSet = cdd
      LookupKeyFields = 'cddcodigo'
      LookupResultField = 'cddnome'
      KeyFields = 'cddcodigo'
      Size = 50
      Lookup = True
    end
    object registrocbvcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Combust'#237'vel'
      FieldName = 'cbvcodigo'
    end
    object registrocbvidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cbvidentificacao'
      LookupDataSet = cbv
      LookupKeyFields = 'cbvcodigo'
      LookupResultField = 'cbvidentificacao'
      KeyFields = 'cbvcodigo'
      Size = 50
      Lookup = True
    end
    object registroveimodelo: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'veimodelo'
      Required = True
      Size = 200
    end
    object registroveianofabricacao: TIntegerField
      DisplayLabel = 'Ano de Fabrica'#231#227'o'
      FieldName = 'veianofabricacao'
    end
    object registroveianomodelo: TIntegerField
      DisplayLabel = 'Ano Modelo'
      FieldName = 'veianomodelo'
    end
    object registroveiniv: TStringField
      DisplayLabel = 'N'#250'mero do Chassi'
      FieldName = 'veiniv'
      Size = 17
    end
    object registroveirenavan: TStringField
      DisplayLabel = 'Renavan'
      FieldName = 'veirenavan'
      Size = 11
    end
    object registroveinummotor: TStringField
      DisplayLabel = 'N'#250'mero do Motor'
      FieldName = 'veinummotor'
    end
    object registroveikilometragem: TFloatField
      DisplayLabel = 'Kilometragem'
      FieldName = 'veikilometragem'
    end
    object registroveiobs: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'veiobs'
      Size = 350
    end
  end
  inherited dcp: TUniQuery
    Left = 408
    Top = 12
  end
  inherited dtb: TUniQuery
    Left = 500
    Top = 36
  end
  inherited coa: TUniQuery
    Left = 464
    Top = 36
  end
  inherited pfr: TUniQuery
    Left = 288
    Top = 12
  end
  inherited psf: TUniQuery
    Left = 328
    Top = 12
  end
  inherited dcl: TUniQuery
    Left = 480
  end
  inherited cau: TUniQuery
    Left = 480
    Top = 240
  end
  inherited err: TUniQuery
    Left = 480
    Top = 196
  end
  inherited BalloonHint: TBalloonHint
    Left = 428
    Top = 208
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ufscodigo,'
      '  ufssigla'
      'FROM ufs')
    Left = 280
    Top = 225
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 2
    end
    object ufsufssigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ufssigla'
      Size = 3
    end
  end
  object cdd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cddcodigo,'
      '  cddnome'
      'FROM cdd')
    Left = 320
    Top = 224
    object cddcddcodigo: TStringField
      FieldName = 'cddcodigo'
    end
    object cddcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
  end
  object mrv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mrv.mrvcodigo,'
      '  mrv.mrvidentificacao'
      'FROM mrv')
    Left = 280
    Top = 280
    object mrvmrvcodigo: TIntegerField
      FieldName = 'mrvcodigo'
    end
    object mrvmrvidentificacao: TStringField
      FieldName = 'mrvidentificacao'
      Size = 50
    end
  end
  object cbv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cbv.cbvcodigo,'
      '  cbv.cbvidentificacao'
      'FROM cbv')
    Left = 320
    Top = 280
    object cbvcbvcodigo: TIntegerField
      FieldName = 'cbvcodigo'
    end
    object cbvcbvidentificacao: TStringField
      FieldName = 'cbvidentificacao'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  sen.sencodigo,'
      '  sen.senidentificacao'
      'FROM sen')
    Left = 436
    Top = 296
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
