inherited frtb: Tfrtb
  Caption = 'Regra Tribut'#225'ria'
  ClientHeight = 585
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 556
    inherited bconfirma: TBitBtn
      Enabled = False
    end
  end
  inherited paginas: TPageControl
    Height = 556
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = rtbcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial'
        FocusControl = flacodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tributa'#231#227'o'
        FocusControl = trbcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'UF de Origem'
        FocusControl = ufsorigem
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 67
        Height = 13
        CustomHint = BalloonHint
        Caption = 'UF de Destino'
        FocusControl = ufsdestino
      end
      object Spt3: TSplitter
        Left = 0
        Top = 172
        Width = 788
        Height = 5
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
      end
      object BvTopo: TBevel
        Left = 0
        Top = 0
        Width = 788
        Height = 145
        CustomHint = BalloonHint
        Align = alTop
      end
      object rtbcodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rtbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flacodigo: TDBEdit
        Left = 148
        Top = 30
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flacodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object trbcodigo: TDBEdit
        Left = 148
        Top = 57
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'trbcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ufsorigem: TDBEdit
        Left = 148
        Top = 84
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufsorigem'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ufsdestino: TDBEdit
        Left = 148
        Top = 111
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufsdestino'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object bvalidar: TButton
        Left = 672
        Top = 111
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 5
        OnClick = bvalidarClick
      end
      object PlDrb: TPanel
        Left = 0
        Top = 177
        Width = 788
        Height = 351
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 6
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 356
    Top = 168
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rtbcodigo,'
      '  trbcodigo,'
      '  ufsorigem,'
      '  ufsdestino,'
      '  flacodigo'
      'FROM rtb'
      'where '
      ' rtbcodigo=:rtbcodigo')
    Left = 372
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rtbcodigo'
        Value = nil
      end>
    object registrortbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'rtbcodigo'
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
    object registrotrbcodigo: TIntegerField
      DisplayLabel = 'Tributa'#231#227'o'
      FieldName = 'trbcodigo'
      Required = True
    end
    object registrotrbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'trbidentificacao'
      LookupDataSet = trb
      LookupKeyFields = 'trbcodigo'
      LookupResultField = 'trbidentificacao'
      KeyFields = 'trbcodigo'
      Size = 50
      Lookup = True
    end
    object registroufsorigem: TStringField
      DisplayLabel = 'UF de Origem'
      FieldName = 'ufsorigem'
      Required = True
      Size = 10
    end
    object registroufsnomeori: TStringField
      FieldKind = fkLookup
      FieldName = 'ufsnomeori'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufsnome'
      KeyFields = 'ufsorigem'
      Size = 50
      Lookup = True
    end
    object registroufsdestino: TStringField
      DisplayLabel = 'UF de Destino'
      FieldName = 'ufsdestino'
      Required = True
      Size = 10
    end
    object registroufsnomedes: TStringField
      FieldKind = fkLookup
      FieldName = 'ufsnomedes'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufsnome'
      KeyFields = 'ufsdestino'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object fla: TUniQuery
    SQL.Strings = (
      'select flacodigo, flaidentificacao from fla')
    Left = 624
    Top = 56
    object flaflacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  object trb: TUniQuery
    SQL.Strings = (
      'select trbcodigo, trbidentificacao from trb')
    Left = 464
    Top = 32
    object trbtrbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'trbcodigo'
    end
    object trbtrbidentificacao: TStringField
      FieldName = 'trbidentificacao'
      Size = 50
    end
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'select ufscodigo, ufsnome from ufs')
    Left = 496
    Top = 32
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 10
    end
    object ufsufsnome: TStringField
      FieldName = 'ufsnome'
      Size = 50
    end
  end
end
