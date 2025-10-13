inherited fprr: Tfprr
  ActiveControl = ccgcodigo
  Caption = 'Centro de Custos'
  ClientHeight = 171
  ExplicitHeight = 210
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 142
    ExplicitTop = 148
  end
  inherited paginas: TPageControl
    Height = 142
    ExplicitHeight = 148
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = prrchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Centro de Custos'
        FocusControl = ccgcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = prrvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = prrpercentual
      end
      object prrchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prrchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ccgcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object prrvalor: TDBEdit
        Left = 136
        Top = 84
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prrvalor'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = prrvalorExit
      end
      object prrpercentual: TDBEdit
        Left = 136
        Top = 57
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prrpercentual'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = prrpercentualExit
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prrchave,'
      '  pcrchave,'
      '  prrvalor,'
      '  prrtipo,'
      '  ccgcodigo,'
      '  prrpercentual,'
      '  pcgcodigo'
      'FROM prr where prrchave=:prrchave and pcrchave=:pcrchave')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prrchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pcrchave'
        Value = nil
      end>
    object registroprrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'prrchave'
    end
    object registropcrchave: TIntegerField
      FieldName = 'pcrchave'
    end
    object registroprrvalor: TFloatField
      FieldName = 'prrvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroprrtipo: TIntegerField
      FieldName = 'prrtipo'
    end
    object registroccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
      Required = True
    end
    object registroccgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgidentificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'ccgcodigo'
      Size = 50
      Lookup = True
    end
    object registroprrpercentual: TFloatField
      FieldName = 'prrpercentual'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registropcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object prrsaldo: TUniQuery
    SQL.Strings = (
      'SELECT'
      ' COALESCE(SUM(prr.prrvalor),0) AS prrvalor,'
      
        ' (select pcrvalor FROM pcr WHERE pcrchave=prr.pcrchave) as pcrva' +
        'lor'
      'FROM prr'
      'where prr.pcrchave=:pcrchave')
    Left = 352
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcrchave'
        Value = nil
      end>
    object prrsaldoprrvalor: TFloatField
      FieldName = 'prrvalor'
    end
    object prrsaldopcrvalor: TFloatField
      FieldName = 'pcrvalor'
    end
  end
  object ccg: TUniQuery
    SQL.Strings = (
      
        'select ccgcodigo, concat(ccgestrutural, '#39' '#39',ccgidentificacao) as' +
        ' ccgidentificacao from ccg')
    Left = 344
    Top = 184
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 150
    end
  end
end
