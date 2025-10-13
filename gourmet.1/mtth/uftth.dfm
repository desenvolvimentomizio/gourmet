inherited ftth: Tftth
  ActiveControl = tthidentificacao
  Caption = 'Tipo de Hora'
  ClientHeight = 254
  ClientWidth = 631
  ExplicitWidth = 647
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 225
    Width = 631
    ExplicitTop = 197
    ExplicitWidth = 631
    inherited bconfirma: TBitBtn
      Left = 477
      ExplicitLeft = 477
    end
    inherited bcancela: TBitBtn
      Left = 552
      ExplicitLeft = 552
    end
    inherited bfechar: TBitBtn
      Left = 412
      ExplicitLeft = 412
    end
  end
  inherited paginas: TPageControl
    Width = 631
    Height = 225
    ExplicitWidth = 631
    ExplicitHeight = 197
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 623
      ExplicitHeight = 220
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tthcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tthidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza da Hora'
        FocusControl = tthnatureza
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = tthpercentual
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento da Folha'
        FocusControl = evfcodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 108
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Calculo reflsxo de DSR'
        FocusControl = dsrcodigo
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 143
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Considerar  Tempo de Servi'#231'o'
        FocusControl = tthconsideraats
      end
      object tthcodigo: TDBEdit
        Left = 168
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tthcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tthidentificacao: TDBEdit
        Left = 168
        Top = 30
        Width = 470
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tthidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tthnatureza: TDBEdit
        Left = 168
        Top = 84
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tthnatureza'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object tthpercentual: TDBEdit
        Left = 168
        Top = 111
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tthpercentual'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object evfcodigo: TDBEdit
        Left = 168
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object dsrcodigo: TDBEdit
        Left = 168
        Top = 138
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dsrcodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object tthconsideraats: TDBEdit
        Left = 168
        Top = 165
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tthconsideraats'
        DataSource = DSRegistro
        TabOrder = 6
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tthcodigo,'
      '  tthidentificacao,'
      '  tthpercentual,'
      '  tthnatureza,'
      '  evfcodigo,'
      '  dsrcodigo,'
      '  tthconsideraats'
      ''
      'FROM tth '
      'where tthcodigo=:tthcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tthcodigo'
        Value = nil
      end>
    object registrotthcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tthcodigo'
    end
    object registrotthidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tthidentificacao'
      Required = True
      Size = 50
    end
    object registrotthpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'tthpercentual'
      Required = True
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object registrotthnatureza: TIntegerField
      DisplayLabel = 'Cod.'
      FieldName = 'tthnatureza'
      Required = True
    end
    object registrocedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'tthnatureza'
      Size = 30
      Lookup = True
    end
    object registroevfcodigo: TIntegerField
      DisplayLabel = 'Evento da Folha'
      FieldName = 'evfcodigo'
      Required = True
    end
    object registroevfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'evfidentificacao'
      LookupDataSet = evf
      LookupKeyFields = 'evfcodigo'
      LookupResultField = 'evfidentificacao'
      KeyFields = 'evfcodigo'
      Size = 50
      Lookup = True
    end
    object registrodsrcodigo: TIntegerField
      FieldName = 'dsrcodigo'
      Required = True
    end
    object registrodsridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'dsridentificacao'
      LookupDataSet = dsr
      LookupKeyFields = 'dsrcodigo'
      LookupResultField = 'dsridentificacao'
      KeyFields = 'dsrcodigo'
      Size = 50
      Lookup = True
    end
    object registrotthconsideraats: TIntegerField
      FieldName = 'tthconsideraats'
      Required = True
    end
    object registrosentthconsideraats: TStringField
      FieldKind = fkLookup
      FieldName = 'sentthconsideraats'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'tthconsideraats'
      Size = 5
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Left = 420
    Top = 272
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 30
    end
  end
  object evf: TUniQuery
    SQL.Strings = (
      'select evfcodigo, evfidentificacao from evf')
    Left = 372
    Top = 40
    object evfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object evfevfidentificacao: TStringField
      FieldName = 'evfidentificacao'
      Size = 50
    end
  end
  object dsr: TUniQuery
    SQL.Strings = (
      'select dsrcodigo, dsridentificacao from dsr')
    Left = 428
    Top = 160
    object dsrdsrcodigo: TIntegerField
      FieldName = 'dsrcodigo'
    end
    object dsrdsridentificacao: TStringField
      FieldName = 'dsridentificacao'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 484
    Top = 152
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
