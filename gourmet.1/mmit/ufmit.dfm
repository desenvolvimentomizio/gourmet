inherited fmit: Tfmit
  ActiveControl = mitidentificacao
  Caption = 'Impressora'
  ClientHeight = 167
  ClientWidth = 683
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 138
    Width = 683
    inherited bconfirma: TBitBtn
      Left = 529
    end
    inherited bcancela: TBitBtn
      Left = 604
    end
    inherited bfechar: TBitBtn
      Left = 464
    end
  end
  inherited paginas: TPageControl
    Width = 683
    Height = 138
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = mitcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 134
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o da Impressora'
        FocusControl = mitidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 112
        Height = 13
        CustomHint = BalloonHint
        Caption = 'ECF - Impressora Fiscal'
        FocusControl = ecfcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Impressora'
        FocusControl = tipcodigo
      end
      object mitcodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mitcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mitidentificacao: TDBEdit
        Left = 148
        Top = 30
        Width = 514
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mitidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ecfcodigo: TDBEdit
        Left = 148
        Top = 84
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ecfcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object tipcodigo: TDBEdit
        Left = 148
        Top = 57
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tipcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = tipcodigoExit
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 498
  end
  inherited cfg: TUniQuery
    Left = 420
    Top = 84
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mitcodigo,'
      '  mitidentificacao,'
      '  ecfcodigo,'
      '  tipcodigo'
      'FROM mit'
      'WHERE mitcodigo = :mitcodigo')
    Left = 284
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mitcodigo'
        Value = nil
      end>
    object registromitcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mitcodigo'
    end
    object registromitidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Impressora'
      FieldName = 'mitidentificacao'
      Required = True
      Size = 50
    end
    object registrotipcodigo: TIntegerField
      DisplayLabel = 'Tipo de Impressora'
      FieldName = 'tipcodigo'
      Required = True
    end
    object registrotipidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tipidentificacao'
      LookupDataSet = tip
      LookupKeyFields = 'tipcodigo'
      LookupResultField = 'tipidentificacao'
      KeyFields = 'tipcodigo'
      Size = 30
      Lookup = True
    end
    object registroecfcodigo: TIntegerField
      DisplayLabel = 'ECF'
      FieldName = 'ecfcodigo'
    end
    object registroecfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ecfidentificacao'
      LookupDataSet = ecf
      LookupKeyFields = 'ecfcodigo'
      LookupResultField = 'ecfidentificacao'
      KeyFields = 'ecfcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tip: TUniQuery
    SQL.Strings = (
      'select tipcodigo, tipidentificacao from tip')
    Left = 388
    Top = 32
    object tiptipcodigo: TIntegerField
      FieldName = 'tipcodigo'
    end
    object tiptipidentificacao: TStringField
      FieldName = 'tipidentificacao'
      Required = True
      Size = 30
    end
  end
  object ecf: TUniQuery
    SQL.Strings = (
      'select ecfcodigo, ecfidentificacao, ecfserie from ecf')
    Left = 516
    Top = 24
    object ecfecfcodigo: TIntegerField
      FieldName = 'ecfcodigo'
    end
    object ecfecfidentificacao: TStringField
      FieldName = 'ecfidentificacao'
      Size = 50
    end
    object ecfecfserie: TStringField
      FieldName = 'ecfserie'
      Size = 30
    end
  end
end
