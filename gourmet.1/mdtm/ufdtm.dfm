inherited fdtm: Tfdtm
  ActiveControl = etdcodigo
  Caption = 'Dados de Transporte'
  ClientHeight = 208
  ClientWidth = 723
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 179
    Width = 723
    inherited bconfirma: TBitBtn
      Left = 569
    end
    inherited bcancela: TBitBtn
      Left = 644
    end
    inherited bfechar: TBitBtn
      Left = 504
    end
  end
  inherited paginas: TPageControl
    Width = 723
    Height = 179
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Transportador'
        FocusControl = etdcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'UF da Placa'
        FocusControl = ufscodigo
      end
      object Label3: TLabel
        Left = 293
        Top = 33
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Placa'
        FocusControl = dtmplaca
      end
      object Label10: TLabel
        Left = 78
        Top = 122
        Width = 52
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Peso Bruto'
      end
      object Label11: TLabel
        Left = 255
        Top = 122
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Peso L'#237'quido'
      end
      object Label7: TLabel
        Left = 17
        Top = 95
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade de Volumes'
      end
      object Label8: TLabel
        Left = 249
        Top = 95
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Esp'#233'cie / Tipo'
      end
      object Label9: TLabel
        Left = 478
        Top = 95
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Marca'
      end
      object Bevel1: TBevel
        Left = 8
        Top = 76
        Width = 701
        Height = 73
        CustomHint = BalloonHint
      end
      object Label4: TLabel
        Left = 20
        Top = 71
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = ' Dados de Embalagens '
        Transparent = False
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 69
        Height = 21
        Hint = 
          'Aten'#231#227'o|No caso do transportador for o mesmo destint'#225'rio da merc' +
          'adoria, informe o c'#243'digo do mesmo, o sistema vai pedir para tans' +
          'forma-lo em transportador, confirme.'
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ufscodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object dtmplaca: TDBEdit
        Left = 324
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtmplaca'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object dtmespecie: TDBEdit
        Left = 327
        Top = 92
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtmespecie'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object dtmmarcas: TDBEdit
        Left = 520
        Top = 92
        Width = 149
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtmmarcas'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object dtmpesobruto: TDBEdit
        Left = 136
        Top = 119
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtmpesobruto'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object dtmpesoliq: TDBEdit
        Left = 327
        Top = 119
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtmpesoliq'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object dtmvolumes: TDBEdit
        Left = 136
        Top = 92
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtmvolumes'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 656
    Top = 65528
  end
  inherited cfg: TUniQuery
    Left = 452
    Top = 0
  end
  inherited consulta: TUniQuery
    Left = 400
    Top = 65524
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT dtmchave'
      '     , meschave'
      '     , dtmplaca'
      '     , dtmvolumes'
      '     , dtmpesobruto'
      '     , dtmpesoliq'
      '     , etdcodigo'
      '     , ufscodigo'
      '     , dtmespecie'
      '     , dtmmarcas'
      '  FROM dtm'
      ' WHERE dtmchave = :dtmchave'
      '   AND meschave = :meschave')
    Left = 636
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtmchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registrodtmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'dtmchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object registrodtmplaca: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'dtmplaca'
      Required = True
      EditMask = '!LLL-9999;0;_'
      Size = 10
    end
    object registrodtmvolumes: TFloatField
      DisplayLabel = 'Volumes'
      FieldName = 'dtmvolumes'
      Required = True
    end
    object registrodtmpesobruto: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'dtmpesobruto'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object registrodtmpesoliq: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'dtmpesoliq'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Transportador'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registroufscodigo: TStringField
      DisplayLabel = 'UF da Placa'
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object registroufssigla: TStringField
      FieldKind = fkLookup
      FieldName = 'ufssigla'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufssigla'
      KeyFields = 'ufscodigo'
      Size = 5
      Lookup = True
    end
    object registrodtmespecie: TStringField
      DisplayLabel = 'Esp'#233'cie / Tipo'
      FieldName = 'dtmespecie'
      Size = 50
    end
    object registrodtmmarcas: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'dtmmarcas'
      Size = 50
    end
  end
  inherited pfr: TUniQuery
    Left = 492
    Top = 65532
  end
  inherited psf: TUniQuery
    Left = 544
    Top = 65532
  end
  inherited dcl: TUniQuery
    Left = 596
    Top = 4
  end
  object etd: TUniQuery [14]
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 628
    Top = 65532
    object etdetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
  end
  object ufs: TUniQuery [15]
    SQL.Strings = (
      'select ufscodigo, ufssigla from ufs')
    Left = 644
    Top = 65524
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object ufsufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
  end
  object mes: TUniQuery [16]
    SQL.Strings = (
      'select refcodigo,etdcodigo from mes where meschave=:meschave')
    Left = 728
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mesrefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object mesetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
