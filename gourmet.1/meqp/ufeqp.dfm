inherited feqp: Tfeqp
  ActiveControl = eqpidentificacao
  Caption = 'Cadastro de Equipamento'
  ClientHeight = 291
  ClientWidth = 464
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 262
    Width = 464
    inherited bconfirma: TBitBtn
      Left = 310
    end
    inherited bcancela: TBitBtn
      Left = 385
    end
    inherited bfechar: TBitBtn
      Left = 245
    end
  end
  inherited paginas: TPageControl
    Width = 464
    Height = 262
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 25
        Top = 48
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = eqpcodigo
      end
      object Label2: TLabel
        Left = 25
        Top = 102
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Marca'
        FocusControl = meqcodigo
      end
      object Label3: TLabel
        Left = 25
        Top = 129
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero de S'#233'rie'
        FocusControl = eqpnumserie
      end
      object Label4: TLabel
        Left = 25
        Top = 75
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = eqpidentificacao
      end
      object Label5: TLabel
        Left = 25
        Top = 156
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Modelo'
        FocusControl = eqpmodelo
      end
      object eqpcodigo: TDBEdit
        Left = 120
        Top = 45
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'eqpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object meqcodigo: TDBEdit
        Left = 120
        Top = 99
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meqcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = meqcodigoExit
      end
      object eqpnumserie: TDBEdit
        Left = 120
        Top = 126
        Width = 250
        Height = 21
        CustomHint = BalloonHint
        DataField = 'eqpnumserie'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = eqpnumserieExit
      end
      object eqpidentificacao: TDBEdit
        Left = 120
        Top = 72
        Width = 300
        Height = 21
        CustomHint = BalloonHint
        DataField = 'eqpidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object eqpmodelo: TDBEdit
        Left = 120
        Top = 153
        Width = 250
        Height = 21
        CustomHint = BalloonHint
        DataField = 'eqpmodelo'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT e.eqpcodigo'
      '     , e.meqcodigo'
      '     , e.eqpnumserie'
      '     , e.eqpidentificacao'
      '     , e.eqpmodelo'
      'FROM eqp e'
      'WHERE e.eqpcodigo = :eqpcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'eqpcodigo'
        Value = nil
      end>
    object registroeqpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'eqpcodigo'
    end
    object registromeqcodigo: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'meqcodigo'
      Required = True
    end
    object registromeqidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'meqidentificacao'
      LookupDataSet = meq
      LookupKeyFields = 'meqcodigo'
      LookupResultField = 'meqidentificacao'
      KeyFields = 'meqcodigo'
      Required = True
      Size = 60
      Lookup = True
    end
    object registroeqpnumserie: TStringField
      DisplayLabel = 'N'#250'mero de S'#233'rie'
      FieldName = 'eqpnumserie'
      Required = True
      Size = 60
    end
    object registroeqpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'eqpidentificacao'
      Required = True
      Size = 150
    end
    object registroeqpmodelo: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'eqpmodelo'
      Required = True
      Size = 40
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object meq: TUniQuery
    SQL.Strings = (
      'SELECT m.meqcodigo'
      '     , m.meqidentificacao'
      'FROM meq m')
    Left = 276
    Top = 200
    object meqmeqcodigo: TIntegerField
      FieldName = 'meqcodigo'
    end
    object meqmeqidentificacao: TStringField
      FieldName = 'meqidentificacao'
      Size = 60
    end
  end
end
