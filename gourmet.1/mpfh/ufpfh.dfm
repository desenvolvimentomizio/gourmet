inherited fpfh: Tfpfh
  Caption = 'Programa'#231#227'o de Folha'
  ClientHeight = 206
  ExplicitHeight = 245
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 177
    ExplicitTop = 385
  end
  inherited paginas: TPageControl
    Height = 177
    ExplicitHeight = 385
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 357
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha de Pagamento'
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Lota'#231#227'o'
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Horas'
      end
      object pfhchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pfhchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tlocodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tlocodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object vhfcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object pfhhoras: TDBEdit
        Left = 136
        Top = 111
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pfhhoras'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select '
      '  pfhchave,'
      '  flhchave,'
      '  tlocodigo,'
      '  vhfcodigo,'
      '  pfhhoras,'
      '  clbcodigo,'
      '  pfhregistro'
      '  '
      'from pfh where pfhchave=:pfhchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pfhchave'
        Value = nil
      end>
    object registropfhchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'pfhchave'
    end
    object registroflhchave: TIntegerField
      DisplayLabel = 'Folha de Pagamento'
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
    object registrovhfcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'vhfcodigo'
      Required = True
    end
    object registrovhfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'vhfidentificacao'
      LookupDataSet = vhf
      LookupKeyFields = 'vhfcodigo'
      LookupResultField = 'vhfidentificacao'
      KeyFields = 'vhfcodigo'
      Size = 80
      Lookup = True
    end
    object registrotlocodigo: TIntegerField
      FieldName = 'tlocodigo'
      Required = True
    end
    object registrotloidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tloidentificacao'
      LookupDataSet = tlo
      LookupKeyFields = 'tlocodigo'
      LookupResultField = 'tloidentificacao'
      KeyFields = 'tlocodigo'
      Size = 50
      Lookup = True
    end
    object registropfhhoras: TIntegerField
      DisplayLabel = 'Horas'
      FieldName = 'pfhhoras'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registropfhregistro: TDateTimeField
      FieldName = 'pfhregistro'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tlo: TUniQuery
    SQL.Strings = (
      'select tlocodigo, tloidentificacao from tlo')
    Constraints = <>
    Left = 684
    Top = 152
    object tlotlocodigo: TIntegerField
      FieldName = 'tlocodigo'
    end
    object tlotloidentificacao: TStringField
      FieldName = 'tloidentificacao'
      Size = 50
    end
  end
  object flh: TUniQuery
    SQL.Strings = (
      'SELECT'
      'flh.flhchave,  '
      
        'concat(flh.flhidentificacao,'#39' - '#39', tfl.tflidentificacao) as flhi' +
        'dentificacao'
      'FROM flh'
      '  INNER JOIN tfl'
      '    ON flh.tflcodigo = tfl.tflcodigo'
      '  where (eflcodigo=1) or (eflcodigo=2)')
    Constraints = <>
    Left = 728
    Top = 152
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
      
        'SELECT vhfcodigo, CONCAT(etdidentificacao , '#39' - '#39', vhfidentifica' +
        'cao) as vhfidentificacao FROM vhf, etd WHERE vhf.etdcodigo=etd.e' +
        'tdcodigo')
    Constraints = <>
    Left = 252
    Top = 312
    object vhfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object vhfvhfidentificacao: TStringField
      FieldName = 'vhfidentificacao'
      Size = 100
    end
  end
end
