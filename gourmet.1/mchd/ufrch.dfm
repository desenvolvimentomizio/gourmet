inherited frch: Tfrch
  ActiveControl = clbcodigo
  Caption = 'Atribui'#231#227'o de Chamado'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rchchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Respons'#225'vel'
        FocusControl = clbcodigo
      end
      object rchchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rchchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object clbcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rchchave,'
      '  chdchave,'
      '  rchregistro,'
      '  clbcodigo,'
      '  rchatribuinte '
      'FROM rch where rchchave=:rchchave and chdchave=:chdchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rchchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object registrorchchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rchchave'
    end
    object registrochdchave: TIntegerField
      DisplayLabel = 'Chamado'
      FieldName = 'chdchave'
    end
    object registrorchregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'rchregistro'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Respons'#225'vel'
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
    object registrorchatribuinte: TIntegerField
      DisplayLabel = 'Atribuinte'
      FieldName = 'rchatribuinte'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Left = 284
    Top = 264
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
