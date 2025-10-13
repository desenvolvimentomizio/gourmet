inherited ftsi: Tftsi
  ActiveControl = tsiidentificacao
  Caption = 'N'#237'vel de Varia'#231#227'o'
  ClientHeight = 154
  ClientWidth = 300
  ExplicitWidth = 316
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 125
    Width = 300
    ExplicitTop = 84
    ExplicitWidth = 300
    inherited bconfirma: TBitBtn
      Left = 146
      ExplicitLeft = 146
    end
    inherited bcancela: TBitBtn
      Left = 221
      ExplicitLeft = 221
    end
    inherited bfechar: TBitBtn
      Left = 81
      ExplicitLeft = 81
    end
  end
  inherited paginas: TPageControl
    Width = 300
    Height = 125
    ExplicitWidth = 300
    ExplicitHeight = 84
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 292
      ExplicitHeight = 56
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tsicodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tsiidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo Varia'#231#227'o'
        FocusControl = ttscodigo
      end
      object tsicodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tsicodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tsiidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tsiidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ttscodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttscodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tsicodigo, tsiidentificacao,ttscodigo from tsi where tsic' +
        'odigo=:tsicodigo')
    Left = 252
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tsicodigo'
        Value = nil
      end>
    object registrotsicodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tsicodigo'
    end
    object registrotsiidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tsiidentificacao'
      Required = True
      Size = 15
    end
    object registrottscodigo: TIntegerField
      DisplayLabel = 'Tipo Varia'#231#227'o'
      FieldName = 'ttscodigo'
      Required = True
    end
    object registrottsidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttsidentificacao'
      LookupDataSet = tts
      LookupKeyFields = 'ttscodigo'
      LookupResultField = 'ttsidentificacao'
      KeyFields = 'ttscodigo'
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tts: TUniQuery
    SQL.Strings = (
      'select ttscodigo, ttsidentificacao from tts')
    Left = 72
    Top = 16
    object ttsttscodigo: TIntegerField
      FieldName = 'ttscodigo'
    end
    object ttsttsidentificacao: TStringField
      FieldName = 'ttsidentificacao'
    end
  end
end
