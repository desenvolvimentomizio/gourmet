inherited fcgr: Tfcgr
  ActiveControl = cgridentificacao
  Caption = 'Categoria'
  ClientHeight = 480
  ClientWidth = 426
  ExplicitWidth = 442
  ExplicitHeight = 519
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 451
    Width = 426
    ExplicitTop = 451
    ExplicitWidth = 426
    inherited bconfirma: TBitBtn
      Left = 272
      ExplicitLeft = 272
    end
    inherited bcancela: TBitBtn
      Left = 347
      ExplicitLeft = 347
    end
    inherited bfechar: TBitBtn
      Left = 207
      ExplicitLeft = 207
    end
  end
  inherited paginas: TPageControl
    Width = 426
    Height = 451
    ExplicitWidth = 426
    ExplicitHeight = 451
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 418
      ExplicitHeight = 423
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = cgrcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = cgridentificacao
      end
      object Label6: TLabel
        Left = 8
        Top = 87
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ordem para Card'#225'pio'
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 95
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Disponivel nas APPs'
      end
      object Label7: TLabel
        Left = 8
        Top = 141
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Imagem'
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 104
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Destacar no Card'#225'pio'
      end
      object cgrcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgrcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cgridentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 254
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cgrdestaque: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgrdestaque'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cgrordem: TDBEdit
        Left = 136
        Top = 84
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgrordem'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cgrremoto: TDBEdit
        Left = 136
        Top = 111
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgrremoto'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object btCarregaImagem: TButton
        Left = 280
        Top = 386
        Width = 120
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Carrega Imagem'
        TabOrder = 5
        OnClick = btCarregaImagemClick
      end
      object cgrimagem: TDBImage
        Left = 136
        Top = 138
        Width = 264
        Height = 242
        CustomHint = BalloonHint
        DataField = 'cgrimagem'
        DataSource = DSRegistro
        Proportional = True
        TabOrder = 6
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cgrcodigo,'
      '  cgridentificacao,'
      '  cgrordem,'
      '  cgrdestaque,'
      '  imgcodigo,'
      '  cgrremoto,'
      '  cgrimagem'
      'FROM cgr'
      'WHERE cgrcodigo = :cgrcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cgrcodigo'
        Value = nil
      end>
    object registrocgrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cgrcodigo'
    end
    object registrocgridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cgridentificacao'
      Required = True
      Size = 50
    end
    object registrocgrordem: TIntegerField
      FieldName = 'cgrordem'
      Required = True
    end
    object registrocgrremoto: TIntegerField
      FieldName = 'cgrremoto'
      Required = True
    end
    object registrosencgrremoto: TStringField
      FieldKind = fkLookup
      FieldName = 'sencgrremoto'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cgrremoto'
      Size = 5
      Lookup = True
    end
    object registrocgrdestaque: TIntegerField
      FieldName = 'cgrdestaque'
      Required = True
    end
    object registrosencgrdestaque: TStringField
      FieldKind = fkLookup
      FieldName = 'sencgrdestaque'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cgrdestaque'
      Size = 5
      Lookup = True
    end
    object registroimgcodigo: TIntegerField
      FieldName = 'imgcodigo'
    end
    object registrocgrimagem: TBlobField
      FieldName = 'cgrimagem'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 332
    Top = 155
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object OpenPictureDialog: TOpenDialog
    DefaultExt = 'bmp'
    Filter = 'Imagens|*.jpg'
    Title = 'Selecione a Imagem'
    Left = 83
    Top = 176
  end
end
