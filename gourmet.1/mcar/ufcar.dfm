inherited fcar: Tfcar
  ActiveControl = caridentificacao
  Caption = 'Carteira de Cobran'#231'a'
  ClientHeight = 626
  ClientWidth = 719
  ExplicitWidth = 735
  ExplicitHeight = 665
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 597
    Width = 719
    TabOrder = 1
    ExplicitTop = 577
    ExplicitWidth = 719
    inherited bconfirma: TBitBtn
      Left = 565
      ExplicitLeft = 565
    end
    inherited bcancela: TBitBtn
      Left = 640
      ExplicitLeft = 640
    end
    inherited bfechar: TBitBtn
      Left = 500
      ExplicitLeft = 500
    end
  end
  inherited paginas: TPageControl
    Width = 719
    Height = 597
    TabOrder = 0
    ExplicitWidth = 719
    ExplicitHeight = 577
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 711
      ExplicitHeight = 569
      object Label1: TLabel
        Left = 15
        Top = 3
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = carcodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = caridentificacao
      end
      object Label3: TLabel
        Left = 15
        Top = 60
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Banco'
        FocusControl = bcocodigo
      end
      object Label4: TLabel
        Left = 15
        Top = 87
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo Conta'
        FocusControl = ctacodigo
      end
      object Label17: TLabel
        Left = 15
        Top = 141
        Width = 95
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de multa'
        FocusControl = carpercmulta
      end
      object Label18: TLabel
        Left = 258
        Top = 141
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Aplicar multa ap'#243's'
        FocusControl = cardiasmulta
      end
      object Label19: TLabel
        Left = 15
        Top = 114
        Width = 104
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Juros de Mora Mensal'
        FocusControl = carpercmorames
      end
      object Label20: TLabel
        Left = 406
        Top = 141
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dias'
        FocusControl = cardiasmulta
      end
      object Label21: TLabel
        Left = 15
        Top = 168
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de desconto'
        FocusControl = carpercdesc
      end
      object Label22: TLabel
        Left = 266
        Top = 168
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Antecipa'#231#227'o em '
        FocusControl = cardiasdesc
      end
      object Label23: TLabel
        Left = 406
        Top = 168
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dias'
        FocusControl = cardiasmulta
      end
      object Label13: TLabel
        Left = 226
        Top = 114
        Width = 11
        Height = 13
        CustomHint = BalloonHint
        Caption = '%'
        FocusControl = carpercmorames
      end
      object Label26: TLabel
        Left = 258
        Top = 114
        Width = 88
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cobrar Juros ap'#243's'
        FocusControl = cardiasjuros
      end
      object Label27: TLabel
        Left = 406
        Top = 114
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dias'
        FocusControl = cardiasjuros
      end
      object Label32: TLabel
        Left = 226
        Top = 141
        Width = 11
        Height = 13
        CustomHint = BalloonHint
        Caption = '%'
        FocusControl = carpercmorames
      end
      object Label33: TLabel
        Left = 226
        Top = 168
        Width = 11
        Height = 13
        CustomHint = BalloonHint
        Caption = '%'
        FocusControl = carpercmorames
      end
      object carcodigo: TDBEdit
        Left = 140
        Top = 3
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'carcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object caridentificacao: TDBEdit
        Left = 140
        Top = 30
        Width = 530
        Height = 21
        CustomHint = BalloonHint
        DataField = 'caridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bcocodigo: TDBEdit
        Left = 140
        Top = 57
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bcocodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ctacodigo: TDBEdit
        Left = 140
        Top = 84
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object carpercmulta: TDBEdit
        Left = 140
        Top = 138
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        DataField = 'carpercmulta'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object cardiasmulta: TDBEdit
        Left = 351
        Top = 138
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cardiasmulta'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object carpercmorames: TDBEdit
        Left = 140
        Top = 111
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        DataField = 'carpercmorames'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object carpercdesc: TDBEdit
        Left = 140
        Top = 165
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        DataField = 'carpercdesc'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object cardiasdesc: TDBEdit
        Left = 351
        Top = 165
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cardiasdesc'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object GBCobBancaria: TGroupBox
        Left = 3
        Top = 192
        Width = 702
        Height = 321
        CustomHint = BalloonHint
        Caption = 'Cobran'#231'a Banc'#225'ria'
        TabOrder = 10
        object Label16: TLabel
          Left = 12
          Top = 23
          Width = 108
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Confirma'#231#227'o de Aceite'
          FocusControl = caraceite
        end
        object Label10: TLabel
          Left = 304
          Top = 23
          Width = 77
          Height = 13
          CustomHint = BalloonHint
          Caption = 'T'#237'tulo Regisrado'
          FocusControl = carregistrado
        end
        object Label11: TLabel
          Left = 494
          Top = 23
          Width = 86
          Height = 13
          CustomHint = BalloonHint
          Caption = 'T'#237'tulo Descontado'
          FocusControl = cardescontado
        end
        object Label6: TLabel
          Left = 12
          Top = 104
          Width = 94
          Height = 13
          CustomHint = BalloonHint
          Caption = 'N'#250'mero da Carteira'
          FocusControl = carnumerocar
        end
        object Label5: TLabel
          Left = 12
          Top = 158
          Width = 96
          Height = 13
          CustomHint = BalloonHint
          Caption = 'C'#243'digo do Conv'#234'nio'
          FocusControl = carconvenio
        end
        object Label15: TLabel
          Left = 487
          Top = 134
          Width = 54
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Modalidade'
          FocusControl = carmodalidade
        end
        object Label24: TLabel
          Left = 12
          Top = 131
          Width = 92
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Codigo do Cedente'
          FocusControl = carcodigocedente
        end
        object Label14: TLabel
          Left = 394
          Top = 161
          Width = 147
          Height = 13
          CustomHint = BalloonHint
          Caption = 'N'#250'mero Contrato de Cobran'#231'a'
          FocusControl = carcontrato
        end
        object Label7: TLabel
          Left = 12
          Top = 188
          Width = 72
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Observa'#231#245'es 1'
          FocusControl = carobs1
        end
        object Label8: TLabel
          Left = 12
          Top = 215
          Width = 72
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Observa'#231#245'es 2'
          FocusControl = carobs2
        end
        object Label9: TLabel
          Left = 12
          Top = 242
          Width = 72
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Observa'#231#245'es 3'
          FocusControl = carobs3
        end
        object Label12: TLabel
          Left = 12
          Top = 269
          Width = 107
          Height = 13
          CustomHint = BalloonHint
          Caption = 'N'#250'mero Arq. Remessa'
        end
        object Label25: TLabel
          Left = 12
          Top = 296
          Width = 61
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Gera Boletos'
          FocusControl = cargeraboleto
        end
        object Label28: TLabel
          Left = 406
          Top = 74
          Width = 125
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Enviar para protesto ap'#243's'
          FocusControl = cardiasparaprotesto
        end
        object Label29: TLabel
          Left = 586
          Top = 74
          Width = 94
          Height = 13
          CustomHint = BalloonHint
          Caption = 'dias (0 N'#195'O ENVIA)'
        end
        object Label30: TLabel
          Left = 12
          Top = 74
          Width = 99
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Enviar para protesto'
          FocusControl = meccodigo
        end
        object Label31: TLabel
          Left = 12
          Top = 50
          Width = 120
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Configura'#231#245'es no Cliente'
          FocusControl = cardefinicaoindividual
        end
        object caraceite: TDBEdit
          Left = 142
          Top = 20
          Width = 33
          Height = 21
          CustomHint = BalloonHint
          DataField = 'caraceite'
          DataSource = DSRegistro
          TabOrder = 0
        end
        object carregistrado: TDBEdit
          Left = 387
          Top = 20
          Width = 33
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carregistrado'
          DataSource = DSRegistro
          TabOrder = 1
        end
        object cardescontado: TDBEdit
          Left = 586
          Top = 20
          Width = 33
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cardescontado'
          DataSource = DSRegistro
          TabOrder = 2
        end
        object carnumerocar: TDBEdit
          Left = 142
          Top = 101
          Width = 137
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carnumerocar'
          DataSource = DSRegistro
          TabOrder = 6
        end
        object carconvenio: TDBEdit
          Left = 142
          Top = 155
          Width = 137
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carconvenio'
          DataSource = DSRegistro
          TabOrder = 9
        end
        object carmodalidade: TDBEdit
          Left = 550
          Top = 131
          Width = 137
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carmodalidade'
          DataSource = DSRegistro
          TabOrder = 8
        end
        object carcodigocedente: TDBEdit
          Left = 142
          Top = 128
          Width = 137
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carcodigocedente'
          DataSource = DSRegistro
          TabOrder = 7
        end
        object carcontrato: TDBEdit
          Left = 550
          Top = 158
          Width = 137
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carcontrato'
          DataSource = DSRegistro
          TabOrder = 10
        end
        object carobs3: TDBEdit
          Left = 142
          Top = 239
          Width = 550
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carobs3'
          DataSource = DSRegistro
          TabOrder = 13
        end
        object carobs2: TDBEdit
          Left = 142
          Top = 212
          Width = 550
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carobs2'
          DataSource = DSRegistro
          TabOrder = 12
        end
        object carobs1: TDBEdit
          Left = 142
          Top = 185
          Width = 550
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carobs1'
          DataSource = DSRegistro
          TabOrder = 11
        end
        object carnumarqrem: TDBEdit
          Left = 142
          Top = 266
          Width = 137
          Height = 21
          CustomHint = BalloonHint
          DataField = 'carnumarqrem'
          DataSource = DSRegistro
          TabOrder = 14
        end
        object cargeraboleto: TDBEdit
          Left = 142
          Top = 293
          Width = 45
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cargeraboleto'
          DataSource = DSRegistro
          TabOrder = 15
        end
        object carlayout: TDBRadioGroup
          Left = 502
          Top = 266
          Width = 185
          Height = 42
          CustomHint = BalloonHint
          Caption = 'Modelo da Cobran'#231'a'
          Columns = 3
          DataField = 'carlayout'
          DataSource = DSRegistro
          Items.Strings = (
            '240'
            '400'
            '724')
          TabOrder = 16
          Values.Strings = (
            '240'
            '400'
            '724')
        end
        object cardiasparaprotesto: TDBEdit
          Left = 540
          Top = 71
          Width = 32
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cardiasparaprotesto'
          DataSource = DSRegistro
          TabOrder = 5
        end
        object meccodigo: TDBEdit
          Left = 142
          Top = 74
          Width = 33
          Height = 21
          CustomHint = BalloonHint
          DataField = 'meccodigo'
          DataSource = DSRegistro
          TabOrder = 4
        end
        object cardefinicaoindividual: TDBEdit
          Left = 142
          Top = 47
          Width = 33
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cardefinicaoindividual'
          DataSource = DSRegistro
          TabOrder = 3
        end
      end
      object cardiasjuros: TDBEdit
        Left = 351
        Top = 111
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cardiasjuros'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.02.13.002-02'
  end
  inherited DSRegistro: TUniDataSource
    Left = 408
    Top = 0
  end
  inherited cfg: TUniQuery
    Left = 612
    Top = 124
  end
  inherited consulta: TUniQuery
    Left = 404
    Top = 528
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT car.carcodigo'
      '     , car.caridentificacao'
      '     , car.bcocodigo'
      '     , car.ctacodigo'
      '     , car.carconvenio'
      '     , car.carnumerocar'
      '     , car.carobs1'
      '     , car.carobs2'
      '     , car.carobs3'
      '     , car.caraceite'
      '     , car.cardescontado'
      '     , car.carregistrado'
      '     , car.carnumarqrem'
      '     , car.carlayout'
      '     , car.carcontrato'
      '     , car.carretorno'
      '     , car.cardiasmulta'
      '     , car.carpercmulta'
      '     , car.cardiasdesc'
      '     , car.carpercdesc'
      '     , car.carpercmorames'
      '     , car.carmodalidade'
      '     , car.carcodigocedente'
      '     , car.cargeraboleto'
      '     , car.cardiasjuros'
      '     , car.meccodigo'
      '     , car.cardiasparaprotesto'
      '     , car.cardefinicaoindividual'
      '  FROM car'
      ' WHERE car.carcodigo = :carcodigo')
    Left = 340
    Top = 0
    ParamData = <
      item
        DataType = ftInteger
        Name = 'carcodigo'
        ParamType = ptInput
        Value = nil
      end>
    object registrocarcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'carcodigo'
    end
    object registrocaridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'caridentificacao'
      Required = True
      Size = 35
    end
    object registrobcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object registrobconome: TStringField
      FieldKind = fkLookup
      FieldName = 'bconome'
      LookupDataSet = bco
      LookupKeyFields = 'bcocodigo'
      LookupResultField = 'bconome'
      KeyFields = 'bcocodigo'
      Size = 30
      Lookup = True
    end
    object registroctacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo Conta'
      FieldName = 'ctacodigo'
      Required = True
    end
    object registroctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 30
      Lookup = True
    end
    object registrocarconvenio: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'carconvenio'
      Size = 30
    end
    object registrocarnumerocar: TStringField
      FieldName = 'carnumerocar'
    end
    object registrocarobs1: TStringField
      FieldName = 'carobs1'
      Size = 50
    end
    object registrocarobs2: TStringField
      FieldName = 'carobs2'
      Size = 50
    end
    object registrocarobs3: TStringField
      FieldName = 'carobs3'
      Size = 50
    end
    object registrocaraceite: TIntegerField
      FieldName = 'caraceite'
      Required = True
    end
    object registrosenaceite: TStringField
      FieldKind = fkLookup
      FieldName = 'senaceite'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'caraceite'
      Size = 5
      Lookup = True
    end
    object registrocarregistrado: TIntegerField
      FieldName = 'carregistrado'
      Required = True
    end
    object registrosenregistrado: TStringField
      FieldKind = fkLookup
      FieldName = 'senregistrado'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'carregistrado'
      Size = 5
      Lookup = True
    end
    object registrocardescontado: TIntegerField
      FieldName = 'cardescontado'
      Required = True
    end
    object registrosendescontado: TStringField
      FieldKind = fkLookup
      FieldName = 'sendescontado'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cardescontado'
      Size = 5
      Lookup = True
    end
    object registrocarnumarqrem: TStringField
      FieldName = 'carnumarqrem'
      Size = 30
    end
    object registrocarlayout: TIntegerField
      FieldName = 'carlayout'
    end
    object registrocarcontrato: TStringField
      FieldName = 'carcontrato'
    end
    object registrocarretorno: TStringField
      FieldName = 'carretorno'
    end
    object registrocardiasmulta: TIntegerField
      DisplayLabel = 'Aplicar multa ap'#243's'
      FieldName = 'cardiasmulta'
    end
    object registrocarpercmulta: TFloatField
      DisplayLabel = 'Percentual de multa'
      FieldName = 'carpercmulta'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrocardiasdesc: TIntegerField
      DisplayLabel = 'Dias para desconto'
      FieldName = 'cardiasdesc'
    end
    object registrocarpercdesc: TFloatField
      FieldName = 'carpercdesc'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrocarpercmorames: TFloatField
      FieldName = 'carpercmorames'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrocarmodalidade: TStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'carmodalidade'
      Size = 10
    end
    object registrocarcodigocedente: TStringField
      DisplayLabel = 'Codigo do Cedente'
      FieldName = 'carcodigocedente'
    end
    object registrocargeraboleto: TIntegerField
      DisplayLabel = 'Gera Boletos'
      FieldName = 'cargeraboleto'
      Required = True
    end
    object registrosencargeraboleto: TStringField
      FieldKind = fkLookup
      FieldName = 'sencargeraboleto'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cargeraboleto'
      Size = 5
      Lookup = True
    end
    object registrocardiasjuros: TIntegerField
      FieldName = 'cardiasjuros'
    end
    object registrocardiasparaprotesto: TIntegerField
      FieldName = 'cardiasparaprotesto'
      Required = True
    end
    object registrocardefinicaoindividual: TIntegerField
      FieldName = 'cardefinicaoindividual'
      Required = True
    end
    object registrosencardefinicaoindividual: TStringField
      FieldKind = fkLookup
      FieldName = 'sencardefinicaoindividual'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cardefinicaoindividual'
      Size = 5
      Lookup = True
    end
    object registromeccodigo: TStringField
      FieldName = 'meccodigo'
      Required = True
      Size = 5
    end
    object registromecidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mecidentificacao'
      LookupDataSet = mec
      LookupKeyFields = 'meccodigo'
      LookupResultField = 'mecidentificacao'
      KeyFields = 'meccodigo'
      Size = 30
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 964
    Top = 156
  end
  inherited dtb: TUniQuery
    Left = 928
    Top = 156
  end
  inherited coa: TUniQuery
    Left = 900
    Top = 156
  end
  inherited pfr: TUniQuery
    Left = 924
    Top = 92
  end
  inherited psf: TUniQuery
    Left = 972
  end
  inherited dcl: TUniQuery
    Left = 1012
    Top = 224
  end
  inherited cau: TUniQuery
    Left = 896
    Top = 228
  end
  inherited err: TUniQuery
    Left = 952
    Top = 292
  end
  inherited BalloonHint: TBalloonHint
    Left = 952
    Top = 224
  end
  inherited acoesfrm: TActionList
    Left = 868
    Top = 100
  end
  inherited cpg: TUniQuery
    Left = 1012
  end
  inherited cpc: TUniQuery
    Left = 1013
  end
  inherited ImgBusca: TPngImageList
    Left = 884
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 892
    Top = 284
  end
  inherited lou: TUniQuery
    Left = 552
    Top = 112
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo,senidentificacao from sen')
    Constraints = <>
    Left = 588
    Top = 65532
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo,ctaidentificacao from cta')
    Constraints = <>
    Left = 492
    Top = 65520
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
  object bco: TUniQuery
    SQL.Strings = (
      'select bcocodigo,bconome from bco')
    Constraints = <>
    Left = 536
    object bcobconome: TStringField
      FieldName = 'bconome'
      Size = 30
    end
    object bcobcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
  end
  object mec: TUniQuery
    SQL.Strings = (
      'select meccodigo, mecidentificacao from mec')
    Constraints = <>
    Left = 386
    Top = 480
    object mecmeccodigo: TStringField
      FieldName = 'meccodigo'
      Size = 5
    end
    object mecmecidentificacao: TStringField
      FieldName = 'mecidentificacao'
      Size = 30
    end
  end
end
