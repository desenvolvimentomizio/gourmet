inherited fbpa: Tfbpa
  ActiveControl = bpaidentificacao
  Caption = 'Bens Patrimoniais'
  ClientHeight = 285
  ClientWidth = 664
  ExplicitWidth = 680
  ExplicitHeight = 324
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 256
    Width = 664
    ExplicitTop = 233
    ExplicitWidth = 643
    inherited bconfirma: TBitBtn
      Left = 445
      ExplicitLeft = 424
    end
    inherited bcancela: TBitBtn
      Left = 520
      ExplicitLeft = 499
    end
    inherited bfechar: TBitBtn
      Left = 595
      ExplicitLeft = 574
    end
  end
  inherited paginas: TPageControl
    Width = 664
    Height = 256
    ExplicitWidth = 643
    ExplicitHeight = 233
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 642
      ExplicitHeight = 346
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = bpacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 62
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Alocado com Usu'#225'rio'
        FocusControl = clbcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 89
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial'
        FocusControl = flacodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 116
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Bens'
        FocusControl = gbpcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 35
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = bpaidentificacao
      end
      object Label6: TLabel
        Left = 8
        Top = 143
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Aquisi'#231#227'o'
        FocusControl = bpadataaquis
      end
      object Label7: TLabel
        Left = 318
        Top = 143
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor de aquisi'#231#227'o'
        FocusControl = bpavaloraquis
      end
      object Label8: TLabel
        Left = 8
        Top = 170
        Width = 138
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tempo de vida '#218'til em meses'
        FocusControl = bpamesesvida
      end
      object Label9: TLabel
        Left = 273
        Top = 170
        Width = 131
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Previs'#227'o do Valor de Venda'
        FocusControl = bpavalorvenda
      end
      object Label10: TLabel
        Left = 8
        Top = 197
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Localiza'#231#227'o'
        FocusControl = bpalocal
      end
      object bpacodigo: TDBEdit
        Left = 152
        Top = 5
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bpacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object clbcodigo: TDBEdit
        Left = 152
        Top = 59
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object flacodigo: TDBEdit
        Left = 152
        Top = 86
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flacodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object gbpcodigo: TDBEdit
        Left = 152
        Top = 113
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gbpcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object bpaidentificacao: TDBEdit
        Left = 152
        Top = 32
        Width = 489
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bpaidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bpadataaquis: TDBEdit
        Left = 152
        Top = 140
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bpadataaquis'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object bpavaloraquis: TDBEdit
        Left = 410
        Top = 140
        Width = 76
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bpavaloraquis'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object bpamesesvida: TDBEdit
        Left = 152
        Top = 167
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bpamesesvida'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object bpavalorvenda: TDBEdit
        Left = 410
        Top = 167
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bpavalorvenda'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object bpalocal: TDBEdit
        Left = 152
        Top = 194
        Width = 489
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bpalocal'
        DataSource = DSRegistro
        TabOrder = 9
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 316
    Top = 88
  end
  inherited cfg: TUniQuery
    Left = 644
    Top = 76
  end
  inherited consulta: TUniQuery
    Left = 608
    Top = 76
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select bpacodigo,clbcodigo,flacodigo,gbpcodigo,bpaidentificacao,' +
        'bpadataaquis,bpavaloraquis,bpamesesvida,bpavalorvenda,bpalocal f' +
        'rom bpa where bpa.bpacodigo=:bpacodigo')
    Left = 552
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bpacodigo'
        Value = nil
      end>
    object registrobpacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'bpacodigo'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 50
      Lookup = True
    end
    object registroflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
      Required = True
    end
    object registroflaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flaidentificacao'
      LookupDataSet = fla
      LookupKeyFields = 'flacodigo'
      LookupResultField = 'flaidentificacao'
      KeyFields = 'flacodigo'
      Size = 50
      Lookup = True
    end
    object registrogbpcodigo: TIntegerField
      DisplayLabel = 'Grupo de Bens'
      FieldName = 'gbpcodigo'
      Required = True
    end
    object registrogbpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'gbpidentificacao'
      LookupDataSet = gbp
      LookupKeyFields = 'gbpcodigo'
      LookupResultField = 'gbpidentificacao'
      KeyFields = 'gbpcodigo'
      Required = True
      Size = 50
      Lookup = True
    end
    object registrobpaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'bpaidentificacao'
      Size = 100
    end
    object registrobpadataaquis: TDateField
      DisplayLabel = 'Data Aquisi'#231#227'o'
      FieldName = 'bpadataaquis'
      Required = True
    end
    object registrobpavaloraquis: TFloatField
      DisplayLabel = 'Valor da Aquisi'#231#227'o'
      FieldName = 'bpavaloraquis'
      Required = True
      DisplayFormat = '######.00'
      EditFormat = '######.00'
    end
    object registrobpamesesvida: TIntegerField
      DisplayLabel = 'Tempo '#218'til'
      FieldName = 'bpamesesvida'
      Required = True
    end
    object registrobpavalorvenda: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'bpavalorvenda'
      Required = True
      DisplayFormat = '######.00'
      EditFormat = '######.00'
    end
    object registrobpalocal: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'bpalocal'
      Required = True
      Size = 50
    end
  end
  inherited dcp: TUniQuery
    Left = 752
    Top = 28
  end
  inherited dtb: TUniQuery
    Left = 708
    Top = 28
  end
  inherited coa: TUniQuery
    Left = 672
    Top = 28
  end
  inherited pfr: TUniQuery
    Left = 688
    Top = 76
  end
  inherited psf: TUniQuery
    Left = 728
    Top = 76
  end
  inherited dcl: TUniQuery
    Left = 764
    Top = 76
  end
  inherited BalloonHint: TBalloonHint
    Left = 564
    Top = 24
  end
  inherited cpg: TUniQuery
    Left = 244
    Top = 56
  end
  inherited cpc: TUniQuery
    Left = 485
    Top = 65529
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 520
    Top = 56
  end
  object fla: TUniQuery
    SQL.Strings = (
      'select flacodigo,flaidentificacao from fla')
    Left = 384
    Top = 40
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  object gbp: TUniQuery
    SQL.Strings = (
      'select gbpcodigo,gbpidentificacao from gbp')
    Left = 344
    Top = 40
    object gbpgbpcodigo: TIntegerField
      FieldName = 'gbpcodigo'
    end
    object gbpgbpidentificacao: TStringField
      FieldName = 'gbpidentificacao'
      Size = 100
    end
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbcodigo,clbidentificacao from clb')
    Left = 424
    Top = 40
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
