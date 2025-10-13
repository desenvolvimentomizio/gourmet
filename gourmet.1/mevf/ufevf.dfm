inherited fevf: Tfevf
  ActiveControl = evfidentificacao
  Caption = 'Evento da Folha'
  ClientHeight = 197
  ExplicitHeight = 236
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 168
    ExplicitTop = 168
  end
  inherited paginas: TPageControl
    Height = 168
    ExplicitHeight = 168
    inherited Principal: TTabSheet
      ExplicitHeight = 140
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = evfcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = evfidentificacao
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo'
        FocusControl = tevcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
        FocusControl = cedcodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 60
        Width = 130
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Movimenta Conta Corrente'
        FocusControl = evfpelocco
      end
      object evfcodigo: TDBEdit
        Left = 160
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object evfidentificacao: TDBEdit
        Left = 160
        Top = 30
        Width = 494
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tevcodigo: TDBEdit
        Left = 160
        Top = 84
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tevcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cedcodigo: TDBEdit
        Left = 160
        Top = 111
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object evfpelocco: TDBEdit
        Left = 160
        Top = 57
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfpelocco'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 380
    Top = 80
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgusactb from cfg')
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
  end
  inherited consulta: TUniQuery
    Left = 328
    Top = 92
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evfcodigo,'
      '  pcgcodigo,'
      '  evfidentificacao,'
      '  tevcodigo,'
      '  cedcodigo,'
      '  evfpelocco,'
      '  rbccodigo,'
      '  evfresumida'
      'FROM evf where evfcodigo=:evfcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'evfcodigo'
        Value = nil
      end>
    object registroevfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'evfcodigo'
    end
    object registroevfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'evfidentificacao'
      Required = True
      Size = 50
    end
    object registrotevcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tevcodigo'
      Required = True
    end
    object registrotevidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tevidentificacao'
      LookupDataSet = tev
      LookupKeyFields = 'tevcodigo'
      LookupResultField = 'tevidentificacao'
      KeyFields = 'tevcodigo'
      Size = 15
      Lookup = True
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrocedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 15
      Lookup = True
    end
    object registroevfpelocco: TIntegerField
      FieldName = 'evfpelocco'
      Required = True
    end
    object registrosenidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'senidentificacao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'evfpelocco'
      Size = 5
      Lookup = True
    end
  end
  inherited acoesfrm: TActionList
    Left = 452
    Top = 20
  end
  object tev: TUniQuery
    SQL.Strings = (
      'select tevcodigo, tevidentificacao from tev')
    Left = 352
    Top = 248
    object tevtevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object tevtevidentificacao: TStringField
      FieldName = 'tevidentificacao'
      Size = 15
    end
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Left = 384
    Top = 248
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 15
    end
  end
  object pcg: TUniQuery
    SQL.Strings = (
      
        'select pcgcodigo, concat(pcgestrutural, '#39' - '#39', pcgidentificacao)' +
        ' as pcgidentificacao from pcg')
    Left = 416
    Top = 248
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 150
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 336
    Top = 328
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object rbc: TUniQuery
    SQL.Strings = (
      'select rbccodigo, rbcidentificacao from rbc')
    Left = 420
    Top = 168
    object rbcrbccodigo: TIntegerField
      FieldName = 'rbccodigo'
    end
    object rbcrbcidentificacao: TStringField
      FieldName = 'rbcidentificacao'
      Size = 50
    end
  end
end
