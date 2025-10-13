inherited fmdfcpr: Tfmdfcpr
  ActiveControl = maenomemotorista
  Caption = 'Manifesto Eletronico'
  ClientHeight = 289
  ClientWidth = 587
  ExplicitWidth = 603
  ExplicitHeight = 328
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 260
    Width = 587
    ExplicitTop = 201
    ExplicitWidth = 569
    inherited bconfirma: TBitBtn
      Left = 433
      ExplicitLeft = 415
    end
    inherited bcancela: TBitBtn
      Left = 508
      ExplicitLeft = 490
    end
    inherited bfechar: TBitBtn
      Left = 368
      ExplicitLeft = 350
    end
  end
  inherited paginas: TPageControl
    Width = 587
    Height = 260
    ExplicitWidth = 569
    ExplicitHeight = 201
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 561
      ExplicitHeight = 173
      object Label1: TLabel
        Left = 8
        Top = 35
        Width = 90
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Motorista'
        FocusControl = maenomemotorista
      end
      object Label2: TLabel
        Left = 8
        Top = 62
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CPF do motorista'
        FocusControl = maecpfmotorista
      end
      object Label3: TLabel
        Left = 8
        Top = 89
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Placa do Veiculo'
        FocusControl = maeplacaveiculo
      end
      object Label4: TLabel
        Left = 228
        Top = 89
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Uf do Veiculo'
        FocusControl = maeufveiculo
      end
      object Label5: TLabel
        Left = 335
        Top = 89
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'RENAVAN'
        FocusControl = maerenavanveiculo
      end
      object Label6: TLabel
        Left = 3
        Top = 200
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade em quilos'
        FocusControl = maequantidadeemquilos
      end
      object Label7: TLabel
        Left = 8
        Top = 8
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = maechave
      end
      object Label8: TLabel
        Left = 8
        Top = 116
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave NFe'
        FocusControl = meschavenfe
      end
      object Label9: TLabel
        Left = 136
        Top = 140
        Width = 430
        Height = 13
        CustomHint = BalloonHint
        Caption = 
          'Informa estados que a mercadoria passar'#225' mas que que nao s'#245'a nem' +
          ' origem nem destino'
        FocusControl = meschavenfe
      end
      object maenomemotorista: TDBEdit
        Left = 136
        Top = 32
        Width = 430
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maenomemotorista'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object maecpfmotorista: TDBEdit
        Left = 136
        Top = 59
        Width = 161
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maecpfmotorista'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object maeplacaveiculo: TDBEdit
        Left = 136
        Top = 86
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeplacaveiculo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object maeufveiculo: TDBEdit
        Left = 296
        Top = 86
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeufveiculo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object maerenavanveiculo: TDBEdit
        Left = 388
        Top = 86
        Width = 178
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maerenavanveiculo'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object maequantidadeemquilos: TDBEdit
        Left = 136
        Top = 197
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maequantidadeemquilos'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object maechave: TDBEdit
        Left = 136
        Top = 5
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object meschavenfe: TDBEdit
        Left = 136
        Top = 113
        Width = 430
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meschavenfe'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object maeuf01: TDBEdit
        Left = 136
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf01'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object maeuf02: TDBEdit
        Left = 175
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf02'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object maeuf03: TDBEdit
        Left = 215
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf03'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object maeuf04: TDBEdit
        Left = 255
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf04'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object maeuf05: TDBEdit
        Left = 296
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf05'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object maeuf06: TDBEdit
        Left = 335
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf06'
        DataSource = DSRegistro
        TabOrder = 13
      end
      object maeuf07: TDBEdit
        Left = 375
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf07'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object maeuf08: TDBEdit
        Left = 415
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf08'
        DataSource = DSRegistro
        TabOrder = 15
      end
      object maeuf09: TDBEdit
        Left = 455
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf09'
        DataSource = DSRegistro
        TabOrder = 16
      end
      object maeuf10: TDBEdit
        Left = 495
        Top = 164
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maeuf10'
        DataSource = DSRegistro
        TabOrder = 17
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 612
    Top = 304
  end
  inherited cfg: TUniQuery
    Left = 612
    Top = 212
  end
  inherited consulta: TUniQuery
    Left = 632
    Top = 236
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  maechave,'
      '  meschavenfe,'
      '  maenumero,'
      '  maeemissao,'
      '  maeregistro,'
      '  maenomemotorista,'
      '  maecpfmotorista,'
      '  maeplacaveiculo,'
      '  maeufveiculo,'
      '  maerenavanveiculo,'
      '  maequantidadeemquilos,'
      '  sdecodigo,'
      '  maeuf01,'
      '  maeuf02,'
      '  maeuf03,'
      '  maeuf04,'
      '  maeuf05,'
      '  maeuf06,'
      '  maeuf07,'
      '  maeuf08,'
      '  maeuf09,'
      '  maeuf10'
      'FROM mae where maechave=:maechave and meschavenfe=:meschavenfe')
    Left = 684
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'maechave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschavenfe'
        Value = nil
      end>
    object registromaechave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'maechave'
    end
    object registromeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Required = True
      Size = 200
    end
    object registromaenumero: TIntegerField
      FieldName = 'maenumero'
    end
    object registromaeemissao: TDateField
      FieldName = 'maeemissao'
      Required = True
    end
    object registromaeregistro: TDateField
      FieldName = 'maeregistro'
    end
    object registromaenomemotorista: TStringField
      DisplayLabel = 'Nome do Motorista'
      FieldName = 'maenomemotorista'
      Required = True
      Size = 50
    end
    object registromaecpfmotorista: TStringField
      DisplayLabel = 'CPF do motorista'
      FieldName = 'maecpfmotorista'
      Required = True
      Size = 30
    end
    object registromaeplacaveiculo: TStringField
      DisplayLabel = 'Placa do Veiculo'
      FieldName = 'maeplacaveiculo'
      Required = True
    end
    object registromaeufveiculo: TStringField
      DisplayLabel = 'Uf do Veiculo'
      FieldName = 'maeufveiculo'
      Required = True
      Size = 5
    end
    object registromaerenavanveiculo: TStringField
      DisplayLabel = 'RENAVAN'
      FieldName = 'maerenavanveiculo'
      Required = True
      Size = 30
    end
    object registromaequantidadeemquilos: TFloatField
      DisplayLabel = 'Quantidade em quilos'
      FieldName = 'maequantidadeemquilos'
      Required = True
    end
    object registrosdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 5
    end
    object registromaeuf01: TStringField
      FieldName = 'maeuf01'
      Size = 5
    end
    object registromaeuf02: TStringField
      FieldName = 'maeuf02'
      Size = 5
    end
    object registromaeuf03: TStringField
      FieldName = 'maeuf03'
      Size = 5
    end
    object registromaeuf04: TStringField
      FieldName = 'maeuf04'
      Size = 5
    end
    object registromaeuf05: TStringField
      FieldName = 'maeuf05'
      Size = 5
    end
    object registromaeuf06: TStringField
      FieldName = 'maeuf06'
      Size = 5
    end
    object registromaeuf07: TStringField
      FieldName = 'maeuf07'
      Size = 5
    end
    object registromaeuf08: TStringField
      FieldName = 'maeuf08'
      Size = 5
    end
    object registromaeuf09: TStringField
      FieldName = 'maeuf09'
      Size = 5
    end
    object registromaeuf10: TStringField
      FieldName = 'maeuf10'
      Size = 5
    end
  end
  inherited dcp: TUniQuery
    Left = 176
    Top = 388
  end
  inherited dtb: TUniQuery
    Left = 132
    Top = 340
  end
  inherited coa: TUniQuery
    Left = 256
    Top = 372
  end
  inherited psf: TUniQuery
    Left = 600
    Top = 60
  end
  inherited dcl: TUniQuery
    Left = 652
  end
  inherited acoesfrm: TActionList
    Left = 604
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
