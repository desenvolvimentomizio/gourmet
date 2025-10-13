inherited ftci: Tftci
  ActiveControl = trmcodigo
  Caption = 'Impressora'
  ClientHeight = 250
  ExplicitHeight = 289
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 221
    ExplicitTop = 150
  end
  inherited paginas: TPageControl
    Height = 221
    ExplicitHeight = 150
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 122
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tcicodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Terminal'
        FocusControl = trmcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Impressora'
        FocusControl = mitcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 107
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Porta de Comunica'#231#227'o'
        FocusControl = tciporta
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Prioridade de Impress'#227'o'
        FocusControl = tciprioridade
      end
      object tcicodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcicodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object trmcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'trmcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object mitcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mitcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tciporta: TDBEdit
        Left = 136
        Top = 84
        Width = 233
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tciporta'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object tciprioridade: TDBEdit
        Left = 136
        Top = 111
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tciprioridade'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select '
      ' tcicodigo,'
      ' trmcodigo,'
      ' mitcodigo,'
      ' tciprioridade, '
      ' tciporta '
      'from tci where  tcicodigo=:tcicodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcicodigo'
        Value = nil
      end>
    object registrotcicodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tcicodigo'
    end
    object registrotrmcodigo: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'trmcodigo'
      Required = True
    end
    object registrotrmidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'trmidentificacao'
      LookupDataSet = trm
      LookupKeyFields = 'trmcodigo'
      LookupResultField = 'trmidentificacao'
      KeyFields = 'trmcodigo'
      Size = 50
      Lookup = True
    end
    object registromitcodigo: TIntegerField
      DisplayLabel = 'Impressora'
      FieldName = 'mitcodigo'
      Required = True
    end
    object registrotitidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mitidentificacao'
      LookupDataSet = mit
      LookupKeyFields = 'mitcodigo'
      LookupResultField = 'mitidentificacao'
      KeyFields = 'mitcodigo'
      Size = 50
      Lookup = True
    end
    object registrotciporta: TStringField
      DisplayLabel = 'Porta de Comunica'#231#227'o'
      FieldName = 'tciporta'
      Required = True
      Size = 30
    end
    object registrotciprioridade: TIntegerField
      DisplayLabel = 'Prioridade de Impress'#227'o'
      FieldName = 'tciprioridade'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object trm: TUniQuery
    SQL.Strings = (
      'select trmcodigo, trmidentificacao from trm')
    Left = 500
    Top = 16
    object trmtrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object trmtrmidentificacao: TStringField
      FieldName = 'trmidentificacao'
      Size = 50
    end
  end
  object mit: TUniQuery
    SQL.Strings = (
      'select mitcodigo, mitidentificacao from mit')
    Left = 604
    Top = 24
    object mitmitcodigo: TIntegerField
      FieldName = 'mitcodigo'
    end
    object mitmitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      Size = 50
    end
  end
end
