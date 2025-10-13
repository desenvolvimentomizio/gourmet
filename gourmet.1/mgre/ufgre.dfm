inherited fgre: Tfgre
  ActiveControl = greidentificacao
  Caption = 'Grupo de Contas para Demonstra'#231#245'es Gerenciais'
  ClientHeight = 572
  ClientWidth = 528
  ExplicitWidth = 544
  ExplicitHeight = 611
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 543
    Width = 528
    ExplicitTop = 543
    ExplicitWidth = 528
    inherited bconfirma: TBitBtn
      Left = 374
      ExplicitLeft = 374
    end
    inherited bcancela: TBitBtn
      Left = 449
      ExplicitLeft = 449
    end
    inherited bfechar: TBitBtn
      Left = 309
      ExplicitLeft = 309
    end
  end
  inherited paginas: TPageControl
    Width = 528
    Height = 543
    ExplicitWidth = 528
    ExplicitHeight = 543
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 520
      ExplicitHeight = 515
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = grecodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = greidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Posi'#231#227'o no Demonstrativo'
        FocusControl = greposicao
      end
      object grecodigo: TDBEdit
        Left = 139
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grecodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object greidentificacao: TDBEdit
        Left = 139
        Top = 30
        Width = 321
        Height = 21
        CustomHint = BalloonHint
        DataField = 'greidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object plDre: TPanel
        Left = 0
        Top = 89
        Width = 520
        Height = 426
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 3
      end
      object bValidar: TButton
        Left = 385
        Top = 57
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 4
        OnClick = bValidarClick
      end
      object greposicao: TDBEdit
        Left = 139
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'greposicao'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 284
    Top = 208
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  grecodigo,'
      '  dmccodigo,'
      '  greidentificacao,'
      '  greposicao'
      'FROM gre'
      '  where grecodigo=:grecodigo and dmccodigo=:dmccodigo')
    Left = 284
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'grecodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dmccodigo'
        Value = nil
      end>
    object registrogrecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grecodigo'
    end
    object registrodmccodigo: TIntegerField
      DisplayLabel = ' Demonstra'#231#227'o Cont'#225'bil '
      FieldName = 'dmccodigo'
    end
    object registrodmcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'dmcidentificacao'
      LookupDataSet = dmc
      LookupKeyFields = 'dmccodigo'
      LookupResultField = 'dmcidentificacao'
      KeyFields = 'dmccodigo'
      Size = 50
      Lookup = True
    end
    object registrogreidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'greidentificacao'
      Required = True
      Size = 50
    end
    object registrogreposicao: TIntegerField
      DisplayLabel = 'Posi'#231#227'o no Demonstrativo'
      FieldName = 'greposicao'
      Required = True
    end
  end
  inherited pfr: TUniQuery
    Left = 488
    Top = 140
  end
  inherited psf: TUniQuery
    Left = 536
    Top = 132
  end
  inherited acoesfrm: TActionList
    Left = 492
    Top = 12
  end
  inherited ImgBusca: TPngImageList
    Left = 132
    Top = 200
    Bitmap = {}
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Left = 344
    Top = 240
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 15
    end
  end
  object dmc: TUniQuery
    SQL.Strings = (
      'select dmccodigo, dmcidentificacao from dmc')
    Left = 400
    Top = 184
    object dmcdmccodigo: TIntegerField
      FieldName = 'dmccodigo'
    end
    object dmcdmcidentificacao: TStringField
      FieldName = 'dmcidentificacao'
      Size = 50
    end
  end
end
