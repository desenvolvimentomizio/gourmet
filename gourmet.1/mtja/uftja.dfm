inherited ftja: Tftja
  ActiveControl = tjaidentificacao
  Caption = 'Tipo de Ajuda de Custo'
  ClientHeight = 396
  ExplicitWidth = 812
  ExplicitHeight = 435
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 367
    ExplicitTop = 202
  end
  inherited paginas: TPageControl
    Height = 367
    ExplicitHeight = 202
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 174
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tjacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tjaidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 172
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra quantidade e valor unit'#225'rio'
        FocusControl = tjausaquantidade
      end
      object Label4: TLabel
        Left = 8
        Top = 141
        Width = 159
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra o n'#250'mero do documento'
        FocusControl = tjausanumero
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
        Top = 87
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object tjacodigo: TDBEdit
        Left = 188
        Top = 3
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tjacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tjaidentificacao: TDBEdit
        Left = 188
        Top = 30
        Width = 350
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tjaidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tjausaquantidade: TDBEdit
        Left = 188
        Top = 111
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tjausaquantidade'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object tjausanumero: TDBEdit
        Left = 188
        Top = 138
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tjausanumero'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object evfcodigo: TDBEdit
        Left = 188
        Top = 57
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object phgcodigo: TDBEdit
        Left = 188
        Top = 84
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tjacodigo,'
      '  tjaidentificacao,'
      '  tjausaquantidade,'
      '  tjausanumero,'
      '  evfcodigo,'
      '  phgcodigo'
      'FROM tja where tjacodigo=:tjacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tjacodigo'
        Value = nil
      end>
    object registrotjacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tjacodigo'
    end
    object registrotjaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tjaidentificacao'
      Required = True
      Size = 50
    end
    object registrotjausaquantidade: TIntegerField
      DisplayLabel = 'Registra qauntidade e valor unit'#225'rio'
      FieldName = 'tjausaquantidade'
      Required = True
    end
    object registrosentjausaquantidade: TStringField
      FieldKind = fkLookup
      FieldName = 'sentjausaquantidade'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'tjausaquantidade'
      Size = 5
      Lookup = True
    end
    object registrotjausanumero: TIntegerField
      DisplayLabel = 'Registra o n'#250'mero do documento'
      FieldName = 'tjausanumero'
      Required = True
    end
    object registrosentjausanumero: TStringField
      FieldKind = fkLookup
      FieldName = 'sentjausanumero'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'tjausanumero'
      Size = 5
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
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 668
    Top = 248
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 15
    end
  end
  object evf: TUniQuery
    SQL.Strings = (
      'select evfcodigo, evfidentificacao from evf')
    Left = 620
    Top = 160
    object evfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object evfevfidentificacao: TStringField
      FieldName = 'evfidentificacao'
      Size = 50
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 668
    Top = 160
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
end
