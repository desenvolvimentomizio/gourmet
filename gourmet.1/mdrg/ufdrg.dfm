inherited fdrg: Tfdrg
  ActiveControl = ccgcodigo
  Caption = 'Rateio por Centros de Custos'
  ClientHeight = 302
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 273
    ExplicitTop = 273
  end
  inherited paginas: TPageControl
    Height = 273
    ExplicitHeight = 273
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = drgchave
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
        Top = 60
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = drgvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = drgpercentual
      end
      object drgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drgchave'
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
      object drgvalor: TDBEdit
        Left = 136
        Top = 57
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drgvalor'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = drgvalorExit
      end
      object drgpercentual: TDBEdit
        Left = 136
        Top = 84
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'drgpercentual'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  drgchave,'
      '  mlgchave,'
      '  drgvalor,'
      '  drgtipo,'
      '  ccgcodigo,'
      '  drgpercentual'
      'FROM drg where drgchave=:drgchave and mlgchave=:mlgchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'drgchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end>
    object registrodrgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'drgchave'
    end
    object registromlgchave: TIntegerField
      DisplayLabel = 'Contabiliza'#231#227'o'
      FieldName = 'mlgchave'
    end
    object registrodrgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'drgvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrodrgtipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'drgtipo'
    end
    object registroccgcodigo: TIntegerField
      DisplayLabel = 'Centro de Custos'
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
      Size = 150
      Lookup = True
    end
    object registrodrgpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'drgpercentual'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
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
