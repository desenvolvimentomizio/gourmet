inherited ftpv: Tftpv
  ActiveControl = tpvidentificacao
  Caption = 'Tabela de Pre'#231'os para Venda'
  ClientHeight = 691
  ClientWidth = 681
  ExplicitWidth = 697
  ExplicitHeight = 730
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 662
    Width = 681
    ExplicitTop = 662
    ExplicitWidth = 681
    inherited bconfirma: TBitBtn
      Left = 527
      ExplicitLeft = 527
    end
    inherited bcancela: TBitBtn
      Left = 602
      ExplicitLeft = 602
    end
    inherited bfechar: TBitBtn
      Left = 462
      ExplicitLeft = 462
    end
  end
  inherited paginas: TPageControl
    Width = 681
    Height = 662
    ExplicitWidth = 681
    ExplicitHeight = 662
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 673
      ExplicitHeight = 634
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tpvcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tpvidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 112
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Perc. Desconto M'#225'ximo'
        FocusControl = tpvdescontomaximo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 105
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Prazo m'#225'ximo em dias'
        FocusControl = tpvprazomaximo
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 107
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de Entrada'
        FocusControl = tpvpercentualavista
      end
      object Label9: TLabel
        Left = 349
        Top = 114
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dias para Entrada'
        FocusControl = tpvdiasentrada
      end
      object Label7: TLabel
        Left = 267
        Top = 87
        Width = 168
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Intervalo de Dias entre as Parcelas'
        FocusControl = tpvintervalodias
      end
      object Label8: TLabel
        Left = 3
        Top = 141
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de C'#225'lculo'
        FocusControl = tpvpercentualavista
      end
      object Label6: TLabel
        Left = 343
        Top = 141
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = tpvpercentual
      end
      object tpvcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tpvidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 513
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tpvdescontomaximo: TDBEdit
        Left = 136
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvdescontomaximo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tpvprazomaximo: TDBEdit
        Left = 136
        Top = 84
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvprazomaximo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object tpvpercentualavista: TDBEdit
        Left = 136
        Top = 111
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvpercentualavista'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object bvalidar: TButton
        Left = 574
        Top = 138
        Width = 75
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 9
        OnClick = bvalidarClick
      end
      object plitp: TPanel
        Left = 0
        Top = 171
        Width = 673
        Height = 463
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 10
      end
      object tpvdiasentrada: TDBEdit
        Left = 441
        Top = 111
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvdiasentrada'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object tpvintervalodias: TDBEdit
        Left = 441
        Top = 84
        Width = 35
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvintervalodias'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object tpvpercentual: TDBEdit
        Left = 400
        Top = 138
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvpercentual'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object descodigo: TDBEdit
        Left = 136
        Top = 138
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'descodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 404
    Top = 65528
  end
  inherited cfg: TUniQuery
    Left = 636
    Top = 76
  end
  inherited consulta: TUniQuery
    Left = 536
    Top = 65532
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tpvcodigo,'
      '  tpvidentificacao,'
      '  tpvdescontomaximo,'
      '  tpvprazomaximo,'
      '  tpvpercentualavista,'
      '  descodigo,'
      '  tpvpercentual,'
      '  tpvintervalodias,'
      '  tpvdiasentrada'
      ''
      'FROM tpv where tpvcodigo=:tpvcodigo')
    Left = 316
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tpvcodigo'
        Value = nil
      end>
    object registrotpvcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tpvcodigo'
    end
    object registrotpvidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tpvidentificacao'
      Required = True
      Size = 50
    end
    object registrotpvdescontomaximo: TFloatField
      DisplayLabel = 'Perc. Desconto M'#225'ximo'
      FieldName = 'tpvdescontomaximo'
      Required = True
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object registrotpvprazomaximo: TIntegerField
      DisplayLabel = 'Prazo m'#225'ximo em dias'
      FieldName = 'tpvprazomaximo'
      Required = True
    end
    object registrotpvpercentualavista: TFloatField
      DisplayLabel = 'Perc. de Entrada'
      FieldName = 'tpvpercentualavista'
      Required = True
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object registrotpvpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'tpvpercentual'
      Required = True
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object registrodescodigo: TIntegerField
      FieldName = 'descodigo'
    end
    object registrodesidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'desidentificacao'
      LookupDataSet = des
      LookupKeyFields = 'descodigo'
      LookupResultField = 'desidentificacao'
      KeyFields = 'descodigo'
      Lookup = True
    end
    object registrotpvintervalodias: TIntegerField
      DisplayLabel = 'Intervalo de Dias'
      FieldName = 'tpvintervalodias'
      Required = True
    end
    object registrotpvdiasentrada: TIntegerField
      DisplayLabel = 'Dias para Entrada'
      FieldName = 'tpvdiasentrada'
    end
  end
  inherited dcp: TUniQuery
    Left = 96
    Top = 348
  end
  inherited dtb: TUniQuery
    Left = 52
    Top = 348
  end
  inherited coa: TUniQuery
    Left = 16
    Top = 348
  end
  inherited pfr: TUniQuery
    Left = 520
    Top = 268
  end
  inherited dcl: TUniQuery
    Left = 484
    Top = 96
  end
  inherited acoesfrm: TActionList
    Left = 596
    Top = 65532
  end
  inherited cpg: TUniQuery
    Left = 12
    Top = 408
  end
  inherited cpc: TUniQuery
    Left = 13
    Top = 457
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object des: TUniQuery
    SQL.Strings = (
      'select descodigo, desidentificacao from des')
    Left = 260
    Top = 195
    object desdescodigo: TIntegerField
      FieldName = 'descodigo'
    end
    object desdesidentificacao: TStringField
      FieldName = 'desidentificacao'
    end
  end
end
