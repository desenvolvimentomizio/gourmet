inherited fccg: Tfccg
  ActiveControl = ccgidentificacao
  Caption = 'Classifica'#231#227'o financeira'
  ClientHeight = 221
  ClientWidth = 684
  ExplicitWidth = 700
  ExplicitHeight = 260
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 192
    Width = 684
    ExplicitTop = 249
    ExplicitWidth = 684
    inherited bconfirma: TBitBtn
      Left = 530
      ExplicitLeft = 530
    end
    inherited bcancela: TBitBtn
      Left = 605
      ExplicitLeft = 605
    end
    inherited bfechar: TBitBtn
      Left = 465
      ExplicitLeft = 465
    end
  end
  inherited paginas: TPageControl
    Width = 684
    Height = 192
    ExplicitWidth = 684
    ExplicitHeight = 249
    inherited Principal: TTabSheet
      ExplicitWidth = 676
      ExplicitHeight = 164
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ccgcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo Estrutural'
        FocusControl = ccgestrutural
      end
      object Label3: TLabel
        Left = 8
        Top = 84
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = ccgidentificacao
      end
      object Label4: TLabel
        Left = 8
        Top = 111
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo'
        FocusControl = seacodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo'
        FocusControl = gcccodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 138
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
        FocusControl = cedcodigo
      end
      object Label7: TLabel
        Left = 353
        Top = 33
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Validade'
        FocusControl = ccgvalidade
      end
      object ccgcodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ccgestrutural: TDBEdit
        Left = 148
        Top = 30
        Width = 181
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ccgestrutural'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object ccgidentificacao: TDBEdit
        Left = 148
        Top = 81
        Width = 517
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgidentificacao'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object seacodigo: TDBEdit
        Left = 148
        Top = 108
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'seacodigo'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = seacodigoExit
      end
      object gcccodigo: TDBEdit
        Left = 148
        Top = 57
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gcccodigo'
        DataSource = DSRegistro
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 3
      end
      object pcgrecdes: TDBRadioGroup
        Left = 148
        Top = 167
        Width = 377
        Height = 45
        CustomHint = BalloonHint
        Caption = 'Regime de Caixa'
        Columns = 3
        DataField = 'ccgrecdes'
        DataSource = DSRegistro
        Items.Strings = (
          'Pagamento'
          'Recebimento'
          'N'#227'o se Aplica')
        TabOrder = 7
        Values.Strings = (
          '0'
          '1'
          '9')
        Visible = False
      end
      object cedcodigo: TDBEdit
        Left = 148
        Top = 135
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ccgvalidade: TDBEdit
        Left = 440
        Top = 30
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgvalidade'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 596
    Top = 40
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccgcodigo,'
      '  ccgidentificacao,'
      '  ccgestrutural,'
      '  gcccodigo,'
      '  seacodigo,'
      '  cedcodigo,'
      '  ccgrecdes,'
      '  ccgvalidade'
      '  '
      'FROM ccg'
      'where ccgcodigo=:ccgcodigo')
    Left = 340
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccgcodigo'
        Value = nil
      end>
    object registroccgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ccgcodigo'
      Required = True
    end
    object registroccgestrutural: TStringField
      DisplayLabel = 'Estrutural'
      FieldName = 'ccgestrutural'
      Required = True
      Size = 50
    end
    object registroccgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ccgidentificacao'
      Required = True
      Size = 60
    end
    object registrogcccodigo: TIntegerField
      FieldName = 'gcccodigo'
      Required = True
    end
    object registrogccidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'gccidentificacao'
      LookupDataSet = gcc
      LookupKeyFields = 'gcccodigo'
      LookupResultField = 'gccidentificacao'
      KeyFields = 'gcccodigo'
      Size = 50
      Lookup = True
    end
    object registrogccmascara: TStringField
      FieldKind = fkLookup
      FieldName = 'gccmascara'
      LookupDataSet = gcc
      LookupKeyFields = 'gcccodigo'
      LookupResultField = 'gccmascara'
      KeyFields = 'gcccodigo'
      Visible = False
      Size = 50
      Lookup = True
    end
    object registroseacodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'seacodigo'
      Required = True
    end
    object registroseaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'seaidentificacao'
      LookupDataSet = sea
      LookupKeyFields = 'seacodigo'
      LookupResultField = 'seaidentificacao'
      KeyFields = 'seacodigo'
      Size = 15
      Lookup = True
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrocedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 15
      Lookup = True
    end
    object registroccgrecdes: TIntegerField
      FieldName = 'ccgrecdes'
    end
    object registroccgvalidade: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'ccgvalidade'
    end
  end
  object sea: TUniQuery
    SQL.Strings = (
      'select seacodigo,  seaidentificacao from sea')
    Left = 496
    Top = 48
    object seaseacodigo: TIntegerField
      FieldName = 'seacodigo'
    end
    object seaseaidentificacao: TStringField
      FieldName = 'seaidentificacao'
      Size = 15
    end
  end
  object gcc: TUniQuery
    SQL.Strings = (
      'select gcccodigo, gccidentificacao, gccmascara from gcc')
    Left = 656
    Top = 128
    object gccgcccodigo: TIntegerField
      FieldName = 'gcccodigo'
    end
    object gccgccidentificacao: TStringField
      FieldName = 'gccidentificacao'
      Size = 50
    end
    object gccgccmascara: TStringField
      FieldName = 'gccmascara'
      Size = 50
    end
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Left = 556
    Top = 48
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
    end
  end
end
