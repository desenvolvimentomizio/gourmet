inherited fgcc: Tfgcc
  ActiveControl = gcccodigo
  Caption = 'Grupo de Centro de Custos'
  ClientHeight = 148
  ClientWidth = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 119
    Width = 497
    inherited bconfirma: TBitBtn
      Left = 343
    end
    inherited bcancela: TBitBtn
      Left = 418
    end
    inherited bfechar: TBitBtn
      Left = 278
    end
  end
  inherited paginas: TPageControl
    Width = 497
    Height = 119
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = gcccodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#225'scara'
        FocusControl = gccmascara
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = gccidentificacao
      end
      object gcccodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gcccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object gccmascara: TDBEdit
        Left = 148
        Top = 30
        Width = 173
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gccmascara'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object gccidentificacao: TDBEdit
        Left = 148
        Top = 57
        Width = 325
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gccidentificacao'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select gcccodigo, gccmascara, gccidentificacao from gcc where gc' +
        'ccodigo=:gcccodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gcccodigo'
        Value = nil
      end>
    object registrogcccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gcccodigo'
      Required = True
    end
    object registrogccmascara: TStringField
      DisplayLabel = 'M'#225'scara'
      FieldName = 'gccmascara'
      Required = True
      Size = 50
    end
    object registrogccidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'gccidentificacao'
      Required = True
      Size = 50
    end
  end
  object ccg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccgcodigo,'
      '  ccgidentificacao,'
      '  ccgestrutural,'
      '  gcccodigo,'
      '  seacodigo'
      'FROM ccg'
      'limit 0')
    Left = 336
    Top = 8
    object ccgccgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ccgcodigo'
      Required = True
    end
    object ccgccgestrutural: TStringField
      DisplayLabel = 'Estrutural'
      FieldName = 'ccgestrutural'
      Required = True
      Size = 50
    end
    object ccgccgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ccgidentificacao'
      Required = True
      Size = 60
    end
    object ccggcccodigo: TIntegerField
      FieldName = 'gcccodigo'
      Required = True
    end
    object ccgseacodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'seacodigo'
      Required = True
    end
  end
end
