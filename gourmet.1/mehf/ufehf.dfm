inherited fehf: Tfehf
  ActiveControl = flhchave
  Caption = 'Registro de Horas'
  ClientHeight = 399
  ExplicitWidth = 812
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 370
    ExplicitTop = 370
  end
  inherited paginas: TPageControl
    Height = 370
    ExplicitHeight = 370
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 342
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = ehfchave
      end
      object Label2: TLabel
        Left = 9
        Top = 33
        Width = 73
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha Gerencial'
        FocusControl = flhchave
      end
      object Label3: TLabel
        Left = 9
        Top = 60
        Width = 112
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fun'#231#227'o do Colaborador'
        FocusControl = vhfcodigo
      end
      object Label4: TLabel
        Left = 9
        Top = 87
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Horas'
        FocusControl = tthcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Horas'
        FocusControl = ehfhoras
      end
      object ehfchave: TDBEdit
        Left = 136
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ehfchave'
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
        OnExit = flhchaveExit
      end
      object vhfcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tthcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tthcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ehfhoras: TDBEdit
        Left = 136
        Top = 111
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ehfhoras'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ehfchave,'
      '  flhchave,'
      '  vhfcodigo,'
      '  tthcodigo,'
      '  ehfhoras,'
      '  clbcodigo,'
      '  ehfregistro'
      'FROM ehf where ehfchave=:ehfchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ehfchave'
        Value = nil
      end>
    object registroehfchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'ehfchave'
    end
    object registroflhchave: TIntegerField
      DisplayLabel = 'C'#243'd'
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
      DisplayLabel = 'C'#243'd'
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
      Size = 50
      Lookup = True
    end
    object registrotthcodigo: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'tthcodigo'
      Required = True
    end
    object registrotthidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tthidentificacao'
      LookupDataSet = tth
      LookupKeyFields = 'tthcodigo'
      LookupResultField = 'tthidentificacao'
      KeyFields = 'tthcodigo'
      Size = 50
      Lookup = True
    end
    object registroehfhoras: TStringField
      DisplayLabel = 'Horas'
      FieldName = 'ehfhoras'
      Required = True
      EditMask = '!900:00;1;_'
      Size = 10
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroehfregistro: TDateTimeField
      FieldName = 'ehfregistro'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object flh: TUniQuery
    SQL.Strings = (
      'SELECT flh.flhchave, flh.flhidentificacao FROM flh')
    Left = 340
    Top = 216
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
    Left = 300
    Top = 288
    object vhfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object vhfvhfidentificacao: TStringField
      FieldName = 'vhfidentificacao'
      Size = 50
    end
  end
  object tth: TUniQuery
    SQL.Strings = (
      'select tthcodigo, tthidentificacao from tth')
    Left = 188
    Top = 272
    object tthtthcodigo: TIntegerField
      FieldName = 'tthcodigo'
    end
    object tthtthidentificacao: TStringField
      FieldName = 'tthidentificacao'
      Size = 35
    end
  end
end
