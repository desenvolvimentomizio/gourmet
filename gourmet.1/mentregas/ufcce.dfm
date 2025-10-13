inherited fcce: Tfcce
  ActiveControl = clbcodigo
  Caption = 'Abertura de Caixa do Entregador'
  ClientHeight = 370
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 341
    ExplicitTop = 341
  end
  inherited paginas: TPageControl
    Height = 341
    ExplicitHeight = 341
    inherited Principal: TTabSheet
      ExplicitHeight = 313
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = ccechave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Entregador'
        FocusControl = clbcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor de Abertura'
        FocusControl = ccevalorabertura
      end
      object posnumeroserie: TDBText
        Left = 368
        Top = 89
        Width = 201
        Height = 17
        CustomHint = BalloonHint
        DataField = 'posnumeroserie'
        DataSource = DSpos
      end
      object Label4: TLabel
        Left = 8
        Top = 118
        Width = 163
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Celular de trabalho do entregador'
        FocusControl = poscelularentregador
        Visible = False
      end
      object ccechave: TDBEdit
        Left = 184
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object clbcodigo: TDBEdit
        Left = 184
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnChange = clbcodigoChange
        OnExit = clbcodigoExit
      end
      object ccevalorabertura: TDBEdit
        Left = 184
        Top = 57
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccevalorabertura'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object btSelecionarMaquinaPOS: TButton
        Left = 184
        Top = 84
        Width = 165
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Selecionar Maquina POS'
        TabOrder = 3
        OnClick = btSelecionarMaquinaPOSClick
      end
      object poscelularentregador: TDBEdit
        Left = 184
        Top = 115
        Width = 128
        Height = 21
        CustomHint = BalloonHint
        DataField = 'poscelularentregador'
        DataSource = DSpos
        TabOrder = 4
        Visible = False
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 604
    Top = 8
  end
  inherited cfg: TUniQuery
    Left = 652
    Top = 76
  end
  inherited consulta: TUniQuery
    Left = 472
    Top = 20
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccechave,'
      '  cznchave,'
      '  clbcodigo,'
      '  cceabertura,'
      '  ccevalorabertura'
      'FROM cce where ccechave=:ccechave')
    Left = 540
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccechave'
        Value = nil
      end>
    object registroccechave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ccechave'
    end
    object registrocznchave: TIntegerField
      FieldName = 'cznchave'
    end
    object registroclbcodigo: TIntegerField
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
    object registrocceabertura: TDateTimeField
      FieldName = 'cceabertura'
    end
    object registroccevalorabertura: TFloatField
      FieldName = 'ccevalorabertura'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited pfr: TUniQuery
    Left = 520
    Top = 12
  end
  inherited psf: TUniQuery
    Left = 672
    Top = 28
  end
  inherited acoesfrm: TActionList
    Left = 340
    Top = 20
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Left = 620
    Top = 88
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object adc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adccodigo,'
      '  adcchaveintegracao'
      'FROM adc where adc.adcencerramento IS null')
    Left = 396
    Top = 16
    object adcadccodigo: TIntegerField
      FieldName = 'adccodigo'
    end
    object adcadcchaveintegracao: TStringField
      FieldName = 'adcchaveintegracao'
      Size = 200
    end
  end
  object pss: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  poscodigo,'
      '  posidentificacao,'
      '  posnumeroserie,'
      '  clbcodigo,'
      '  poscelularentregador'
      'FROM pos WHERE clbcodigo=:clbcodigo')
    Left = 276
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object pssposcodigo: TIntegerField
      FieldName = 'poscodigo'
    end
    object pssposidentificacao: TStringField
      FieldName = 'posidentificacao'
      Size = 50
    end
    object pssposnumeroserie: TStringField
      FieldName = 'posnumeroserie'
      Size = 50
    end
    object pssposcelularentregador: TStringField
      DisplayLabel = 'Celular de trabalho do entregador'
      FieldName = 'poscelularentregador'
    end
  end
  object DSpos: TDataSource
    DataSet = pss
    Left = 524
    Top = 88
  end
end
