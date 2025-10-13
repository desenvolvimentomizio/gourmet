inherited fflh: Tfflh
  ActiveControl = flhchave
  Caption = 'Folha de Pagamento'
  ClientHeight = 228
  ClientWidth = 583
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 199
    Width = 583
    inherited bconfirma: TBitBtn
      Left = 429
    end
    inherited bcancela: TBitBtn
      Left = 504
    end
    inherited bfechar: TBitBtn
      Left = 364
    end
  end
  inherited paginas: TPageControl
    Width = 583
    Height = 199
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 3
        Top = 16
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = flhchave
      end
      object Label2: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Est'#225'gio'
        FocusControl = eflcodigo
      end
      object Label4: TLabel
        Left = 3
        Top = 70
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#234's'
        FocusControl = flhmes
      end
      object Label5: TLabel
        Left = 192
        Top = 70
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ano'
        FocusControl = flhano
      end
      object Label6: TLabel
        Left = 3
        Top = 124
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = flhdtinicial
      end
      object Label7: TLabel
        Left = 244
        Top = 124
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = flhdtfinal
      end
      object Label8: TLabel
        Left = 413
        Top = 124
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Pgto'
        FocusControl = flhdtpgto
      end
      object Label3: TLabel
        Left = 3
        Top = 97
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identificacao'
        FocusControl = flhIdentificacao
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 13
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object eflcodigo: TDBEdit
        Left = 136
        Top = 40
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'eflcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object flhmes: TDBEdit
        Left = 136
        Top = 67
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhmes'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object flhano: TDBEdit
        Left = 228
        Top = 67
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhano'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object flhdtinicial: TDBEdit
        Left = 136
        Top = 121
        Width = 95
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtinicial'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object flhdtfinal: TDBEdit
        Left = 312
        Top = 121
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtfinal'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object flhdtpgto: TDBEdit
        Left = 467
        Top = 121
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtpgto'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object flhIdentificacao: TDBEdit
        Left = 136
        Top = 94
        Width = 148
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhIdentificacao'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 452
    Top = 176
  end
  inherited cfg: TUniQuery
    Left = 484
    Top = 28
  end
  inherited consulta: TUniQuery
    Left = 536
    Top = 60
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select flhchave,eflcodigo,flhidentificacao,flhmes,flhano,flhdtin' +
        'icial,flhdtfinal,flhdtpgto from flh where flh.flhchave=:eflchave')
    Left = 312
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'eflchave'
        Value = nil
      end>
    object registroflhchave: TIntegerField
      FieldName = 'flhchave'
      Required = True
    end
    object registroflhIdentificacao: TStringField
      FieldName = 'flhIdentificacao'
      Size = 35
    end
    object registroeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      Required = True
    end
    object registroeflidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'eflidentificacao'
      LookupDataSet = efl
      LookupKeyFields = 'eflcodigo'
      LookupResultField = 'eflidentificacao'
      KeyFields = 'eflcodigo'
      Size = 35
      Lookup = True
    end
    object registroflhmes: TStringField
      FieldName = 'flhmes'
      Required = True
      Size = 2
    end
    object registroflhano: TStringField
      FieldName = 'flhano'
      Required = True
      Size = 4
    end
    object registroflhdtinicial: TDateField
      FieldName = 'flhdtinicial'
      Required = True
    end
    object registroflhdtfinal: TDateField
      FieldName = 'flhdtfinal'
      Required = True
    end
    object registroflhdtpgto: TDateField
      FieldName = 'flhdtpgto'
      Required = True
    end
  end
  inherited pfr: TUniQuery
    Left = 480
    Top = 4
  end
  object efl: TUniQuery
    SQL.Strings = (
      'select eflcodigo,eflidentificacao from efl')
    Left = 376
    Top = 32
    object e: TIntegerField
      FieldName = 'eflcodigo'
    end
    object efleflidentificacao: TStringField
      FieldName = 'eflidentificacao'
      Size = 35
    end
  end
end
