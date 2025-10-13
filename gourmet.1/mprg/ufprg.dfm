inherited fprg: Tfprg
  ActiveControl = ccgcodigo
  Caption = 'Centro de Custos'
  ClientHeight = 176
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 147
    ExplicitTop = 147
  end
  inherited paginas: TPageControl
    Height = 147
    ExplicitHeight = 147
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = prgchave
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
        FocusControl = prgvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = prgpercentual
      end
      object prgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prgchave'
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
      object prgvalor: TDBEdit
        Left = 136
        Top = 57
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prgvalor'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = prgvalorExit
      end
      object prgpercentual: TDBEdit
        Left = 136
        Top = 84
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'prgpercentual'
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
      '  prgchave,'
      '  pcbchave,'
      '  prgvalor,'
      '  prgtipo,'
      '  ccgcodigo,'
      '  prgpercentual,'
      '  pcgcodigo'
      'FROM prg where prgchave=:prgchave and pcbchave=:pcbchave')
    BeforePost = registroBeforePost
    Left = 284
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prgchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pcbchave'
        Value = nil
      end>
    object registroprgchave: TIntegerField
      FieldName = 'prgchave'
    end
    object registropcbchave: TIntegerField
      FieldName = 'pcbchave'
    end
    object registroprgvalor: TFloatField
      FieldName = 'prgvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroprgtipo: TIntegerField
      FieldName = 'prgtipo'
    end
    object registroccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
      Required = True
    end
    object registroccgideintificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgideintificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'ccgcodigo'
      Size = 150
      Lookup = True
    end
    object registroprgpercentual: TFloatField
      FieldName = 'prgpercentual'
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
  object prgsaldo: TUniQuery
    SQL.Strings = (
      'SELECT'
      ' COALESCE(SUM(prg.prgvalor),0) AS prgvalor,'
      
        ' (select pcbvalor FROM pcb WHERE pcbchave=prg.pcbchave) as pcbva' +
        'lor'
      'FROM prg'
      'where prg.pcbchave=:pcbchave')
    Left = 352
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcbchave'
        Value = nil
      end>
    object prgsaldoprgvalor: TFloatField
      FieldName = 'prgvalor'
    end
    object prgsaldopcbvalor: TFloatField
      FieldName = 'pcbvalor'
    end
  end
end
