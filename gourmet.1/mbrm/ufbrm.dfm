inherited fbrm: Tfbrm
  ActiveControl = tibcodigo
  Caption = 'Ocorr'#234'ncia em Boleto'
  ExplicitWidth = 812
  ExplicitHeight = 472
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    inherited bconfirma: TBitBtn
      ExplicitLeft = 636
      ExplicitTop = 2
    end
  end
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = brmcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 90
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Ocorr'#234'ncia'
        FocusControl = tibcodigo
      end
      object brmcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'brmcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tibcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tibcodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnEnter = tibcodigoEnter
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  brmcodigo,'
      '  bolchave,'
      '  rmbcodigo,'
      '  tibcodigo'
      'FROM brm'
      '  where brmcodigo=:brcodigo and bolchave=:bolchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'brcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'bolchave'
        Value = nil
      end>
    object registrobrmcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'brmcodigo'
    end
    object registrobolchave: TIntegerField
      DisplayLabel = 'Boleto'
      FieldName = 'bolchave'
    end
    object registrormbcodigo: TIntegerField
      FieldName = 'rmbcodigo'
    end
    object registrotibcodigo: TIntegerField
      FieldName = 'tibcodigo'
      Required = True
    end
    object registrotibidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tibidentificacao'
      LookupDataSet = tib
      LookupKeyFields = 'tibcodigo'
      LookupResultField = 'tibidentificacao'
      KeyFields = 'tibcodigo'
      Size = 250
      Lookup = True
    end
  end
  inherited BalloonHint: TBalloonHint
    Left = 492
    Top = 184
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tib: TUniQuery
    SQL.Strings = (
      
        'select tibcodigo, tibidentificacao from tib where bcocodigo=:bco' +
        'codigo')
    Left = 388
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bcocodigo'
        Value = nil
      end>
    object tibtibcodigo: TIntegerField
      FieldName = 'tibcodigo'
    end
    object tibtibidentificacao: TStringField
      FieldName = 'tibidentificacao'
      Size = 250
    end
  end
  object rmb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmbcodigo,'
      '  carcodigo,'
      '  clbcodigo,'
      '  trmcodigo,'
      '  rmbnumero,'
      '  rmbregistro'
      'FROM rmb limit 0'
      '  ')
    Left = 420
    Top = 264
    object rmbrmbcodigo: TIntegerField
      FieldName = 'rmbcodigo'
    end
    object rmbcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object rmbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object rmbtrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object rmbrmbnumero: TIntegerField
      FieldName = 'rmbnumero'
    end
    object rmbrmbregistro: TDateTimeField
      FieldName = 'rmbregistro'
    end
  end
end
