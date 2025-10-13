inherited fpos: Tfpos
  ActiveControl = posidentificacao
  Caption = 'SmartPOS'
  ClientHeight = 179
  ClientWidth = 479
  ExplicitWidth = 495
  ExplicitHeight = 218
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 150
    Width = 479
    ExplicitTop = 150
    ExplicitWidth = 479
    inherited bconfirma: TBitBtn
      Left = 325
      ExplicitLeft = 325
    end
    inherited bcancela: TBitBtn
      Left = 400
      ExplicitLeft = 400
    end
    inherited bfechar: TBitBtn
      Left = 260
      ExplicitLeft = 260
    end
  end
  inherited paginas: TPageControl
    Width = 479
    Height = 150
    ExplicitWidth = 479
    ExplicitHeight = 150
    inherited Principal: TTabSheet
      ExplicitWidth = 471
      ExplicitHeight = 122
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = poscodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = posidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero de S'#233'rie'
        FocusControl = posnumeroserie
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 115
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Em uso por Colaborador'
        FocusControl = clbcodigo
      end
      object poscodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'poscodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object posidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 321
        Height = 21
        CustomHint = BalloonHint
        DataField = 'posidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object posnumeroserie: TDBEdit
        Left = 136
        Top = 57
        Width = 321
        Height = 21
        CustomHint = BalloonHint
        DataField = 'posnumeroserie'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object clbcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 548
    Top = 40
  end
  inherited cfg: TUniQuery
    Left = 388
    Top = 4
  end
  inherited consulta: TUniQuery
    Left = 240
    Top = 65532
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  poscodigo,'
      '  posidentificacao,'
      '  posnumeroserie,'
      '  clbcodigo'
      'FROM pos where poscodigo=:poscodigo')
    Left = 340
    Top = 0
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'poscodigo'
        Value = nil
      end>
    object registroposcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'poscodigo'
    end
    object registroposidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'posidentificacao'
      Required = True
      Size = 50
    end
    object registroposnumeroserie: TStringField
      DisplayLabel = 'N'#250'mero de S'#233'rie'
      FieldName = 'posnumeroserie'
      Required = True
      Size = 50
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited acoesfrm: TActionList
    Left = 428
    Top = 65524
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clbcodigo,'
      '  clbidentificacao'
      'FROM clb'
      'WHERE clbativo = '#39'1'#39
      'ORDER BY clbidentificacao')
    Left = 284
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
