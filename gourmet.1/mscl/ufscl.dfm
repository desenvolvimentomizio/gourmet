inherited fscl: Tfscl
  Caption = 'Substitui'#231#227'o'
  ClientHeight = 282
  ExplicitHeight = 321
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 253
    ExplicitTop = 225
    inherited bfechar: TBitBtn
      Visible = True
    end
  end
  inherited paginas: TPageControl
    Height = 253
    ExplicitHeight = 225
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 197
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = sclchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha de Pagamento'
        FocusControl = flhchave
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data da Substitui'#231#227'o'
        FocusControl = scldata
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador Ausente'
        FocusControl = vhfausente
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador Substituto'
        FocusControl = vhfsubstituto
      end
      object Label6: TLabel
        Left = 8
        Top = 168
        Width = 104
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade em Horas'
        FocusControl = sclhoras
      end
      object Label7: TLabel
        Left = 8
        Top = 204
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#245'es'
        FocusControl = sclobservacao
      end
      object Label8: TLabel
        Left = 8
        Top = 141
        Width = 43
        Height = 13
        CustomHint = BalloonHint
        Caption = 'HIst'#243'rico'
        FocusControl = phgcodigo
      end
      object sclchave: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sclchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object scldata: TDBEdit
        Left = 136
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'scldata'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object vhfausente: TDBEdit
        Left = 136
        Top = 84
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfausente'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object vhfsubstituto: TDBEdit
        Left = 136
        Top = 111
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfsubstituto'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object sclhoras: TDBEdit
        Left = 136
        Top = 165
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sclhoras'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object sclobservacao: TDBEdit
        Left = 136
        Top = 192
        Width = 561
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sclobservacao'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 138
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  sclchave,'
      '  flhchave,'
      '  scldata,'
      '  vhfausente,'
      '  vhfsubstituto,'
      '  sclhoras,'
      '  sclobservacao,'
      '  phgcodigo,'
      '  clbcodigo,'
      '  sclregistro'
      'FROM scl where sclchave=:sclchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sclchave'
        Value = nil
      end>
    object registrosclchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'sclchave'
    end
    object registroflhchave: TIntegerField
      DisplayLabel = 'Flh.'
      FieldName = 'flhchave'
      Required = True
    end
    object registroflhidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flhidentificacao'
      LookupDataSet = flh
      LookupKeyFields = 'flhchave'
      LookupResultField = 'flhidentificacao'
      KeyFields = 'flhchave'
      Size = 50
      Lookup = True
    end
    object registroscldata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'scldata'
      Required = True
    end
    object registrovhfausente: TIntegerField
      DisplayLabel = 'Clb.Aus.'
      FieldName = 'vhfausente'
      Required = True
    end
    object registrovhfausenteidentificaaco: TStringField
      FieldKind = fkLookup
      FieldName = 'vhfausenteidentificaaco'
      LookupDataSet = vhf
      LookupKeyFields = 'vhfcodigo'
      LookupResultField = 'vhfidentificacao'
      KeyFields = 'vhfausente'
      Size = 50
      Lookup = True
    end
    object registrovhfsubstituto: TIntegerField
      DisplayLabel = 'Clb.Subs.'
      FieldName = 'vhfsubstituto'
      Required = True
    end
    object registrovhfsubstitutoidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'vhfsubstitutoidentificacao'
      LookupDataSet = vhf
      LookupKeyFields = 'vhfcodigo'
      LookupResultField = 'vhfidentificacao'
      KeyFields = 'vhfsubstituto'
      Size = 50
      Lookup = True
    end
    object registrosclhoras: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'sclhoras'
      Required = True
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object registrosclobservacao: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'sclobservacao'
      Size = 200
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrosclregistro: TDateTimeField
      FieldName = 'sclregistro'
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 216
    Top = 292
  end
  inherited dtb: TUniQuery
    Left = 172
    Top = 292
  end
  inherited coa: TUniQuery
    Left = 136
    Top = 292
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object flh: TUniQuery
    SQL.Strings = (
      'select flhchave, flhidentificacao from flh')
    Left = 548
    Top = 16
    object flhflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object flhflhidentificacao: TStringField
      FieldName = 'flhidentificacao'
      Size = 50
    end
  end
  object vhf: TUniQuery
    SQL.Strings = (
      
        'SELECT vhfcodigo,  CONCAT(etdidentificacao , '#39' - '#39', vhfidentific' +
        'acao) as vhfidentificacao  FROM vhf, etd WHERE vhf.etdcodigo=etd' +
        '.etdcodigo ')
    Left = 508
    Top = 16
    object vhfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object vhfvhfidentificacao: TStringField
      FieldName = 'vhfidentificacao'
      Size = 50
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 660
    Top = 104
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
end
