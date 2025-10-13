inherited ftdg: Tftdg
  ActiveControl = tdgcodigo
  Caption = 'Evento a Contabilizar'
  ClientHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 512
  end
  inherited paginas: TPageControl
    Height = 512
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tdgcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tdgidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo do Opera'#231#227'o'
        FocusControl = tfdcodigo
      end
      object BvTopo: TBevel
        Left = 0
        Top = 0
        Width = 788
        Height = 89
        CustomHint = BalloonHint
        Align = alTop
      end
      object SplLista: TSplitter
        Left = 0
        Top = 89
        Width = 788
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alTop
        AutoSnap = False
        Beveled = True
      end
      object tdgcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tdgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tdgidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 542
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tdgidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tfdcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tfdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object PlPct: TPanel
        Left = 0
        Top = 92
        Width = 788
        Height = 392
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
      end
      object bvalidar: TBitBtn
        Left = 603
        Top = 57
        Width = 75
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 4
        OnClick = bvalidarClick
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tdgcodigo, tdgidentificacao, tfdcodigo from tdg where tdg' +
        'codigo=:tdgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdgcodigo'
        Value = nil
      end>
    object registrotdgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tdgcodigo'
    end
    object registrotdgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tdgidentificacao'
      Required = True
      Size = 50
    end
    object registrotfdcodigo: TIntegerField
      DisplayLabel = 'Tipo do Opera'#231#227'o'
      FieldName = 'tfdcodigo'
      Required = True
    end
    object registrotfdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tfdidentificacao'
      LookupDataSet = tfd
      LookupKeyFields = 'tfdcodigo'
      LookupResultField = 'tfdidentificacao'
      KeyFields = 'tfdcodigo'
      Size = 35
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tfd: TUniQuery
    SQL.Strings = (
      'select tfdcodigo, tfdidentificacao from tfd')
    Left = 480
    Top = 312
    object tfdtfdcodigo: TIntegerField
      FieldName = 'tfdcodigo'
    end
    object tfdtfdidentificacao: TStringField
      FieldName = 'tfdidentificacao'
      Size = 35
    end
  end
end
