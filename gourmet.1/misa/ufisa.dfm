inherited fisa: Tfisa
  ActiveControl = procodigo
  Caption = 'Ingredientes do Sabor'
  ClientHeight = 164
  ExplicitHeight = 203
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 135
    ExplicitTop = 208
  end
  inherited paginas: TPageControl
    Height = 135
    ExplicitHeight = 208
    inherited Principal: TTabSheet
      ExplicitHeight = 107
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = isachave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sabor'
        FocusControl = sbrcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 131
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ingrediente / Materia Prima'
        FocusControl = procodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
        FocusControl = isaquantidade
      end
      object unisimbolo: TDBText
        Left = 264
        Top = 87
        Width = 65
        Height = 17
        CustomHint = BalloonHint
        DataField = 'unisimbolo'
        DataSource = Dpro
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 108
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Apenas como adicional'
        FocusControl = procodigo
        Visible = False
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ingrediente principal'
        FocusControl = procodigo
        Visible = False
      end
      object isachave: TDBEdit
        Left = 145
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'isachave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object sbrcodigo: TDBEdit
        Left = 145
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sbrcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object procodigo: TDBEdit
        Left = 145
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = procodigoEnter
      end
      object isaquantidade: TDBEdit
        Left = 145
        Top = 84
        Width = 104
        Height = 21
        CustomHint = BalloonHint
        DataField = 'isaquantidade'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object senadicionavel: TDBEdit
        Left = 145
        Top = 111
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'senadicionavel'
        DataSource = DSRegistro
        TabOrder = 4
        Visible = False
      end
      object isaprincipal: TDBEdit
        Left = 145
        Top = 138
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'isaprincipal'
        DataSource = DSRegistro
        TabOrder = 5
        Visible = False
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 388
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  isachave,'
      '  sbrcodigo,'
      '  procodigo,'
      '  isaquantidade,'
      '  senadicionavel,'
      '  isaprincipal'
      'FROM isa'
      '  where isachave=:isachave and sbrcodigo=:sbrcodigo')
    Left = 316
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'isachave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sbrcodigo'
        Value = nil
      end>
    object registroisachave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'isachave'
    end
    object registrosbrcodigo: TIntegerField
      DisplayLabel = 'Sabor'
      FieldName = 'sbrcodigo'
      Required = True
    end
    object registrosbridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'sbridentificacao'
      LookupDataSet = sbr
      LookupKeyFields = 'sbrcodigo'
      LookupResultField = 'sbridentificacao'
      KeyFields = 'sbrcodigo'
      Size = 50
      Lookup = True
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Materia Prima'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 50
      Lookup = True
    end
    object registroisaquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'isaquantidade'
      DisplayFormat = '#0.000000'
      EditFormat = '#0.000000'
    end
    object registrosenadicionavel: TIntegerField
      FieldName = 'senadicionavel'
      Required = True
    end
    object registrosenidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'senidentificacao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'senadicionavel'
      Size = 5
      Lookup = True
    end
    object registroisaprincipal: TIntegerField
      FieldName = 'isaprincipal'
      Required = True
    end
    object registrosenisaprincipal: TStringField
      FieldKind = fkLookup
      FieldName = 'senisaprincipal'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'isaprincipal'
      Size = 5
      Lookup = True
    end
  end
  object sbr: TUniQuery
    SQL.Strings = (
      'select sbrcodigo, sbridentificacao from sbr')
    Left = 624
    Top = 160
    object sbrsbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object sbrsbridentificacao: TStringField
      FieldName = 'sbridentificacao'
      Size = 50
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      
        'select pro.procodigo, pronome, unisimbolo from pro, uni where pr' +
        'o.unicodigo=uni.unicodigo')
    Left = 688
    Top = 96
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
    object prounisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 5
    end
  end
  object Dpro: TDataSource
    DataSet = pro
    Left = 436
    Top = 344
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 496
    Top = 56
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
