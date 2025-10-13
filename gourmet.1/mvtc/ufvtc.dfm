inherited fvtc: Tfvtc
  ActiveControl = clbcodigo
  Caption = 'Tabela de Pre'#231'o Autorizada'
  ClientHeight = 205
  ExplicitHeight = 244
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 176
  end
  inherited paginas: TPageControl
    Height = 176
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = vtcchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = clbcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tabela de Pre'#231'o'
        FocusControl = tpvcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'In'#237'cio da Validade'
        FocusControl = vtcinicio
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Final da Validade'
        FocusControl = vtcfinal
      end
      object vtcchave: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vtcchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object clbcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tpvcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object vtcinicio: TDBEdit
        Left = 136
        Top = 84
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vtcinicio'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object vtcfinal: TDBEdit
        Left = 136
        Top = 111
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vtcfinal'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vtcchave,'
      '  clbcodigo,'
      '  tpvcodigo,'
      '  vtcinicio,'
      '  vtcfinal'
      'FROM vtc where vtcchave=:vtcchave')
    Left = 388
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vtcchave'
        Value = nil
      end>
    object registrovtcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'vtcchave'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
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
    object registrotpvcodigo: TIntegerField
      DisplayLabel = 'Tabela de Pre'#231'o'
      FieldName = 'tpvcodigo'
      Required = True
    end
    object registrotpvidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tpvidentificacao'
      LookupDataSet = tpv
      LookupKeyFields = 'tpvcodigo'
      LookupResultField = 'tpvidentificacao'
      KeyFields = 'tpvcodigo'
      Size = 50
      Lookup = True
    end
    object registrovtcinicio: TDateField
      DisplayLabel = 'In'#237'cio da Validade'
      FieldName = 'vtcinicio'
      Required = True
    end
    object registrovtcfinal: TDateField
      DisplayLabel = 'Final da Validade'
      FieldName = 'vtcfinal'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Left = 260
    Top = 232
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object tpv: TUniQuery
    SQL.Strings = (
      'select tpvcodigo, tpvidentificacao from tpv')
    Left = 304
    Top = 296
    object tpvtpvcodigo: TIntegerField
      FieldName = 'tpvcodigo'
    end
    object tpvtpvidentificacao: TStringField
      FieldName = 'tpvidentificacao'
      Size = 50
    end
  end
end
