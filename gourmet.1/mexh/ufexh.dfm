inherited fexh: Tfexh
  ActiveControl = exhidentificacao
  Caption = 'Controle de Horarios'
  ClientHeight = 322
  ClientWidth = 485
  ExplicitWidth = 501
  ExplicitHeight = 361
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 293
    Width = 485
    ExplicitTop = 355
    ExplicitWidth = 485
    inherited bconfirma: TBitBtn
      Left = 331
      ExplicitLeft = 331
    end
    inherited bcancela: TBitBtn
      Left = 406
      ExplicitLeft = 406
    end
    inherited bfechar: TBitBtn
      Left = 266
      ExplicitLeft = 266
    end
  end
  inherited paginas: TPageControl
    Width = 485
    Height = 293
    ExplicitWidth = 485
    ExplicitHeight = 355
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 477
      ExplicitHeight = 327
      object lbcodigo: TLabel
        Left = 8
        Top = 6
        Width = 37
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo:'
        FocusControl = exhcodigo
      end
      object lbsegunda: TLabel
        Left = 8
        Top = 63
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segunda:'
        FocusControl = exhsegunda
      end
      object lbterca: TLabel
        Left = 8
        Top = 90
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ter'#231'a:'
        FocusControl = exhterca
      end
      object lbquarta: TLabel
        Left = 8
        Top = 117
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quarta:'
        FocusControl = exhquarta
      end
      object lbquinta: TLabel
        Left = 8
        Top = 144
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quinta:'
        FocusControl = exhquinta
      end
      object lbsexta: TLabel
        Left = 8
        Top = 171
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sexta:'
        FocusControl = exhsexta
      end
      object lbsabado: TLabel
        Left = 8
        Top = 198
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sabado:'
        FocusControl = exhsabado
      end
      object lbdomingo: TLabel
        Left = 8
        Top = 225
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Domingo:'
        FocusControl = exhdomingo
      end
      object Label1: TLabel
        Left = 8
        Top = 36
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
        FocusControl = exhidentificacao
      end
      object exhcodigo: TDBEdit
        Left = 136
        Top = 6
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object exhsegunda: TDBEdit
        Left = 136
        Top = 60
        Width = 17
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhsegunda'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object exhterca: TDBEdit
        Left = 136
        Top = 87
        Width = 17
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhterca'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object exhquarta: TDBEdit
        Left = 136
        Top = 114
        Width = 17
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhquarta'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object exhquinta: TDBEdit
        Left = 136
        Top = 141
        Width = 17
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhquinta'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object exhsexta: TDBEdit
        Left = 136
        Top = 168
        Width = 17
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhsexta'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object exhsabado: TDBEdit
        Left = 136
        Top = 195
        Width = 17
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhsabado'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object exhdomingo: TDBEdit
        Left = 136
        Top = 222
        Width = 17
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhdomingo'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object exhidentificacao: TDBEdit
        Left = 136
        Top = 33
        Width = 302
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 364
    Top = 192
  end
  inherited consulta: TUniQuery
    Left = 424
    Top = 172
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select exhcodigo,exbcodigo,exhidentificacao,exhsegunda,exhterca,' +
        'exhquarta,exhquinta,exhsexta,exhsabado,exhdomingo,clbcodigo from' +
        ' exh where exhcodigo=:exhcodigo and exbcodigo = :exbcodigo')
    Left = 84
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'exhcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'exbcodigo'
        Value = nil
      end>
    object registroexhcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'exhcodigo'
    end
    object registroexbcodigo: TIntegerField
      FieldName = 'exbcodigo'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroexhidentificacao: TStringField
      FieldName = 'exhidentificacao'
      Required = True
      Size = 50
    end
    object registroexhsegunda: TIntegerField
      DisplayLabel = 'Segunda'
      FieldName = 'exhsegunda'
      Required = True
    end
    object registrosenexhsegunda: TStringField
      FieldKind = fkLookup
      FieldName = 'senexhsegunda'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'exhsegunda'
      Size = 5
      Lookup = True
    end
    object registroexhterca: TIntegerField
      DisplayLabel = 'Ter'#231'a'
      FieldName = 'exhterca'
      Required = True
    end
    object registrosenexhterca: TStringField
      FieldKind = fkLookup
      FieldName = 'senexhterca'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'exhterca'
      Size = 5
      Lookup = True
    end
    object registroexhquarta: TIntegerField
      DisplayLabel = 'Quarta'
      FieldName = 'exhquarta'
      Required = True
    end
    object registrosenexhquarta: TStringField
      FieldKind = fkLookup
      FieldName = 'senexhquarta'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'exhquarta'
      Size = 5
      Lookup = True
    end
    object registroexhquinta: TIntegerField
      DisplayLabel = 'Quinta'
      FieldName = 'exhquinta'
      Required = True
    end
    object registrosenexhquinta: TStringField
      FieldKind = fkLookup
      FieldName = 'senexhquinta'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'exhquinta'
      Size = 5
      Lookup = True
    end
    object registroexhsexta: TIntegerField
      DisplayLabel = 'Sexta'
      FieldName = 'exhsexta'
      Required = True
    end
    object registrosenexhsexta: TStringField
      FieldKind = fkLookup
      FieldName = 'senexhsexta'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'exhsexta'
      Size = 5
      Lookup = True
    end
    object registroexhsabado: TIntegerField
      DisplayLabel = 'Sabado'
      FieldName = 'exhsabado'
      Required = True
    end
    object registrosenexhsabado: TStringField
      FieldKind = fkLookup
      FieldName = 'senexhsabado'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'exhsabado'
      Size = 5
      Lookup = True
    end
    object registroexhdomingo: TIntegerField
      DisplayLabel = 'Domingo'
      FieldName = 'exhdomingo'
      Required = True
    end
    object registrosenexhdomingo: TStringField
      FieldKind = fkLookup
      FieldName = 'senexhdomingo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'senexhsabado'
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Top = 340
  end
  inherited dtb: TUniQuery
    Left = 204
    Top = 380
  end
  inherited coa: TUniQuery
    Left = 392
    Top = 276
  end
  inherited acoesfrm: TActionList
    Left = 452
    Top = 92
  end
  inherited cpg: TUniQuery
    Left = 436
    Top = 32
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo,senidentificacao from sen')
    Left = 276
    Top = 176
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
