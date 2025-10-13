inherited ftta: Tftta
  Caption = 'Tipo de Atividade Adicional'
  ClientHeight = 175
  ExplicitWidth = 812
  ExplicitHeight = 214
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 146
  end
  inherited paginas: TPageControl
    Height = 146
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ttacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = ttaidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento da Folha'
        FocusControl = evfcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico Padr'#227'o'
        FocusControl = phgcodigo
      end
      object ttacodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ttaidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 422
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttaidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object evfcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 57
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
      '  ttacodigo,'
      '  ttaidentificacao,'
      '  evfcodigo,'
      '  phgcodigo'
      'FROM tta where ttacodigo=:ttacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ttacodigo'
        Value = nil
      end>
    object registrottacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ttacodigo'
    end
    object registrottaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ttaidentificacao'
      Required = True
      Size = 50
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
      DisplayLabel = 'Hist'#243'rico Padr'#227'o'
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
