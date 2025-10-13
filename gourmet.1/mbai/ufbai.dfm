inherited fbai: Tfbai
  ActiveControl = baiidentificacao
  Caption = 'Bairro'
  ClientHeight = 150
  ClientWidth = 699
  ExplicitWidth = 715
  ExplicitHeight = 189
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 121
    Width = 699
    ExplicitTop = 121
    ExplicitWidth = 699
    inherited bconfirma: TBitBtn
      Left = 545
      ExplicitLeft = 545
    end
    inherited bcancela: TBitBtn
      Left = 620
      ExplicitLeft = 620
    end
    inherited bfechar: TBitBtn
      Left = 480
      ExplicitLeft = 480
    end
  end
  inherited paginas: TPageControl
    Width = 699
    Height = 121
    ExplicitWidth = 699
    ExplicitHeight = 121
    inherited Principal: TTabSheet
      ExplicitWidth = 691
      ExplicitHeight = 93
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = baicodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = baiidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da Taxa'
        FocusControl = procodigo
      end
      object baicodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'baicodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object baiidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 542
        Height = 21
        CustomHint = BalloonHint
        DataField = 'baiidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = baiidentificacaoExit
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = procodigoExit
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select baicodigo, baiidentificacao, procodigo from bai where bai' +
        'codigo=:baicodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baicodigo'
        Value = nil
      end>
    object registrobaicodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'baicodigo'
    end
    object registrobaiidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'baiidentificacao'
      Required = True
      Size = 50
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo da Taxa'
      FieldName = 'procodigo'
      Required = True
      DisplayFormat = '#####0'
      EditFormat = '#####0'
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
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 328
    Top = 280
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
end
